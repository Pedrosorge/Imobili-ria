class CasasController < ApplicationController
  before_action :set_casa, only: %i[ show edit update destroy ]

  # GET /casas or /casas.json
  def index
    @casas = Casa.all
  end

  # GET /casas/1 or /casas/1.json
  def show
  end

  # GET /casas/new
  def new
    @casa = Casa.new
  end

  # GET /casas/1/edit
  def edit

  end

  # POST /casas or /casas.json
  def create

    if casa_params[:local].blank?
      flash[:error]= "Preencha o compo 'local'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:metragem].blank?
      flash[:error]= "Preencha o compo 'metragem'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:dormitorios].blank?
      flash[:error]= "Preencha o compo 'dormitorios'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:suites].blank?
      flash[:error]= "Preencha o compo 'suites'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:desconto_num].blank?
      flash[:error]= "Preencha o compo 'desconto_num'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:preco].blank?
      flash[:error]= "Preencha o compo 'preco'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:condominio].blank?
      flash[:error]= "Preencha o compo 'condominio'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:banheiro].blank?
      flash[:error]= "Preencha o compo 'banheiro'!"
      redirect_to "/new_buy"
      return
    end
    if casa_params[:garagem].blank?
      flash[:error]= "Preencha o compo 'garagem'!"
      redirect_to "/new_buy"
      return
    end

    @casa = Casa.new(casa_params)
    
    respond_to do |format|
      if @casa.save
        format.html { redirect_to @casa, notice: "Casa was successfully created." }
        format.json { render :show, status: :created, location: @casa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @casa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casas/1 or /casas/1.json
  def update
    respond_to do |format|
      if @casa.update(casa_params)
        format.html { redirect_to @casa, notice: "Casa was successfully updated." }
        format.json { render :show, status: :ok, location: @casa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @casa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casas/1 or /casas/1.json
  def destroy
    @casa.destroy
    respond_to do |format|
      format.html { redirect_to casas_url, notice: "Casa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casa
      @casa = Casa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def casa_params
      params.require(:casa).permit(:metragem, :local, :dormitorios, :suites, :banheiro, :garagem, :preco, :condominio, :desconto_num)
    end
    
end

