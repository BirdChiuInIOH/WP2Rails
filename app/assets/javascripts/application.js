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
    const talksFilterForm = $('[data-target="talks-filter"]');
    if (talksFilterForm) {
      talksFilterForm[0].reset();
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
    $('[data-target="city-thumbnail"').on('click', function(e) {
      resetSelectedCity();
      selectCity(e.currentTarget.dataset.cityThumbnail);
      isCountrySelected = true;
    });

    $('[data-target="city-thumbnail"').hover(
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

  if($('[data-target="city-map-marker"]').length) {
    $('[data-target="city-map-marker"').on('click', function(e) {
      resetSelectedCity();
      selectCity(e.currentTarget.dataset.cityMapMarker);
      isCountrySelected = true;
    });

    $('[data-target="city-map-marker"').hover(
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
    $('[data-target="current-city"').addClass('overlay-active');
    $(`[data-city-thumbnail="${city}"]`).addClass('overlay-active');
    $(`[data-city-map-marker="${city}"]`).addClass('active');
  }

  function resetSelectedCity(city) {
    $('[data-city]').removeClass('d-block');
    $('[data-target="current-city"').removeClass('overlay-active');
    $(`[data-city-thumbnail]`).removeClass('overlay-active');
    $(`[data-city-map-marker]`).removeClass('active');
  }
  // End of how-to-apply country map
});
