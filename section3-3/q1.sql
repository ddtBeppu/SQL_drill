/* 問1 */
/*
社員テーブル（employee）から役職が主任、担当、アシスタントである社員のコードを取り出して、タイムカードテーブル（time_card）に
挿入してみましょう。その際、日付列には今日の日付を、勤務時間列には固定値で0をセットするものとします。
*/

/** 解答 **/
INSERT INTO -- 以下のテーブルにデータを挿入する
    time_card -- タイムカードテーブル
    (
        s_id, -- 社員コード
        r_date, -- 日付
        work_time -- 勤務時間
    )
SELECT
    s_id, -- 社員コード
    CURRENT_DATE, -- 日付
    0 -- 勤務時間　※固定値として0を挿入
FROM -- テーブルを選択
    employee -- 社員テーブル
WHERE -- 条件で絞り込み
    class IN ('主任', '担当', 'アシスタント') -- 役職が主任、担当、アシスタントのいずれかであるもの
;

/* 実行結果 */
Query OK, 17 rows affected (0.09 sec)
Records: 17  Duplicates: 0  Warnings: 0