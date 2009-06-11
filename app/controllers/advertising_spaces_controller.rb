class AdvertisingSpacesController < ApplicationController
  # GET /advertising_spaces
  # GET /advertising_spaces.xml
  def index
    @advertising_spaces = AdvertisingSpace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advertising_spaces }
    end
  end

  # GET /advertising_spaces/1
  # GET /advertising_spaces/1.xml
  def show
    @advertising_space = AdvertisingSpace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advertising_space }
    end
  end

  # GET /advertising_spaces/new
  # GET /advertising_spaces/new.xml
  def new
    @advertising_space = AdvertisingSpace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advertising_space }
    end
  end

  # GET /advertising_spaces/1/edit
  def edit
    @advertising_space = AdvertisingSpace.find(params[:id])
  end

  # POST /advertising_spaces
  # POST /advertising_spaces.xml
  def create
    @advertising_space = AdvertisingSpace.new(params[:advertising_space])

    respond_to do |format|
      if @advertising_space.save
        flash[:notice] = 'AdvertisingSpace was successfully created.'
        format.html { redirect_to(@advertising_space) }
        format.xml  { render :xml => @advertising_space, :status => :created, :location => @advertising_space }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advertising_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advertising_spaces/1
  # PUT /advertising_spaces/1.xml
  def update
    @advertising_space = AdvertisingSpace.find(params[:id])

    respond_to do |format|
      if @advertising_space.update_attributes(params[:advertising_space])
        flash[:notice] = 'AdvertisingSpace was successfully updated.'
        format.html { redirect_to(@advertising_space) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advertising_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advertising_spaces/1
  # DELETE /advertising_spaces/1.xml
  def destroy
    @advertising_space = AdvertisingSpace.find(params[:id])
    @advertising_space.destroy

    respond_to do |format|
      format.html { redirect_to(advertising_spaces_url) }
      format.xml  { head :ok }
    end
  end
end
