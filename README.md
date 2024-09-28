# Zig 語言入門指南

[Zig](https://ziglang.org/) 是一個很新的通用程式語言，是靜態強型別的程序式編程語言。它在保留了 C 語言使用者最喜歡且熟悉的低階操作的同時，又藉鑒並加入了不少類似 Rust 的現代語法。主打強健、最佳化和重複利用。

> 這是我參加 2024 iThome 鐵人賽的文章：[Zig 語言入門指南——聽説你是現代化的 C](https://ithelp.ithome.com.tw/users/20151756/ironman/7460) 的程式碼庫。該系列文也同時發佈在我的 Blog：[Zig 入門指南（鐵人 24）](https://blog.ziteh.dev/categories/zig-%E5%85%A5%E9%96%80%E6%8C%87%E5%8D%97%EF%BC%88%E9%90%B5%E4%BA%BA-24-%EF%BC%89/)

## 用法

在本地執行這些程式（[安裝好 Zig 後](https://ziglang.org/download/)）：

```sh
git clone https://github.com/ziteh/zig-learn-it24.git
cd zig-learn-it24
bash run_all.sh
```

如果你不想自己執行的話，可以查看 [Action: Run Zig](https://github.com/ziteh/zig-learn-it24/actions/workflows/zig.yml)，瞭解這些程式會輸出什麼樣的結果

> [!NOTE]
> Zig version: `0.13.0`
