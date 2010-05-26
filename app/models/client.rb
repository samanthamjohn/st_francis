class Client < ActiveRecord::Base
  has_many  :client_events
  has_many  :client_programs
end
