class Client < ActiveRecord::Base
  has_many  :event_ids,       :class_name => "ClientEvent",        :foreign_key => "client_id"
  has_many  :program_ids,    :class_name => 'ClientProgram',     :foreign_key => "client_id"
  has_many  :events,       :through => :event_ids,           :foreign_key =>  "client_id",      :source => "event"    
  has_many  :programs,       :through => :program_ids,           :foreign_key =>  "client_id",      :source => "program"
end
