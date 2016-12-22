API Gateway : HTTP サンプル
==============================

API Gateway HTTP を使用するサンプルです。

API定義の投入
-------------

Swagger API 定義は api.yml ファイルにあります。

以下手順で API を登録します。
(nebula_config.yaml ファイルは事前に作成しておいてください)

    $ nebula create-api api.yml

テスト
------

test.sh の HOST にプロキシ先のホスト名を指定してください。

test.sh を実行すると、HOSTに指定したホストに対してに HTTP リクエストが
転送され、結果が表示されます。

