<?php
/**
* aheadWorks Co.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://ecommerce.aheadworks.com/AW-LICENSE-COMMUNITY.txt
 *
 * =================================================================
 *                 MAGENTO EDITION USAGE NOTICE
 * =================================================================
 * This package designed for Magento COMMUNITY edition
 * aheadWorks does not guarantee correct work of this extension
 * on any other Magento edition except Magento COMMUNITY edition.
 * aheadWorks does not provide extension support in case of
 * incorrect edition usage.
 * =================================================================
 *
 * @category   AW
 * @package    AW_AdvancedReviews
 * @version    2.2.4
 * @copyright  Copyright (c) 2010-2012 aheadWorks Co. (http://www.aheadworks.com)
 * @license    http://ecommerce.aheadworks.com/AW-LICENSE-COMMUNITY.txt
 */

class AW_AdvancedReviews_Block_Adminhtml_Proscons_User extends Mage_Adminhtml_Block_Widget_Grid_Container
{

    protected function _getRef()
    {
        return 'user';
    }

    public function __construct()
    {
        $this->_controller = 'adminhtml_proscons';
        $this->_blockGroup = 'advancedreviews';
        $this->_headerText = $this->__('User-defined Pros and Cons');
        parent::__construct();
        $this->_removeButton('add');
    }
}
