API Gateway : RabbitMQ (AMQP)サンプル
=====================================

API Gateway AMQP を使用するサンプルです。

事前準備
--------

事前に RabbitMQ サーバ上に exchange と queue を作っておく
必要があります。

以下手順を実行すると exchange と queue を生成します。
(Ruby および Bundler が必要です)

    $ bundle install
    $ ruby ./initialize.rb

RabbitMQ サーバに接続するための情報は initialize.rb の
先頭の Bunny.new(...) にあります。適宜変更してください。

exchange は direct で名前は apigw-sample-exchange、
queue 名は apigw-sample-queue となります。
また、routing key は key1 です。

API定義の投入
-------------

Swagger API 定義は api.yml ファイルにあります。
RabbitMQ 接続のための情報は先頭の x-proxy 定義にありますので、
適宜修正してください。

以下手順で API を登録します。
(nebula_config.yaml ファイルは事前に作成しておいてください)

    $ nebula create-api api.yml

設定
----

config.sh.sample を config.sh にコピーし、必要な設定を行ってください。
このファイルは後述するスクリプトからロードされます。

Pub/Subテスト
-------------

publish_test.sh を実行すると、1個分のメッセージが Publish されます。

Publish 後に consume_test.sh を実行すると、Consume が実行され、
メッセージが標準出力に表示されます。

ベンチマークテスト
------------------

Publish / Consume ベンチマークテストとして、それぞれ
publish_bench.sh, consume_bench.sh テストを用意しています。

publish_bench.sh は 1000 個のメッセージを publish するテスト、
consume_bench.sh は 1000 個のメッセージを consume するテストです。

メッセージ数や並列数を変更したい場合は、それぞれの .sh ファイルを
変更してください。

実行には Apache Bench が必要です。




