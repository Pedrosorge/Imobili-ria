class MenuController < ApplicationController
  def index
    
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casa
      @casas = Casa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def casa_params
      params.require(:casa).permit(:metragem, :local, :dormitorios, :suites, :banheiro, :garagem, :preco, :condominio, :desconto_num)
    end

end
