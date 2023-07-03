module ApplicationHelper

  def cpf_formated(cpf:)
    cpf = CPF.new(cpf)
    cpf.formatted
  end
end
