## Terraformの設定方法・備忘録

- AWSアカウント登録
- AWS CLI インストール
- GitBashコマンドライン インストール

をし事前にインストールしておくこと。

## 自分が行った設定手順

- AWS CLI インストール後、以下のコマンドを実行し、configが設定されているか確認する。

```console
aws configure list
      Name                    Value             Type    Location
      ----                    -----             ----    --------
   profile                <not set>             None    None
access_key     ****************CVME shared-credentials-file
access_key     ****************THfG shared-credentials-file
    region           ap-northeast-1      config-file    ~/.aws/config
```

