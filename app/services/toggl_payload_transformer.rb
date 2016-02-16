class TogglPayloadTransformer
  def initialize payload
    @payload = payload
  end

  def transform
    new_payload = @payload[:webhook]

    # username
    new_payload[:username] = @payload[:username]

    # durations
    new_payload[:duration] = new_payload[:duration].to_i
    new_payload[:duration_hours] = new_payload[:duration_hours].to_f
    new_payload[:duration_minutes] = new_payload[:duration_minutes].to_i

    return new_payload
  end
end
