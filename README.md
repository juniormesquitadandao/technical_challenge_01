# GitJMD

![Modeling](https://raw.githubusercontent.com/juniormesquitadandao/technical_challenge_01/master/architecture/modeling.png)

## Technical Challenge 01

```txt
Construa uma nova aplicação, utilizando o framework Ruby on Rails 7, a qual deverá conectar na API do GitHub e disponibilizar as seguintes funcionalidades:

- Botão para buscar e armazenar os repositórios destaques de 5 linguagens à sua escolha;
- Listar os repositórios encontrados;
- Campo de busca para filtrar a lista por termo / palavra chave.
- Visualizar os detalhes de cada repositório.

Alguns requisitos:

- Deve ser uma aplicação totalmente nova;
- A solução deve estar em um repositório público do GitHub;
- A aplicação deve armazenar as informações encontradas;
- Utilizar PostgreSQL;
- O deploy deve ser realizado, preferencialmente, no Google Clou Run, Heroku, AWS ou no Azure;
- A aplicação precisa ter testes automatizados;
- Preferenciamente dockerizar a aplicação;
- Por favor atualizar o readme da aplicação com passo a passo com instrução para subir o ambiente.
```

## AWS Resoucers

http://ec2-3-236-44-147.compute-1.amazonaws.com

- RDS
  - DB: Postgresql
  - Version: 14.2-R1
  - Instance: db.t3.micro
  - Free Tier? Yes
- ElastiCash
  - DB: Redis
  - Version: 6.2
  - Instance: cash.t4g.micro
  - Free Tier? No
  - Price Per Hour: $0.016
- ECS
  - Type: EC2
  - Instance: t3a.small
  - Free Tier? No
  - Price Per Hour: $0,0188

## Setup

- Configure host: https://github.com/juniormesquitadandao/gerlessver

```sh
cd github
  echo 'GITHUB_PERSONAL_ACCESS_TOKEN=YOUR_GITHUB_PERSONAL_ACCESS_TOKEN' > .env.docker-compose
  chmod +x devops/**/*.sh
  ./devops/github/repositories.sh
  ./devops/compose/config.sh
  ./devops/compose/build.sh
  ./devops/compose/up.sh
  ./devops/compose/exec.sh app bash
    ruby -v
    node -v
    bundle install
    npm install

    rubocop -a
    bundle-audit
    circleci config validate

    date > .keep
    git status
    git diff
    git add .
    git commit -m 'update .keep'
    git status
    git push

    rails db:create
    RAILS_ENV=test rails db:create
    rails db:migrate db:seed
    rspec

    rails c
      Redis.new.keys
      exit
    rails s
    # Brower: http://localhost:3000
    # Press: CTRL+C
    exit
  ./devops/compose/down.sh
```
