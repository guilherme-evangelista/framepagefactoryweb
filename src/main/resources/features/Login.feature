#language: pt
#encoding: utf-8

@login @regressivo
Funcionalidade: Login

  Contexto: Acessar o site
    Dado que eu acesso o site

  @loginsucesso @positivo @web
  Cenario: Realizar login com sucesso no sistema
    Quando realizo login com o usuario "padrao"
    Então valido que a mensagem "Bem vindo, Web Guilherme!" esta sendo exibida

  @logininvalido @negativo @web
  Cenario: Não realizar login ao passar email invalido
    Quando realizo login com o usuario email invalido
    Então valido que nao foi possivel realizar o login

  @loginusercadastrado @positivo @web
  Cenario: Relizar login com usuario cadastrado
    E clico em novo usuario
    E crio um usuario preenchendo corretamente os campos de cadastro
    Quando realizo login com o usuario "cadastrado"
    Então valido que o login foi realizado com sucesso
