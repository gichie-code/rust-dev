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

## 🛠️ ビルド

```bash
docker compose run --rm rust-dev cargo build
```

## ▶️ 実行

```bash
docker compose run --rm rust-dev cargo run
```

## 🧪 テスト

```bash
docker compose run --rm rust-dev cargo test
```

## 📦 依存関係の追加

```bash
docker compose run --rm rust-dev cargo add <crate-name>
```
> cargo-edit がインストールされている場合。

## 🧹 クリーン

```bash
docker compose run --rm rust-dev cargo clean
```

不要なコンテナやイメージの削除は以下で行います：

```bash
docker system prune -af
```

## 📄 ライセンス

MIT License
