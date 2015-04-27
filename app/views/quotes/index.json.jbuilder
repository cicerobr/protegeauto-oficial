json.array!(@quotes) do |quote|
  json.extract! quote, :id, :modelo_veiculo, :ano_veiculo, :placa_veiculo, :valor_fipe, :name, :email, :rg, :cpf, :telefone, :status_atendimento
  json.url quote_url(quote, format: :json)
end
