-- [文字コード確認:文字をバイナリに変換するためのルール]
-- character_set_database: 接続中のデータベースの文字コード
-- character_set_server: RDSサーバー自体のデフォルト文字コード
-- character_set_client: Workbenchから送信されるデータの文字コード
SHOW VARIABLES LIKE 'char%';

-- [照合順序確認:文字の比較ルール]
-- collation_database: 接続中のデータベースの照合順序
-- collation_server: RDSサーバー自体のデフォルト照合順序
-- collation_connection: Workbenchから送信されるデータの照合順序
SHOW VARIABLES LIKE 'collation%';