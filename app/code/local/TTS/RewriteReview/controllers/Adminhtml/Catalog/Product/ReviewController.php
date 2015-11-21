<?php
//require_once "Mage/Adminhtml/controllers/Catalog/Product/ReviewController.php";
require_once Mage::getModuleDir('controllers', 'Mage_Adminhtml').DS.'Catalog'.DS. 'Product' .DS.'ReviewController.php'; 
class TTS_RewriteReview_Adminhtml_Catalog_Product_ReviewController extends Mage_Adminhtml_Catalog_Product_ReviewController{

	 public function newAction()
    {
    	die('ddd');
        $this->_title($this->__('Catalog'))
             ->_title($this->__('Reviews and Ratings'))
             ->_title($this->__('Customer Reviews'));

        $this->_title($this->__('New Review'));

        $this->loadLayout();
        $this->_setActiveMenu('catalog/review');

        $this->getLayout()->getBlock('head')->setCanLoadExtJs(true);

        $this->_addContent($this->getLayout()->createBlock('adminhtml/review_add'));
        $this->_addContent($this->getLayout()->createBlock('adminhtml/review_product_grid'));

        $this->renderLayout();
    }

}
				