/* 問5 */
/*
以下は、社員テーブル（employee）から社員名（氏＋名を連結したもの）、
役職クラス（部長、課長は管理職、主任、担当は総合職、アシスタントは一般職とします）を出力するための
SQL命令ですが、2つ誤りがあります。誤りを指摘してください。
*/

SELECT
  CONCAT(l_name, f_name) AS 社員名,
  CASE
    WHERE class IN ('部長', '課長') THEN '管理職'
    WHERE class IN ('主任', '担当') THEN '総合職'
    ELSE THEN '一般職'
  END AS 役職クラス
FROM
  employee
;

/** 解答 **/
・条件式は、WHEREではなく、WHENが正しい
・ELSEの後にTHENは間違い

正しくは、
mysql> SELECT -- 選択
    ->   CONCAT(l_name, f_name) AS 社員名, -- 姓と名を連結して氏名として表示
    ->   CASE -- 条件に従い、値を変化させる
    ->     WHEN class IN ('部長', '課長') THEN '管理職' -- classが「部長」または「課長」の時、「管理職」
    ->     WHEN class IN ('主任', '担当') THEN '総合職' -- classが「主任」または「担当」の時、「総合職」
    ->     ELSE '一般職' -- その他の時に、「一般職」
    ->   END AS 役職クラス -- 以上の値を役職クラス列に表示
    -> FROM -- テーブルを選択
    ->   employee -- 社員テーブル
    -> ;
+-----------------+-----------------+
| 社員名          | 役職クラス      |
+-----------------+-----------------+
| 相沢聡          | 管理職          |
| 大門一郎        | 総合職          |
| 藤井雄太        | 総合職          |
| 藤岡幸太郎      | 総合職          |
| 速水和幸        | 管理職          |
| 葉山俊輔        | 一般職          |
| 川口裕子        | 一般職          |
| 加藤昭雄        | 一般職          |
| 神田佐知子      | 一般職          |
| 木村一郎        | 総合職          |
| 中澤康代        | 一般職          |
| 西雄一          | 一般職          |
| 新渡戸康治      | 一般職          |
| 野上利江        | 一般職          |
| 佐藤智子        | 管理職          |
| 妹尾春樹        | 管理職          |
| 清水春子        | 総合職          |
| 田中真由子      | 総合職          |
| 田辺正一        | 一般職          |
| 寺岡陽一        | 管理職          |
| 近田晃子        | 管理職          |
| 遠山真一        | 管理職          |
| 戸川よしみ      | 総合職          |
| 津村知美        | 総合職          |
| 上田一也        | 管理職          |
| 山田奈美        | 管理職          |
+-----------------+-----------------+
26 rows in set (0.00 sec)
