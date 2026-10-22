# Teamgram iOS 客户端

基于 Telegram-iOS 的 Teamgram 自建服客户端（Bazel + Xcode）。

**文档** → [docs/文档索引.md](docs/文档索引.md) · 改配置打包 [docs/修改配置与打包.md](docs/修改配置与打包.md)

```bash
# 生成 Xcode 工程（见 docs/快速编译指南.md）
python3 build-system/Make/Make.py \
  --cacheDir="$HOME/telegram-bazel-cache" \
  generateProject \
  --configurationPath=build-system/teamgram-dev-configuration.json \
  --xcodeManagedCodesigning
```

对接服务端前请修改 `submodules/TelegramCore/Sources/Network/TeamgramGatewayHost.swift` 中的网关 IP。后端部署见 `teamgram/docs/文档索引.md`。

申请 API：`https://core.telegram.org/api/obtaining_api_id`（勿使用官方 Telegram 应用名称与 Logo）。
