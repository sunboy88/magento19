<?php
/**
 * @category   Acegento
 * @package    Acegento_Ratingfilter
 * @author     ds.gupta@hotmail.com
 * @website    http://acegento
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class Acegento_Ratingfilter_Block_Ratingfilter extends Mage_Core_Block_Template
{
	public function _prepareLayout()
    {
		return parent::_prepareLayout();
    }
    
     public function getRatingfilter()     
     { 
        if (!$this->hasData('ratingfilter')) {
            $this->setData('ratingfilter', Mage::registry('ratingfilter'));
        }
        return $this->getData('ratingfilter');
        
    }
}
