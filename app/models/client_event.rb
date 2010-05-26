class ClientEvent < ActiveRecord::Base
  belongs_to  :client
  belongs_to  :event
end
