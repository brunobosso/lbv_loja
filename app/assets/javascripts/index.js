$(document).ready(function(){
	$('#category_id').change(function(obj){
		jQuery.ajax({
	  		type: "GET",
	  		url: 'products/filterCategory/'+ (($('#category_id').val()>0) ? $('#category_id').val() : 0 ),
	  		success: function(data){
	  			$('#products').html(data)
	  		},
		});
	});
})