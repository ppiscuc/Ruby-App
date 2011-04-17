class ManualsController < ApplicationController
  # GET /manuals
  # GET /manuals.xml
  def index
    @manuals = Manual.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @manuals }
    end
  end

  # GET /manuals/1
  # GET /manuals/1.xml
  def show
    @manual = Manual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @manual }
    end
  end

  # GET /manuals/new
  # GET /manuals/new.xml
  def new
    @manual = Manual.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @manual }
    end
  end

  # GET /manuals/1/edit
  def edit
    @manual = Manual.find(params[:id])
  end

  # POST /manuals
  # POST /manuals.xml
  def create
    @manual = Manual.new(params[:manual])

    respond_to do |format|
      if @manual.save
        format.html { redirect_to(@manual, :notice => 'Manual was successfully created.') }
        format.xml  { render :xml => @manual, :status => :created, :location => @manual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @manual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /manuals/1
  # PUT /manuals/1.xml
  def update
    @manual = Manual.find(params[:id])

    respond_to do |format|
      if @manual.update_attributes(params[:manual])
        format.html { redirect_to(@manual, :notice => 'Manual was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @manual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /manuals/1
  # DELETE /manuals/1.xml
  def destroy
    @manual = Manual.find(params[:id])
    @manual.destroy

    respond_to do |format|
      format.html { redirect_to(manuals_url) }
      format.xml  { head :ok }
    end
  end
end
