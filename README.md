## Terraformの設定方法・備忘録

- AWSアカウント登録
- AWS CLI インストール
- GitBashコマンドライン インストール

をし事前にインストールしておくこと。

## 自分が行った設定手順

- AWS CLI インストール後、以下のコマンドを実行し、configが設定されているか確認する。

```console
aws configure list
```

      Name                    Value             Type    Location
      ----                    -----             ----    --------
   profile                <not set>             None    None
access_key     ****************CVME shared-credentials-file
access_key     ****************THfG shared-credentials-file
    region           ap-northeast-1      config-file    ~/.aws/config

- access_key, access_key, region が not set の場合、設定するために下記コマンドを実行

```console
aws configure
```

各キーがない場合は、以下の方法で取得する。

- AWS Access Key ID
→AWSコンソール右上のユーザー→セキュリティ認証情報→アクセスキーIDをコピー、または作成し取得

- AWS Secret Access Key
→アクセスキーとセットでコピーする(アクセスキーを作成した際にCSVをダウンロードしておくとよい)

- region
→日本人の場合は ap-northest-1 にすることがほとんど

- output format(ファイルの保存形式)
→.jsonなど何でもよいが、自分はスペースで飛ばした。