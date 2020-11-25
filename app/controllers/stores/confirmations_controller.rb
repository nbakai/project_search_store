# frozen_string_literal: true

class Stores::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  #The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(resource_name)
    @storextra = Storextra.new
    new_storextra_path(current_store, @storextra)
  end

  #The path used after confirmation.
  def after_confirmation_path_for(resource_name, resource)
    sign_in(resource)
    @storextra = Storextra.new
    new_storextra_path(current_store, @storextra)
  end
end
