// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

$(document).on("turbolinks:load", function () {
  alert("turbolinks on load event works");
});
import "@hotwired/turbo-rails"
