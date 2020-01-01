jQuery(document).ready(function ($) {
    $('.slick').not('.slick-initialized').slick({
        autoplay: true,
        autoplaySpeed: 2000,
        fade: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        pauseOnHover: false,
        autoplayHoverPause: false,
        pauseOnFocus: false,
        arrows: false

    });

    $(".new_slid").not('.slick-initialized').slick({
        dots: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        infinite: true,
        prevArrow: "<i class='fa fa-angle-left nextprevleft'></i>",
        nextArrow: "<i class='fa fa-angle-right nextprevright'></i>",
        autoplay: false
    });

});


/*function initMap() {
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
    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'VitalMarche'
    });

}*/
