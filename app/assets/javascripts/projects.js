
Masonry.prototype._getMeasurement = function( measurement, size ) {
  var option = this.options[ measurement ];
  var elem;
  if ( !option ) {
    // default to 0
    this[ measurement ] = 0;
  } else if ( typeof option === 'function' ) {
    this[ measurement ] = option.call( this );
  } else {
    // use option as an element
    if ( typeof option === 'string' ) {
      elem = this.element.querySelector( option );
    } else if ( isElement( option ) ) {
      elem = option;
    }
    // use size of element, if element
    this[ measurement ] = elem ? getSize( elem )[ size ] : option;
  }
};


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
    
    $('body').on('click', 'span[data-pin-log="button_pinit_floating"]', function(event) { 
            ga('send', 'social', 'pinterest', 'pin', event.target.getAttribute('data-pin-href')); 
        });
});


