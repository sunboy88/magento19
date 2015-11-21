<?php
class Alice_Packingslips_PrintpackingController extends Mage_Adminhtml_Controller_Action
{

	public function printAction(){
		$order_ids = $this->getRequest()->getParam('order_ids');
        $modelOrder = Mage::getModel('sales/order');
        $checkStatus = 0;
        $pdf = new Zend_Pdf(); // the one big pdf with all the orders that need packing slips

        foreach($order_ids as $order_id)
        {
            $order = $modelOrder->load($order_id);
            if($order->getData('status')=='processing' || $order->getData('status')=='processingpreorder'){
                $checkStatus = 1;
                $prePackingslips = Mage::getModel('packingslips/sales_order_shipment');
                $prePackingslips->setOrderPackingslips($order);
                $shipments = array();
                $shipments[] = $prePackingslips;
                $tmp_pdf = Mage::getModel('sales/order_pdf_shipment')->getPdfPackingslips($shipments);
                $pdf->pages = array_merge($pdf->pages, $tmp_pdf->pages);
            }
            
        }
        //die('22222');
        if($checkStatus){
            $this->_prepareDownloadResponse('WeRD packingslip'.Mage::getSingleton('core/date')->date('Y-m-d_H-i-s').'.pdf',
                $pdf->render(), 'application/pdf'
            );    
        }else{
            $this->_getSession()->addError($this->__('There are no printable documents related to selected orders.'));
            $this->_redirectUrl(Mage::helper('adminhtml')->getUrl("*/sales_order/index"));  
        }
        
	}

    public function printExchangeAction(){
        $order_ids = $this->getRequest()->getParam('order_ids');
        $modelOrder = Mage::getModel('sales/order');
        $checkStatus = 0;
        $pdf = new Zend_Pdf(); // the one big pdf with all the orders that need packing slips

        foreach($order_ids as $order_id)
        {
            $order = $modelOrder->load($order_id);
            if($order->getData('status')=='processing' || $order->getData('status')=='processingpreorder'){
                $checkStatus = 1;
                $prePackingslips = Mage::getModel('packingslips/sales_order_shipment');
                $prePackingslips->setOrderPackingslips($order);
                $shipments = array();
                $shipments[] = $prePackingslips;
                $tmp_pdf = Mage::getModel('sales/order_pdf_shipment')->getPdfPackingslips($shipments);
                $pdf->pages = array_merge($pdf->pages, $tmp_pdf->pages);
            }
            
        }
        //die('22222');
        if($checkStatus){
            $this->_prepareDownloadResponse('WeRD exchange packingslip'.Mage::getSingleton('core/date')->date('Y-m-d_H-i-s').'.pdf',
                $pdf->render(), 'application/pdf'
            );    
        }else{
            $this->_getSession()->addError($this->__('There are no printable documents related to selected orders.'));
            $this->_redirectUrl(Mage::helper('adminhtml')->getUrl("*/sales_order/index"));  
        }
        
    }
}
	 