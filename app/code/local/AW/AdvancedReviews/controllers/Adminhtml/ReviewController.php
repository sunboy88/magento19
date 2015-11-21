<?php
/**
* aheadWorks Co.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://ecommerce.aheadworks.com/AW-LICENSE-COMMUNITY.txt
 *
 * =================================================================
 *                 MAGENTO EDITION USAGE NOTICE
 * =================================================================
 * This package designed for Magento COMMUNITY edition
 * aheadWorks does not guarantee correct work of this extension
 * on any other Magento edition except Magento COMMUNITY edition.
 * aheadWorks does not provide extension support in case of
 * incorrect edition usage.
 * =================================================================
 *
 * @category   AW
 * @package    AW_AdvancedReviews
 * @version    2.2.4
 * @copyright  Copyright (c) 2010-2012 aheadWorks Co. (http://www.aheadworks.com)
 * @license    http://ecommerce.aheadworks.com/AW-LICENSE-COMMUNITY.txt
 */


/*
 * In this controller we override review conroller (only admin part) for
 * editind and deleting our abused reviews (still only them!!!)
 */

require_once 'Mage/Adminhtml/controllers/Catalog/Product/ReviewController.php';

class AW_AdvancedReviews_Adminhtml_ReviewController extends Mage_Adminhtml_Catalog_Product_ReviewController {

    protected function _needReturnToAbused() {
        return ( $this->getRequest()->getParam('ret') === 'abuse' );
    }
   
    public function preDispatch() {
        
        $this->setFlag('', self::FLAG_NO_PRE_DISPATCH, true);
        
        parent::preDispatch();
        
    }
     
    public function saveAction() {
        $data = $this->getRequest()->getPost();
        if ($this->_needReturnToAbused()) {
            $this->_newSaveAction();
        } else {
            if (($data = $this->getRequest()->getPost()) && ($reviewId = $this->getRequest()->getParam('id'))) {
            $review = Mage::getModel('review/review')->load($reviewId);
            $session = Mage::getSingleton('adminhtml/session');
            if (! $review->getId()) {
                $session->addError(Mage::helper('catalog')->__('The review was removed by another user or does not exist.'));
            } else {
                try {
                    $review->addData($data)->save();

                    $arrRatingId = $this->getRequest()->getParam('ratings', array());
                    $votes = Mage::getModel('rating/rating_option_vote')
                        ->getResourceCollection()
                        ->setReviewFilter($reviewId)
                        ->addOptionInfo()
                        ->load()
                        ->addRatingOptions();
                    foreach ($arrRatingId as $ratingId=>$optionId) {
                        if($vote = $votes->getItemByColumnValue('rating_id', $ratingId)) {
                            Mage::getModel('rating/rating')
                                ->setVoteId($vote->getId())
                                ->setReviewId($review->getId())
                                ->updateOptionVote($optionId);
                        } else {
                            Mage::getModel('rating/rating')
                                ->setRatingId($ratingId)
                                ->setReviewId($review->getId())
                                ->addOptionVote($optionId, $review->getEntityPkValue());
                        }
                    }

                    $review->aggregate();
                    $productId = $review->getData('entity_pk_value');
                    Mage::helper('advancedreviews')->updateReviewProduct($productId);
                    $session->addSuccess(Mage::helper('catalog')->__('The review has been saved.'));
                } catch (Mage_Core_Exception $e) {
                    $session->addError($e->getMessage());
                } catch (Exception $e){
                    $session->addException($e, Mage::helper('catalog')->__('An error occurred while saving this review.'));
                }
            }

            return $this->getResponse()->setRedirect($this->getUrl($this->getRequest()->getParam('ret') == 'pending' ? '*/*/pending' : '*/*/'));
        }
        $this->_redirect('*/*/');
        }
    }

    protected function _newSaveAction() {
        $reviewId = $this->getRequest()->getParam('id', false);
        if ($data = $this->getRequest()->getPost()) {
            $review = Mage::getModel('review/review')->load($reviewId)->addData($data);
            try {
                $review->setId($reviewId)
                        ->save();

                $arrRatingId = $this->getRequest()->getParam('ratings', array());
                $votes = Mage::getModel('rating/rating_option_vote')
                        ->getResourceCollection()
                        ->setReviewFilter($reviewId)
                        ->addOptionInfo()
                        ->load()
                        ->addRatingOptions();
                foreach ($arrRatingId as $ratingId => $optionId) {
                    if ($vote = $votes->getItemByColumnValue('rating_id', $ratingId)) {
                        Mage::getModel('rating/rating')
                                ->setVoteId($vote->getId())
                                ->setReviewId($review->getId())
                                ->updateOptionVote($optionId);
                    } else {
                        Mage::getModel('rating/rating')
                                ->setRatingId($ratingId)
                                ->setReviewId($review->getId())
                                ->addOptionVote($optionId, $review->getEntityPkValue());
                    }
                }

                $review->aggregate();

                Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('catalog')->__('Review was saved successfully'));

                //Make redirect to abused reviews
                $this->getResponse()->setRedirect($this->getUrl('advancedreviews_admin/adminhtml_abuse/'));
                return;
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
            }
        }
        $this->_redirect('advancedreviews_admin/adminhtml_abuse/');
    }

    public function deleteAction() {
        if ($this->_needReturnToAbused()) {
            $this->_newDeleteAction();
        } else {
            $reviewId   = $this->getRequest()->getParam('id', false);
            $session    = Mage::getSingleton('adminhtml/session');

            try {
                $model =  Mage::getModel('review/review')->setId($reviewId);

                $model->aggregate()
                    ->delete();
                $productId = $model->getData('entity_pk_value');
                Mage::helper('advancedreviews')->updateReviewProduct($productId);

                $session->addSuccess(Mage::helper('catalog')->__('The review has been deleted'));
                if( $this->getRequest()->getParam('ret') == 'pending' ) {
                    $this->getResponse()->setRedirect($this->getUrl('*/*/pending'));
                } else {
                    $this->getResponse()->setRedirect($this->getUrl('*/*/'));
                }
                return;
            } catch (Mage_Core_Exception $e) {
                $session->addError($e->getMessage());
            } catch (Exception $e){
                $session->addException($e, Mage::helper('catalog')->__('An error occurred while deleting this review.'));
            }

            $this->_redirect('*/*/edit/',array('id'=>$reviewId));
        }
    }

    protected function _newDeleteAction() {
        $reviewId = $this->getRequest()->getParam('id', false);

        try {
            Mage::getModel('review/review')->setId($reviewId)
                    ->aggregate()
                    ->delete();

            Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('catalog')->__('Review successfully deleted'));
            $this->getResponse()->setRedirect($this->getUrl('advancedreviews_admin/adminhtml_abuse/'));
            return;
        } catch (Exception $e) {
            Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
        }

        $this->_redirect('advancedreviews_admin/adminhtml_abuse/');
    }
    
    public function massDeleteAction()
    {
        $reviewsIds = $this->getRequest()->getParam('reviews');
        $session    = Mage::getSingleton('adminhtml/session');

        if(!is_array($reviewsIds)) {
             $session->addError(Mage::helper('adminhtml')->__('Please select review(s).'));
        } else {
            try {
                foreach ($reviewsIds as $reviewId) {
                    $model = Mage::getModel('review/review')->load($reviewId);
                    $model->delete();
                    $productId = ($model->getData('entity_pk_value'));
                    Mage::helper('advancedreviews')->updateReviewProduct($productId);
                }
                Mage::getSingleton('adminhtml/session')->addSuccess(
                    Mage::helper('adminhtml')->__('Total of %d record(s) have been deleted.', count($reviewsIds))
                );
            } catch (Mage_Core_Exception $e) {
                $session->addError($e->getMessage());
            } catch (Exception $e){
                $session->addException($e, Mage::helper('adminhtml')->__('An error occurred while deleting record(s).'));
            }
        }

        $this->_redirect('*/*/' . $this->getRequest()->getParam('ret', 'index'));
    }

    public function massUpdateStatusAction()
    {
        $reviewsIds = $this->getRequest()->getParam('reviews');
        $session    = Mage::getSingleton('adminhtml/session');

        if(!is_array($reviewsIds)) {
             $session->addError(Mage::helper('adminhtml')->__('Please select review(s).'));
        } else {
            /* @var $session Mage_Adminhtml_Model_Session */
            try {
                $status = $this->getRequest()->getParam('status');
                foreach ($reviewsIds as $reviewId) {
                    $model = Mage::getModel('review/review')->load($reviewId);
                
                    $model->setStatusId($status)
                        ->save()
                        ->aggregate();
                    $productId = ($model->getData('entity_pk_value'));
                    Mage::helper('advancedreviews')->updateReviewProduct($productId);
                }
                $session->addSuccess(
                    Mage::helper('adminhtml')->__('Total of %d record(s) have been updated.', count($reviewsIds))
                );
            } catch (Mage_Core_Exception $e) {
                $session->addError($e->getMessage());
            } catch (Exception $e) {
                $session->addException($e, Mage::helper('adminhtml')->__('An error occurred while updating the selected review(s).'));
            }
        }

        $this->_redirect('*/*/' . $this->getRequest()->getParam('ret', 'index'));
    }

    public function postAction()
    {
        $productId  = $this->getRequest()->getParam('product_id', false);
        $session    = Mage::getSingleton('adminhtml/session');

        if ($data = $this->getRequest()->getPost()) {
            if (Mage::app()->isSingleStoreMode()) {
                $data['stores'] = array(Mage::app()->getStore(true)->getId());
            } else  if (isset($data['select_stores'])) {
                $data['stores'] = $data['select_stores'];
            }

            $review = Mage::getModel('review/review')->setData($data);

            $product = Mage::getModel('catalog/product')
                ->load($productId);

            try {
                $review->setEntityId(1) // product
                    ->setEntityPkValue($productId)
                    ->setStoreId($product->getStoreId())
                    ->setStatusId($data['status_id'])
                    ->setCustomerId(null)//null is for administrator only
                    ->save();

                $arrRatingId = $this->getRequest()->getParam('ratings', array());
                foreach ($arrRatingId as $ratingId=>$optionId) {
                    Mage::getModel('rating/rating')
                       ->setRatingId($ratingId)
                       ->setReviewId($review->getId())
                       ->addOptionVote($optionId, $productId);
                }

                $review->aggregate();
                $productId = $product->getId();
                Mage::helper('advancedreviews')->updateReviewProduct($productId);
                $session->addSuccess(Mage::helper('catalog')->__('The review has been saved.'));
                if( $this->getRequest()->getParam('ret') == 'pending' ) {
                    $this->getResponse()->setRedirect($this->getUrl('*/*/pending'));
                } else {
                    $this->getResponse()->setRedirect($this->getUrl('*/*/'));
                }

                return;
            } catch (Mage_Core_Exception $e) {
                $session->addError($e->getMessage());
            } catch (Exception $e) {
                $session->addException($e, Mage::helper('adminhtml')->__('An error occurred while saving review.'));
            }
        }
        $this->getResponse()->setRedirect($this->getUrl('*/*/'));
        return;
    }


}
