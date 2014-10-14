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

class Droppin_SocialLogin_Block_Share extends Mage_Core_Block_Template {

    protected function _construct()
    {
        parent::_construct();
        $this->setTemplate('droppin_sociallogin/shareorder/share.phtml');
    }

    public function getEnabled() 
    { 
        return Mage::getStoreConfig('droppin_sociallogin/shareorder/enable');
    }
    
    public function getFacebookImg($_product) 
    {
		if(Mage::getStoreConfig('droppin_sociallogin/shareorder/facebook_enable')) {
			$share = '<a name="fb_share" type="button_count" share_url="' . $_product->getProductUrl() .'"></a>';			
		} else {
			$share = '';
		}		
		return $share;		
    }
     
}
