// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Import Bootstrap JS and attach to window
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap

// Import jQuery and expose globally
import jQuery from "jquery"
window.jQuery = jQuery
window.$ = jQuery

console.log("Application JS loaded! jQuery version:", jQuery.fn.jquery);
