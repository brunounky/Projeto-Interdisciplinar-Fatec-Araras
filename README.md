<h1>Projeto Interdisciplinar 2°Semestre</h1>
<h2>SoSCardio :heart:</h1>

<h3>INTRODUÇÃO</h3>

<h4>OBJETIVO</h4>
<p>Os dezessete objetivos do Desenvolvimento Sustentável pautados pela ONU e pelos países que a integram, visam acabar com problemas relacionados à pobreza, buscando garantir direitos básicos a todos. Os desafios que permeiam esses objetivos devem ser discutidos com a intenção de proporcionar produtos ou formas de solucionar esses problemas.
	Dentro dessas metas, o objetivo número três, relacionado à saúde e bem-estar, foi o escolhido para ser tema do projeto interdisciplinar do segundo semestre de Desenvolvimento de Software Multiplataforma da Fatec Araras, sendo necessário o uso da tecnologia para auxiliar e impulsionar o cumprimento desse objetivo. O desenvolvimento de um aplicativo para a manipulação dos dados obtidos por dispositivos vestíveis será uma forma de prevenir óbitos advindos de paradas cardíacas, em que a velocidade nos primeiros-socorros é decisiva. A preocupação se dá quando a maior parte das pessoas vêm a falecer por falta de atendimento nos primeiros socorros, sendo assim, o intuito do sistema é diminuir o  número de mortes por doenças cardiovasculares.</p>

<em>"Quando acontece a parada cardiorrespiratória, cada minuto perdido diminui em 10% a chance de sobrevivência. Sem  oxigenação, os neurônios morrem; por isso, é necessário iniciar de imediato a reanimação" </em>
Robson da Silva Daniel, soldado do CBDF 
(a notícia completa está logo abaixo)

Baseado nesses dados, nosso aplicativo será voltado para pessoas que gostariam de fazer o monitoramento da saúde e para os primeiros socorros em pessoas que tiveram um ataque cardíaco, emitindo um alerta em um raio de um quilômetro para profissionais da saúde ou pessoas qualificadas para realizar o atendimento de imediato.


<h4> DIFERENCIAIS DO PROJETO </h4>
O	CardioSOS se propõe a ser mais que apenas uma ferramenta de monitoramento cardíaco, sendo um aliado na prevenção de mortes causadas por paradas cardiorrespiratórias, com isso ele embarca na proposta de manipular os dados que são gerados por dispositivos vestíveis (wearables), detectar problemas com os usuários e alertar agentes da saúde que possam ajudar nos primeiros-socorros.
Além da emissão de alertas de emergência, o aplicativo conta com uma estrutura de ficha médica, em que são inseridos dados relacionados à saúde do usuário, como sua rotina de exercícios ou as comorbidades que o mesmo possa ter. Informações como essas serão disponibilizadas para os voluntários que estiverem próximos, no intuito de promover uma abordagem pontual e direta, já que o tempo para prestar o atendimento é essencial para a vida do usuário.

<h4> PÚBLICO-ALVO </h4>
O projeto foi estruturado pensando na prevenção de ataques cardíacos como uma forma de diminuir a mortalidade causada por esse tipo de doença e buscar contribuir com um dos objetivos de Desenvolvimento Sustentável da ONU, como consequência disso, o grupo da sociedade em que mais ocorre casos de mortes advindas de paradas cardiorrespiratórias são pessoas com mais de 60 anos, ou seja, a arquitetura do projeto é pensada na utilização desse público, não do aplicativo em si, mas sim da característica principal do mesmo, que são os alertas de socorro quando há a identificação de parada cardíaca.
Em segundo plano temos os voluntários da saúde e/ou pessoas que possuam qualificações e experiência na realização de primeiros-socorros como utilizadores essenciais para o funcionamento do sistema. Outros usuários também podem fazer uso do aplicativo como uma forma de contribuir com nosso objetivo, além de despertar interesse pela capacitação nos primeiros-socorros e no cuidado da saúde que serão estimulados pelos gráficos de movimento e de atividades físicas.

<h4>REQUISITOS FUNCIONAIS</h4>

- Controle de acesso:

  - Realizar login;

  - Cadastrar-se como usuário ou voluntário;

  - Recuperar senha.

- Controle do usuário e voluntário:
  - Detecção de paradas cardíacas;
  - Consultar histórico de doenças;
  - Consultar dados pessoais;
  - Criar um alerta de perigo para as pessoas que forem fazer o atendimento de primeiros socorros caso haja algum mal intencionamento.

- Controle do sistema:
  - Aferição de pressão (consultar modelos que possuem a configuração necessária).
  - Emissão de alerta (raio de um quilômetro) para as pessoas cadastradas no sistema para fazer o primeiro socorro.
  - Alerta de perigo para as pessoas que se cadastraram como voluntários.
  - Cronômetro de 3 minutos para chegar até o local da vítima.

<h4>REQUISITOS NÃO FUNCIONAIS</h4>

- Usabilidade
  - CardioSOS deverá ser simples, intuitivo e fácil de usar.
  - Assim como mostra os diagramas de Casos de Uso e de Classe que foram feitos para a exemplificação da sua utilização.
  - Link para os diagramas: https://github.com/brunounky/Projeto-Interdisciplinar-Fatec-Araras/tree/main/Diagramas

- Manutenabilidade
  - O sistema deverá ser fácil de se fazer a manutenção com um código limpo e de fácil entendimento.

- Acessibilidade
  - O sistema deverá ter funcionalidades que irão facilitar a adequação do sistema visual e usual para determinados grupos de usuários.

- Segurança
  - O sistema deve criptografar todas as comunicações entre o usuário e o servidor, assim como deixar explícito qual será o uso e quais dados que o sistema detém do usuário,         levando em consideração a LGPB. O sistema também deverá fazer a exclusão de toda e qualquer informação dos usuários quando não houver consentimento do mesmo ou caso este         decida parar de fazer uso do nosso sistema.


<h4>TECNOLOGIAS UTILIZADAS</h4>

- Java e Kotlin - desenvolvimento Android.
- PHP - sistema de login.
- HTML/CSS -  front-end login.
- MySQL - banco de dados.


<h4>REQUISITOS DE SOFTWARE</h4>

- API mínima 29 do sistema - Android.
- Padrão do sistema de login orientado à objeto - PHP.
- Sistema de banco de dados - MySQL.


<h4>REFERÊNCIAS:</h4>

- Rapidez no socorro pode salvar vidas: https://www.correiobraziliense.com.br/app/noticia/ciencia-e-saude/2010/04/01/interna_ciencia_saude,183263/rapidez-no-socorro-pode-salvar-vidas.shtml
- Site cardiômetro: http://www.cardiometro.com.br/

