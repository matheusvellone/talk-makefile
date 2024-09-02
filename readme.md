1. Makefile "hello world"
  1.1. fazer maquiagem `make up`
2. Makefile com supressão de output
  2.1. `@` antes do comando
3. Makefile com dependencias
  3.1. `make command` vai executar `dependency` antes
4. `default`
  4.1. `make` sem argumentos
5. Makefile como foi feito para ser usado: criação de arquivos
  5.1. `make .env` vai criar o arquivo .env
  5.2. Ao rodar novamente, não vai criar o arquivo, pois o arquivo `.env` já está atualizado
6. PHONY
  6.1. O PHONY transforma o target em um "target sempre out-of-date"
  6.2. `make src` vai rodar normalmente, mesmo que a pasta/arquivo `src` já exista
  6.3. https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile
7. Target com dependencias de arquivos existentes
  7.1. `make .env` vai copiar o `.env.example`
  7.2. Se rodar de novo, não vai fazer nada, pois o `.env` já existe e a data de atualização do arquivo `.env` é mais recente que a do `.env.example`
  7.3. Se atualizarmos o `.env.example`, o `make .env` vai copiar o `.env.example` para `.env` novamente, pois agora o `.env` ficou desatualizado
8. Encadeando comandos que dependem que um arquivo exista
  8.1. `make command-1` vai quebrar, pois o arquivo `.env` não existe (ou pode não existir)
    8.1.1. Daria para esperar que o dev rode `make .env` antes de rodar `make command-1`, mas dev é preguiçoso
  8.2. `make command-2` vai rodar normalmente, pois o target `.env` é uma dependencia. Com isso, o `.env` vai ser criado antes de rodar o `command-2` caso ainda não exista
9. Dynamic targets
  9.1. $* e $@ para pegar o target
10. Dynamic targets com static targets
  10.1. `make file-1` e `make file-2` vão rodar normalmente
  10.2. `make file-<QUALQUER OUTRA COISA>` vai quebrar, pois não existe um target para `file-3`
11. Variáveis
12. Variáveis + static targets
  12.1. Autocomplete :D
  12.2. Todas variáveis do Makefile são construídas a cada execução de QUALQUER comando `make`. Se uma variável roda um `docker ps -aq` para obter os valores e esse comando sempre leva ~50ms para rodar e isso ser utilizado em static targets, estaríamos adicionando 50ms de latencia a todos comandos `make` executados
13. Multiplas pastas

Makefile do core
1. wildcard do .env
2. include do .env
3. export para expor as variaveis de ambiente
4. import de outros Makefiles (commons)
  4.1. mostrar import do commons nos Makefiles dos projetos
5. variáveis
6. FLAGS default baseado em um env (--quiet do docker)
7. bash com `-e` para rodar exec ao invés de `run`
  7.1. dev-% no commons também
8. help + help dos projetos
