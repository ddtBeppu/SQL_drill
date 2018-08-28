/* 問5 */
/*
以下は、社員テーブル（employee）から部署、役職ごとに降順ソートした結果を出力するためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。
*/

/** 解答 **/
SELECT
 depart_id,
 class,
 CONCAT('l_name', 'f_name') AS 氏名
FROM
 employee
ORDER BY
 depart_id,
 class DESC
;

/** 解答 **/
・CONCAT()内で、l_nameおよびf_nameという文字列自体を連結して表示する形になっており、
氏名の表示はすべてl_namef_nameになってしまう。
・部署、役職両方について降順なので、depart_idの後ろにもDESCが必要である。

正しくは、
mysql> SELECT -- 選択
    ->  depart_id, -- 所属部署コード
    ->  class, -- 役職
    ->  CONCAT(l_name, f_name) AS 氏名 -- 姓、名を連結して表示
    -> FROM -- テーブルを指定
    ->  employee -- 社員テーブルを指定
    -> ORDER BY -- 以下のカラムについてソート
    ->  depart_id DESC, -- 所属部署コードについて降順
    ->  class DESC -- 役職について降順
    -> ;
+-----------+--------------------+-----------------+
| depart_id | class              | 氏名            |
+-----------+--------------------+-----------------+
| S02       | 部長               | 相沢聡          |
| S02       | 担当               | 戸川よしみ      |
| S02       | 主任               | 津村知美        |
| S02       | 課長               | 近田晃子        |
| S02       | アシスタント       | 中澤康代        |
| S02       | アシスタント       | 野上利江        |
| S01       | 部長               | 佐藤智子        |
| S01       | 担当               | 木村一郎        |
| S01       | 主任               | 田中真由子      |
| S01       | 課長               | 山田奈美        |
| S01       | アシスタント       | 川口裕子        |
| S01       | アシスタント       | 加藤昭雄        |
| J01       | 部長               | 上田一也        |
| J01       | 担当               | 大門一郎        |
| J01       | 主任               | 清水春子        |
| J01       | 課長               | 遠山真一        |
| J01       | アシスタント       | 神田佐知子      |
| E01       | 部長               | 速水和幸        |
| E01       | 部長               | 寺岡陽一        |
| E01       | 担当               | 藤岡幸太郎      |
| E01       | 主任               | 藤井雄太        |
| E01       | 課長               | 妹尾春樹        |
| E01       | アシスタント       | 葉山俊輔        |
| E01       | アシスタント       | 田辺正一        |
| B01       | アシスタント       | 西雄一          |
| B01       | アシスタント       | 新渡戸康治      |
+-----------+--------------------+-----------------+
26 rows in set (0.00 sec)
