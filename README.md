## このリポジトリについて
<p>このリポジトリは圏論と関数型プログラミングについて勉強した内容を保存していくものです<br></p>

## 実行環境
<p>基本Haskellにて記述しております<br>
私の環境を張っておくので参考までにお願いします</p>

```
% zsh --version
zsh 5.9 (x86_64-apple-darwin23.0)
% ghc -v
Glasgow Haskell Compiler, Version 9.8.2, stage 2 booted by GHC version 9.6.3
% stack --version
Version 3.5.1, Git revision 5c774d7ca92f4716ef7a51d5da21a5c3713517a5 aarch64 hpack-0.38.0
```

## コンパイル方法
<p>コンパイルするにはstackをインストールした環境にて以下のコマンドを打ってください</p>

```
% stack ghc ファイル名
```

## 実行方法
<p>実行するには以下のコマンドを打ってください</p>

```
% ファイル名(拡張子なし ex)main.hsをコンパイルしたならmainと入力)
```

## ファイル構成
<p>ファイル構成は以下の様になっております</p>

```
root/
   ├ BinaryTree/
   |  ├ Tree.hs
   |  ├ main.hs
   |  └ mirror.hs
   ├ DirectProduct/
   |  ├ product.hs
   |  └ main.hs
   ├ DirectSum/
   |  ├ coproduct.hs
   |  └ main.hs
   └ README.md
```
