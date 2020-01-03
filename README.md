# WiccWalletSwift

基于 Swift 的 Wicc 钱包插件。

展示了每个版本的工具包，包含BetWise(iOS)对接文档及相关资料，接入时推荐使用最新版本的工具包。

## 主网和测试网的切换

在 `ConfigureManager.swift` 这个文件内修改主网和测试网

测试网
```swift
var walletNetConfirure:Int = ChainNet.test.rawValue
```

主网
```swift
var walletNetConfirure:Int = ChainNet.main.rawValue
```

## Wallet UI 测试环境和生产环境切换

在 `ViewController.swift` 这个文件内修改 url 地址

测试环境
```swift
    let url = URLRequest(url: URL(string: "https://test-app.betwise888.com/wallet/index.html#/")!)
    wkWebView.load(url)
```

生产环境
```swift
    let url = URLRequest(url: URL(string: "https://m.xchaingame.com/wallet/index.html#/")!)
    wkWebView.load(url)
```