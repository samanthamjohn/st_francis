class ClientEventsController < ApplicationController
  # GET /client_events
  # GET /client_events.xml
  def index
    @client_events = ClientEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_events }
    end
  end

  # GET /client_events/1
  # GET /client_events/1.xml
  def show
    @client_event = ClientEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_event }
    end
  end

  # GET /client_events/new
  # GET /client_events/new.xml
  def new
    @client_event = ClientEvent.new
    @event = Event.find(params[:id])
    @clients = Client.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_event }
    end
  end

  # GET /client_events/1/edit
  def edit
    @client_event = ClientEvent.find(params[:id])
  end

  # POST /client_events
  # POST /client_events.xml
  def create
      event = Event.find(params[:event][:id])
      respond_to do |format|  
        if ClientEvent.add_clients(params)
          flash[:notice] = 'Clients were successfully added to event.'
          format.html {redirect_to(event, :controller => "events")}
        else
          format.html { render :action => "new" }
         # format.xml  { render :xml => @volunteer_event.errors, :status => :unprocessable_entity }
        end  
      end
  end

  # PUT /client_events/1
  # PUT /client_events/1.xml
  def update
    @client_event = ClientEvent.find(params[:id])

    respond_to do |format|
      if @client_event.update_attributes(params[:client_event])
        flash[:notice] = 'ClientEvent was successfully updated.'
        format.html { redirect_to(@client_event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_events/1
  # DELETE /client_events/1.xml
  def destroy
    @client_event = ClientEvent.find(params[:id])
    @client_event.destroy

    respond_to do |format|
      format.html { redirect_to(client_events_url) }
      format.xml  { head :ok }
    end
  end
end
