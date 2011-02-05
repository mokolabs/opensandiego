// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
  $('#map').jMapping({
    category_icon_options: {
      'good': {color: '#7CDF65'},
      'bad': {color: '#E8413A'}
    }}
  );
});
