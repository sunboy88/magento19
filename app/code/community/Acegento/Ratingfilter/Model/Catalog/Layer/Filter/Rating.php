<?php
/**
 * @category   Acegento
 * @package    Acegento_Ratingfilter
 * @author     ds.gupta@hotmail.com
 * @website    http://acegento
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
class Acegento_Ratingfilter_Model_Catalog_Layer_Filter_Rating  extends Mage_Catalog_Model_Layer_Filter_Abstract
{

	const FILTER_ON_SALE = 1;
	const FILTER_NOT_ON_SALE = 2;
	
	
	
	const RATING_FILTER_ON_RATED 	= 6;
	const RATING_FILTER_RATED_1 	= 1;
	const RATING_FILTER_RATED_2 	= 2;
	const RATING_FILTER_RATED_3 	= 3;
	const RATING_FILTER_RATED_4 	= 4;
	const RATING_FILTER_RATED_5 	= 5;
	

	/**
	 * Class constructor
	 */
	public function __construct()
	{
		parent::__construct();
		$this->_requestVar = 'rating';
	}

	/**
	 * Apply sale filter to layer
	 *
	 * @param   Zend_Controller_Request_Abstract $request
	 * @param   Mage_Core_Block_Abstract $filterBlock
	 * @return  Mage_Catalog_Model_Layer_Filter_Sale
	 */
	public function apply(Zend_Controller_Request_Abstract $request, $filterBlock)
	{
		$filter = (int) $request->getParam($this->getRequestVar());
		if (!$filter || Mage::registry('acegento_rating_filter')) {
			return $this;
		}

		$select = $this->getLayer()->getProductCollection()->getSelect();
		/* @var $select Zend_Db_Select */

	    
        $select->joinLeft(array('rs'=>'review_entity_summary'), ' e.entity_id = rs.entity_pk_value and cat_index.store_id = rs.store_id ');
        $select->columns(array('avg_Summary' => new Zend_Db_Expr('avg(rating_summary)')));
        $select->group("e.entity_id");
        
		if ($filter === self::RATING_FILTER_ON_RATED) {
			
			$select->where('(rs.rating_summary = 0 or rs.rating_summary is NULL )');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/nonrated"));
			
		} else if ($filter == self::RATING_FILTER_RATED_1) {
			$select->where('(rs.rating_summary > 0 and rs.rating_summary <= 20)');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/onestar"));
			
		}else if ($filter == self::RATING_FILTER_RATED_2) {
			$select->where('(rs.rating_summary > 20 and rs.rating_summary <= 40)');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/twostar"));
			
		}else if ($filter == self::RATING_FILTER_RATED_3) {
			$select->where('(rs.rating_summary > 40 and rs.rating_summary <= 60)');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/threestar"));
			
		}else if ($filter == self::RATING_FILTER_RATED_4) {
  			$select->where('(rs.rating_summary > 60 and rs.rating_summary <= 80)');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/fourstar"));
			
		}else if ($filter == self::RATING_FILTER_RATED_5) {
			$select->where('(rs.rating_summary > 80 and rs.rating_summary <= 100)');
			$stateLabel = Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/fivestar"));
			
		}

		$state = $this->_createItem(
				$stateLabel, $filter
		)->setVar($this->_requestVar);
		
		
		/* @var $state Mage_Catalog_Model_Layer_Filter_Item */
		$this->getLayer()->getState()->addFilter($state);

		Mage::register('acegento_rating_filter', true);

		return $this;
	}

	/**
	 * Get filter name
	 *
	 * @return string
	 */
	public function getName()
	{
		return Mage::helper('ratingfilter')->__('Rating');
	}

	/**
	 * Get data array for building sale filter items
	 *
	 * @return array
	 */
	protected function _getItemsData()
	{
		$data = array();
		$status = $this->_getCount();
		
		if (Mage::app()->getRequest()->getParam($this->_requestVar))
			return $data;
		
		if (!Mage::getStoreConfig("acegentoratingfilter/option/active")) {
			return $data;
		}
		
		
		if (isset($status[self::RATING_FILTER_ON_RATED]) && $status[self::RATING_FILTER_ON_RATED]) 
		$data[] = array(
				'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/nonrated")),
				'value' => self::RATING_FILTER_ON_RATED,
				'count' => $status[self::RATING_FILTER_ON_RATED],
		);

		if (isset($status[self::RATING_FILTER_RATED_1]) && $status[self::RATING_FILTER_RATED_1])
		$data[] = array(
				'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/onestar")),
				'value' => self::RATING_FILTER_RATED_1,
				'count' => $status[self::RATING_FILTER_RATED_1],
		);
		
		
		if (isset($status[self::RATING_FILTER_RATED_2]) && $status[self::RATING_FILTER_RATED_2])
			$data[] = array(
					'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/twostar")),
					'value' => self::RATING_FILTER_RATED_2,
					'count' => $status[self::RATING_FILTER_RATED_2],
			);
		
		
		if (isset($status[self::RATING_FILTER_RATED_3]) && $status[self::RATING_FILTER_RATED_3])
			$data[] = array(
					'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/threestar")),
					'value' => self::RATING_FILTER_RATED_3,
					'count' => $status[self::RATING_FILTER_RATED_3],
			);
		
		
		
		if (isset($status[self::RATING_FILTER_RATED_4]) && $status[self::RATING_FILTER_RATED_4])
			$data[] = array(
					'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/fourstar")),
					'value' => self::RATING_FILTER_RATED_4,
					'count' => $status[self::RATING_FILTER_RATED_4],
			);
		
		if (isset($status[self::RATING_FILTER_RATED_5]) && $status[self::RATING_FILTER_RATED_5])
			$data[] = array(
					'label' => Mage::helper('ratingfilter')->__(Mage::getStoreConfig("acegentoratingfilter/option/fivestar")),
					'value' => self::RATING_FILTER_RATED_5,
					'count' => $status[self::RATING_FILTER_RATED_5],
			);
		
		
		return $data;
	}

	protected function _getCount()
	{
		// Clone the select
		$select = clone $this->getLayer()->getProductCollection()->getSelect();
		/* @var $select Zend_Db_Select */
		
			
		$select->reset(Zend_Db_Select::ORDER);
		$select->reset(Zend_Db_Select::LIMIT_COUNT);
		$select->reset(Zend_Db_Select::LIMIT_OFFSET);
		$select->reset(Zend_Db_Select::WHERE);
		
		if (!Mage::registry('acegento_rating_filter')) {
		$select->joinLeft(array('rs'=>'review_entity_summary'), ' e.entity_id = rs.entity_pk_value and cat_index.store_id = rs.store_id ');
		$select->columns(array('avg_Summary' => new Zend_Db_Expr('avg(rating_summary)')));
		$select->group("e.entity_id");
		}
//  		echo $select->__toString();

		// Count the on sale and not on sale
// 		$sql = 'SELECT IF(avg_Summary > 0 and avg_Summary < 21, "1", "Null") as on_sale, COUNT(*) as count from ('
// 				.$select->__toString().') AS q GROUP BY on_sale';

		$sql = 'SELECT CASE 
					when avg_Summary > 0 and avg_Summary <= 20 	then 1
					when avg_Summary > 20 and avg_Summary <= 40 then 2			
					when avg_Summary > 40 and avg_Summary <= 60 then 3
					when avg_Summary > 60 and avg_Summary <= 80 then 4
					when avg_Summary > 80 and avg_Summary <= 100 then 5
					ELSE
					6
				END
				as on_sale, COUNT(*) as count from ('
				.$select->__toString().') AS q GROUP BY on_sale';
		
		


		$connection = Mage::getSingleton('core/resource')->getConnection('core_read');
		/* @var $connection Zend_Db_Adapter_Abstract */

		return $connection->fetchPairs($sql);
	}

}