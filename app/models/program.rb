class Program < ActiveRecord::Base
  has_many  :client_programs
  has_many  :volunteer_programs
end
