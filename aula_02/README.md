﻿﻿<h1>Enviando os Scripts SQL para o Github</h1>

Este guia irá auxiliar no processo de criação e inicialização de uma pasta como um Repositório Local do Git e associar este Repositório Local ao Repositório Remoto que será criado no Github para o envio dos Scripts SQL. Desta forma, toda vez que você efetuar um *git push* no Repositório Local, todos os Scripts serão encaminhados para o Repositório Remoto no Github.

<h2>👣 Passo 01 - Criar o Repositório Remoto no Github</h2>

Vamos criar o Repositório Remoto no Github:

 1. Acesse a sua conta no Github (**https://github.com**).

 2. Na tela inicial do seu Github, clique no link <img src="https://i.imgur.com/YZktqfP.png?1" title="source: imgur.com" />, 

 3. Em **Repositories**, clique no botão **New** para adicionar um novo Repositório.

    <div align="center"><img src="https://i.imgur.com/I8fT17R.png" title="source: imgur.com" /></div>

 4. Crie um **Repositório Público**, chamado **sqlserver**, como mostra a figura abaixo. 

<div align="center"><img src="https://i.imgur.com/6oBFx9N.png" title="source: imgur.com" /></div>

5. Em seguida clique no botão **Create Repository**.

<div align="center"><img src="https://i.imgur.com/rWTdgRd.png" title="source: imgur.com" /></div>

6. Repositório Criado!

<div align="center"><img src="https://i.imgur.com/pA5VvOr.png" title="source: imgur.com" /></div>

<br />

<h2>👣 Passo 02 - Criar o Repositório Local</h2>

Vamos criar o repositório local na  **Área de Trabalho do Windows**, que será conectada ao Repositório Remoto **sqlserver** no Github.

1. Na Área de Trabalho do seu Computador, clique com o botão direito do mouse, no menu que será aberto clique na opção: **Novo 🡪 Pasta**.

2. Crie a pasta **sqlserver**.



3. Clique com o botão direito do mouse a pasta **sqlserver** e clique na opção: **Git Bash Here**

<div align="center"><img src="https://i.imgur.com/A93QtUn.png" title="source: imgur.com" width="230px"/></div>

4. No **Git Bash**, execute a sequência de comandos abaixo para conectar com o repositório remoto.
```bash
git init
git branch -M master main
git remote add origin https://github.com/rafaelq80/bd_mysql.git
git pull origin main
git remote -v
```
<table width=100%>
	<tr>
        <td width=30%><b>Comando</b></td>
		<td width=70%><b>Descrição
	</tr>
	<tr>
        <td><i>git init</i></td>
        <td>Inicializa um repositório git local dentro da pasta bd_mysql.</td>
	</tr>
	<tr>
        <td><i>git branch -M master main</i></td>
		<td>Renomeia a branch local master para main.</td>
	</tr>
	<tr>
        <td><i> git remote add origin endereço_remoto</i></td>
        <td>Associa o repositório local ao repositório remoto. O endereço_remoto será o endereço do seu repositório.</td>
	</tr>
	<tr>
        <td><i>git pull origin main</i></td>
        <td>Atualiza o seu repositório local com o conteúdo do repositório remoto.</td>
	</tr>
	<tr>
        <td><i>git remote -v </i></td>
        <td>Checa se o seu repositório local está conectado ao repositório remoto</td>
	</tr>
</table>

5. Para obter o endereço Remoto do seu Repositório basta copiar o endereço disponível no item **HTTPS** do novo Repositório, como mostra a figura abaixo:

   <div align="center"><img src="https://i.imgur.com/RLdeZge.png" title="source: imgur.com" /></div>

6. Crie a pasta **aula_02** dentro da pasta **sqlserver**, para salvar os Scripts SQL da 1ª aula prática.

<br />

<h2>👣 Passo 03 - Criar o Script da aula</h2>

Siga as instruções da Live Code.

<br />

<h2>👣 Passo 04 - Salvar o Script SQL</h2>

Para Salvar o Script SQL, siga as instruções abaixo:

1. Na Barra de Ferramentas do SQL Server Management Studio, clique no botão <img src="https://i.imgur.com/Zka1MbL.png" title="source: imgur.com" /> (Salvar).

   <div align="center"><img src="https://i.imgur.com/PvzL9n2.png" title="source: imgur.com" /></div>

2. Será aberta a janela **Salvar Arquivo como**

3. Localize a pasta **aula_02** dentro da pasta **sqlserver** na sua **Área de Trabalho**. No campo **Nome** informe o nome do arquivo e clique no botão **Salvar** para concluir o processo.

   <div align="center"><img src="https://i.imgur.com/KExNVjh.png" title="source: imgur.com" /></div>

<br />

<h2>👣 Passo 05 - Atualizar o Repositório Remoto</h2>

Vamos enviar o Script salvo para o Repositório Remoto no Github

1. Volte para o **GitBash** e confirme se os arquivos do projeto estão aguardando para serem adicionados no Git com o comando <b>git status</b>

```bash
git status
```

<div align="center"><img src="https://i.imgur.com/tygTPhl.png" title="source: imgur.com" /></div>

2. Agora vamos atualizar o Repositório Local e enviar todo o conteúdo para o Repositório Remoto no Github, através da sequência de comandos abaixo:

```bash
 git add .
 
 git commit -m “Aula 02 - SQL Server”
 
 git push origin main
```
3. Acesse o Repositório Remoto do Github e verifique se ele foi atualizado.

<br />

<div align="center"><h2>⚠ IMPORTANTE</h2></div>

Toda vez que você precisar enviar conteúdos para este repositório, salve todos os Scripts dentro da pasta **sqlserver**, acesse a pasta através do **GitBash** e execute a sequência de comandos abaixo:

```bash
 git add .
 
 git commit -m “Mensagem do Commit”
 
 git push
```