class AddrbooksController < ApplicationController
  before_action :set_addrbook, only: [:show, :edit, :update, :destroy]

  # GET /addrbooks
  # GET /addrbooks.json
  def index
    @addrbooks = Addrbook.all
  end

  # GET /addrbooks/1
  # GET /addrbooks/1.json
  def show
  end

  # GET /addrbooks/new
  def new
    @addrbook = Addrbook.new
  end

  # GET /addrbooks/1/edit
  def edit
  end

  # POST /addrbooks
  # POST /addrbooks.json
  def create
    @addrbook = Addrbook.new(addrbook_params)

    respond_to do |format|
      if @addrbook.save
        format.html { redirect_to @addrbook, notice: 'Addrbook was successfully created.' }
        format.json { render :show, status: :created, location: @addrbook }
      else
        format.html { render :new }
        format.json { render json: @addrbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addrbooks/1
  # PATCH/PUT /addrbooks/1.json
  def update
    respond_to do |format|
      if @addrbook.update(addrbook_params)
        format.html { redirect_to @addrbook, notice: 'Addrbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @addrbook }
      else
        format.html { render :edit }
        format.json { render json: @addrbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addrbooks/1
  # DELETE /addrbooks/1.json
  def destroy
    @addrbook.destroy
    respond_to do |format|
      format.html { redirect_to addrbooks_url, notice: 'Addrbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addrbook
      @addrbook = Addrbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addrbook_params
      params.require(:addrbook).permit(:code, :name, :kana, :postal_code, :address)
    end
end
