json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :cidade_uf, :telefone, :email, :escolaridade, :local_representacao, :exp_profissional
  json.url agent_url(agent, format: :json)
end
