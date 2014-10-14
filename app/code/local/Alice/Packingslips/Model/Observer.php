<?php
class Alice_Packingslips_Model_Observer
{

			public function saveExchangeOrder(Varien_Event_Observer $observer)
			{
				 $exchangeOrder = 'No';
				 $post = Mage::app()->getRequest()->getPost();
				 if(isset($post['order']['exchange_order'])){
				 	$exchangeOrder = 'Yes';
				 }
				$order = $observer->getEvent()->getOrder();
				$order->setExchangeOrder($exchangeOrder);
				$order->save();
			}
		
}
