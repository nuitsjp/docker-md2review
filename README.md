# docker-md2review
[![Docker Build Statu](https://img.shields.io/docker/build/nuitsjp/md2review.svg)](https://hub.docker.com/r/nuitsjp/md2review/)
[![Docker Automated buil](https://img.shields.io/docker/automated/nuitsjp/md2review.svg)](https://hub.docker.com/r/nuitsjp/md2review/)
[![Docker Stars](https://img.shields.io/docker/stars/nuitsjp/md2review.svg)](https://hub.docker.com/r/nuitsjp/md2review/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nuitsjp/md2review.svg)](https://hub.docker.com/r/nuitsjp/md2review/)

このリポジトリは[Docker](https://www.docker.com/)上で[md2review](https://github.com/takahashim/md2review)を動かすためのものです。

[Docker Hub](https://hub.docker.com/r/nuitsjp/md2review/)に公開していますのでご活用ください。

## 仕様

### サポートしているタグ

md2reviewのバージョン毎にイメージを作成しています。
現在存在しているタグは `latest`, `1.12` です。

```
$ docker pull nuitsjp/docker-md2review:1.12
```

## 使い方

個別のファイルを指定して変換する方法と、特定フォルダ以下を再帰的に探索し、全てのMarkdownを一括変換する二つの方法があります。

具体的には、次のように実行します。

### Mac (そして多分Linux）

docker実行時のカレントディレクトリに存在する「README.md」を変換する

```
docker run --rm -v `pwd`/.:/work nuitsjp/md2review /bin/sh -c "cd /work && md2review README.md > README.re"
```

docker実行時のカレントディレクトリ以下を再帰的に探索し、全てのMarkdownを一括変換する

```
docker run --rm -v `pwd`/.:/work nuitsjp/md2review /bin/sh -c "cd /work && md2reviews.sh"
```

### Windows

#### コマンドプロンプト

docker実行時のカレントディレクトリに存在する「README.md」を変換する

```
docker run --rm -v %cd%:/work nuitsjp/md2review /bin/sh -c "cd /work && md2review README.md > README.re"
```

docker実行時のカレントディレクトリ以下を再帰的に探索し、全てのMarkdownを一括変換する

```
docker run --rm -v %cd%:/work nuitsjp/md2review /bin/sh -c "cd /work && md2reviews.sh"
```

#### PowerShell

docker実行時のカレントディレクトリに存在する「README.md」を変換する

```
docker run --rm -v ${pwd}/.:/work nuitsjp/md2review /bin/sh -c "cd /work && md2review README.md > README.re"
```

docker実行時のカレントディレクトリ以下を再帰的に探索し、全てのMarkdownを一括変換する

```
docker run --rm -v ${pwd}:/work nuitsjp/md2review /bin/sh -c "cd /work && md2reviews.sh"
```


### インストールされているコンポーネント

* build-essential （md2review 実行時に利用される）
* ruby-dev （md2review 実行時に利用される）
* md2review

他。詳細は[Dockerfile](https://github.com/nuitsjp/docker-md2review/blob/master/Dockerfile)を参照してください。

なおDockerやLinuxを正しく理解しているとは言えない為、ご指摘があるかたはぜひ[Issues](https://github.com/nuitsjp/docker-md2review/issues)へご投稿ください。


