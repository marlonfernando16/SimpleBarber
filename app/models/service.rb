class Service < ApplicationRecord
  has_many :service_attendances
  has_many :attendances, through: :service_attendances
  
  def corte_and_preco
    "#{corte} - R$ #{preco}"
  end
end
