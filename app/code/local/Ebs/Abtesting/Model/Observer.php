<?php
class Ebs_Abtesting_Model_Observer
{
	public function abtestingField($observer){
        //get CMS model with data
        $model = Mage::registry('cms_page');
        //get form instance
        $form = $observer->getForm();
        //create new custom fieldset 'abtesting_content_fieldset'
        $fieldset = $form->addFieldset('abtesting_content_fieldset', array('legend'=>Mage::helper('cms')->__('Google Experiment Code'),'class'=>'fieldset-wide'));
        //add new field
        $fieldset->addField('abtesting_content', 'textarea', array(
            'name'      => 'abtesting_content',
            'label'     => Mage::helper('cms')->__('Google Experiment Code'),
            'title'     => Mage::helper('cms')->__('Google Experiment Code'),
            'disabled'  => false,
            'value'     => $model->getAbtestingContent() //set field value
        ));
    }

    public function googleCodeToHtmlAfter($observer){
        $event = $observer->getEvent();
        //$controller = $event->getControllerAction();
        $block = $event->getBlock();
        $transport = $event->getTransport();
        $headBlockClassName = Mage::getConfig()->getBlockClassName('page/html_head');
        if($block instanceof $headBlockClassName){
            $checkAdded = Mage::getSingleton('core/session')->getCheckAdded();
            if($checkAdded >= 2){
                $checkAdded = 0;
            }
            $checkAdded++;

            Mage::getSingleton('core/session')->setCheckAdded($checkAdded);     
            $analyticsScript = $this->insertScriptAfterAll($block->getRequest());

            if($analyticsScript){
                $html = $transport->getHtml();
                $html = trim($analyticsScript).$html;
                $transport->setHtml($html);
                Mage::getSingleton('core/session')->setCheckAdded(0);
            }
        }
    }

    protected function insertScriptAfterAll($request){
        
        $delimiter='_';
        $fullActionName = $request->getRequestedRouteName().$delimiter.
        $request->getRequestedControllerName().$delimiter.
        $request->getRequestedActionName();
        $norouter   = str_replace("/", "_", Mage::getStoreConfig('web/default/no_route'));

        /*Add script to product detail */
        if (preg_match('/^(catalog_product_view)/i', $fullActionName)) {
            $headProductId = $request->getParam('id');
            if($headProductId){
                if(Mage::registry('current_product') 
                        && Mage::registry('current_product')->getData('abtesting_product_text')){
                    return Mage::registry('current_product')->getData('abtesting_product_text'); 
                } else {
                    $goAnaExpVal = Mage::getResourceModel('catalog/product')
                            ->getAttributeRawValue($headProductId, 'abtesting_product_text', 
                                    Mage::app()->getStore()->getId());
                    if($goAnaExpVal){
                         return $goAnaExpVal;
                    }
                }
            }

        }/*Add script to category page */
        else if(preg_match('/^(catalog_category_view)/i', $fullActionName)){
            $headCategoryId = $request->getParam('id');
            if($headCategoryId){ 
                if(Mage::registry('current_category') 
                        && Mage::registry('current_category')->getData('abtesting_category_text')){
                    return Mage::registry('current_category')->getData('abtesting_category_text'); 
                } else {
                    $goAnaExpVal = Mage::getResourceModel('catalog/category')
                            ->getAttributeRawValue($headCategoryId, 'abtesting_category_text', 
                                    Mage::app()->getStore()->getId());
                    if($goAnaExpVal){
                        return $goAnaExpVal;
                    }                
                }
            }                
        }/*Add script to cms page view */
        else if (preg_match('/^(cms_page_view)/i', $fullActionName)) {
            $headProductId = $request->getParam('page_id');
            if($headProductId){ 
                $page   = Mage::getModel('cms/page')->load($headProductId);
                return $page->getData('abtesting_content');
            }
    
        }/*Add script to Home page */
        else if(preg_match('/^(cms_index_index)/i', $fullActionName)){
            $headProductId = Mage::getStoreConfig('web/default/cms_home_page');         
            if($headProductId){
                $page   = Mage::getModel('cms/page')->load($headProductId, 'identifier');                               
                return $page->getData('abtesting_content');
            }
        }/*Add script to no router */
        elseif(preg_match('/^('.$norouter.')/i', $fullActionName)){
            $headProductId = Mage::getStoreConfig('web/default/cms_no_route');          
            if($headProductId){
                $page   = Mage::getModel('cms/page')->load($headProductId, 'identifier');                               
                return $page->getData('abtesting_content');
            }
        }

        return false;
    
    }
}
	 