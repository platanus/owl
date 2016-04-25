class TogglReminderJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts "Running the beast..."
    # sacar usuarios de team.json
    pts = PlatanusTeamService.new
    pts.members_with_toggl_keys.each do |member|
      tac = TogglActivityChecker.new
      unless tac.is_active?(member)
        slack = SlackBotService.new
        users = slack.active_users.select { |value| value.profile.email == member["email"] }
        users.each do |user|
          slack.send_private_message(user, "you toggling baby boy?")
        end
      end
    end
  end
end
