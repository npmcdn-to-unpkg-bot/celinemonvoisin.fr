
$( document ).ready(function() {
    console.log( "ready!" );
    $(".grid").imagesLoaded( function() {
	    $(".grid").masonry({
	    	  // options
	    	  itemSelector: '.grid-item',
	    	  gutter: '.gutter-sizer',
	    	  columnWidth: '.grid-sizer'
	    	});
    });
});
