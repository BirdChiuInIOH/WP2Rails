// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(document).on('turbolinks:load', function() {
  // Reset talks filter form
  $('[data-reset="talks-filter"]').on('click', function() {
    const talksFilterForm = $('[data-target="talks-filter"] input:checkbox');

    if (talksFilterForm) {
      talksFilterForm.removeAttr('checked');
    }
  });

  // For Swiper
  var swiper = new Swiper('.swiper-container', {
    spaceBetween: 15,
    slidesPerView: 5,
    autoplay: true,
    loop: true,
    breakpoints: {
      480: {
        centeredSlides: true,
        slidesPerView: 2
      }
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true
    }
  });

  // For how-to-apply country map
  let isCountrySelected = false;
  if ($('[data-target="city-thumbnail"').length) {
    $('[data-target="city-thumbnail"]').off('click mouseenter mouseleave');
    $('[data-target="city-thumbnail"]').on('click', function(e) {
      resetSelectedCity();
      selectCity(e.currentTarget.dataset.cityThumbnail);
      isCountrySelected = true;
    });

    $('[data-target="city-thumbnail"]').hover(
      function(e) {
        isCountrySelected = false;
        resetSelectedCity();
        selectCity(e.currentTarget.dataset.cityThumbnail);
      },
      function() {
        if (isCountrySelected === true) {
          return;
        }
        resetSelectedCity();
      }
    );
  }

  if ($('[data-target="city-map-marker"]').length) {
    $('[data-target="city-map-marker"]').off('click mouseenter mouseleave');
    $('[data-target="city-map-marker"]').on('click', function(e) {
      resetSelectedCity();
      selectCity(e.currentTarget.dataset.cityMapMarker);
      isCountrySelected = true;
    });

    $('[data-target="city-map-marker"]').hover(
      function(e) {
        isCountrySelected = false;
        resetSelectedCity();
        selectCity(e.currentTarget.dataset.cityMapMarker);
      },
      function() {
        if (isCountrySelected === true) {
          return;
        }
        resetSelectedCity();
      }
    );
  }

  function selectCity(city) {
    $(`[data-city="${city}"]`).addClass('d-block');
    $('[data-target="current-city"]').addClass('overlay-active');
    $(`[data-city-thumbnail="${city}"]`).addClass('overlay-active');
    $(`[data-city-map-marker="${city}"]`).addClass('active');
  }

  function resetSelectedCity(city) {
    $('[data-city]').removeClass('d-block');
    $('[data-target="current-city"]').removeClass('overlay-active');
    $(`[data-city-thumbnail]`).removeClass('overlay-active');
    $(`[data-city-map-marker]`).removeClass('active');
  } // End of how-to-apply country map

  // For go-top button
  goTopButton();

  function goTopButton() {
    let requestAnimationFrame =
      window.requestAnimationFrame ||
      window.mozRequestAnimationFrame ||
      window.webkitRequestAnimationFrame ||
      window.msRequestAnimationFrame;

    const goTopButton = document.querySelector('[data-action="gotop"]');
    const windowViewPortHeight = window.innerHeight; // browser viewport height
    let isRequestingAnimationFrame = false;

    if (!goTopButton) {
      return;
    }
    goTopButton.addEventListener('click', function() {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    });

    window.addEventListener('scroll', function() {
      if (!isRequestingAnimationFrame) {
        requestAnimationFrame(filterGoTopButtonVisibility);
        isRequestingAnimationFrame = true;
      }
    });

    function filterGoTopButtonVisibility(timestamp) {
      let windowPageYOffset =
        window.pageYOffset || document.documentElement.scrollTop;
      if (windowPageYOffset > windowViewPortHeight) {
        goTopButton.classList.add('show');
        isRequestingAnimationFrame = false;
      } else {
        goTopButton.classList.remove('show');
        requestAnimationFrame(filterGoTopButtonVisibility);
      }
    }
  }

  $('[data-action=mobile-gotop]').on('click', function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
  // End of go-top button

  $('.onoffswitch').off('click');
  $('.onoffswitch-label').on('click', function(e) {
    console.log('click')
    $(this).parent('.onoffswitch').toggleClass('active');
    $(this).parent('.onoffswitch').next('.onoffswitch-content').toggle();
  });

  // 全臺校系總覽 Mobile - 依 18 學群瀏覽
  $('.block-eighteen-dropdown').on('click', function () {
    var isOpen = $(this).hasClass('open');
    $('.block-eighteen-dropdown').removeClass('open');
    if (isOpen) {
      $(this).removeClass('open');
    } else {
      $(this).addClass('open');
    }
  });
});
