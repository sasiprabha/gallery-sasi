/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function(){

    //editorChanged();
    //loadMapScript();
    for (i = 0; i < 10; i++) {
        add_list_element("listElement"+i);
    }

});


function lock_list_element(){


}
//
//function add_list_element(ElementName){
//    element_ = 'div';
//    class_ = '"list-element"';
//    id_ = '"'+ElementName+'"';
//    onclick_ = '"$(\'.list-element-detail\').hide();$(\'#'+ElementName+'-detail\').toggle();display_details(\''+ElementName+'\');"';
//    onmouseover_ = '$(\'.list-element-detail\').hide();$(\'#'+ElementName+'-detail\').show();';
//    //onmouseout_ = '$(\'#'+ElementName+'-detail\').hide();';
//    onmouseout_ = '';
//
//    start_ = '<'+element_+' id ='+id_+' class = '+class_+' onclick = '+onclick_+' onmouseover='+onmouseover_+' onmouseout='+onmouseout_+'>';
//    text_ = ''+add_list_element_details(ElementName);
//    end_ = '</'+element_+'>';
//    $("#list").append(start_+''+text_+end_);
//
//}


function add_list_element(ElementName){


}





function initializeMap() {
  var myOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    mapTypeControl: false,
    streetViewControl: false
  }
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
}

function loadMapScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyCG_scPJJSNu1z7_maUI6SSkPA7rF8XMNU&sensor=false&callback=initializeMap";
  document.body.appendChild(script);
}