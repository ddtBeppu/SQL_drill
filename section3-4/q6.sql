/* 問6 */
/*
社員テーブル（employee）において、役職列が部長である場合は「リーダ」に、課長である場合には「マネージャ」に名称変更してみましょう。
*/

/** 解答 **/
UPDATE -- テーブルの値を更新する
    employee -- 社員テーブル
SET -- 以下のように値を更新
    class= -- 役職名を以下のように更新
    (
    CASE -- 以下の条件で値を更新
        WHEN class = '部長' THEN 'リーダ' -- 役職名が「部長」の場合、「リーダ」
        WHEN class = '課長' THEN 'マネージャ' -- 役職名が「課長」の場合、「マネージャ」
        ELSE class -- 上記以外の場合はそのまま
    END -- 条件分岐終了
    )
;

/* 更新前 */
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
| s_id    | l_name    | f_name    | l_name_kana  | l_name_kana  | sex  | class              | depart_id |
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
| AI00001 | 相沢      | 聡        | アイザワ     | アイザワ     |    1 | 部長               | S02       |
| DA00001 | 大門      | 一郎      | ダイモン     | ダイモン     |    1 | 担当               | J01       |
| FU00001 | 藤井      | 雄太      | フジイ       | フジイ       |    1 | 主任               | E01       |
| FU00002 | 藤岡      | 幸太郎    | フジオカ     | フジオカ     |    1 | 担当               | E01       |
| HA0001  | 速水      | 和幸      | ハヤミ       | ハヤミ       |    1 | 部長               | E01       |
| HA0002  | 葉山      | 俊輔      | ハヤマ       | ハヤマ       |    1 | アシスタント       | E01       |
| KA00001 | 川口      | 裕子      | カワグチ     | カワグチ     |    2 | アシスタント       | S01       |
| KA00002 | 加藤      | 昭雄      | カトウ       | カトウ       |    1 | アシスタント       | S01       |
| KA00003 | 神田      | 佐知子    | カンダ       | カンダ       |    1 | アシスタント       | J01       |
| KI00001 | 木村      | 一郎      | キムラ       | キムラ       |    1 | 担当               | S01       |
| NA00001 | 中澤      | 康代      | ナカザワ     | ナカザワ     |    2 | アシスタント       | S02       |
| NI00001 | 西        | 雄一      | ニシ         | ニシ         |    1 | アシスタント       | B01       |
| NI00002 | 新渡戸    | 康治      | ニトベ       | ニトベ       |    1 | アシスタント       | B01       |
| NO00001 | 野上      | 利江      | ノガミ       | ノガミ       |    2 | アシスタント       | S02       |
| SA00001 | 佐藤      | 智子      | サトウ       | サトウ       |    2 | 部長               | S01       |
| SE00001 | 妹尾      | 春樹      | セノオ       | セノオ       |    1 | 課長               | E01       |
| SI00001 | 清水      | 春子      | シミズ       | シミズ       |    2 | 主任               | J01       |
| TA00001 | 田中      | 真由子    | タナカ       | タナカ       |    2 | 主任               | S01       |
| TA00002 | 田辺      | 正一      | タナベ       | タナベ       |    1 | アシスタント       | E01       |
| TE00001 | 寺岡      | 陽一      | テラオカ     | テラオカ     |    1 | 部長               | E01       |
| TI00001 | 近田      | 晃子      | チカダ       | チカダ       |    2 | 課長               | S02       |
| TO00001 | 遠山      | 真一      | トオヤマ     | トオヤマ     |    1 | 課長               | J01       |
| TO00002 | 戸川      | よしみ    | トガワ       | トガワ       |    2 | 担当               | S02       |
| TU00001 | 津村      | 知美      | ツムラ       | ツムラ       |    2 | 主任               | S02       |
| UE00001 | 上田      | 一也      | ウエダ       | ウエダ       |    1 | 部長               | J01       |
| YA00001 | 山田      | 奈美      | ヤマダ       | ヤマダ       |    2 | 課長               | S01       |
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
26 rows in set (0.00 sec)

/* 更新後 */
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
| s_id    | l_name    | f_name    | l_name_kana  | l_name_kana  | sex  | class              | depart_id |
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
| AI00001 | 相沢      | 聡        | アイザワ     | アイザワ     |    1 | リーダ             | S02       |
| DA00001 | 大門      | 一郎      | ダイモン     | ダイモン     |    1 | 担当               | J01       |
| FU00001 | 藤井      | 雄太      | フジイ       | フジイ       |    1 | 主任               | E01       |
| FU00002 | 藤岡      | 幸太郎    | フジオカ     | フジオカ     |    1 | 担当               | E01       |
| HA0001  | 速水      | 和幸      | ハヤミ       | ハヤミ       |    1 | リーダ             | E01       |
| HA0002  | 葉山      | 俊輔      | ハヤマ       | ハヤマ       |    1 | アシスタント       | E01       |
| KA00001 | 川口      | 裕子      | カワグチ     | カワグチ     |    2 | アシスタント       | S01       |
| KA00002 | 加藤      | 昭雄      | カトウ       | カトウ       |    1 | アシスタント       | S01       |
| KA00003 | 神田      | 佐知子    | カンダ       | カンダ       |    1 | アシスタント       | J01       |
| KI00001 | 木村      | 一郎      | キムラ       | キムラ       |    1 | 担当               | S01       |
| NA00001 | 中澤      | 康代      | ナカザワ     | ナカザワ     |    2 | アシスタント       | S02       |
| NI00001 | 西        | 雄一      | ニシ         | ニシ         |    1 | アシスタント       | B01       |
| NI00002 | 新渡戸    | 康治      | ニトベ       | ニトベ       |    1 | アシスタント       | B01       |
| NO00001 | 野上      | 利江      | ノガミ       | ノガミ       |    2 | アシスタント       | S02       |
| SA00001 | 佐藤      | 智子      | サトウ       | サトウ       |    2 | リーダ             | S01       |
| SE00001 | 妹尾      | 春樹      | セノオ       | セノオ       |    1 | マネージャ         | E01       |
| SI00001 | 清水      | 春子      | シミズ       | シミズ       |    2 | 主任               | J01       |
| TA00001 | 田中      | 真由子    | タナカ       | タナカ       |    2 | 主任               | S01       |
| TA00002 | 田辺      | 正一      | タナベ       | タナベ       |    1 | アシスタント       | E01       |
| TE00001 | 寺岡      | 陽一      | テラオカ     | テラオカ     |    1 | リーダ             | E01       |
| TI00001 | 近田      | 晃子      | チカダ       | チカダ       |    2 | マネージャ         | S02       |
| TO00001 | 遠山      | 真一      | トオヤマ     | トオヤマ     |    1 | マネージャ         | J01       |
| TO00002 | 戸川      | よしみ    | トガワ       | トガワ       |    2 | 担当               | S02       |
| TU00001 | 津村      | 知美      | ツムラ       | ツムラ       |    2 | 主任               | S02       |
| UE00001 | 上田      | 一也      | ウエダ       | ウエダ       |    1 | リーダ             | J01       |
| YA00001 | 山田      | 奈美      | ヤマダ       | ヤマダ       |    2 | マネージャ         | S01       |
+---------+-----------+-----------+--------------+--------------+------+--------------------+-----------+
26 rows in set (0.00 sec)