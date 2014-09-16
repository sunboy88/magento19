<?php
/**
 * @project     SocialLogin
 * @package     LitExtension_SocialLogin
 * @author      LitExtension
 * @email       litextension@gmail.com
 */

class LitExtension_SocialLogin_Helper_Facebook extends Mage_Core_Helper_Abstract
{

    public function disconnect(Mage_Customer_Model_Customer $customer) {
        $client = Mage::getSingleton('le_sociallogin/facebook_client');
        
        try {
            $client->setAccessToken($customer->getLeSocialloginFtoken());
            $client->api('/me/permissions', 'DELETE');            
        } catch (Exception $e) { }
        
        $pictureFilename = Mage::getBaseDir(Mage_Core_Model_Store::URL_TYPE_MEDIA)
                .DS
                .'le'
                .DS
                .'sociallogin'
                .DS
                .'facebook'
                .DS                
                .$customer->getLeSocialloginFid();
        
        if(file_exists($pictureFilename)) {
            @unlink($pictureFilename);
        }        
        
        $customer->setLeSocialloginFid(null)
        ->setLeSocialloginFtoken(null)
        ->save();   
    }
    
    public function connectByFacebookId(
            Mage_Customer_Model_Customer $customer,
            $facebookId,
            $token)
    {
        $customer->setLeSocialloginFid($facebookId)
                ->setLeSocialloginFtoken($token)
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
                ->setLeSocialloginFid($facebookId)
                ->setLeSocialloginFtoken($token)
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
        //         $modelFriends = Mage::getModel('le_sociallogin/friends');
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
            ->addAttributeToFilter('le_sociallogin_fid', $facebookId)
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
                .'le'
                .'/'
                .'sociallogin'
                .'/'
                .'facebook'
                .'/'                
                .$facebookId;

        $filename = Mage::getBaseDir(Mage_Core_Model_Store::URL_TYPE_MEDIA)
                .DS
                .'le'
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

    // public function addUserFriends($userFriends){
    //     foreach ($data as $key => $value) {
    //         var_dump($value->name);
    //         var_dump($value->id);
    //         //https://graph.facebook.com/".$id."/picture
    //     }
    // } 
    
}
