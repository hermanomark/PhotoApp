class WelcomeController < ApplicationController
  # skip authentication for index page of welcome
  skip_before_action :authenticate_user!, only: [:index]
end
