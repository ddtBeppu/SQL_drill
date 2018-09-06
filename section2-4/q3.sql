/* 問3 */
/*
注文書テーブル（order_main）と注文詳細テーブル（order_desc）、ユーザテーブル（usr）、商品テーブル（product）を結合し、
未納の注文について、発注日、注文コード、商品コード昇順に注文情報を出力してみましょう。
出力列の別名は、発注日、注文コード、利用者氏名、商品名、商品単価、購入数とします。
*/

/** 解答 **/
SELECT -- 選択
    om.order_date AS 発注日, -- 発注日
    om.po_id AS 注文コード, -- 注文コード
    CONCAT(usr.l_name, usr.f_name) AS 利用者氏名, -- 利用者氏名
    pd.p_name AS 商品名, -- 商品名
    pd.price AS 商品単価, -- 商品単価
    od.quantity AS 購入数 -- 購入数
FROM -- テーブルの選択
    ( -- 注文書テーブルとユーザテーブルを結合
        order_main AS om -- 注文書テーブル
    INNER JOIN -- 内部結合
        usr -- ユーザテーブル
    ON -- 以下の項目同士を結合
        om.user_id = usr.user_id -- 利用者コードで結合
    )
INNER JOIN -- ここで、二つずつテーブルを結合し、それらを結合する
    ( -- 注文明細テーブルと商品テーブルを結合
        order_desc AS od -- 注文明細テーブル
    INNER JOIN -- 内部結合
        product AS pd -- 商品テーブル
    ON -- 以下の項目同士で結合
        od.p_id = pd.p_id -- 商品コード同士を結合
    )
ON -- 以下の項目で結合
    om.po_id = od.po_id -- 注文番号のところで結合
WHERE -- 条件で絞りこみ
    om.delivery_date IS NULL -- 商品が未納のデータを選択
ORDER BY -- 以下の項目についてソート
    発注日 ASC, -- 発注日について昇順
    注文コード ASC, -- 注文コードについて昇順
    pd.p_id ASC -- 商品コードについて昇順
;

+------------+-----------------+-----------------+--------------------+--------------+-----------+
| 発注日     | 注文コード      | 利用者氏名      | 商品名             | 商品単価     | 購入数    |
+------------+-----------------+-----------------+--------------------+--------------+-----------+
| 2012-12-22 |              19 | 森本絵里        | 赤ボールペン       |          100 |       100 |
| 2012-12-25 |              20 | 西島文子        | 電卓               |          600 |        10 |
+------------+-----------------+-----------------+--------------------+--------------+-----------+
2 rows in set (0.00 sec)