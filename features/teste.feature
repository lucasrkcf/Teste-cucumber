#language: pt


Funcionalidade: Validade funcionamento de API
 @Faker
 Cenário: Post
 Dado o endereço de uma API
 Quando realizar a requisição para cadastro
 Então a api irá retornar os dados com código do post
        
Cenário: GET
 Dado o endereço de uma API
 Quando realizar a requisição para verificar dados
 Então a api irá retornar os dados com código do get
        