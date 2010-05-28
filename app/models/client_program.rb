class ClientProgram < ActiveRecord::Base
  belongs_to  :client
  belongs_to  :program

  def self.add_clients(params)
    client_ids = params[:client_ids].collect{|vi| vi.to_s}
    program_id = params[:program][:id]
    client_ids.each do |client_id|
      if (ClientProgram.find(:first, :conditions=>["client_id = ? AND program_id = ?", client_id, program_id]) == nil)
        ClientProgram.create("client_id" => client_id, "program_id" => program_id)
      end
    end
  end

end