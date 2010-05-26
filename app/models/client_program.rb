class ClientProgram < ActiveRecord::Base
  belongs_to  :client
  belongs_to  :program
end
