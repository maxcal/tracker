
function personalMap(el){
  var map = L.map(el,  { center: [34.040951, -118.258579], zoom: 13 });
  L.tileLayer('https://crores.s3.amazonaws.com/tiles/bkm/{z}/{x}/{y}.png')
    .addTo(map);
  $.getJSON(el.dataset.src).done(function(data){
    console.log(data);
    L.geoJSON(data).addTo(map)
  });
  return map;
}

document.addEventListener('DOMContentLoaded', function () {
  // you could also use $('.personal-map').each or the less sucky ES6
  // equivilent
  var maps = Array.prototype.map.call(
    document.getElementsByClassName('personal-map'), personalMap
  );
});
