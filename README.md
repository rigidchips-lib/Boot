Boot
====
RigidChipsのライブラリ用総合ローダー

##特徴

* 統一的なエラー処理
* ディレクトリが深いライブラリを読み込んだ場合でもエラーメッセージを読み取ることが可能

##導入

##使い方
###基本
1. Bootで読み込むライブラリのフォルダ(ここでSomeDirectoryとする)の中にloader.lua(SomeDirectory/loader.lua)があるか確認する
2. Bootを使ってライブラリを読み込むモデルの頭でrequire"Boot"{"SomeDirectory"}を書く。この時，ライブラリ間依存関係はBootにより自動的に解決される。
3. モデルをRigidChipsで読み込む。ここでエラーが発生した場合、Spirytusが動作する環境であればRigidChips/Logs/%MODEL_NAME%-bootlog.htmlにエラーログが出力される。

###エラー処理
