jQuery(document).ready(function ($) {
    $('.slick').not('.slick-initialized').slick({
        autoplay: true,
        autoplaySpeed: 5000,
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
        prevArrow: ".slid_prev",
        nextArrow: ".slid_next",
        autoplay: false
    });
    $(".navbar").click(function(){
        $("#navbar-menu").toggle();
    });
});

