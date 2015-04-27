class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :modelo_veiculo
      t.string :ano_veiculo
      t.string :placa_veiculo
      t.string :valor_fipe
      t.string :name
      t.string :email
      t.string :rg
      t.string :cpf
      t.string :telefone
      t.string :status_atendimento

      t.timestamps null: false
    end
  end
end
