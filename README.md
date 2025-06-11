# rust-dev

Docker コンテナ上で Rust（Cargo対応）開発を行う環境です。

## 📦 ディレクトリ構成

```
rust-dev/
├── docker-compose.yml
├── Dockerfile
├── .dockerignore
├── .gitignore
└── app/
    └── Cargo.toml
    └── src/
        └── main.rs
```

## 🚀 初期セットアップ

以下のコマンドでプロジェクトを初期化できます（初回のみ）：

```bash
cd app
docker compose run --rm rust-dev cargo init --bin
```

## 🛠️ コンパイルと実行

Rustアプリをビルドして実行：

```bash
docker compose run --rm rust-dev cargo run
```

## 🧪 テストの実行

```bash
docker compose run --rm rust-dev cargo test
```

## 📦 依存関係の追加

```bash
docker compose run --rm rust-dev cargo add <crate-name>
```
> cargo-edit がインストールされている場合。

## 🧹 クリーンアップ

```bash
docker compose run --rm rust-dev cargo clean
```

不要なコンテナやイメージの削除は以下で行います：

```bash
docker system prune -af
```

## 📄 ライセンス

MIT License
