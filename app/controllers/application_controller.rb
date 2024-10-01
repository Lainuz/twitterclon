class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

    Pagy::DEFAULT[:limit] = 10
    include Pagy::Backend
end
