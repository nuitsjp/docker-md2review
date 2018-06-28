# docker-md2review

このリポジトリは[Docker](https://www.docker.com/)上で[md2review](https://github.com/takahashim/md2review)を動かすためのものです。

[Docker Hub](https://hub.docker.com/r/nuitsjp/docker-md2review/)に公開していますのでご活用ください。

## 仕様

### サポートしているタグ

md2reviewのバージョン毎にイメージを作成しています。
現在存在しているタグは `latest`, `1.12` です。

```
$ docker pull nuitsjp/docker-md2review:1.12
```

## 使い方

次のように実行します。

### Mac (そして多分Linux）

docker実行時のカレントディレクトリに存在する「README.md」を変換する想定です。

```
docker run --rm -v `pwd`/.:/work nuitsjp/md2review:1.12.0 /bin/sh -c "cd /work && md2review README.md > README.re"
```

### Windows

docker実行時のカレントディレクトリに存在する「README.md」を変換する想定です。

#### コマンドプロンプト

```
docker run --rm -v %cd%:/work nuitsjp/md2review:1.12.0 /bin/sh -c "cd /work && md2review README.md > README.re"
```

#### PowerShell

```
docker run --rm -v ${pwd}/.:/work nuitsjp/md2review:1.12.0 /bin/sh -c "cd /work && md2review README.md > README.re"
```

### インストールされているコンポーネント

* build-essential （md2review 実行時に利用される）
* ruby-dev （md2review 実行時に利用される）
* md2review

他。詳細は[Dockerfile](https://github.com/nuitsjp/docker-md2review/blob/master/Dockerfile)を参照してください。

なおDockerやLinuxを正しく理解しているとは言えない為、ご指摘があるかたはぜひ[Issues](https://github.com/nuitsjp/docker-md2review/issues)へご投稿ください。


