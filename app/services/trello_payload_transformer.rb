class TrelloPayloadTransformer
  def initialize payload
    @payload = payload
  end

  def transform
    new_payload = @payload[:webhook]

    return new_payload
  end
end
