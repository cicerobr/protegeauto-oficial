class Quote < ActiveRecord::Base

  belongs_to :state

  validates :modelo_veiculo, :ano_veiculo, :state, :placa_veiculo, :valor_fipe, :name, :email, :rg, :cpf, :telefone, presence: true

end
