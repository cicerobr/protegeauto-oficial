class CreateAccreditations < ActiveRecord::Migration
  def change
    create_table :accreditations do |t|
      t.string :name
      t.string :cidade_uf
      t.string :telefone
      t.string :email
      t.string :cnpj
      t.string :ref_comercial_name
      t.string :ref_comercial_telefone
      t.text :como_conheceu

      t.timestamps null: false
    end
  end
end
