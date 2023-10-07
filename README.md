# cost-spreadsheet-process-back

# Sistema de Importação e Gerenciamento de Planilhas de Custos

## Description

Você faz parte de uma equipe de desenvolvimento de software em uma empresa de
contabilidade. A empresa lida com várias planilhas de custos de clientes e deseja criar um
sistema que permita importar esses dados das planilhas para um banco de dados,
facilitando o gerenciamento e a visualização futura.

## Passo a passo do Desenvolvimento:

https://biojj.notion.site/Sistema-de-Importa-o-e-Gerenciamento-de-Planilhas-de-Custos-9165c75f2494493d916af212cb474e41?pvs=4

## Running the app

```bash
# development
$ docker-compose up -d

```

## Verifique se as 3 imagens subiram:

```bash
# cost-spreadsheet-management-back
# cost-spreadsheet-process-back
# cost-spreadsheet-process-back-postgres-1
$ docker ps

```

## Acesse a aplicação Pelas rotas abaixo

#

#### - Users:

| Methods | Urls       | Actions                 |
| ------- | ---------- | ----------------------- |
| POST    | /users     | create new users        |
| GET     | /users     | retrieve all userss     |
| GET     | /users/:id | retrieve a users by :id |
| PUT     | /users/:id | update a users by :id   |
| DELETE  | /users/:id | delete a users by :id   |

#

#### - Login para gerar token:

| Methods | Urls   | Actions            |
| ------- | ------ | ------------------ |
| POST    | /login | Login              |
| POST    | /me    | Verify user logged |

#

#### - Cost:

| Methods | Urls      | Actions                |
| ------- | --------- | ---------------------- |
| POST    | /cost     | create new cost        |
| GET     | /cost     | retrieve all costs     |
| GET     | /cost/:id | retrieve a cost by :id |
| PUT     | /cost/:id | update a costs by :id  |
| DELETE  | /cost/:id | delete a costs by :id  |

#

## Aplicações:

- API NODE(NESTJS) -> https://github.com/BioJJ/cost-spreadsheet-management-back
- REQUISIÇÔES DA API -> https://api.postman.com/collections/5491216-de516b5d-fdb8-4592-b600-97f88ec5b3a6?access_key=PMAT-01HC4C0BCARDSR3X9EACSEKKNY

## Technologies used

The technologies or tools listed below figure between the most relevant on the development of this project:

- Docker version 24.0.6, build ed223bc
- Docker Compose version v2.22.0-desktop.2

Backend Python

### "dependencies":

- flask
- pandas
- numpy
- flask-cors
- openpyxl

BACKEND NESTJS

### "dependencies":

- @hapi/joi v17.1.1
- @nestjs/axios v3.0.0
- @nestjs/common v9.0.0
- @nestjs/config v3.1.1
- @nestjs/core v9.0.0
- @nestjs/jwt v10.1.0
- @nestjs/mapped-types v2.0.2
- @nestjs/passport v10.0.1
- @nestjs/platform-express v9.0.0
- @nestjs/sequelize v10.0.0
- axios v1.5.1
- bcrypt v5.1.1
- class-transformer v0.5.1
- class-validator v0.14.0
- form-data v4.0.0
- multer v1.4.5-lts.1
- passport v0.6.0
- passport-jwt v4.0.1
- passport-local v1.0.0
- pg v8.11.3
- reflect-metadata v0.1.13
- rxjs v7.2.0
- sequelize v6.33.0
- sequelize-typescript v2.1.5
- Dependências de Desenvolvimento:

### devDependencies

- @commitlint/cli v17.7.1
- @commitlint/config-conventional v17.7.0
- @nestjs/cli v9.0.0
- @nestjs/schematics v9.0.0
- @nestjs/testing v9.0.0
- @types/bcrypt v5.0.0
- @types/express v4.17.13
- @types/hapi\_\_joi v17.1.10
- @types/jest v29.5.0
- @types/multer v1.4.8
- @types/node v18.15.11
- @types/passport-jwt v3.0.9
- @types/passport-local v1.0.35
- @types/sequelize v4.28.16
- @types/supertest v2.0.11
- @typescript-eslint/eslint-plugin v5.0.0
- @typescript-eslint/parser v5.0.0
- devmoji v2.3.0
- eslint v8.48.0
- eslint-config-prettier v8.3.0
- eslint-plugin-prettier v4.0.0
- husky v8.0.3
- jest v29.5.0
- prettier v3.0.2
- source-map-support v0.5.20
- supertest v6.1.3
- ts-jest v29.0.5
- ts-loader v9.2.3
- ts-node v10.0.0
- tsconfig-paths v4.2.0
- typescript v4.7.4

## Stay in touch

- Author - https://www.linkedin.com/in/jefferson-coelho/
- Website - https://github.com/BioJJ
- Twitter - https://twitter.com/bio_jefferson
