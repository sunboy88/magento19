<?php
class Alice_Packingslips_Block_Adminhtml_Sales_Order_Grid extends Mage_Adminhtml_Block_Sales_Order_Grid
{


    protected function _prepareColumns()
    {
        parent::_prepareColumns();

        $this->addColumn('real_order_id', array(
            'header'=> Mage::helper('sales')->__('Order #'),
            'width' => '80px',
            'type'  => 'text',
            'index' => 'increment_id',
            'filter_index' => 'main_table.increment_id'
        ));

        if (!Mage::app()->isSingleStoreMode()) {
            $this->addColumn('store_id', array(
                'header'    => Mage::helper('sales')->__('Purchased From (Store)'),
                'index'     => 'store_id',
                'type'      => 'store',
                'store_view'=> true,
                'display_deleted' => true,
                'filter_index' => 'main_table.store_id'
            ));
        }

        $this->addColumn('created_at', array(
            'header' => Mage::helper('sales')->__('Purchased On'),
            'index' => 'created_at',
            'type' => 'datetime',
            'width' => '100px',
            'filter_index' => 'main_table.created_at'
        ));

        $this->addColumn('billing_name', array(
            'header' => Mage::helper('sales')->__('Bill to Name'),
            'index' => 'billing_name',
        ));

        $this->addColumn('shipping_name', array(
            'header' => Mage::helper('sales')->__('Ship to Name'),
            'index' => 'shipping_name',
        ));

        $this->addColumn('base_grand_total', array(
            'header' => Mage::helper('sales')->__('G.T. (Base)'),
            'index' => 'base_grand_total',
            'type'  => 'currency',
            'currency' => 'base_currency_code',
            'filter_index' => 'main_table.base_grand_total'
        ));

        $this->addColumn('grand_total', array(
            'header' => Mage::helper('sales')->__('G.T. (Purchased)'),
            'index' => 'grand_total',
            'type'  => 'currency',
            'currency' => 'order_currency_code',
            'filter_index' => 'main_table.grand_total'
        ));

        $this->addColumn('status', array(
            'header' => Mage::helper('sales')->__('Status'),
            'index' => 'status',
            'type'  => 'options',
            'width' => '70px',
            'options' => Mage::getSingleton('sales/order_config')->getStatuses(),
            'filter_index' => 'main_table.status'
        ));

        if (Mage::getSingleton('admin/session')->isAllowed('sales/order/actions/view')) {
            $this->addColumn('action',
                array(
                    'header'    => Mage::helper('sales')->__('Action'),
                    'width'     => '50px',
                    'type'      => 'action',
                    'getter'     => 'getId',
                    'actions'   => array(
                        array(
                            'caption' => Mage::helper('sales')->__('View'),
                            'url'     => array('base'=>'*/sales_order/view'),
                            'field'   => 'order_id'
                        )
                    ),
                    'filter'    => false,
                    'sortable'  => false,
                    'index'     => 'stores',
                    'is_system' => true,
            ));
        }
        //$this->addRssList('rss/order/new', Mage::helper('sales')->__('New Order RSS'));

        //$this->addExportType('*/*/exportCsv', Mage::helper('sales')->__('CSV'));
      //  $this->addExportType('*/*/exportExcel', Mage::helper('sales')->__('Excel XML'));

       // return parent::_prepareColumns();
    }

      protected function _prepareMassaction()
    {
        $this->setMassactionIdField('entity_id');
        $this->getMassactionBlock()->setFormFieldName('order_ids');
        $this->getMassactionBlock()->setUseSelectAll(false);

        if (Mage::getSingleton('admin/session')->isAllowed('sales/order/actions/cancel')) {
            $this->getMassactionBlock()->addItem('cancel_order', array(
                 'label'=> Mage::helper('sales')->__('Cancel'),
                 'url'  => $this->getUrl('*/sales_order/massCancel'),
            ));
        }

        if (Mage::getSingleton('admin/session')->isAllowed('sales/order/actions/hold')) {
            $this->getMassactionBlock()->addItem('hold_order', array(
                 'label'=> Mage::helper('sales')->__('Hold'),
                 'url'  => $this->getUrl('*/sales_order/massHold'),
            ));
        }

        if (Mage::getSingleton('admin/session')->isAllowed('sales/order/actions/unhold')) {
            $this->getMassactionBlock()->addItem('unhold_order', array(
                 'label'=> Mage::helper('sales')->__('Unhold'),
                 'url'  => $this->getUrl('*/sales_order/massUnhold'),
            ));
        }

        $this->getMassactionBlock()->addItem('pdfinvoices_order', array(
             'label'=> Mage::helper('sales')->__('Print Invoices'),
             'url'  => $this->getUrl('*/sales_order/pdfinvoices'),
        ));

        $this->getMassactionBlock()->addItem('pdfshipments_order', array(
             'label'=> Mage::helper('sales')->__('Print Packingslips'),
             'url'  => $this->getUrl('*/sales_order/pdfshipments'),
        ));
       // var_dump($this->getUrl('packingslips/printpacking/printpackingslips'));
        //die('ddd');
        $this->getMassactionBlock()->addItem('packingslips',array(
                'label' => $this->__('WeRD Packingslips'),
                'url'   => $this->getUrl('*/printpacking/print')
            )
        );

        $this->getMassactionBlock()->addItem('exchangeslips',array(
                'label' => $this->__('WeRD Exchangeslips'),
                'url'   => $this->getUrl('*/printpacking/printExchange')
            )
        );

        $this->getMassactionBlock()->addItem('pdfcreditmemos_order', array(
             'label'=> Mage::helper('sales')->__('Print Credit Memos'),
             'url'  => $this->getUrl('*/sales_order/pdfcreditmemos'),
        ));

        $this->getMassactionBlock()->addItem('pdfdocs_order', array(
             'label'=> Mage::helper('sales')->__('Print All'),
             'url'  => $this->getUrl('*/sales_order/pdfdocs'),
        ));

        $this->getMassactionBlock()->addItem('print_shipping_label', array(
             'label'=> Mage::helper('sales')->__('Print Shipping Labels'),
             'url'  => $this->getUrl('*/sales_order_shipment/massPrintShippingLabel'),
        ));

        return $this;
    }
}
			