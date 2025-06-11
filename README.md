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

`app` ディレクトリはすでに Cargo プロジェクトとして初期化されています。  
もし再初期化が必要な場合は以下を実行してください：

```bash
docker compose run --rm rust-dev cargo init --bin app
```

## 🛠️ プログラムのビルドと実行

Rust プログラムのビルドと実行は以下のコマンドで行います：

```bash
docker compose run --rm rust-dev cargo run --manifest-path app/Cargo.toml
```

## 🧪 テストの実行

```bash
docker compose run --rm rust-dev cargo test --manifest-path app/Cargo.toml
```

## 📦 依存クレートの追加

```bash
docker compose run --rm rust-dev cargo add [crate_name] --manifest-path app/Cargo.toml
```

## 🧹 クリーンアップ

不要なコンテナやイメージの削除は以下で行います：

```bash
docker system prune -af
```

## 📄 ライセンス

MIT License
