// function ajaxCompare(url,id){
	// url = url.replace("catalog/product_compare/add","ajax/whishlist/compare");
	// url += 'isAjax/1/';
	// jQuery('#ajax_loading'+id).show();
	// jQuery.ajax( {
		// url : url,
		// dataType : 'json',
		// success : function(data) {
			// jQuery('#ajax_loading'+id).hide();
			// if(data.status == 'ERROR'){
				// alert(data.message);
			// }else{
				// alert(data.message);
				// if(jQuery('.block-compare').length){
                    // jQuery('.block-compare').replaceWith(data.sidebar);
                // }else{
                    // if(jQuery('.col-right').length){
                    	// jQuery('.col-right').prepend(data.sidebar);
                    // }
                // }
			// }
		// }
	// });
// }
function ajaxWishlist(url,id){
	 
		url = url.replace("flavors/index","ajax/whishlist");
		url += 'isAjax/1/';	
		jQuery('#ajax_loading'+id).show();		
		
		jQuery.ajax( {
			url : url,
			dataType : 'json',
			success : function(data) {		
				jQuery('#ajax_loading'+id).hide();			
				if(data.status == 'ERROR'){					
					 alert(data.message);
					 
				}else{
					alert(data.message);
					var jds = data.counter;				 
								
					var remove_url='"'+data.removeUrl+'/"';	
                   jQuery('#show_popularity_count').html(data.fake_number); 				
					
					var prod_id='"'+data.productId+'"';					 
					var jj = jQuery('#wishlist_box_'+id);
					 
					jQuery(jj).addClass("selected"); 
					var hir = jQuery(jj).parent().attr('onClick','removeWishlist('+remove_url+','+prod_id+') ;return false;');	
		
					var jj2 = jQuery('#wishlist'+id);
				
					
					jQuery(jj2).addClass("selected"); 					
					
									
					var hir2 = jQuery(jj2).parent().attr('onClick','removeWishlist('+remove_url+','+prod_id+') ;return false;');
					 
				 				
				   if(jQuery('ul.links').length){
				     jQuery('ul.links').replaceWith(data.toplink);
				    } 			   
				    
					jQuery('#wishlist_count').text(jds); 	  // pass value to top wish list		   
					// new added -- // 		
					
					if(jQuery('.block-wishlist').length){
						jQuery('.block-wishlist').replaceWith(data.sidebar);
					}else{
						if(jQuery('.col-right').length){
							jQuery('.col-right').prepend(data.sidebar);
						}
					}
				}
			}
		});
	 
}
function removeWishlist(url,id){ 		
	
    url = url.replace("flavors/index/remove","ajax/whishlist/remove");
    url += 'isAjax/1/';	 
		jQuery('#ajax_loading'+id).show();	 
    jQuery.ajax( {
        url : url,
        dataType : 'json',
        success : function(data) {
          
					jQuery('#ajax_loading'+id).hide();
				 
            if(data.status == 'ERROR'){
               alert(data.message);
                   
            }else{			
                 
			   var jds = data.counter;               
               		   
					var add_url='"'+data.addUrl+'/"';					 
					//alert("add url : "+add_url);
					var prod_id='"'+data.prod_id+'"';	
						
					var jj2 = jQuery('#wishlist'+id).removeClass("selected");  // remove selected 
							
					
					var hir2 = jQuery('#wishlist'+id).parent().attr('onClick','ajaxWishlist('+add_url+','+prod_id+');return false;');					
					
					var jj = jQuery('#wishlist_box_'+id).removeClass("selected");  // remove selected 				         
				    var hir = jQuery('#wishlist_box_'+id).parent().attr('onClick','ajaxWishlist('+add_url+','+prod_id+');return false;');					
					
			    jQuery('#wishlist_count').text(jds);		   
			   
                if(jQuery('.block-wishlist').length){
                    jQuery('.block-wishlist').replaceWith(data.sidebar);
                }else{
                    if(jQuery('.col-right').length){
                        jQuery('.col-right').prepend(data.sidebar);
                    }
                }
            }
        }
    });
}

