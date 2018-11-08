## README
# OSUSOWAKE
### 概要
手料理を食べたい人と、料理好きな人を繋ぎます
### コンセプト
『美味しい』を気軽にお届け

### バージョン
ruby 2.5.0
rails 5.2.1

### 機能一覧
- ログイン機能
- ユーザー登録機能
  - 名前・メールアドレス・大まかな住所・パスワードは必須
- ユーザー情報編集機能
- 投稿機能
  - 料理名・期間・最低価格は必須
- 投稿一覧機能
  - 挙手してる人の数を表示
- 投稿編集機能
- 投稿削除機能
  - 編集と削除は投稿者のみ実行可能
- 投稿検索機能
- 挙手ボタン機能
- メール送信機能
- チャット機能
- プロフィール編集機能
- 写真投稿機能
  - プロフィールの編集と写真投稿は本人のみ実行可能

### カタログ設計
https://docs.google.com/spreadsheets/d/e/2PACX-1vSF5ivFNZxO9YQVCjJQ6acr5bQph0aaO_hMMxvbZhkxXE-TXAJkkw29rLfE1GpaqnAhKWPMWJvJjqNS/pubhtml

### テーブル定義
https://docs.google.com/spreadsheets/d/e/2PACX-1vS_ACLtEvOeV5n2NZQF0opmhs-OuA4ZstdiyXnQcw02jc7pFC7vJHgrer5GIXe_80oHHebBWrvLq5Ti/pubhtml

### 画面遷移図
https://docs.google.com/spreadsheets/d/e/2PACX-1vS5wnLcO0ynHtQ5fPp7YWh65DxLzXEMHPgA_q5Fb1QiShLjdMsenWhhQAbnZZubOjYEMZCZ0WVzcth0/pubhtml

### 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/e/2PACX-1vSfSafXOSeTGYgJ4B4ISL2i_AXLgRUulDeERadSF8v9njB3-51YefoDmrLTKolErOdBSeERd2WyYRVD/pubhtml


### 使用予定gem
* carrierwave
* mini_magick
* devise
* ransack
