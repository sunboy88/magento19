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

class Droppin_SocialLogin_Helper_Data extends Mage_Core_Helper_Abstract
{
    public function redirect404($frontController)
    {
        $frontController->getResponse()
            ->setHeader('HTTP/1.1', '404 Not Found');
        $frontController->getResponse()
            ->setHeader('Status', '404 File not found');

        $pageId = Mage::getStoreConfig('web/default/cms_no_route');
        if (!Mage::helper('cms/page')->renderPage($frontController, $pageId)) {
            $frontController->_forward('defaultNoRoute');
        }
    }

    public function checkShowSociallogin(){
        $result = false;
        $servers = array(
            'facebook'
        );
        $count = 0;
        foreach($servers as $server){
            $xml_path = $this->_getXmlPath($server);
            $server_enable = Mage::getStoreConfig($xml_path);
            if($server_enable == 1){
                $count++;
            }
        }

        if($count != 0){
            $result = true;
        }

        return $result;
    }

    protected function _getXmlPath($server_name){
        $data = "droppin_sociallogin/".$server_name.'/enabled';
        return $data;
    }
}