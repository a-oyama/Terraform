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
```console
      Name                    Value             Type    Location
      ----                    -----             ----    --------
   profile                <not set>             None    None
access_key     ****************CVME shared-credentials-file
access_key     ****************THfG shared-credentials-file
    region           ap-northeast-1      config-file    ~/.aws/config
```

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

- S3バケットを作成する

AWSでS3サービスを開く。
"バケットを作成"でバケットユーザーを作成する。

- Terraformをインストールする

https://github.com/tfutils/tfenv
からリポジトリをクローンする。

- リポジトリを保存したフォルダに".bashrc"とファイルを作成する。

- ファイルを編集し
```console
export PATH=$PATH:/＜.tfenv配下のbinフォルダ絶対パス＞
```
を記述する。.tfenv/bin までのディレクトリを記述すること。

- ファイル編集が完了したら、そのフォルダで右クリックし、[Git Bash Here]を押下し再起動する。

- GitBash上で
```console
tfenv
```
とコマンドを実行し、パスの結果が返ってくることを確認する。