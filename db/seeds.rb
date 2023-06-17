 Manager.create!(
 email: 'admin@manager',
 password: '199204',
 )

Tag.create([
 { name: '古墳時代' },
 { name: '飛鳥時代' },
 { name: '奈良時代' },
 { name: '平安時代' },
 { name: '鎌倉時代' },
 { name: '室町時代' },
 { name: '安土桃山時代' },
 { name: '江戸時代' },
 { name: '明治時代' },
 { name: '大正時代' },
 { name: '昭和時代' },
 ])

 Member.create!(
  [
   {email: 'nobunaga@member',password: '199508',last_name: '織田',first_name: '信長',last_name_kana: 'オダ',first_name_kana: 'ノブナガ'},
   {email: 'ieyasu@public',password: '199204',last_name: '徳川',first_name: '家康',last_name_kana: 'トクガワ',first_name_kana: 'イエヤス'},
   {email: 'hideyashi@gmail',password: '199203',last_name: '豊臣',first_name: '秀吉',last_name_kana: 'トヨトミ',first_name_kana: 'ヒデヨシ'},
   {email: 'ryoma@public',password: '199208',last_name: '坂本',first_name: '龍馬',last_name_kana: 'サカモト',first_name_kana: 'リョウマ'},
   {email: 'togo@public',password: '199209',last_name: '東郷',first_name: '平八郎',last_name_kana: 'トウゴウ',first_name_kana: 'ヘイハチロウ'},
   {email: 'kenshin@public',password: '199210',last_name: '上杉',first_name: '謙信',last_name_kana: 'ウエスギ',first_name_kana: 'ケンシン'},
   {email: 'shingen@public',password: '199211',last_name: '武田',first_name: '信玄',last_name_kana: 'タケダ',first_name_kana: 'シンゲン'},
   {email: 'uziyasu@public',password: '199212',last_name: '北条',first_name: '氏康',last_name_kana: 'ホウジョウ',first_name_kana: 'ウジヤス'},
   {email: 'yoshimoto@public',password: '199201',last_name: '今川',first_name: '義元',last_name_kana: 'イマガワ',first_name_kana: 'ヨシモト'},
   {email: 'motonari@public',password: '199202',last_name: '毛利',first_name: '元就',last_name_kana: 'モウリ',first_name_kana: 'モトナリ'},
   {email: 'yoshihiro@public',password: '199203',last_name: '島津',first_name: '義弘',last_name_kana: 'シマヅ',first_name_kana: 'ヨシヒロ'},
   {email: 'mikuru@public',password: '199204',last_name: '朝倉',first_name: '未来',last_name_kana: 'アサクラ',first_name_kana: 'ミクル'},
   {email: 'kai@public',password: '199205',last_name: '朝倉',first_name: '海',last_name_kana: 'アサクラ',first_name_kana: 'カイ'},
   {email: 'tenshin@public',password: '199206',last_name: '那須川',first_name: '天心',last_name_kana: 'ナスカワ',first_name_kana: 'テンシン'},
   {email: 'snake@public',password: '199207',last_name: 'ソリッド',first_name: 'スネーク',last_name_kana: 'ソリッド',first_name_kana: 'スネーク'},
   {email: 'toshizo@public',password: '199305',last_name: '土方',first_name: '歳三',last_name_kana: 'ヒジカタ',first_name_kana: 'トシゾウ'},
  ]
  )

Post.create!(
 [
  {title: '新撰組ゆかりの地 京都編', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"), prefectues: '京都府',area: "・新撰組最後の洛中屋敷後
  〒600-8234 京都府京都市下京区南不動堂町８０２",access: "・電車、バス
  JR京都駅下車、烏丸中央口または西口（南北自由通路側）から徒歩約5分
  地下鉄烏丸線京都駅下車、中央出口から徒歩約7分
  近鉄京都駅下車、近鉄中央口から南北自由通路を経て徒歩約5分
  京都駅烏丸口バスターミナルより徒歩約5分
  京都市バス「下京区総合庁舎前」下車　徒歩約1分
  京都駅烏丸口バスターミナルより徒歩約5分" ,nearby_information: "スタート地点の新選組最後の洛中屋敷跡はハトヤ瑞鳳閣というホテルの敷地内にある。",go_around: "9：00
ハトヤ瑞鳳閣を出発

9：05～9：10
本光寺

9：30～9：50
島原大門／輪違屋／角屋／西門（住吉神社）／朱雀大路発掘記念碑

10：10∼10：30
壬生寺

10：40～11：30
八木邸見学

11：30
旧前川邸

11：40～12：00
光縁寺

12：10
四条大宮駅にて解散",impressions: "9時〜12時の旅でしたが、有名どころはほとんど行けて満足な計画プランでした！

もっと早く行けば御陵衛士の拠点である「高台寺」や、

龍馬を切ったとされる短刀や近藤勇・土方歳三のものとされる刀が展示されている「霊山歴史館」にも行けたなぁと反省。



新撰組の聖地巡りがしたい！という方にとってこのプランが役立てば嬉しいです。

ではまた！",member_id: Member.find(1).id,status:1 },

{title: "明治維新発祥の地・長府、決起した高杉晋作たちの心が残る毛利長府の町並みを歩く旅",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"),
prefectues: '山口県',
area: "・長府毛利邸
  山口県下関市長府惣社町4-10
  ・功山寺
  山口県下関市長府川端1-2-3
  ・長府庭園
  山口県下関市長府黒門東町8-11
  ",
  access: "・電車、バス
  JR「長府駅」からバス「城下町長府」徒歩約10分" ,
  nearby_information: "特になし",
  go_around: "長府駅からスタート

長府毛利邸
↓
功山寺
↓
長府庭園",
impressions: "山口県下関市の東部にある長府は、古代より長門の政治、文化の中心として栄えた地です。関ヶ原の戦いの後、毛利秀元が5万石で入府し、以来長州の支藩、長府藩の陣屋が構えられ、城下町が整備されていきました。

武家屋敷群の中心である「古江小路」には古い土塀と石畳の町並みが広がり、藩政時代の城下町の面影を今も色濃く残しています。また、乃木神社の辺り、「横枕小路」にも古い土塀が続く古風な町並みが残され、まるでかつての日本の時代に迷い込んだような感覚を味わえます。",
member_id: Member.find(16).id,status:1 },

{title: "戦国屈指の合戦上手！武田信玄ゆかりの古戦場を巡る旅5選",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"),
prefectues: '長野県',
area: "・上田古戦場公園
  長野県上田市上田下之条330（石碑は近隣の石久摩神社内にあり）
  ・砥石城跡
  長野県上田市住吉
  ・川中島古戦場（八幡原史跡公園）
  長野県長野市小島田町1384-1
  ・三増合戦場碑
  神奈川県愛甲郡愛川町三増1182-3
  ・三方ヶ原古戦場跡
  静岡県浜松市北区根洗町１１０９",
  access: "・電車、バス
  JR「長府駅」からバス「城下町長府」徒歩約10分" ,
  nearby_information: "特になし",
  go_around: "上田電鉄別所線「上田原駅」から

上田古戦場公園
↓
砥石城跡
↓
川中島古戦場（八幡原史跡公園）
↓
三増合戦場碑
↓
三方ヶ原古戦場跡",
impressions: "現在、武田信玄と上杉謙信の一騎打ちの様子を描いた銅像が川中島の公園に設置されており、当時の模様を彷彿とさせてくれます。また、近辺には山本勘助の墓などもあり、武田信玄の歴史を語る上でも重要な古戦場となっています。",
member_id: Member.find(2).id,status:1 },

{title: "2023年ドラマで話題の「徳川家康」の一生をたどる",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post4.jpg"), filename:"sample-post4.jpg"),
prefectues: '愛知県',
area:
"・駿府城
  駿府城公園１−１
  ・浜松城
  静岡県浜松市中区元城町１００−２
  ・長篠城
  愛知県新城市長篠市場22ｰ1
  ・犬山城
  愛知県犬山市犬山北古券６５−２
  ・小牧山城
  愛知県小牧市堀の内１丁目
  ・岡崎城
  愛知県岡崎市康生町５６１−１
  ・三方ヶ原古戦場跡
  静岡県浜松市北区根洗町１１０９
  ・長篠・設楽原決戦場跡
  愛知県新城市大宮清水１−９
  ・関ケ原古戦場跡
  岐阜県不破郡関ケ原町関ケ原２３６８−１",
  access: "JR東海線「静岡駅」から徒歩約15分で駿府城" ,
  nearby_information: "名鉄イン金山アネックスやジャストインプレミアムで宿泊",
  go_around:
  "JR東海線「静岡駅」から

  駿府城
  ↓
  三方ヶ原古戦場跡
  ↓
  浜松城
  ↓
  宿泊(ジャストインプレミアム)
  ↓
  長篠城
  ↓
  長篠・設楽原決戦場跡
  ↓
  犬山城
  ↓
  小牧山城
  ↓
  宿泊(名鉄イン金山アネックス)
  ↓
  関ケ原古戦場跡
  ↓
  岡崎城",
impressions:
"二泊三日の旅でしたが、すごく楽しめました!
誰もが知っている徳川家康ですが、知らなかった事がいっぱいありました。

それを知ることでより楽しめました!",
member_id: Member.find(3).id,status:1 },

{title: "三内丸山遺跡と土偶の宝庫青森　8つの世界遺産 北東北縄文ロマン旅",
prefectues: '青森県',
area:
"・御所野遺跡
  岩手県二戸郡一戸町岩舘
  ・是川縄文館
  青森県八戸市大字是川字横山１
  ・三内丸山遺跡
  青森県青森市大字三内字丸山305
  ・田小屋野貝塚
  青森県つがる市木造館 岡田小屋野
  ・亀ヶ岡石器時代遺跡
  青森県つがる市木造亀ケ岡
  ・大森勝山遺跡
  青森県弘前市大森勝山
  ・伊勢堂岱縄文館
  秋田県北秋田市脇神 字小ヶ田中田100−1
  ・大湯環状列石
  秋田県鹿角市十和田大湯万座27",
  access: "御所野遺跡へはJR東北新幹線二戸駅から車で約15分" ,
  nearby_information: "宿泊は十和田湖西湖畔温泉・十和田プリンスホテル、南田温泉・ホテルアップルランド",
  go_around:
  "JR東北新幹線二戸駅から

  御所野遺跡
  ↓
  是川縄文館
  ↓
  宿泊
  ↓
  三内丸山遺跡
  ↓
  田小屋野貝塚
  ↓
  亀ヶ岡石器時代遺跡
  ↓
  宿泊
  ↓
  大森勝山遺跡
  ↓
  伊勢堂岱縄文館
  ↓
  大湯環状列石",
impressions:
"二泊三日の旅でしたが、すごく楽しめました!
縄文時代や古墳時代の遺跡などを巡りました。

大昔の遺構が今でも残っているのってすごいですね！
ロマンを感じました！",
member_id: Member.find(4).id,status:1 },

{title: "加賀百万石の城下町・金沢巡り",
prefectues: '石川県',
area:
"・兼六園
  石川県金沢市丸の内
  ・金沢城公園
  石川県金沢市丸の内
  ・武家屋敷跡野村家
  石川県金沢市長町",
  access: "兼六園へはJR北陸新幹線「金沢駅」から路線バス15分「香林坊」徒歩5分" ,
  nearby_information: "特になし",
  go_around:
  "JR北陸新幹線「金沢駅」から

  兼六園
  ↓
  金沢城公園
  ↓
  武家屋敷跡野村家",
impressions:
"江戸時代に金沢城の庭園として作られた「兼六園」は、水戸の偕楽園、岡山の後楽園とともに日本三名園とされ、
江戸時代を代表する池泉回遊式庭園として、国の特別名勝にも指定されています。

春には桜、夏にはカキツバタ、そして秋の紅葉や冬の雪吊りなど、四季折々でその表情が変化していく庭園としても知られています。
もし初めて金沢の街を訪れるのであれば、ぜひ兼六園の魅力に触れてみてください。",
member_id: Member.find(5).id,status:1 },


{title: "大阪に残る豊臣家の歴史と痕跡を巡る、大阪城の域内と玉造稲荷神社を訪ねる旅",
prefectues: '大阪府',
area:
"・大阪城
  大阪市中央区大阪城2-1
  ・豊國神社
  大阪市中央区大阪城2-1
  ・玉造稲荷神社
  大阪市中央区玉造2丁目3番8号",
  access: "大阪城へはJR森ノ宮駅下車大阪城公園内桜門前徒歩約20分" ,
  nearby_information: "豊國神社は大阪城内にあります",
  go_around:
  "JR森ノ宮駅から
  大阪城
  ↓
  豊國神社
  ↓
  玉造稲荷神社",
impressions:
"誰もが知る天下人、「豊臣秀吉」と大坂の陣で散った「秀頼」の父子。
この歴史を違った視点で眺めてみると、まだまだ知らないことが多いと気付かされます。

大阪城域内とその周辺を訪れてみると、当時の歴史の痕跡がまだまだ埋もれていました。",
member_id: Member.find(6).id,status:1 },


{title: "坂本龍馬 ゆかりの地を巡る旅 高知編",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"),
prefectues: '高知県',
area:
"・桂浜
  高知県高知市浦戸
  ・高知県立坂本龍馬記念館
  高知県高知市浦戸城山８３０
  ・高知市龍馬の生まれたまち記念館
  高知県高知市上町２丁目６−３３
  ・維新の門
  高知県高岡郡梼原町川西路
  ・岩崎弥太郎生家
  高知県安芸市井ノ口甲",
  access: "桂浜へは公共機関では、はりまや橋から桂浜行バス終点下車。海岸まで徒歩５分" ,
  nearby_information: "周辺にかつお船という飲食店がある",
  go_around:
  "バス停はりまや橋から

  桂浜
  ↓
  高知県立坂本龍馬記念館
  ↓
  高知市龍馬の生まれたまち記念館
  ↓
  維新の門
  ↓
  岩崎弥太郎生家",
impressions:
"坂本龍馬のゆかりの地を巡ってみました!

他にも京都や長崎にもゆかりの地があるみたいなのでそこも巡ってみたいと思いました。",
member_id: Member.find(7).id,status:1 },


{title: "坂本龍馬 ゆかりの地を巡る旅 京都編",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"),
prefectues: '京都府',
area:
"・寺田屋
  京都府京都市伏見区南浜町２６３
  ・円山公園
  京都府東山区円山町
  ・京都霊山護国神社
  京都府京都市東山区清閑寺霊山町１",
  access:
  "寺田屋へは公共機関では、JR京都駅バス停のC4乗り場から、
  京都市営バス 19号系統（京阪国道経由 中書島・横大路車庫行き）に乗り、
　京橋バス停で下車します。

　京都駅前バス停から、京橋バス停までの所要時間は、
　約33分になります。
　運賃は、230円になります。
　バスは、1時間に約1本あります

　京橋バス停で下車したら、南方向に進んでください。

　南方向は、バスの進行方向になります。

　すぐ先を左折します。
　すると、すぐ左側に寺田屋が見えてきます。" ,
  nearby_information:
  "周辺の宿泊施設はＧＡＦＵ　ＨＯＳＴＥＬ、旅籠くれたけ庵、アーバンイン伏見の三件があります。",
  go_around:
  "JR京都駅バス停のC4乗り場から

  寺田屋
  ↓
  円山公園
  ↓
  京都霊山護国神社",
impressions:
"坂本龍馬のゆかりの地が京都にあるので巡ってみました!

他に長崎にもゆかりの地があるみたいなのでそこも巡ってみたいと思いました!",
member_id: Member.find(7).id,status:1 },


{title: "坂本龍馬 ゆかりの地を巡る旅 長崎編",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post4.jpg"), filename:"sample-post4.jpg"),
prefectues: '長崎県',
area:
"・風頭公園
  長崎県長崎市伊良林３丁目４−５１０
  ・亀山社中記念館
　長崎県長崎市伊良林２丁目７−２４
  ・龍馬のぶーつ像
  長崎県長崎市伊良林２丁目５−１１
  ・グラバー園
  長崎県長崎市南山手町８−１",
  access:
  "風頭公園へはJR長崎駅の長崎駅前東口というバス停があり、
  そこからバスに乗って風頭山というバス停で降りる。" ,
  nearby_information: "風頭公園の入り口近くに「小川ハタ店・長崎ハタ資料館」があります。",
  go_around:
  "バス停 風頭山からスタート

  風頭公園
  ↓
  亀山社中記念館
  ↓
  龍馬のぶーつ像
  ↓
  グラバー園",
impressions:
"坂本龍馬のゆかりの地が長崎にもあるみたいなので巡ってみました!

これで鹿児島以外は行けたかな。",
member_id: Member.find(7).id,status:1 },


{title: "織田信長 ゆかりの地巡り",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"),
prefectues: '愛知県',
area:
"・犬山城
  愛知県犬山市犬山北古券65-2
  ・有楽苑
　愛知県犬山市犬山御門先1番地
  ・小牧山城
  愛知県小牧市堀の内1-1
  ・清洲城
  愛知県清須市朝日城屋敷1-1
  ・熱田神宮
  愛知県名古屋市熱田区神宮1丁目1番1号
  ・桶狭間古戦場伝説地・高徳院
  愛知県豊明市栄町南舘11",
  access:
  "犬山城へ電車でのアクセス
　 名鉄「名古屋」駅から、名鉄「犬山」駅下車。徒歩約17分" ,
  nearby_information: "特になし。",
  go_around:
  "名鉄「名古屋」駅から

  犬山城
  ↓
  有楽苑
  ↓
  小牧山城
  ↓
  清洲城
  ↓
  熱田神宮
  ↓
  桶狭間古戦場伝説地・高徳院",
impressions:
"タイトルにもあるとおり、織田信長のゆかりの地を巡ってみました。

家康や秀吉のゆかりの地も巡ってみたいと思いました。",
member_id: Member.find(8).id,status:1 },

{title: "忠臣蔵のふるさと赤穂 義士ゆかりの地で王道の街歩き！",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"),
prefectues: '兵庫県',
area:
"・息継ぎ広場
  兵庫県赤穂市加里屋２２１０
  ・花岳寺
　兵庫県赤穂市加里屋１９９２
  ・赤穂城跡
  兵庫県赤穂市上仮屋１４２４−１
  ・大石邸長屋門
  兵庫県赤穂市上仮屋１３１−６",
  access:
  "息継ぎ広場へ電車でのアクセス
　 JR播州赤穂駅から、南へ歩くこと約5分" ,
  nearby_information: "息継ぎ広場には「義士あんどん」というからくり時計がある。",
  go_around:
  "JR播州赤穂駅から

  息継ぎ広場
  ↓
  花岳寺
  ↓
  赤穂城跡
  ↓
  大石邸長屋門",
impressions:
"義士のうち、21名が赤穂の城下町や城内に屋敷を構えていました。
現在は民家や公園、空き地などになっていますが、それぞれの義士宅跡には、義士を紹介する説明板と石標がたっています。

これらの場所を探して、当時の様子をしのぶのも楽しみ方の一つです。
そのほかにも、義士を祀る大石神社や、塩と義士の館「赤穂市歴史博物館」などもあって、見どころ満載です。ぜひ訪れてどっぷりと赤穂義士にひたっていただけたらと思います。",
member_id: Member.find(9).id,status:1 },


{title: "松尾芭蕉 ゆかりの地巡り 「室の八島」",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"),
prefectues: '埼玉県',
area:
"・奥の細道 矢立初めの地
  東京都足立区千住橋戸町３１ 千住大橋公園
  ・草加・おせん公園
　埼玉県草加市神明１丁目６
  ・札場河岸公園
  埼玉県草加市神明２丁目５
  ・草加の松原
  埼玉県草加市栄町一丁目、草加市栄町二丁目、草加市栄町三丁目、神明二丁目
  ・百代橋
  埼玉県草加市松江１丁目１
  ・春日部・東陽寺
  埼玉県春日部市粕壁東２丁目１２−２０ 東陽寺
  ・野木神社
  栃木県下都賀郡野木町野木２４０４
  ・惣社・大神神社
  栃木県栃木市惣社町４７７",
  access:
  "矢立初めの地へ電車でのアクセス
　京成線 千住大橋駅　徒歩5分" ,
  nearby_information: "特になし",
  go_around:
  "京成線千住大橋駅から

  矢立初めの地
  ↓
  草加・おせん公園
  ↓
  札場河岸公園
  ↓
  草加の松原
  ↓
  百代橋
  ↓
  春日部・東陽寺
  ↓
  野木神社
  ↓
  惣社・大神神社",
impressions:
"奥の細道で有名な松尾芭蕉のゆかりの地の一部を巡ってみました。

いつか全部行ってみたいなと思ってます。",
member_id: Member.find(10).id,status:1 },

{title: "松尾芭蕉 ゆかりの地巡り 日光に点在する句碑を訪ねる",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"),
prefectues: '栃木県',
area:
"・光太寺
  栃木県鹿沼市西鹿沼町８１
  ・日光二荒山神社
  栃木県日光市山内２３０７
  ・含満ヶ淵
  栃木県日光市匠町
  ・西行戻り石
  栃木県日光市稲荷町1-379",
  access:
  "光太寺へは東武日光線
　新鹿沼駅から直線約790m
　徒歩約18分
　車で約3分" ,
  nearby_information: "特記事項はなし",
  go_around:
  "新鹿沼駅から

  光太寺
  ↓
  日光二荒山神社
  ↓
  含満ヶ淵
  ↓
  西行戻り石",
impressions:
"奥の細道で有名な松尾芭蕉のゆかりの地の一部を巡ってみました。

コンプしてみようかな。",
member_id: Member.find(10).id,status:1 },

{title: "松尾芭蕉 ゆかりの地巡り 深川を巡る",
prefectues: '東京都',
area:
"・芭蕉記念館
  三重県伊賀市上野丸之内１１７−１３
  ・芭蕉庵史跡展望庭園
  東京都江東区常盤１丁目１−３
  ・清澄庭園
  東京都江東区清澄３丁目３−９
  ・採茶庵跡
  東京都江東区深川１丁目９",
  access:
  "芭蕉記念館へは
  都営新宿線・都営大江戸線　「森下」駅、A1出口より徒歩7分" ,
  nearby_information: "特記事項はなし",
  go_around:
  "森下駅から

  芭蕉記念館
  ↓
  芭蕉庵史跡展望庭園
  ↓
  清澄庭園
  ↓
  採茶庵跡",
impressions:
"奥の細道で有名な松尾芭蕉のゆかりの地の一部を巡ってみました。

コンプしてみようと思う",
member_id: Member.find(10).id,status:1 },


{title: "埼玉の名城をめぐる",
prefectues: '埼玉県',
area:
"・忍城
  埼玉県行田市本丸１７
  ・菅谷館
  埼玉県比企郡嵐山町大字菅谷
  ・杉山城跡
  埼玉県比企郡嵐山町杉山６１４",
  access:
  "忍城へは
  秩父鉄道行田市駅から徒歩15分" ,
  nearby_information: "特にない",
  go_around:
  "秩父鉄道行田市駅から

  忍城
  ↓
  菅谷館
  ↓
  杉山城跡",
impressions:
"埼玉県内にある名城を巡ってみました!

他の県にも行こうかな。",
member_id: Member.find(11).id,status:1 }

  ]
  )

TagMiddle.create(
 [
 {tag_id: Tag.find(8).id,post_id: Post.find(1).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(2).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(3).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(4).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(4).id},
 {tag_id: Tag.find(1).id,post_id: Post.find(5).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(7).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(8).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(9).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(10).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(11).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(12).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(14).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(15).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(16).id}

 ]
 )







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

