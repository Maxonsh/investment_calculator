// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var IC = (function($) {
  var calculateYield = function() {
    var optimistic_annual_yield = 0.3;
        loan_term = 6
        realistic_annual_yield = $("#realistic_annual_yield").data('value');
        amount = parseInt($("#amount_input").val());
        expected_yield = Math.round((optimistic_annual_yield * amount / 12 * loan_term).toString());
        historical_yield = Math.round((realistic_annual_yield * amount / 12 * loan_term).toString());

    $('#expected_yield').html(expected_yield + ' руб.');
    $('#historical_yield').html(historical_yield + ' руб.');
  };

  return {
    calculateYield: calculateYield
  };

}(jQuery));
