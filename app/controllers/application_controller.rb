class ApplicationController < ActionController::Base
  # Allow JSON and AJAX requests to be processed smoothly behind Codespaces reverse proxies
  protect_from_forgery with: :null_session, if: -> { request.format.json? }
end
