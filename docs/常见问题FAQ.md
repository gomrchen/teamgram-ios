# 常见问题 FAQ

---

## Xcode 卡在 “build-request.json not updated yet”

构建日志出现：

```
".../build-request.json" not updated yet, waiting...
```

**处理**：取消当前构建，重新 Build 一次即可。

---

## Telegram_xcodeproj: no such package

系统重启后可能出现：

```
ERROR: Skipping '@rules_xcodeproj_generated//generator/Telegram/...': no such package
```

**处理**：重新执行 [快速编译指南.md](快速编译指南.md) 中的 `generateProject` 命令，再打开 Xcode。

---

## Xcode / Bazel 版本不匹配

`Make.py` 报错要求特定 Xcode 版本。

**处理**：

- 安装 `versions.json` 指定版本；或
- 临时绕过：`python3 build-system/Make/Make.py --overrideXcodeVersion generateProject ...`

---

## bazel 未找到

```bash
brew install bazelisk
# 或按 Telegram-iOS 官方文档安装 Bazel
```

Apple Silicon 上部分步骤需要 `bazel_x86_64`（见 `generate-xcode-project.sh`）。

---

## 模拟器不需要签名

`generateProject` 增加：

```bash
--disableProvisioningProfiles
```

---

## 无法连接服务器 / 一直连接中

1. 确认 `TeamgramGatewayHost.swift` IP 正确
2. 手机能否 ping / nc 到 `10443`
3. 后端 `pgrep -x gnetway session bff`
4. 查看 `teamgram/logs/gnetway.log`

详见 [服务端对接配置.md](服务端对接配置.md)。

---

## 子模块缺失

单独 clone 时须：

```bash
git submodule update --init --recursive
```

---

## 首次 Bazel 构建极慢

正常现象。使用 `--cacheDir="$HOME/telegram-bazel-cache"` 可加速后续构建。

---

## 上游文档

第三方目录（`third-party/`、`bazel-rules/`）内的英文 README 为上游依赖文档，**不在此翻译**；Teamgram 自有说明见 [文档索引.md](文档索引.md)。

---

相关：[iOS客户端技术文档.md](iOS客户端技术文档.md)。
