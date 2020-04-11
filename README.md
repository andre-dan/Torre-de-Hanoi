# Torre-de-Hanoi

Pré requisitos:
Git e Ruby 2.7 instalados

### Comandos:
1. git clone git@github.com:andre-dan/Torre-de-Hanoi.git
2. cd Torre-De-Hanoi
3. ruby tower_hanoi.rb

Torre de Hanoi é um jogo muito famoso. Neste jogo, existem três pinos e N número de discos colocados um sobre o outro em tamanho decrescente.
O objetivo deste jogo é mover os discos um a um do primeiro ponto para o último ponto. E existe apenas UMA condição, não podemos colocar um disco maior em cima de um disco menor.

Usaremos uma notação geral:
 towerHanoi(disks, source=[], aux=[], target=[], moves=0)
Onde,
1. towerHanoi -  denota nossa função
2. disks - indica o número de discos
3. source - é o pino inicial
4. aux - é o pino auxiliar
5. target - é o pino final
6. moves - contador de etapas

## RESUMO
- Recebemos a representação do disks como argumento na chamada do método;
- Criamos 4 argumento default que são representação dos 3 pinos;
- Verificamos dentro de um if se os pinos estão vazios ou seja sem nenhum disco;
- Então fazemos com que o pino source receba,a quantidade de discos informada como argumento.


## Como resolver Torre de Hanoi?
Para resolver este jogo, seguiremos três etapas simples recursivamente.
1. Chamada do método com contador recebendo valor:    moves = towerHanoi(disks - 1, source, target, aux, moves)
2. Chamada do método com contador recebendo valor:    moves = towerHanoi(1, source, aux, target, moves)
3. Chamada do método                                          towerHanoi(disks - 1, aux, source, target, moves)

## Movimentos necessários
Se houver N discos, podemos resolver o jogo em movimentos mínimos de 2N - 1.

Exemplo: N = 3

Movimentos mínimos necessários = 2 ** 3 - 1 = 7
Sendo assim, adicionei um contador para retornar esse numero de etapas de conclusão da torre, que é o resultado.


