# vuejs-rails-app
RailsアプリケーションにVue.jsを入れてみるテスト

## 前提条件
 - Ruby(2.1.10)
 - Rails(4.2.1)
 - slim
 - Vue.js

## 追加したもの
 - vuejs-rails(gem)

## やったこと
 - gemを追加
 - application.jsに以下を追記
   ```
   //= require vue
   ```
 ※ここまでやると、slim内でVueを使うことができるようになる。
 - 以下、コンポーネントを作るために・・・
  - application.html.slimに以下を追記
    ```
    = yield :script(シンボルは任意)
    ```
  - コンポーネントを`views/scripts/`以下に定義
  - optionを変数に突っ込み、画面側のｊｓで`components: { "名前": 変数 }`って使う(=ローカルコンポーネント)
  - もしくは、コンポーネント定義時に`Vue.component("名前", 定義)`って書く(=グローバルコンポーネント)
  - 定義したコンポーネントを使う画面のslimで、以下を書く
    ```
    = content_for :script do
      = render "コンポーネントを定義したslimファイルのパス"
    ```
