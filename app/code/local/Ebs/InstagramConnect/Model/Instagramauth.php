<?php
/**
 * Ebluestore
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
 * Do not edit or add to this file if you wish to upgrade InstagramConnect to newer
 * versions in the future.
 *
 * @category    Ebluestore
 * @package     Ebs_InstagramConnect
 * @copyright   Copyright (c) 2014 Ebluestore LLC
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class Ebs_InstagramConnect_Model_Instagramauth
{
    const INSTAGRAM_SESSION_DATA_KEY = 'instagram_session_data';
    const INSTAGRAM_CONFIG_DATA_KEY = 'ebs/instagram_connect/instagram_data';
    
    public function getUserData()
    {
        /** @var $session Mage_Core_Model_Session  */
        $session = Mage::getModel('core/session');
        $info = $session->getData('instagram_session_data');
   
        if (!$info) {
            $configDataKey = self::INSTAGRAM_CONFIG_DATA_KEY;
               
            $info = unserialize(Mage::getStoreConfig($configDataKey, 0));
        }

        return $info;
    }

    public function isValid()
    {
        $configDataKey = self::INSTAGRAM_CONFIG_DATA_KEY;
        return (!!$this->getUserData() || Mage::getStoreConfig($configDataKey, 0));
    }

    public function getAccessToken()
    {
        return $this->getUserData()->access_token;
    }

}
