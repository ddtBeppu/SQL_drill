/* 問1 */
/*
社員テーブル（employee）とタイムカードテーブル（time_card）から氏名と2012年12月の勤務時間を、
社員コード、日付について昇順で出力してみましょう。空欄を埋めて、SQL命令を完成させましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->   e.s_id, -- 社員テーブルの社員ID
    ->   t.r_date, -- タイムカードテーブルの日付
    ->   CONCAT(e.l_name, e.f_name) AS 氏名, -- 社員テーブルから氏名
    ->   t.work_time AS 勤務時間 -- タイムカードテーブルから勤務時間
    -> FROM -- テーブルを指定
    ->   employee AS e -- 社員テーブル
    -> INNER JOIN -- テーブルを結合
    ->   time_card AS t -- タイムカードテーブル
    -> ON -- 以下の項目が一致するところで結合
    ->   e.s_id = t.s_id -- 社員ID同士が一致
    -> WHERE -- 検索条件
    ->   t.r_date BETWEEN '2012-12-01' AND '2012-12-31' -- 12月のいずれかの日
    -> ORDER BY -- 以下のカラムについてソート
    ->   e.s_id ASC, -- 社員IDについて昇順
    ->   t.r_date ASC -- 日付について昇順
    -> ;
+---------+------------+-----------------+--------------+
| s_id    | r_date     | 氏名            | 勤務時間     |
+---------+------------+-----------------+--------------+
| DA00001 | 2012-12-01 | 大門一郎        |            8 |
| DA00001 | 2012-12-02 | 大門一郎        |           10 |
| DA00001 | 2012-12-05 | 大門一郎        |            8 |
| DA00001 | 2012-12-06 | 大門一郎        |            9 |
| DA00001 | 2012-12-07 | 大門一郎        |            8 |
| DA00001 | 2012-12-08 | 大門一郎        |            8 |
| DA00001 | 2012-12-09 | 大門一郎        |            9 |
| DA00001 | 2012-12-12 | 大門一郎        |            8 |
| DA00001 | 2012-12-13 | 大門一郎        |           10 |
| DA00001 | 2012-12-14 | 大門一郎        |            9 |
| DA00001 | 2012-12-15 | 大門一郎        |            8 |
| DA00001 | 2012-12-16 | 大門一郎        |            8 |
| DA00001 | 2012-12-19 | 大門一郎        |            8 |
| DA00001 | 2012-12-20 | 大門一郎        |            8 |
| DA00001 | 2012-12-21 | 大門一郎        |            9 |
| DA00001 | 2012-12-22 | 大門一郎        |            8 |
| DA00001 | 2012-12-23 | 大門一郎        |           10 |
| DA00001 | 2012-12-26 | 大門一郎        |            8 |
| DA00001 | 2012-12-27 | 大門一郎        |            8 |
| DA00001 | 2012-12-28 | 大門一郎        |            8 |
| FU00001 | 2012-12-01 | 藤井雄太        |            8 |
| FU00001 | 2012-12-02 | 藤井雄太        |           10 |
| FU00001 | 2012-12-05 | 藤井雄太        |            8 |
| FU00001 | 2012-12-06 | 藤井雄太        |            9 |
| FU00001 | 2012-12-07 | 藤井雄太        |            8 |
| FU00001 | 2012-12-08 | 藤井雄太        |            8 |
| FU00001 | 2012-12-09 | 藤井雄太        |            9 |
| FU00001 | 2012-12-12 | 藤井雄太        |            8 |
| FU00001 | 2012-12-13 | 藤井雄太        |           10 |
| FU00001 | 2012-12-14 | 藤井雄太        |            9 |
| FU00001 | 2012-12-15 | 藤井雄太        |            8 |
| FU00001 | 2012-12-16 | 藤井雄太        |            8 |
| FU00001 | 2012-12-19 | 藤井雄太        |            8 |
| FU00001 | 2012-12-20 | 藤井雄太        |            8 |
| FU00001 | 2012-12-21 | 藤井雄太        |            9 |
| FU00001 | 2012-12-22 | 藤井雄太        |            8 |
| FU00001 | 2012-12-23 | 藤井雄太        |           10 |
| FU00001 | 2012-12-26 | 藤井雄太        |            8 |
| FU00001 | 2012-12-27 | 藤井雄太        |            8 |
| FU00001 | 2012-12-28 | 藤井雄太        |            8 |
| FU00002 | 2012-12-01 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-02 | 藤岡幸太郎      |           10 |
| FU00002 | 2012-12-05 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-06 | 藤岡幸太郎      |            9 |
| FU00002 | 2012-12-07 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-08 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-09 | 藤岡幸太郎      |            9 |
| FU00002 | 2012-12-12 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-13 | 藤岡幸太郎      |           10 |
| FU00002 | 2012-12-14 | 藤岡幸太郎      |            9 |
| FU00002 | 2012-12-15 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-16 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-19 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-20 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-21 | 藤岡幸太郎      |            9 |
| FU00002 | 2012-12-22 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-23 | 藤岡幸太郎      |           10 |
| FU00002 | 2012-12-26 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-27 | 藤岡幸太郎      |            8 |
| FU00002 | 2012-12-28 | 藤岡幸太郎      |            8 |
| HA0002  | 2012-12-01 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-02 | 葉山俊輔        |           10 |
| HA0002  | 2012-12-05 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-06 | 葉山俊輔        |            9 |
| HA0002  | 2012-12-07 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-08 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-09 | 葉山俊輔        |            9 |
| HA0002  | 2012-12-12 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-13 | 葉山俊輔        |           10 |
| HA0002  | 2012-12-14 | 葉山俊輔        |            9 |
| HA0002  | 2012-12-15 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-16 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-19 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-20 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-21 | 葉山俊輔        |            9 |
| HA0002  | 2012-12-22 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-23 | 葉山俊輔        |           10 |
| HA0002  | 2012-12-26 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-27 | 葉山俊輔        |            8 |
| HA0002  | 2012-12-28 | 葉山俊輔        |            8 |
| KA00001 | 2012-12-01 | 川口裕子        |            8 |
| KA00001 | 2012-12-02 | 川口裕子        |           10 |
| KA00001 | 2012-12-05 | 川口裕子        |            8 |
| KA00001 | 2012-12-06 | 川口裕子        |            9 |
| KA00001 | 2012-12-07 | 川口裕子        |            8 |
| KA00001 | 2012-12-08 | 川口裕子        |            8 |
| KA00001 | 2012-12-09 | 川口裕子        |            9 |
| KA00001 | 2012-12-12 | 川口裕子        |            8 |
| KA00001 | 2012-12-13 | 川口裕子        |           10 |
| KA00001 | 2012-12-14 | 川口裕子        |            9 |
| KA00001 | 2012-12-15 | 川口裕子        |            8 |
| KA00001 | 2012-12-16 | 川口裕子        |            8 |
| KA00001 | 2012-12-19 | 川口裕子        |            8 |
| KA00001 | 2012-12-20 | 川口裕子        |            8 |
| KA00001 | 2012-12-21 | 川口裕子        |            9 |
| KA00001 | 2012-12-22 | 川口裕子        |            8 |
| KA00001 | 2012-12-23 | 川口裕子        |           10 |
| KA00001 | 2012-12-26 | 川口裕子        |            8 |
| KA00001 | 2012-12-27 | 川口裕子        |            8 |
| KA00001 | 2012-12-28 | 川口裕子        |            8 |
| KA00002 | 2012-12-01 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-02 | 加藤昭雄        |           10 |
| KA00002 | 2012-12-05 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-06 | 加藤昭雄        |            9 |
| KA00002 | 2012-12-07 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-08 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-09 | 加藤昭雄        |            9 |
| KA00002 | 2012-12-12 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-13 | 加藤昭雄        |           10 |
| KA00002 | 2012-12-14 | 加藤昭雄        |            9 |
| KA00002 | 2012-12-15 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-16 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-19 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-20 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-21 | 加藤昭雄        |            9 |
| KA00002 | 2012-12-22 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-23 | 加藤昭雄        |           10 |
| KA00002 | 2012-12-26 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-27 | 加藤昭雄        |            8 |
| KA00002 | 2012-12-28 | 加藤昭雄        |            8 |
| KA00003 | 2012-12-01 | 神田佐知子      |            8 |
| KA00003 | 2012-12-02 | 神田佐知子      |           10 |
| KA00003 | 2012-12-05 | 神田佐知子      |            8 |
| KA00003 | 2012-12-06 | 神田佐知子      |            9 |
| KA00003 | 2012-12-07 | 神田佐知子      |            8 |
| KA00003 | 2012-12-08 | 神田佐知子      |            8 |
| KA00003 | 2012-12-09 | 神田佐知子      |            9 |
| KA00003 | 2012-12-12 | 神田佐知子      |            8 |
| KA00003 | 2012-12-13 | 神田佐知子      |           10 |
| KA00003 | 2012-12-14 | 神田佐知子      |            9 |
| KA00003 | 2012-12-15 | 神田佐知子      |            8 |
| KA00003 | 2012-12-16 | 神田佐知子      |            8 |
| KA00003 | 2012-12-19 | 神田佐知子      |            8 |
| KA00003 | 2012-12-20 | 神田佐知子      |            8 |
| KA00003 | 2012-12-21 | 神田佐知子      |            9 |
| KA00003 | 2012-12-22 | 神田佐知子      |            8 |
| KA00003 | 2012-12-23 | 神田佐知子      |           10 |
| KA00003 | 2012-12-26 | 神田佐知子      |            8 |
| KA00003 | 2012-12-27 | 神田佐知子      |            8 |
| KA00003 | 2012-12-28 | 神田佐知子      |            8 |
| KI00001 | 2012-12-01 | 木村一郎        |            8 |
| KI00001 | 2012-12-02 | 木村一郎        |           10 |
| KI00001 | 2012-12-05 | 木村一郎        |            8 |
| KI00001 | 2012-12-06 | 木村一郎        |            9 |
| KI00001 | 2012-12-07 | 木村一郎        |            8 |
| KI00001 | 2012-12-08 | 木村一郎        |            8 |
| KI00001 | 2012-12-09 | 木村一郎        |            9 |
| KI00001 | 2012-12-12 | 木村一郎        |            8 |
| KI00001 | 2012-12-13 | 木村一郎        |           10 |
| KI00001 | 2012-12-14 | 木村一郎        |            9 |
| KI00001 | 2012-12-15 | 木村一郎        |            8 |
| KI00001 | 2012-12-16 | 木村一郎        |            8 |
| KI00001 | 2012-12-19 | 木村一郎        |            8 |
| KI00001 | 2012-12-20 | 木村一郎        |            8 |
| KI00001 | 2012-12-21 | 木村一郎        |            9 |
| KI00001 | 2012-12-22 | 木村一郎        |            8 |
| KI00001 | 2012-12-23 | 木村一郎        |           10 |
| KI00001 | 2012-12-26 | 木村一郎        |            8 |
| KI00001 | 2012-12-27 | 木村一郎        |            8 |
| KI00001 | 2012-12-28 | 木村一郎        |            8 |
| NA00001 | 2012-12-01 | 中澤康代        |            8 |
| NA00001 | 2012-12-02 | 中澤康代        |            8 |
| NA00001 | 2012-12-05 | 中澤康代        |            9 |
| NA00001 | 2012-12-06 | 中澤康代        |            8 |
| NA00001 | 2012-12-07 | 中澤康代        |           10 |
| NA00001 | 2012-12-08 | 中澤康代        |            9 |
| NA00001 | 2012-12-09 | 中澤康代        |            8 |
| NA00001 | 2012-12-12 | 中澤康代        |            8 |
| NA00001 | 2012-12-13 | 中澤康代        |            8 |
| NA00001 | 2012-12-14 | 中澤康代        |            8 |
| NA00001 | 2012-12-15 | 中澤康代        |            9 |
| NA00001 | 2012-12-16 | 中澤康代        |            8 |
| NA00001 | 2012-12-19 | 中澤康代        |           10 |
| NA00001 | 2012-12-20 | 中澤康代        |            8 |
| NA00001 | 2012-12-21 | 中澤康代        |            8 |
| NA00001 | 2012-12-22 | 中澤康代        |            8 |
| NA00001 | 2012-12-23 | 中澤康代        |            8 |
| NA00001 | 2012-12-26 | 中澤康代        |           10 |
| NA00001 | 2012-12-27 | 中澤康代        |            8 |
| NA00001 | 2012-12-28 | 中澤康代        |            9 |
| NO00001 | 2012-12-01 | 野上利江        |            8 |
| NO00001 | 2012-12-02 | 野上利江        |            8 |
| NO00001 | 2012-12-05 | 野上利江        |            9 |
| NO00001 | 2012-12-06 | 野上利江        |            8 |
| NO00001 | 2012-12-07 | 野上利江        |           10 |
| NO00001 | 2012-12-08 | 野上利江        |            9 |
| NO00001 | 2012-12-09 | 野上利江        |            8 |
| NO00001 | 2012-12-12 | 野上利江        |            8 |
| NO00001 | 2012-12-13 | 野上利江        |            8 |
| NO00001 | 2012-12-14 | 野上利江        |            8 |
| NO00001 | 2012-12-15 | 野上利江        |            9 |
| NO00001 | 2012-12-16 | 野上利江        |            8 |
| NO00001 | 2012-12-19 | 野上利江        |           10 |
| NO00001 | 2012-12-20 | 野上利江        |            8 |
| NO00001 | 2012-12-21 | 野上利江        |            8 |
| NO00001 | 2012-12-22 | 野上利江        |            8 |
| NO00001 | 2012-12-23 | 野上利江        |            8 |
| NO00001 | 2012-12-26 | 野上利江        |           10 |
| NO00001 | 2012-12-27 | 野上利江        |            8 |
| NO00001 | 2012-12-28 | 野上利江        |            9 |
| SI00001 | 2012-12-01 | 清水春子        |            8 |
| SI00001 | 2012-12-02 | 清水春子        |           10 |
| SI00001 | 2012-12-05 | 清水春子        |            8 |
| SI00001 | 2012-12-06 | 清水春子        |            9 |
| SI00001 | 2012-12-07 | 清水春子        |            8 |
| SI00001 | 2012-12-08 | 清水春子        |            8 |
| SI00001 | 2012-12-09 | 清水春子        |            9 |
| SI00001 | 2012-12-12 | 清水春子        |            8 |
| SI00001 | 2012-12-13 | 清水春子        |           10 |
| SI00001 | 2012-12-14 | 清水春子        |            9 |
| SI00001 | 2012-12-15 | 清水春子        |            8 |
| SI00001 | 2012-12-16 | 清水春子        |            8 |
| SI00001 | 2012-12-19 | 清水春子        |            8 |
| SI00001 | 2012-12-20 | 清水春子        |            8 |
| SI00001 | 2012-12-21 | 清水春子        |            9 |
| SI00001 | 2012-12-22 | 清水春子        |            8 |
| SI00001 | 2012-12-23 | 清水春子        |           10 |
| SI00001 | 2012-12-26 | 清水春子        |            8 |
| SI00001 | 2012-12-27 | 清水春子        |            8 |
| SI00001 | 2012-12-28 | 清水春子        |            8 |
| TA00001 | 2012-12-01 | 田中真由子      |           10 |
| TA00001 | 2012-12-02 | 田中真由子      |           11 |
| TA00001 | 2012-12-05 | 田中真由子      |           10 |
| TA00001 | 2012-12-06 | 田中真由子      |            9 |
| TA00001 | 2012-12-07 | 田中真由子      |           10 |
| TA00001 | 2012-12-08 | 田中真由子      |            8 |
| TA00001 | 2012-12-09 | 田中真由子      |            8 |
| TA00001 | 2012-12-12 | 田中真由子      |            8 |
| TA00001 | 2012-12-13 | 田中真由子      |            8 |
| TA00001 | 2012-12-14 | 田中真由子      |            4 |
| TA00001 | 2012-12-15 | 田中真由子      |            8 |
| TA00001 | 2012-12-16 | 田中真由子      |            8 |
| TA00001 | 2012-12-19 | 田中真由子      |           10 |
| TA00001 | 2012-12-20 | 田中真由子      |            9 |
| TA00001 | 2012-12-21 | 田中真由子      |            9 |
| TA00001 | 2012-12-22 | 田中真由子      |            8 |
| TA00001 | 2012-12-23 | 田中真由子      |           11 |
| TA00001 | 2012-12-26 | 田中真由子      |            9 |
| TA00001 | 2012-12-27 | 田中真由子      |            8 |
| TA00001 | 2012-12-28 | 田中真由子      |            6 |
| TA00002 | 2012-12-01 | 田辺正一        |            8 |
| TA00002 | 2012-12-02 | 田辺正一        |           10 |
| TA00002 | 2012-12-05 | 田辺正一        |            8 |
| TA00002 | 2012-12-06 | 田辺正一        |            9 |
| TA00002 | 2012-12-07 | 田辺正一        |            8 |
| TA00002 | 2012-12-08 | 田辺正一        |            8 |
| TA00002 | 2012-12-09 | 田辺正一        |            9 |
| TA00002 | 2012-12-12 | 田辺正一        |            8 |
| TA00002 | 2012-12-13 | 田辺正一        |           10 |
| TA00002 | 2012-12-14 | 田辺正一        |            9 |
| TA00002 | 2012-12-15 | 田辺正一        |            8 |
| TA00002 | 2012-12-16 | 田辺正一        |            8 |
| TA00002 | 2012-12-19 | 田辺正一        |            8 |
| TA00002 | 2012-12-20 | 田辺正一        |            8 |
| TA00002 | 2012-12-21 | 田辺正一        |            9 |
| TA00002 | 2012-12-22 | 田辺正一        |            8 |
| TA00002 | 2012-12-23 | 田辺正一        |           10 |
| TA00002 | 2012-12-26 | 田辺正一        |            8 |
| TA00002 | 2012-12-27 | 田辺正一        |            8 |
| TA00002 | 2012-12-28 | 田辺正一        |            8 |
| TO00002 | 2012-12-01 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-02 | 戸川よしみ      |           10 |
| TO00002 | 2012-12-05 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-06 | 戸川よしみ      |            9 |
| TO00002 | 2012-12-07 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-08 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-09 | 戸川よしみ      |            9 |
| TO00002 | 2012-12-12 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-13 | 戸川よしみ      |           10 |
| TO00002 | 2012-12-14 | 戸川よしみ      |            9 |
| TO00002 | 2012-12-15 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-16 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-19 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-20 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-21 | 戸川よしみ      |            9 |
| TO00002 | 2012-12-22 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-23 | 戸川よしみ      |           10 |
| TO00002 | 2012-12-26 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-27 | 戸川よしみ      |            8 |
| TO00002 | 2012-12-28 | 戸川よしみ      |            8 |
| TU00001 | 2012-12-01 | 津村知美        |            8 |
| TU00001 | 2012-12-02 | 津村知美        |           10 |
| TU00001 | 2012-12-05 | 津村知美        |            8 |
| TU00001 | 2012-12-06 | 津村知美        |            9 |
| TU00001 | 2012-12-07 | 津村知美        |            8 |
| TU00001 | 2012-12-08 | 津村知美        |            8 |
| TU00001 | 2012-12-09 | 津村知美        |            9 |
| TU00001 | 2012-12-12 | 津村知美        |            8 |
| TU00001 | 2012-12-13 | 津村知美        |           10 |
| TU00001 | 2012-12-14 | 津村知美        |            9 |
| TU00001 | 2012-12-15 | 津村知美        |            8 |
| TU00001 | 2012-12-16 | 津村知美        |            8 |
| TU00001 | 2012-12-19 | 津村知美        |            8 |
| TU00001 | 2012-12-20 | 津村知美        |            8 |
| TU00001 | 2012-12-21 | 津村知美        |            9 |
| TU00001 | 2012-12-22 | 津村知美        |            8 |
| TU00001 | 2012-12-23 | 津村知美        |           10 |
| TU00001 | 2012-12-26 | 津村知美        |            8 |
| TU00001 | 2012-12-27 | 津村知美        |            8 |
| TU00001 | 2012-12-28 | 津村知美        |            8 |
+---------+------------+-----------------+--------------+
300 rows in set (0.00 sec)