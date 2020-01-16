# WiccWalletSwift

基于 Swift 的 Wicc 钱包插件。

展示了每个版本的工具包，包含BetWise(iOS)对接文档及相关资料，接入时推荐使用最新版本的工具包。

## WiccWalletSwift 提供了什么

WiccWalletSwift 提供了 `WaykiChainViewController` 继承 `WaykiChainViewController` 的 `UIViewController` 持有一个 `wkWebView` 使用 `wkWebView` 打开 `Wicc 提供的网页钱包` 可以获得钱包转账等能力。

```Swift
class ViewController: WaykiChainViewController {

//    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 钱包URL
        let url = URLRequest(url: URL(string: "https://dev-app.betwise888.com/wallet/index.html#/")!)
        wkWebView.load(url)

        self.view.addSubview(wkWebView)
    }

}
```

## Wallet UI 测试环境和生产环境切换

在 `ViewController.swift` 这个文件内修改 url 地址

测试环境
```swift
    let url = URLRequest(url: URL(string: "https://test-app.betwise888.com")!)
    wkWebView.load(url)
```

生产环境
```swift
    let url = URLRequest(url: URL(string: "https://m.xchaingame.com")!)
    wkWebView.load(url)
```

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
