# technical_challenge_01

![Modeling](https://raw.githubusercontent.com/juniormesquitadandao/technical_challenge_01/master/architecture/modeling.png)

## Architecture

GitHub -> Docker -> Docker Compose -> Linux -> PostgreSQL -> Redis -> Ruby -> RoR -> GitHub API -> Rspec -> Sideikq -> Rubocop -> Bundle Audit -> Circle CI -> GitHub Webhooks -> AWS (IAM -> CloudWatch -> Codebuild -> CLI -> ECR -> ECS -> ASG -> EC2 -> VPC -> PS -> IG -> SG -> TG -> ALB -> Cloudfront -> R53 -> ACM -> RDS PostgreSQL -> ElastiCache Redis)

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
