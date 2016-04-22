class PlatanusTeamService

  TOGGL = {
    'amos@platan.us': ENV['AMOS_TOGGL_KEY'],
    'arturo@platan.us': ENV['ARTURO_TOGGL_KEY'],
    'leandro@platan.us': ENV['LEANDRO_TOGGL_KEY'],
    'guillermo@platan.us': ENV['GUILLERMO_TOGGL_KEY'],
    'ignacio@platan.us': ENV['IGNACIO_TOGGL_KEY'],
    'felipe@platan.us': ENV['FELIPE_TOGGL_KEY'],
    'emilio@platan.us': ENV['EMILIO_TOGGL_KEY']
  }

  def members
    raw_members
  end

  def members_with_toggl_keys
    add_toggl_keys_to raw_members
  end

  private

  def raw_members
    response = Faraday.get 'http://platan.us/team.json'
    @raw_members ||= JSON.parse response.body
  end

  def add_toggl_keys_to(members)
    members.map { |member|
      if TOGGL[member["email"].to_sym]
        member[:toggl_key] = TOGGL[member["email"].to_sym]
        member
      else
        nil
      end
    }.compact
  end
end
