<?php
/**
 * @category   Acegento
 * @package    Acegento_Ratingfilter
 * @author     ds.gupta@hotmail.com
 * @website    http://acegento
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
class Acegento_Ratingfilter_Block_Catalog_Layer_Filter_Rating extends Mage_Catalog_Block_Layer_Filter_Abstract
{

	public function __construct()
	{
		parent::__construct();
		$this->_filterModelName = 'ratingfilter/catalog_layer_filter_rating';
	}

}