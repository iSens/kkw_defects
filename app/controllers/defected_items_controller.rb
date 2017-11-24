class DefectedItemsController < ApplicationController
  before_action :set_defected_item, only: [:show, :edit, :update, :destroy]

  # GET /defected_items
  # GET /defected_items.json
  def index
    @defected_items = DefectedItem.all
  end

  # GET /defected_items/1
  # GET /defected_items/1.json
  def show
  end

  # GET /defected_items/new
  def new
    @defected_item = DefectedItem.new
  end

  # GET /defected_items/1/edit
  def edit
  end

  # POST /defected_items
  # POST /defected_items.json
  def create
    @defected_item = DefectedItem.new(defected_item_params)

    respond_to do |format|
      if @defected_item.save
        format.html { redirect_to @defected_item, notice: 'Defected item was successfully created.' }
        format.json { render :show, status: :created, location: @defected_item }
      else
        format.html { render :new }
        format.json { render json: @defected_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defected_items/1
  # PATCH/PUT /defected_items/1.json
  def update
    respond_to do |format|
      if @defected_item.update(defected_item_params)
        format.html { redirect_to @defected_item, notice: 'Defected item was successfully updated.' }
        format.json { render :show, status: :ok, location: @defected_item }
      else
        format.html { render :edit }
        format.json { render json: @defected_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defected_items/1
  # DELETE /defected_items/1.json
  def destroy
    @defected_item.destroy
    respond_to do |format|
      format.html { redirect_to defected_items_url, notice: 'Defected item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defected_item
      @defected_item = DefectedItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defected_item_params
      params.require(:defected_item).permit(:company, :full_name, :ar, :description, :status, :total)
    end
end
