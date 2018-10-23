/* 問3 */
/*
社員テーブル（employee）上、退職済みで、最終更新日が2007-03-31以前のデータを削除してみましょう。
*/

/** 解答 **/
DELETE  FROM -- テーブルからデータを削除
    employee -- 社員テーブル
WHERE -- 条件で絞りこみ
        retired = 1 -- 退職済み
    AND -- かつ
        last_update < '2007-03-31' -- 最終更新日が2007-03-31以前
;


Query OK, 1 row affected (0.03 sec)