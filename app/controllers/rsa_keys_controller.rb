class RsaKeysController < ApplicationController
  def index
    @keys = current_user.rsa_keys
  end

  def new
    @key = current_user.rsa_keys.new
  end

  def create
    @key = current_user.rsa_keys.create(params[:rsa_key])
    @key.save
    redirect_to rsa_keys_path
  end

  def destroy
    @key = current_user.rsa_keys.find(params[:id])
    @key.delete
    redirect_to rsa_keys_path
  end
end
