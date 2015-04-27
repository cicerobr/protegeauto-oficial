class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :cidade_uf
      t.string :telefone
      t.string :email
      t.string :escolaridade
      t.string :local_representacao
      t.string :exp_profissional

      t.timestamps null: false
    end
  end
end
