<?php
/**
 * Magmodules.eu
 * http://www.magmodules.eu
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to info@magmodules.eu so we can send you a copy immediately.
 *
 * @category    Magmodules
 * @package     Magmodules_Ordershare
 * @author      Magmodules <info@magmodules.eu)
 * @copyright   Copyright (c) 2013 (http://www.magmodules.eu)
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class LitExtension_SocialLogin_Block_Share extends Mage_Core_Block_Template {

    protected function _construct()
    {
        parent::_construct();
        $this->setTemplate('le_sociallogin/shareorder/share.phtml');
    }

    public function getEnabled() 
    { 
        return Mage::getStoreConfig('le_sociallogin/shareorder/enable');
    }
    
    public function getFacebookImg($_product) 
    {
		if(Mage::getStoreConfig('le_sociallogin/shareorder/facebook_enable')) {
			$share = '<a name="fb_share" type="button_count" share_url="' . $_product->getProductUrl() .'"></a>';			
		} else {
			$share = '';
		}		
		return $share;		
    }
     
}
