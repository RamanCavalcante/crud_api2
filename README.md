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
  "id": 1,
  "username": "Zé Ramalho",
  "email": "deviseteste@gmail.com",
  "password_digest": "$2a$12$gQEI8pNn2psFpR1n9piK4eBoEwo7H878j1M.lyVNJu5geM9iq7lAK"
}
```

GET /api/users - retorna todos usuários cadsastrados (Não requer autenticação)
```
[
	{
		"id": 1,
		"username": "Zé Ramalho",
		"email": "deviseteste@gmail.com",
		"password_digest": "$2a$12$gQEI8pNn2psFpR1n9piK4eBoEwo7H878j1M.lyVNJu5geM9iq7lAK"
	},
	{
		"id": 2,
		"username": "Zé Ramalho",
		"email": "deviseteste@gmail.com",
		"password_digest": "$2a$12$ftmwYk7j2Qq/wdF8VXZbneXli6ZcXia.02xW5khY2VjWF4Vh0ZSuC"
	}
]
```
