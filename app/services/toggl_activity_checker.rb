class TogglActivityChecker
  require 'pry'

  def is_active?(user)
    !api(user).get_current_time_entry.nil?
  end

  private

  def api(user)
    TogglV8::API.new(user[:toggl_key])
  end

end
