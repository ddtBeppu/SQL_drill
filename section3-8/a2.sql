/* 問2 */
/*
問1のSQL命令を相関サブクエリを使って書き換えてみましょう。
*/

/** 解答 **/
DELETE FROM -- 以下のテーブルからデータを削除
    employee -- 社員テーブル
WHERE -- 条件で絞りこみ
    NOT EXISTS -- 以下の条件に当てあはまらないもの
    (
        SELECT -- データの取得
            * -- 全てのデータ
        FROM -- テーブルの指定
            depart -- 所属部署テーブル
        WHERE -- 条件で絞りこみ
            employee.depart_id = depart.depart_id -- 所属部署コード同士が等しい
    )
;