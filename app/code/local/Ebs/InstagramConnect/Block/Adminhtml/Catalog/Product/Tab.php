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

class Ebs_InstagramConnect_Block_Adminhtml_Catalog_Product_Tab
extends Mage_Adminhtml_Block_Template
implements Mage_Adminhtml_Block_Widget_Tab_Interface {

	  /**
     * Set the template for the block
     *
     */
    public function _construct()
    {
        parent::_construct();
         
        $this->setTemplate('ebs/instagram_connect/catalog/product/tab.phtml');
    }
     
    /**
     * Retrieve the label used for the tab relating to this block
     *
     * @return string
     */
    public function getTabLabel()
    {
        return $this->__('Instagram Product Images');
    }
     
    /**
     * Retrieve the title used by this tab
     *
     * @return string
     */
    public function getTabTitle()
    {
        return $this->__('Instagram Product Images');
    }
     
    /**
     * Determines whether to display the tab
     * Add logic here to decide whether you want the tab to display
     *
     * @return bool
     */
    public function canShowTab()
    {
        return true;
    }
     
    /**
     * Stops the tab being hidden
     *
     * @return bool
     */
    public function isHidden()
    {
        return false;
    }
 
     
    /**
     * AJAX TAB's
     * If you want to use an AJAX tab, uncomment the following functions
     * Please note that you will need to setup a controller to recieve
     * the tab content request
     *
     */
    /**
     * Retrieve the class name of the tab
     * Return 'ajax' here if you want the tab to be loaded via Ajax
     *
     * return string
     */
#   public function getTabClass()
#   {
#       return 'my-custom-tab';
#   }
 
    /**
     * Determine whether to generate content on load or via AJAX
     * If true, the tab's content won't be loaded until the tab is clicked
     * You will need to setup a controller to handle the tab request
     *
     * @return bool
     */
#   public function getSkipGenerateContent()
#   {
#       return false;
#   }
 
    /**
     * Retrieve the URL used to load the tab content
     * Return the URL here used to load the content by Ajax 
     * see self::getSkipGenerateContent & self::getTabClass
     *
     * @return string
     */
#   public function getTabUrl()
#   {
#       return null;
#   }


}
