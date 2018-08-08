/* 問4 */
/*
以下は、アクセス記録テーブル（access_log）からアクセス日時の新しい順に10件のログデータを取得するための
SQL命令です（取得列はpage_id、referer、id_address）が、2点誤りがあります。
誤りを指摘してください。
*/

SELECT
 page_id,
 referer,
 ip_address
FROM
 access_log
ORDER BY
 access_date ASC
LIMIT
 10, 0
;

/** 解答 **/
・アクセス日時の新しい順とあるので、降順。すなわち、
ORDER BY
 access_date ASC
は誤り。DESCとなるべき。

・LIMIT 10, 0
 だと、10件目から0件のデータ取得になり、題意に沿わない

 正しくは、
 mysql> SELECT -- 選択
    ->   page_id, -- ページID
    ->   referer, -- メニューコード
    ->   ip_address -- IPアドレス
    ->  FROM -- テーブルを選択
    ->   access_log -- アクセス記録テーブル
    ->  ORDER BY -- 以下の条件でソート
    ->   access_date DESC -- アクセス日時について降順
    ->  LIMIT -- 範囲指定
    ->   0, 10 -- 先頭から
    ->  ;
+---------+---------------------------+-----------------+
| page_id | referer                   | ip_address      |
+---------+---------------------------+-----------------+
| C0001   | http://wings.msn.to/hamu/ | 192.168.165.19  |
| C0005   | http://wings.msn.to/neko/ | 192.168.211.109 |
| C0004   | http://wings.msn.to/kame/ | 192.168.206.132 |
| A0001   | http://wings.msn.to/hamu/ | 192.168.16.198  |
| C0003   | http://wings.msn.to/saru/ | 192.168.209.236 |
| A0001   | http://wings.msn.to/hamu/ | 192.168.195.112 |
| C0002   | http://wings.msn.to/neko/ | 192.168.30.206  |
| A0001   | http://wings.msn.to/hamu/ | 192.168.16.115  |
| C0001   | http://wings.msn.to/hamu/ | 192.168.32.14   |
| A0001   | http://wings.msn.to/hamu/ | 192.168.13.16   |
+---------+---------------------------+-----------------+
10 rows in set (0.00 sec)
