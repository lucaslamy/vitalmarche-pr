jQuery(document).ready(function ($) {
    $(".new_slid_calendar").not('.slick-initialized').slick({
        dots: true,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        prevArrow: $('.calendar_prev'),
        nextArrow: $('.calendar_next'),
        autoplay: false,
    });
// slick slider active Home Page Tow
    $(".pdf_slid").not('.slick-initialized').slick({
        dots: true,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        prevArrow: ".slid_prev",
        nextArrow: ".slid_next",
        autoplay: false
    });
});
