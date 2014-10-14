<?php
class Alice_Packingslips_Model_Order_Observer
{

	public function salesOrderGridCollectionLoadBefore($observer)
    {
        $collection = $observer->getOrderGridCollection();
        $select = $collection->getSelect();
        $select->joinLeft('sales_flat_order', '`sales_flat_order`.entity_id=`main_table`.entity_id', array('exchange' => 'sales_flat_order.exchange_order'));
       // $select->group('main_table.entity_id');
        //echo $select->__toString();die('dddd');
    }
		
}
