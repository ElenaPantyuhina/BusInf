class CathedrasController < ApplicationController
  # GET /cathedras
  # GET /cathedras.json
  def index
    @cathedras = Cathedra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cathedras }
    end
  end

  # GET /cathedras/1
  # GET /cathedras/1.json
  def show
    @cathedra = Cathedra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cathedra }
    end
  end

  # GET /cathedras/new
  # GET /cathedras/new.json
  def new
    @cathedra = Cathedra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cathedra }
    end
  end

  # GET /cathedras/1/edit
  def edit
    @cathedra = Cathedra.find(params[:id])
  end

  # POST /cathedras
  # POST /cathedras.json
  def create
    @cathedra = Cathedra.new(params[:cathedra])

    respond_to do |format|
      if @cathedra.save
        format.html { redirect_to @cathedra, notice: 'Кафедра успешно добавлена.' }
        format.json { render json: @cathedra, status: :created, location: @cathedra }
      else
        format.html { render action: "new" }
        format.json { render json: @cathedra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cathedras/1
  # PUT /cathedras/1.json
  def update
    @cathedra = Cathedra.find(params[:id])

    respond_to do |format|
      if @cathedra.update_attributes(params[:cathedra])
        format.html { redirect_to @cathedra, notice: 'Данные о кафедре успешно обновлены' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cathedra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cathedras/1
  # DELETE /cathedras/1.json
  def destroy
    @cathedra = Cathedra.find(params[:id])
    @cathedra.destroy

    respond_to do |format|
      format.html { redirect_to cathedras_url }
      format.json { head :no_content }
    end
  end
end
