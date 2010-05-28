class Program < ActiveRecord::Base
  has_many  :client_ids,       :class_name => "ClientProgram",        :foreign_key => "program_id"
  has_many  :volunteer_ids,    :class_name => 'VolunteerProgram',     :foreign_key => "program_id"
  has_many  :volunteers,       :through => :volunteer_ids,            :foreign_key => "program_id",      :source => "volunteer"    
  has_many  :clients,           :through => :client_ids,              :foreign_key => "program_id",      :source => "client"
end
