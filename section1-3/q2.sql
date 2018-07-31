/* 問2 */
/*
アクセス記録テーブル（access）からリンク元URLを重複のない形式で取り出してみましょう。
*/

-- アクセス記録テーブル（access）からリンク元URLを重複のない形式で取り出す
mysql> select distinct referer from access_log;
+---------------------------+
| referer                   |
+---------------------------+
| http://wings.msn.to/hamu/ |
| http://wings.msn.to/neko/ |
| http://wings.msn.to/inu/  |
| http://wings.msn.to/saru/ |
| http://wings.msn.to/tori/ |
| http://wings.msn.to/kame/ |
| NULL                      |
+---------------------------+
7 rows in set (0.00 sec)
