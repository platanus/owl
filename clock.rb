require 'rubygems'
require 'clockwork'
include Clockwork
handler do |job|
  # do something
end
every(30.seconds, 'toggl_reminder_job', :thread => true)
