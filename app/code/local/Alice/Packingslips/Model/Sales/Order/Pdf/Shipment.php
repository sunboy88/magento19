<?php
class Alice_Packingslips_Model_Sales_Order_Pdf_Shipment extends Mage_Sales_Model_Order_Pdf_Shipment
{
	    /**
     * Return PDF document
     *
     * @param  array $shipments
     * @return Zend_Pdf
     */
    public function getPdfPackingslips($shipments = array())
    {
        $this->_beforeGetPdf();
        $this->_initRenderer('shipment');

        $pdf = new Zend_Pdf();
        $this->_setPdf($pdf);
        $style = new Zend_Pdf_Style();
        $this->_setFontBold($style, 10);
        foreach ($shipments as $shipment) {
            if ($shipment->getStoreId()) {
                Mage::app()->getLocale()->emulate($shipment->getStoreId());
                Mage::app()->setCurrentStore($shipment->getStoreId());
            }
            $page  = $this->newPage();
            $order = $shipment->getOrder();
            /* Add image */
            $this->insertLogo($page, $shipment->getStore());
            /* Add address */
            $this->insertAddress($page, $shipment->getStore());
            /* Add head */
            $this->insertOrder(
                $page,
                $shipment,
                Mage::getStoreConfigFlag(self::XML_PATH_SALES_PDF_SHIPMENT_PUT_ORDER_ID, $order->getStoreId())
            );
            /* Add document text and number */
            $this->insertDocumentNumber(
                $page,
                Mage::helper('sales')->__('Packingslip # ') . $shipment->getIncrementId()
            );
            /* Add table */
            $this->_drawHeader($page);
            /* Add body */
            $checkQty = 0;
            foreach ($shipment->getAllItems() as $item) {
                if ($item->getOrderItem()->getParentItem()) {
                    continue;
                }else{
                    $_sku = $item->getSku();
                    $productModel = Mage::getModel('catalog/product');
                    $_product = $productModel->loadByAttribute('sku', $_sku); 
                    if(!$_product->isSaleable() || $item->getQty() == 0 ){
                        $checkQty = 1;
                    }
                }

                /* Draw item */
                if(!$checkQty){
                    $this->_drawItem($item, $page, $order);    
                }
                $checkQty = 0;
                $page = end($pdf->pages);
            }
          //die('ddddd');
        }
        $this->_afterGetPdf();
        if ($shipment->getStoreId()) {
            Mage::app()->getLocale()->revert();
        }
        return $pdf;
    }
}
		