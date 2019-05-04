$(window).scroll(function() {
    /* affix after scrolling 100px */
    if ($(document).scrollTop() > 100) {
        $('.navbar').addClass('affix') , $('.logoimg').addClass('fixedd') , $('.cd-main-nav').addClass('new_slm');
    } else {
        $('.navbar').removeClass('affix') , $('.logoimg').removeClass('fixedd') , $('.cd-main-nav').removeClass('new_slm');
    }
});