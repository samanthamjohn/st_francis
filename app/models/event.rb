class Event < ActiveRecord::Base
  has_many  :client_ids,       :class_name => "ClientEvent",        :foreign_key => "event_id"
  has_many  :volunteer_ids,    :class_name => 'VolunteerEvent',     :foreign_key => "event_id"
  has_many  :volunteers,       :through => :volunteer_ids,           :foreign_key =>  "event_id",      :source => "volunteer"    
  has_many  :clients,       :through => :client_ids,           :foreign_key =>  "event_id",      :source => "client"    
end
