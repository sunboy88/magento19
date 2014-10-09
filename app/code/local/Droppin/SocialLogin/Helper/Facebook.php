<?php
/**
 * Droppin
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade SocialLogin to newer
 * versions in the future.
 *
 * @category    Droppin
 * @package     Droppin_SocialLogin
 * @copyright   Copyright (c) 2014 Droppin LLC
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class Droppin_SocialLogin_Helper_Facebook extends Mage_Core_Helper_Abstract
{

    public function disconnect(Mage_Customer_Model_Customer $customer) {
        $client = Mage::getSingleton('droppin_sociallogin/facebook_client');
        
        try {
            $client->setAccessToken($customer->getDroppinSocialloginFtoken());
            $client->api('/me/permissions', 'DELETE');            
        } catch (Exception $e) { }
        
        $pictureFilename = Mage::getBaseDir(Mage_Core_Model_Store::URL_TYPE_MEDIA)
                .DS
                .'droppin'
                .DS
                .'sociallogin'
                .DS
                .'facebook'
                .DS                
                .$customer->getDroppinSocialloginFid();
        
        if(file_exists($pictureFilename)) {
            @unlink($pictureFilename);
        }        
        
        $customer->setDroppinSocialloginFid(null)
        ->setDroppinSocialloginFtoken(null)
        ->save();   
    }
    
    public function connectByFacebookId(
            Mage_Customer_Model_Customer $customer,
            $facebookId,
            $token)
    {
        $customer->setDroppinSocialloginFid($facebookId)
                ->setDroppinSocialloginFtoken($token)
                ->save();
        
        Mage::getSingleton('customer/session')->setCustomerAsLoggedIn($customer);
    }
    
    public function connectByCreatingAccount(
            $email,
            $firstName,
            $lastName,
            $facebookId,
            $token,
            $userFriends)
    {
        $customer = Mage::getModel('customer/customer');

        $customer->setEmail($email)
                ->setFirstname($firstName)
                ->setLastname($lastName)
                ->setDroppinSocialloginFid($facebookId)
                ->setDroppinSocialloginFtoken($token)
                ->setPassword($customer->generatePassword(10))
                ->save();

        $customer->setConfirmation(null);
        $customer->save();

        $customer->sendNewAccountEmail();

        Mage::getSingleton('customer/session')->setCustomerAsLoggedIn($customer);            
        // Mage::log('logged: '.$customer->getId());
        // if($customer->getId()) {
        //     $customerId = $customer->getId();
        //     if(count($userFriends)){
        //         $modelFriends = Mage::getModel('droppin_sociallogin/friends');
        //         foreach ($userFriends as $friends) {
        //             $profileImage = 'https://graph.facebook.com/'.$friends->id.'/picture';
        //             $modelFriends->setFacebookId($friends->id)
        //                     ->setCustomerId($customerId)
        //                     ->setUsername($friends->name)
        //                     ->setProfileImage($profileImage)
        //                     ->save();
        //             $modelFriends->save();
                    
        //         }  
        //     }
            
             
        // }
    }
    
    public function loginByCustomer(Mage_Customer_Model_Customer $customer)
    {
        if($customer->getConfirmation()) {
            $customer->setConfirmation(null);
            $customer->save();
        }

        Mage::getSingleton('customer/session')->setCustomerAsLoggedIn($customer);        
    }
    
    public function getCustomersByFacebookId($facebookId)
    {
        $customer = Mage::getModel('customer/customer');

        $collection = $customer->getCollection()
            ->addAttributeToFilter('droppin_sociallogin_fid', $facebookId)
            ->setPageSize(1);

        if($customer->getSharingConfig()->isWebsiteScope()) {
            $collection->addAttributeToFilter(
                'website_id',
                Mage::app()->getWebsite()->getId()
            );
        }

        if(Mage::getSingleton('customer/session')->isLoggedIn()) {
            $collection->addFieldToFilter(
                'entity_id',
                array('neq' => Mage::getSingleton('customer/session')->getCustomerId())
            );
        }

        return $collection;
    }

    public function checkCustomerAlsoBought($productId,$customerId){
        $collectionOrders = Mage::getModel("sales/order")->getCollection()
                   ->addAttributeToSelect('*')
                   ->addFieldToFilter('customer_id', $customerId);
        if(count($collectionOrders)){
            foreach ($collectionOrders as $order) {
                $items = $order->getAllItems();
                foreach ($items as $item) {
                    //var_dump($productId);var_dump($customerId); die('3232');
                    if($item->getProductId() == $productId){
                        return true;
                    }
                }
            }
        }
        return false;
    }
    
    public function getCustomersByEmail($email)
    {
        $customer = Mage::getModel('customer/customer');

        $collection = $customer->getCollection()
                ->addFieldToFilter('email', $email)
                ->setPageSize(1);

        if($customer->getSharingConfig()->isWebsiteScope()) {
            $collection->addAttributeToFilter(
                'website_id',
                Mage::app()->getWebsite()->getId()
            );
        }  
        
        if(Mage::getSingleton('customer/session')->isLoggedIn()) {
            $collection->addFieldToFilter(
                'entity_id',
                array('neq' => Mage::getSingleton('customer/session')->getCustomerId())
            );
        }        
        
        return $collection;
    }

    public function getProperDimensionsPictureUrl($facebookId, $pictureUrl)
    {
        $url = Mage::getBaseUrl(Mage_Core_Model_Store::URL_TYPE_MEDIA)
                .'droppin'
                .'/'
                .'sociallogin'
                .'/'
                .'facebook'
                .'/'                
                .$facebookId;

        $filename = Mage::getBaseDir(Mage_Core_Model_Store::URL_TYPE_MEDIA)
                .DS
                .'droppin'
                .DS
                .'sociallogin'
                .DS
                .'facebook'
                .DS                
                .$facebookId;

        $directory = dirname($filename);

        if (!file_exists($directory) || !is_dir($directory)) {
            if (!@mkdir($directory, 0777, true))
                return null;
        }

        if(!file_exists($filename) || 
                (file_exists($filename) && (time() - filemtime($filename) >= 3600))){
            $client = new Zend_Http_Client($pictureUrl);
            $client->setStream();
            $response = $client->request('GET');
            stream_copy_to_stream($response->getStream(), fopen($filename, 'w'));

            $imageObj = new Varien_Image($filename);
            $imageObj->constrainOnly(true);
            $imageObj->keepAspectRatio(true);
            $imageObj->keepFrame(false);
            $imageObj->resize(150, 150);
            $imageObj->save($filename);
        }
        
        return $url;
    }
    public function getMaxProfile(){
        $max = (int) Mage::getStoreConfig('droppin_sociallogin/facebook/maxnum');
        if(!$max){
            $max=3;
        }
        return $max;
    }
    
}
