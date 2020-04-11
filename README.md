# Torre-de-Hanoi

Pré requisitos:
Git e Ruby 2.7 instalados

Comandos:
Git clone
Entrar na pasta,rodar comando
'ruby tower_hanoi.rb'

Torre de Hanoi é um jogo muito famoso. Neste jogo, existem três pinos e N número de discos colocados um sobre o outro em tamanho decrescente.
O objetivo deste jogo é mover os discos um a um do primeiro ponto para o último ponto. E existe apenas UMA condição, não podemos colocar um disco maior em cima de um disco menor.

Usaremos uma notação geral:
towerHanoi(N, Início, Aux, Fim)
Onde,
1. towerHamoi -  denota nosso procedimento
2. N - indica o número de discos
3. Inicio - é o pino inicial
4. Aux - é o pino auxiliar
5. Fim - é o pino final

## RESUMO
- Recebemos o a representação do N como argumento na chamada do método;
- Criamos 3 argumento default que são representação dos 3 pinos;
- Verificamos dentro de um IF se os pinos estão vazios ou seja sem nenhum disco;
- Então fazemos com que o pino INICIAL receba,a quantidade de discos informada como argumento.


## Como resolver Torre de Hanoi?
Para resolver este jogo, seguiremos três etapas simples recursivamente.
1. Chamada do método(N-1, Inicio, Fim, Aux)
2. Chamada do método(1, Inicio, Aux, Fim)
3. Chamada do método(N-1, Aux, Inicio, Fim)

##Movimentos necessários
Se houver N discos, podemos resolver o jogo em movimentos mínimos de 2N - 1.

Exemplo: N = 3

Movimentos mínimos necessários = 2**3 - 1 = 7
Sendo assim, adicionei um contador para retornar esse numero de etapas de conclusão da torre, que é o resultado.


