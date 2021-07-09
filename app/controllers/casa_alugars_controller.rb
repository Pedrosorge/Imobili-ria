class CasaAlugarsController < ApplicationController
  before_action :set_casa_alugar, only: %i[ show edit update destroy ]

  # GET /casa_alugars or /casa_alugars.json
  def index
    @casa_alugars = CasaAlugar.all
  end

  # GET /casa_alugars/1 or /casa_alugars/1.json
  def show
  end

  # GET /casa_alugars/new
  def new
    @casa_alugar = CasaAlugar.new
  end

  # GET /casa_alugars/1/edit
  def edit
  end

  # POST /casa_alugars or /casa_alugars.json
  def create
    
    if casa_alugar_params[:local].blank?
      flash[:error]= "Preencha o compo 'local'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:metragem].blank?
      flash[:error]= "Preencha o compo 'metragem'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:quartos].blank?
      flash[:error]= "Preencha o compo 'quartos'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:suites].blank?
      flash[:error]= "Preencha o compo 'suites'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:desconto].blank?
      flash[:error]= "Preencha o compo 'desconto'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:preco].blank?
      flash[:error]= "Preencha o compo 'preco'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:condominio].blank?
      flash[:error]= "Preencha o compo 'condominio'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:banheiros].blank?
      flash[:error]= "Preencha o compo 'banheiro'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:garagem].blank?
      flash[:error]= "Preencha o compo 'garagem'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:salas].blank?
      flash[:error]= "Preencha o compo 'salas'!"
      redirect_to "/new_hent"
      return
    end
    if casa_alugar_params[:cozinhas].blank?
      flash[:error]= "Preencha o compo 'cozinhas'!"
      redirect_to "/new_hent"
      return
    end


    @casa_alugar = CasaAlugar.new(casa_alugar_params)

    respond_to do |format|
      if @casa_alugar.save
        format.html { redirect_to @casa_alugar, notice: "Casa alugar was successfully created." }
        format.json { render :show, status: :created, location: @casa_alugar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @casa_alugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casa_alugars/1 or /casa_alugars/1.json
  def update
    respond_to do |format|
      if @casa_alugar.update(casa_alugar_params)
        format.html { redirect_to @casa_alugar, notice: "Casa alugar was successfully updated." }
        format.json { render :show, status: :ok, location: @casa_alugar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @casa_alugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casa_alugars/1 or /casa_alugars/1.json
  def destroy
    @casa_alugar.destroy
    respond_to do |format|
      format.html { redirect_to casa_alugars_url, notice: "Casa alugar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casa_alugar
      @casa_alugar = CasaAlugar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def casa_alugar_params
      params.require(:casa_alugar).permit(:local, :metragem, :banheiros, :suites, :cozinhas, :quartos, :salas, :garagem, :preco, :condominio, :desconto)
    end
end
