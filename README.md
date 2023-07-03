# README

## Api para cadastro de usuário e músicas

#### gems utilizadas:
- activate_model_serializer
- bcrypt
- jwt

#### endpoints 

POST /api/users - Cadastra novo usuário (Não requer authenticação)
request json body
```
{
  "username": "Zé Ramalho",
  "email": "zeramalhooficial@gmail.com",
  "password": "1234567"
}
```
response json body
```
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
request json body
```
{}
```

response json body
```
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
request json body
```
 { }
```

responses json body
Caso usuário esteja sem autenticação:
 {
  "message": "Você precisa estar logado"
 }

Caso usuário esteja autenticado:
```
[
{
  "id": 1,
  "name": "Ragatanga",
  "user_id": 1,
 }
]
```



