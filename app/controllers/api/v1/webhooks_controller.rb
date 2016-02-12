require 'keen'

class Api::V1::WebhooksController < Api::V1::BaseController

  def ping
    respond_with({ status: "ok" })
  end

  def register
    Keen.publish(provider, params[:webhook])
    respond_with({ status: "ok", service: provider })
  end

  private

  def provider
    @provider ||= params[:provider]
  end

end
