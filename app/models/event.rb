class Event < ActiveRecord::Base
  has_many  :client_events
  has_many  :volunteer_events
end
