<?php

class TTS_ShippingCity_CityController extends Mage_Core_Controller_Front_Action
{

    public function listBillingAction()
    {
        $post = $this->getRequest();
        $regionId = $post->getParam('regionId');
        $cityId = $post->getParam('cityId');
        $optionsArr = Mage::getModel('shippingcity/city')->getCities($regionId);
        $values = array();
        $html = '';
        $html.= '<select id="billing:city" name="billing[city]" title="City">';
        $html.= '<option value="">-- Please select --</option>';
        foreach ($optionsArr as $option) {
            $values[] = array(
                'value' => $option['city_id'],
                'label' => $option['name']
            );
            if($cityId != ''){
                if($cityId == $option['city_id']){
                    $html.= '<option value="'.$option['city_id'].'" selected>'.$option['name'].'</option>';    
                }else{
                    $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';
                }
                
            }else{
                $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';    
            }
            
        }
        $html.= '</select>';
        $this->getResponse()->setHeader('Content-type', 'application/json');
        $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html)));
        // $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html))); 
    }

    public function listShippingAction()
    {
        $post = $this->getRequest();
        $regionId = $post->getParam('regionId');
        $cityId = $post->getParam('cityId');
        $optionsArr = Mage::getModel('shippingcity/city')->getCities($regionId);
        $values = array();
        $html = '';
        $html.= '<select id="shipping:city" name="shipping[city]" title="City">';
        $html.= '<option value="">-- Please select --</option>';
        foreach ($optionsArr as $option) {
            $values[] = array(
                'value' => $option['city_id'],
                'label' => $option['name']
            );
            if($cityId != ''){
                if($cityId == $option['city_id']){
                    $html.= '<option value="'.$option['city_id'].'" selected>'.$option['name'].'</option>';    
                }else{
                    $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';
                }
                
            }else{
                $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';    
            }
            
        }
        $html.= '</select>';
        $this->getResponse()->setHeader('Content-type', 'application/json');
        $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html)));
        // $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html))); 
    }

    public function listCityAccountAction()
    {
        $post = $this->getRequest();
        $regionId = $post->getParam('regionId');
        $cityId = $post->getParam('cityId');
        $optionsArr = Mage::getModel('shippingcity/city')->getCities($regionId);
        $values = array();
        $html = '';
        $html.= '<select id="scity" name="city" title="City">';
        $html.= '<option value="">-- Please select --</option>';
        foreach ($optionsArr as $option) {
            $values[] = array(
                'value' => $option['city_id'],
                'label' => $option['name']
            );
            if($cityId != ''){
                if($cityId == $option['city_id']){
                    $html.= '<option value="'.$option['city_id'].'" selected>'.$option['name'].'</option>';    
                }else{
                    $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';
                }
                
            }else{
                $html.= '<option value="'.$option['city_id'].'">'.$option['name'].'</option>';    
            }
            
        }
        $html.= '</select>';
        $this->getResponse()->setHeader('Content-type', 'application/json');
        $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html)));
        // $this->getResponse()->setBody(json_encode(array('success' => true, 'data' => $html))); 
    }

}
