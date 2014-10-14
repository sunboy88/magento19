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

class Droppin_SocialLogin_FixController extends Mage_Core_Controller_Front_Action {

    public function indexAction(){
        $this->loadLayout();
//        $this->getLayout()->getBlock('root')->setTemplate('droppin_sociallogin/fix.phtml');
        $this->renderLayout();
        return $this;
    }

    public function connectAction(){

        $attributeModel = Mage::getModel('eav/entity_attribute');
        $fid = $attributeModel->getIdByCode('customer', 'droppin_sociallogin_fid');
        $ftoken = $attributeModel->getIdByCode('customer', 'droppin_sociallogin_ftoken');

        if($fid == false || $ftoken == false){

            $setup = Mage::getModel('customer/entity_setup','core_setup');
            if($fid == false){
                echo 'droppin_sociallogin_fid not exits <br />';
                $setup->addAttribute('customer', 'droppin_sociallogin_fid', array(
                    'type' => 'text',
                    'visible' => 0,
                    'required' => 0,
                    'user_defined' => 0,
                ));
                echo 'droppin_sociallogin_fid setup ok<br />';
            }
            if($ftoken == false){
                echo 'droppin_sociallogin_ftoken not exits<br />';
                $setup->addAttribute('customer', 'droppin_sociallogin_ftoken', array(
                    'type' => 'text',
                    'visible' => 0,
                    'required' => 0,
                    'user_defined' => 0,
                ));
                echo 'droppin_sociallogin_ftoken setup ok<br />';
            }

            if (version_compare(Mage::getVersion(), '1.6.0', '<='))
            {
                $customer = Mage::getModel('customer/customer');
                $attrSetId = $customer->getResource()->getEntityType()->getDefaultAttributeSetId();
                $setup->addAttributeToSet('customer', $attrSetId, 'General', 'droppin_sociallogin_fid');
            }
            if (version_compare(Mage::getVersion(), '1.4.2', '>='))
            {
                Mage::getSingleton('eav/config')
                    ->getAttribute('customer', 'droppin_sociallogin_fid')
                    ->save();
            }

            echo "Setup complete<br />";
        } else {
            echo 'All attr exits. Nothing to do.';
        }
    }
}