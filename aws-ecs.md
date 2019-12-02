# Elastic Container Servive

- [クラスター](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/userguide/ECS_clusters.html)
 
    クラスターは最上位に位置する論理グループで、クラスター上でサービス、またはタスクを束ねて定義することが出来ます。

    クラスターは極論をいうと名前空間と定義出来ます。

- [タスク定義](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/userguide/task_definitions.html)

    タスク定義では主にDockerにおけるイメージ、ネットワーク、ストレージ等のコンテナのリソースに関わる部分を指定できます。

    またコンテナのヘルスチェック、CloudWatchへのログの出力などのコンテナの監視を指定することが出来ます。

- [サービス](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/userguide/ecs_services.html)

    サービスでは、タスク定義におけるロードバランサ、VPC、セキュリティグループ、Auto Scaling、Taskの数など  
    AWSサービスに関連するパラメーターなどを指定します。

- イメージ

    ![図](https://d129ird697a0zf.cloudfront.net/ecs-objects-taskdef-1aba4ac72a5c999e0cb74833a18e6289eb71d32a.png)

### [AWS Fargate](https://aws.amazon.com/jp/fargate/)

`ECS`上で実行されるコンテナのインフラストラクチャとして`EC2`、`Fargate`を指定出来ます。

`EC2`ではインフラの管理を開発者(利用者)が行う必要がありましたが、`Fargate`はコンテナ環境がマネージドとして提供されているため  
パッチやスケールなどのインフラの管理を行う必要がありません。