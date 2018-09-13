/* 問2 */
/*
所属部署テーブル（depart）から社員テーブル（employee）で使われていない部署コード、部署名を取り出しましょう。
*/

/** 解答 **/
SELECT -- 選択
    dp.depart_id, -- 部署コード
    dp.depart_name -- 部署名
FROM -- テーブルを選択
    depart AS dp -- 所属部署テーブル
WHERE -- 条件で絞り込み
    dp.depart_id -- 部署コードが以下の条件に当てはまらないものを選択
NOT IN -- 以下の条件以外
    (
        SELECT -- 選択
            em.depart_id -- 部署コード
        FROM -- テーブルを選択
            employee AS em -- 社員テーブル
    )
;

+-----------+-----------------+
| depart_id | depart_name     |
+-----------+-----------------+
| E02       | 第二営業部      |
+-----------+-----------------+
1 row in set (0.00 sec)