class PayloadTransformer

  def initialize(provider, payload, headers = nil)
    @provider = provider
    @payload = payload
    @headers = headers
  end

  def transform
    provider_transformer.transform
  end

  private

  def provider_transformer
    case @provider
    when "github"
      GithubPayloadTransformer.new @payload, @headers
    end
  end

end
