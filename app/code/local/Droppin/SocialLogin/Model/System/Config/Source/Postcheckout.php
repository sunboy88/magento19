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
class Droppin_SocialLogin_Model_System_Config_Source_Postcheckout {

    public function toOptionArray() {
        return array(
            array('value' => '1', 'label' => Mage::helper('adminhtml')->__('Top')),
            array('value' => '0', 'label' => Mage::helper('adminhtml')->__("Don't Show")),
        );
    }

}
