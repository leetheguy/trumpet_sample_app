class TrumpetPointsController < ApplicationController
  # GET /trumpet_points
  # GET /trumpet_points.json
  def index
    @trumpet_points = TrumpetPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @trumpet_points }
    end
  end

  # GET /trumpet_points/1
  # GET /trumpet_points/1.json
  def show
    @trumpet_point = TrumpetPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @trumpet_point }
    end
  end

  # GET /trumpet_points/new
  # GET /trumpet_points/new.json
  def new
    @trumpet_point = TrumpetPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @trumpet_point }
    end
  end

  # GET /trumpet_points/1/edit
  def edit
    @trumpet_point = TrumpetPoint.find(params[:id])
  end

  # POST /trumpet_points
  # POST /trumpet_points.json
  def create
    @trumpet_point = TrumpetPoint.new(params[:trumpet_point])

    respond_to do |format|
      if @trumpet_point.save
        format.html { redirect_to @trumpet_point, :notice => 'Trumpet point was successfully created.' }
        format.json { render :json => @trumpet_point, :status => :created, :location => @trumpet_point }
      else
        format.html { render :action => "new" }
        format.json { render :json => @trumpet_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trumpet_points/1
  # PUT /trumpet_points/1.json
  def update
    @trumpet_point = TrumpetPoint.find(params[:id])

    respond_to do |format|
      if @trumpet_point.update_attributes(params[:trumpet_point])
        format.html { redirect_to @trumpet_point, :notice => 'Trumpet point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @trumpet_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trumpet_points/1
  # DELETE /trumpet_points/1.json
  def destroy
    @trumpet_point = TrumpetPoint.find(params[:id])
    @trumpet_point.destroy

    respond_to do |format|
      format.html { redirect_to trumpet_points_url }
      format.json { head :no_content }
    end
  end
end
