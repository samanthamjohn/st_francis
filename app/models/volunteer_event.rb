class VolunteerEvent < ActiveRecord::Base
    belongs_to  :event
    belongs_to  :volunteer
end
