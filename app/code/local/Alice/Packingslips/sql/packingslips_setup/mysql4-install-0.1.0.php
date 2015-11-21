<?php
/**
 * Pre-Orders for Enterprise Edition
 *
 * @category:    Aitoc
 * @package:     Aitoc_Aitpreorder
 * @version      1.1.36
 * @license:     gEdLTEobjrteDi0eAQLyuFL3goUfuU0k9athngZ6Pl
 * @copyright:   Copyright (c) 2014 AITOC, Inc. (http://www.aitoc.com)
 */
/**
* @copyright  Copyright (c) 2009 AITOC, Inc. 
*/
 
$installer = $this;
/* @var $installer Mage_Eav_Model_Entity_Setup */

$installer->startSetup();

// $pageTable = $installer->getTable('sales/order');
// $installer->getConnection()->addColumn($pageTable, 'exchange_order',
//     "VARCHAR (50) NOT NULL DEFAULT 0");

$installer->getConnection()->addColumn(
    $installer->getTable('sales_flat_order'), 'exchange_order', 'varchar(10)'
);

$installer->endSetup(); 


?>