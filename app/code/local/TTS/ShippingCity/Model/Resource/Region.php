<?php
class TTS_ShippingCity_Model_Resource_Region extends Mage_Core_Model_Resource_Db_Abstract
{

    protected function _construct()
    {
        $this->_init('directory/country_region', 'region_id');
    }
}