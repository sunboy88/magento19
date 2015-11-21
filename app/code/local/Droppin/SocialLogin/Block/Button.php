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

class Droppin_SocialLogin_Block_Button extends Mage_Core_Block_Template{

    protected $_buttons;

    protected function _construct(){
        parent::_construct();
        $this->_addButtons();
        $this->setTemplate('droppin_sociallogin/button.phtml');
    }

    protected function _addButtons(){
        $this->_addButton(new Droppin_SocialLogin_Block_Button_Type_Facebook());
    }

    protected function _addButton(Droppin_SocialLogin_Block_Button_Type $button){
        $this->_buttons[] = $button;
    }

    protected function getButtons(){
        return $this->_buttons;
    }

}