# Arquitetura
A arquitetura escolhida para o projeto foi a **MVC** (Model-View-Controller). Além disso, foi utilizado o padrão Repository para realizar as chamadas a api.

# Organização do projeto
Inicialmente o projeto foi organizado da seguinte forma: 
**lib/app** - organização de pastas no geral;
**app/controllers** - arquivos de controle do projeto;
**app/core** - arquivos que podem ser utilizados no projeto inteiro;
**app/models** - arquivos para modelos de dados;
**app/pages** - arquivos de telas para o app;
**app/repositories** - contém o arquivo de repository relacionado aos filmes;

# Pacotes
**lottie: ^2.2.0** - pacote que auxiliou na animação da splashpage do app;
**dio: ^5.0.0** - pacote que realiza chamadas http para as chamadas à api;**video_player: ^2.5.1** - pacote utilizado para exibir video dos trailers de cada filme;
**chewie: ^1.4.0** - pacote de configuração e estilização do videoplayer;
**provider: ^6.0.5** - pacote do gerenciador de estado para controle dos estados do app;
**shared_preferences: ^2.0.17** - pacote para armazenamento de informações do app, mesmo quando finalizado.

# Requisitos
## Videoplayer
Dentre os requisitos principais, apenas a execução do trailer de cada filme não pôde ser executada plenamente. Posteriormente foi descoberto que o pacote video_player possui limitações quanto à url de vídeos oriundos da internet. Devido ao tempo de entrega, esse problema não foi consertado.

# Melhorias
## Lista de desejos
A funcionalidade de manter a lista de desejos mesmo após o fechamento do aplicativo, não foi implementada. É interessante que posteriormente essa limitação seja resolvida.

## Tratamento de erros
As chamadas realizadas à api não possuem o tratamento adequado (try-catch), assim, mesmo que um erro ocorra, o app não possui comportamento de lidar adequadamente com essas limitações de desempenho.

## Informações visuais
Não foram implementadas funcionalidades que auxiliam na experiência do usuário, como um loader para informar que existe dados sendo carregados, mensagens de confirmação de ações, dentre outros. é importante que estas funcionalidades sejam implementadas para auxiliar os usuários no correto funcionamento do aplicativo.






