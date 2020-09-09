class SnailsController < ApplicationController
  before_action :set_snail, only: [:show, :edit, :update, :destroy]

  # GET /snails
  # GET /snails.json
  def index
    StackProf.run(mode: :cpu, out: 'tmp/stackprof-cpu-myapp.dump', raw: true) do
      @snails = Snail.preload(:trails).all

      render :index
    end
  end

  # GET /snails/1
  # GET /snails/1.json
  def show
  end

  # GET /snails/new
  def new
    @snail = Snail.new
  end

  # GET /snails/1/edit
  def edit
  end

  # POST /snails
  # POST /snails.json
  def create
    @snail = Snail.new(snail_params)

    respond_to do |format|
      if @snail.save
        format.html { redirect_to @snail, notice: 'Snail was successfully created.' }
        format.json { render :show, status: :created, location: @snail }
      else
        format.html { render :new }
        format.json { render json: @snail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snails/1
  # PATCH/PUT /snails/1.json
  def update
    respond_to do |format|
      if @snail.update(snail_params)
        format.html { redirect_to @snail, notice: 'Snail was successfully updated.' }
        format.json { render :show, status: :ok, location: @snail }
      else
        format.html { render :edit }
        format.json { render json: @snail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snails/1
  # DELETE /snails/1.json
  def destroy
    @snail.destroy
    respond_to do |format|
      format.html { redirect_to snails_url, notice: 'Snail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snail
      @snail = Snail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snail_params
      params.require(:snail).permit(:name, :species, :age)
    end
end
