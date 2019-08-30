
Dado("o endereço de uma API") do
  $URi_base = "http://5d5d742b6cf1330014feae9d.mockapi.io/api/v1/users"
end

Quando("realizar a requisição para cadastro") do
  $response = HTTParty.post($URi_base, :body => {"name":@name,"email":@email})
end

Então("a api irá retornar os dados com código do post") do 
  puts "response body : #{$response.body}"
  expect($response.code).to eq(201)
  puts "response code : #{$response.code}"
  expect($response.message).to eq('Created')
  puts "response message : #{$response.message}"

end

Quando("realizar a requisição para verificar dados") do

  $response = HTTParty.get($URi_base)
end

Então("a api irá retornar os dados com código do get") do
  puts "response body : #{$response.body}"
  expect($response.code).to eq(200)
  puts "response code : #{$response.code}"
  expect($response.message).to eq('OK')
  puts "response message : #{$response.message}"
  
  
end