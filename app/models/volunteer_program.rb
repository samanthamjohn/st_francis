class VolunteerProgram < ActiveRecord::Base
  belongs_to  :volunteer
  belongs_to  :program
end
