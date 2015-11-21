<?php
$installer = $this;
$installer->startSetup();

$setup = new Mage_Eav_Model_Entity_Setup('core_setup');

$setup->addAttribute('catalog_category', 'abtesting_category_text', array(
    'group'         => 'A/B Testing Google Experiment Code',
    'input'         => 'textarea',
    'type'          => 'varchar',
    'label'         => 'Google Experiment Code',
    'backend'       => '',
    'visible'       => 1,
    'required'      => 0,
    'user_defined' => 1,
    'global'        => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
));

$setup->addAttribute('catalog_product', 'abtesting_product_text', array(
    'group'         => 'A/B Testing Google Experiment Code',
    'input'         => 'textarea',
    'type'          => 'varchar',
    'label'         => 'Google Experiment Code',
    'backend'       => '',
    'visible'       => 1,
    'required'      => 0,
    'user_defined' => 1,
    'global'        => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
));


 
 $installer->run(' ALTER TABLE `cms_page` ADD `abtesting_content_fieldset` VARCHAR( 255 ) NULL; ');

 //$setup->removeAttribute('catalog_category', 'abtesting_category_text');
 //$setup->removeAttribute('catalog_category', 'abtesting_product_text');

$installer->endSetup();
	 