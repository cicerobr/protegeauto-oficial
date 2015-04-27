json.array!(@accreditations) do |accreditation|
  json.extract! accreditation, :id, :name, :cidade_uf, :telefone, :email, :cnpj, :ref_comercial_name, :ref_comercial_telefone, :como_conheceu
  json.url accreditation_url(accreditation, format: :json)
end
