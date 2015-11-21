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

class Ebs_InstagramConnect_Model_Source_Updatetype
{

    /**
     * Options getter
     *
     * @return array
     */
    public function toOptionArray()
    {
        return array(
            array('value' => 1, 'label'=>Mage::helper('instagramconnect')->__('By user')),
            array('value' => 0, 'label'=>Mage::helper('instagramconnect')->__('By tags')),
        );
    }

    /**
     * Get options in "key-value" format
     *
     * @return array
     */
    public function toArray()
    {
        return array(
            0 => Mage::helper('instagramconnect')->__('By user'),
            1 => Mage::helper('instagramconnect')->__('By tags'),
        );
    }

}
