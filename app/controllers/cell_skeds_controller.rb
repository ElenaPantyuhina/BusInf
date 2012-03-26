class CellSkedsController < ApplicationController
  # GET /cell_skeds
  # GET /cell_skeds.json
  def index
    @cell_skeds = CellSked.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cell_skeds }
    end
  end

  # GET /cell_skeds/1
  # GET /cell_skeds/1.json
  def show
    @cell_sked = CellSked.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cell_sked }
    end
  end

  # GET /cell_skeds/new
  # GET /cell_skeds/new.json
  def new
    @cell_sked = CellSked.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cell_sked }
    end
  end

  # GET /cell_skeds/1/edit
  def edit
    @cell_sked = CellSked.find(params[:id])
  end

  # POST /cell_skeds
  # POST /cell_skeds.json
  def create
    @cell_sked = CellSked.new(params[:cell_sked])

    respond_to do |format|
      if @cell_sked.save
        format.html { redirect_to @cell_sked, notice: 'Cell sked was successfully created.' }
        format.json { render json: @cell_sked, status: :created, location: @cell_sked }
      else
        format.html { render action: "new" }
        format.json { render json: @cell_sked.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cell_skeds/1
  # PUT /cell_skeds/1.json
  def update
    @cell_sked = CellSked.find(params[:id])

    respond_to do |format|
      if @cell_sked.update_attributes(params[:cell_sked])
        format.html { redirect_to @cell_sked, notice: 'Cell sked was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cell_sked.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_skeds/1
  # DELETE /cell_skeds/1.json
  def destroy
    @cell_sked = CellSked.find(params[:id])
    @cell_sked.destroy

    respond_to do |format|
      format.html { redirect_to cell_skeds_url }
      format.json { head :no_content }
    end
  end
end
