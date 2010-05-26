class Volunteer < ActiveRecord::Base
  has_many  :volunteer_programs
  has_many  :volunteer_events
end
