# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
end
