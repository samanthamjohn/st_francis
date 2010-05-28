class ClientProgramsController < ApplicationController
  # GET /client_programs
  # GET /client_programs.xml
  def index
    @client_programs = ClientProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_programs }
    end
  end

  # GET /client_programs/1
  # GET /client_programs/1.xml
  def show
    @client_program = ClientProgram.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_program }
    end
  end

  # GET /client_programs/new
  # GET /client_programs/new.xml
  def new
    @client_program = ClientProgram.new
    @program = Program.find(params[:id])
    @clients = Client.all
     
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_program }
    end
  end

  # GET /client_programs/1/edit
  def edit
    @client_program = ClientProgram.find(params[:id])
  end

  # POST /client_programs
  # POST /client_programs.xml
  def create
     program = Program.find(params[:program][:id])
      respond_to do |format|  
        if ClientProgram.add_clients(params)
          flash[:notice] = 'Clients were successfully added to program.'
          format.html {redirect_to(program, :controller => "programs")}
        else
          format.html { render :action => "new" }
         # format.xml  { render :xml => @volunteer_program.errors, :status => :unprocessable_entity }
        end  
      end
  end

  # PUT /client_programs/1
  # PUT /client_programs/1.xml
  def update
    @client_program = ClientProgram.find(params[:id])

    respond_to do |format|
      if @client_program.update_attributes(params[:client_program])
        flash[:notice] = 'ClientProgram was successfully updated.'
        format.html { redirect_to(@client_program) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_programs/1
  # DELETE /client_programs/1.xml
  def destroy
    @client_program = ClientProgram.find(params[:id])
    @client_program.destroy

    respond_to do |format|
      format.html { redirect_to(client_programs_url) }
      format.xml  { head :ok }
    end
  end
end
