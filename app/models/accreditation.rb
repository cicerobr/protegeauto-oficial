class Accreditation < ActiveRecord::Base

  validates :name, :cidade_uf, :telefone, :email, :cnpj, :ref_comercial_name, :ref_comercial_telefone, :como_conheceu, presence: true

end
