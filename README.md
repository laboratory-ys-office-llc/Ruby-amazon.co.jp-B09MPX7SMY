# [プロを目指す人のための Ruby 入門［改訂 2 版］　言語仕様からテスト駆動開発・デバッグ技法まで Software Design plus Kindle 版](https://www.amazon.co.jp/dp/B09MPX7SMY/) 記録用

## 環境調整など

### Ruby の自動整形設定手順

#### Visual Studio Code

Visual Studio Code で Ruby コードを自動整形する方法を説明します（Prettier が Ruby 整形に干渉するのを防ぐ方法を含む）

1. **必要な拡張機能のインストール**  
   Visual Studio Code の拡張機能マーケットプレイスから以下の拡張機能をインストールします。

   - Ruby (by rebornix)
   - Prettier - Code formatter (もし、他の言語の整形に使用している場合)

2. **RuboCop のインストール**  
   Gemfile に以下を追加して、`bundle install` を実行します。

   ```ruby
   gem 'rubocop', require: false
   ```

3. **Visual Studio Code の設定**  
   Visual Studio Code の設定 (`settings.json`) に以下の内容を追加します。

   ```json
   {
     "[ruby]": {
       "editor.tabSize": 2,
       "editor.formatOnSave": true
     },
     "ruby.lint": {
       "rubocop": {
         "useBundler": true
       }
     },
     "ruby.format": "rubocop"
   }
   ```

4. **Prettier の干渉を防ぐ**  
   `.prettierignore` ファイルをプロジェクトのルートディレクトリに作成し、以下の内容を追加します。

   ```
   *.rb
   ```

   これにより、Prettier は Ruby ファイルの整形をスキップします。

これで、Visual Studio Code で Ruby のコードを保存すると、RuboCop によって自動的に整形されるようになります。Prettier は Ruby の整形に干渉しないように設定されています。
