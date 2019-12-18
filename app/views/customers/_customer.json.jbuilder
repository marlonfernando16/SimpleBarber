json.extract! customer, :id, :nome, :sobrenome, :cpf, :data_nascimento, :telefone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
