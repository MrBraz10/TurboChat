class ApplicationController < ActionController::Base
  # rescue_from ActionController::Redirecting::UnsafeRedirectError do
  #   redirect_to @room
  # end
  include Pagy::Backend
  before_action :turbo_frame_request_variant

  private

  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end
end