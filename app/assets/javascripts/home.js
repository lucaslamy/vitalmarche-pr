jQuery(document).ready(function ($) {
    $('.slick').not('.slick-initialized').slick({
        autoplay: true,
        autoplaySpeed: 2000,
        fade: true,
        arrows: false
    });

    $(".new_slid").not('.slick-initialized').slick({
        dots: true,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        prevArrow: "<i class='fa fa-angle-left nextprevleft'></i>",
        nextArrow: "<i class='fa fa-angle-right nextprevright'></i>",
        autoplay: true,
        autoplaySpeed: 20000
    });

});
function initMap() {
    var myLatLng = {lat: 49.347289, lng: 2.977947};
    var mapOptions = {
        zoom: 18,
        scrollwheel: false,
        center: myLatLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
    $('.mapheight').css('height', '350');
    $('.maps_text h3').hide();

}