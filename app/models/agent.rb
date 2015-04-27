class Agent < ActiveRecord::Base

  validates :name, :cidade_uf, :telefone, :email, :escolaridade, :local_representacao, :exp_profissional, presence: true

end
