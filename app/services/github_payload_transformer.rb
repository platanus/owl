class GithubPayloadTransformer
  def initialize payload, headers
    @payload = payload
    @headers = headers
  end

  def transform
    new_payload = @payload[:webhook]

    # event
    event_type = @headers[:'X-Github-Event']
    new_payload[:event_type] = event_type

    # commit count
    if event_type == 'push' and new_payload[:commits].is_a?(Array)
      new_payload[:commit_count] = new_payload[:commits].count
    end

    return new_payload
  end
end
