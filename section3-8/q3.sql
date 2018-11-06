/* 問3 */
/*
店舗テーブル(shop)に登録されていない店舗に関する情報を、月間売り上げテーブル（sales）から削除してください。
*/

/** 解答 **/
DELETE FROM -- 以下のテーブルからデータを削除
    sales -- 月間売り上げテーブル
WHERE -- 条件で絞りこみ
    NOT EXISTS -- 以下の条件に合致しないものを削除
    (
        SELECT -- データを取得
            * -- 全てのデータ
        FROM -- テーブルを指定
            shop -- 店舗テーブル
        WHERE -- 条件で絞りこみ
            sales.s_id = shop.s_id -- 店舗コード同士が等しいデータ
    )
;

/* 削除前 */
+-------+---------+---------+
| s_id  | s_date  | s_value |
+-------+---------+---------+
| H0001 | 2012-11 |    9975 |
| H0001 | 2012-12 |    9861 |
| K0001 | 2012-11 |   10142 |
| K0001 | 2012-12 |   11234 |
| K0002 | 2012-11 |   10124 |
| K0002 | 2012-12 |   10456 |
| M0001 | 2012-11 |   10784 |
| M0001 | 2012-12 |   11145 |
| M0002 | 2012-11 |   12032 |
| N0001 | 2012-11 |    9965 |
| N0001 | 2012-12 |   11023 |
+-------+---------+---------+
11 rows in set (0.00 sec)

/* 削除後 */
+-------+---------+---------+
| s_id  | s_date  | s_value |
+-------+---------+---------+
| H0001 | 2012-11 |    9975 |
| H0001 | 2012-12 |    9861 |
| K0001 | 2012-11 |   10142 |
| K0001 | 2012-12 |   11234 |
| K0002 | 2012-11 |   10124 |
| K0002 | 2012-12 |   10456 |
| M0001 | 2012-11 |   10784 |
| M0001 | 2012-12 |   11145 |
| M0002 | 2012-11 |   12032 |
+-------+---------+---------+
9 rows in set (0.00 sec)

/* 店舗テーブル */
+-------+--------------------+
| s_id  | s_name             |
+-------+--------------------+
| H0001 | 東桜町店           |
| K0001 | 北花町駅前店       |
| K0002 | 北花町東店         |
| M0001 | 三吉町店           |
| M0002 | 三吉町南店         |
+-------+--------------------+
5 rows in set (0.00 sec)