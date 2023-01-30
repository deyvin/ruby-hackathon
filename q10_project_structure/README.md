**Question**

Surgiu uma demanda para construir a arquitetura de um sistema para locação de veículos. Esta demanda é para um projeto grande onde terá várias pessoas no time de desenvolvimento. Você como líder do projeto ficou responsável por criar esta arquitetura.
Algumas funções deste sistema incluem:
Envio de email
Envio de SMS
Uso de gateway de pagamento
Envio de comprovante em PDF


**Response**


Eu seguiria o padrão do clean arquitecture que separaria as camadas em

1 - Camada de Entidade: contém modelos de dados básicos que são utilizados na aplicação.

2 - Camada de Casos de Uso: é a camada de regra de negócio, onde são definidos os fluxos de processos que a aplicação deve seguir.

3 - Camada de Apresentação: é a camada que interage com o usuário, exibindo informações e recebendo interações.

4 - Camada de Repositório: é a camada de acesso a dados, responsável por fazer a ligação com o banco de dados.


Na prática eu iria estruturar

* data/usecases - Adicionaria todos casos de uso para adicionar, consultar e excluir dados do banco

* domain/models - Seria minha camada de entidade, onde entraria os models

* infra - Seria minha camada onde eu iria incluir todos os meus adaptadores internos e externos, banco de dados, libs de criptografias, disparo de emails

* main/factories - Camada onde eu iria armazenar meus factories onde eu iria comunicar meus controllers com minhas rotas por exemplo

* main/routes - Camada de rotas

* main/middlewares - Camada de Middlewares, autenticação, permissões, filtros de requisição, etc...

* presentation - Adicionaria meus controllers e caso for necessários, alguns helpers tbm

* validations - Todas as validações que seriam utilizadas dentro dos controllers


Dessa forma cada responsabilidade estaria dividida por camdadas e arquivos conseguindo na prática aplicar todos conceitos do SOLID