# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    # byebug
    # super
    self.resource = resource_class.new(configure_sign_in_params)

    render json: {
      user: resource.attributes.except("password"),
      token: resource.jti
    }, status: :ok
  end

  # POST /resource/sign_in
  def create
    byebug
    # super
    self.resource = resource_class.find_by(email: configure_sign_in_params[:email])

    render json: {
      user: resource.attributes.except("password"),
      token: resource.jti
    }, status: :ok
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    params.permit(:email, :password, :created_at, :updated_at, :jti)
  end
end
