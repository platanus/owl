require 'keen'

class Api::V1::WebhooksController < Api::V1::BaseController

  def ping
    respond_with({ status: "ok" })
  end

  def register
    transformed_params = PayloadTransformer.new(provider, params, request.headers).transform
    Keen.publish(provider, transformed_params)
    
    respond_with({ status: "ok", service: provider })
  end

  private

  def provider
    @provider ||= params[:provider]
  end
end
