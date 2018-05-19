# SUPERO - Desafio
 
Implementar uma tasklist com a stack PHP/MySQL..
 
## Instalacao

- Alterar o arquivo httpd.conf (C:\Apache24\conf\httpd].conf) ou httpd-vhosts.conf (C:\Apache24\conf\extra\httpd-vhosts.conf) e aplicar o código abaixo:

<VirtualHost *:80>
    ServerAdmin alertas@teste.com.br
	ServerName teste.supero
	ServerAlias teste.supero.com.br
	 
	DocumentRoot "C:\Apache24\htdocs\www\supero\public"
  
    <Directory "C:\Apache24\htdocs\www\supero\public">
		RewriteEngine On
		Options -MultiViews -Indexes
		AllowOverride None        
		Order allow,deny
		Allow from all

		RewriteEngine On

		#Bloqueando listagem de arquivos svn
		RedirectMatch 404 /\\.svn(/.*|$)

		RewriteCond %{REQUEST_FILENAME} -s [OR]
		RewriteCond %{REQUEST_FILENAME} -l [OR]
		RewriteCond %{REQUEST_FILENAME} -d
		RewriteRule ^.*$ - [NC,L]
		RewriteRule !\.(js|xml|tar|ico|gif|jpg|png|css|html|pdf|swf)$ index.php [NC,L]
    </Directory>

 SetEnv APPLICATION_ENV "development"
 
</VirtualHost>

- Alterar o arquivo hosts (C:\Windows\System32\drivers\etc\hosts)
	Inserir a informação: 127.0.0.1 teste.supero.com.br

# Banco de dados

- Banco de dados MySQL
	Sugiro utilizar MySQLFront.

- Criar um bando de dados com o 
	nome: supero',
	login: root,
	senha: 123456
	
- após criado o banco restaurar/importar o arquivo supero.sql
	- será criada a tabela task.
	
# Descompactar o arquivo supero.zip

- A pasta 'supero' deverá estar dentro da pasta htdocs do Apache ou o endereço ao qual você configurou.


# Acessar ao sistema

- Em seu navegador digitar teste.supero.com.br	
	O site deverá apresentar as taks inseridas na base.
	
# Web Services

- Para testes utilizei o extensão do Chrome ARC, mas em ocasiões anteriores utilizei SoapUI.

- obter todos os registros: http://teste.supero.com.br/service/get-all
- concluir task: http://teste.supero.com.br/service/set-task-concluida?id=1
- abrir task: http://teste.supero.com.br/service/set-task-aberta?id=1
- excluir task: http://teste.supero.com.br/service/delete-task?id=1
