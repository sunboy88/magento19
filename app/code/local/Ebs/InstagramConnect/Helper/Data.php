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
 
class Ebs_InstagramConnect_Helper_Data extends Mage_Core_Helper_Abstract
{
	public function isEnabled()
	{
		return (bool) Mage::getStoreConfig('ebs_instagramconnect/module_options/enabled');
	}
	
	public function showImagesOnProductPage()
	{
		return (bool) Mage::getStoreConfig('ebs_instagramconnect/module_options/product');
	}
	
	public function showImagesOnHomePage()
	{
		return (bool) Mage::getStoreConfig('ebs_instagramconnect/module_options/homepage');
	}
	
	public function getHomePageLimit()
	{
		return (int) Mage::getStoreConfig('ebs_instagramconnect/module_options/homepage_limit');
	}
	
	public function getProductPageLimit()
	{
		return (int) Mage::getStoreConfig('ebs_instagramconnect/module_options/product_limit');
	}

    /**
     * Build url
     * @param $url string Ex. 'http://example.com'
     * @param $params array Ex. array( 'page' => 1 )
     * @return string Ex. 'http://example.com?page=1'
     */
    public function buildUrl($url, $params){

        $strParams = array();
        foreach($params as $key => $value){
            $strParams[] = $key . '=' . $value;
        }
        $buildedUrl = is_null($url) ? '' : $url . '?';
        return $buildedUrl . implode('&', $strParams);
    }

    /**
     * Get module config section url in admin configuration
     * @return string
     */
    public function getAdminConfigSectionUrl()
    {
        $url = Mage::getModel('adminhtml/url');
        return $url->getUrl('adminhtml/system_config/edit', array(
            '_current'  => true,
            'section'   => 'ebs_instagramconnect'
        ));
    }
}
