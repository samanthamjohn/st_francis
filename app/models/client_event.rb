class ClientEvent < ActiveRecord::Base
  belongs_to  :client
  belongs_to  :event
  
  
  def self.add_clients(params)
    client_ids = params[:client_ids].collect{|vi| vi.to_s}
    event_id = params[:event][:id]
    client_ids.each do |client_id|
      if (ClientEvent.find(:first, :conditions=>["client_id = ? AND event_id = ?", client_id, event_id]) == nil)
        ClientEvent.create("client_id" => client_id, "event_id" => event_id)
      end
    end
  end
  
end
