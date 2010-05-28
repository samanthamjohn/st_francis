class Volunteer < ActiveRecord::Base
  has_many  :event_ids,       :class_name => "VolunteerEvent",        :foreign_key => "volunteer_id"
  has_many  :program_ids,     :class_name => 'VolunteerProgram',      :foreign_key => "volunteer_id"
  has_many  :events,          :through => :event_ids,                 :foreign_key => "volunteer_id",      :source => "event"    
  has_many  :programs,        :through => :program_ids,               :foreign_key => "volunteer_id",      :source => "program"
end
