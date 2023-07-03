# README

## Api para cadastro de usuários e músicas
#### Para que a aplicação funcione é necessário alguns requisitos
  - ruby-3.0.0
  - Rails 6.1.7.4
  - postgresql
    
#### gems utilizadas:
- `activate_model_serializer`
- `bcrypt`
- `jwt`

## Execute os seguintes passos
### Crie o databse e faça o migrate
```shell
rails db:create
rails db:migrate
```
### Instale as gems com os seguinte comandos
```shell
bundles install
```
### Para iniciar servidor execute
```shell
rails server
```
#### Endpoints 

POST /api/users - Cadastra novo usuário (Não requer authenticação)
- Request JSON body
```shel
```json
{
  "username": "Zé Ramalho",
  "email": "zeramalhooficial@gmail.com",
  "password": "1234567"
}
```

- Response JSON body
```json
 {
  "user": {
  "id": 6,
  "username": "Zé Ramalho",
  "password_digest": "$2a$12$QZCnDSvDSt4XPM7/ORs89OMAiYz3T7Px27udvpxB.mhfiVUUkyJJ.",
  "created_at": "2023-07-03T11:26:32.797Z",
  "updated_at": "2023-07-03T11:26:32.797Z",
  "email": "deviseteste@gmail.com"
 },
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2fQ.uVo7u877IT2GEMpB_gxVtxhMAYAJD8W_XiUoNvR7_iM"
 }
```

GET /api/users - retorna todos usuários cadsastrados (Não requer autenticação)
- Request JSON body
```json
{}
```

- Response JSON body
```json
[
 {
  "id": 4,
  "username": "Zé Ramalho",
  "email": "deviseteste@gmail.com"
 },
 {
  "id": 5,
  "username": "Zé Ramalho",
  "email": "deviseteste@gmail.com"
 }
]
```

GET /api/musics - retorna todas as músicas criadas (requer autenticação)
- Request JSON body
```json
{}
```

- Responses JSON body
- Caso o usuário tenha autenticação
```json
[
 {
  "id": 1,
  "name": "Ragatanga",
  "user_id": 1,
 }
]
```

- Caso usuário não tenha autenticação
```json
 {
  "message": "Você precisa estar logado"
 }
```
