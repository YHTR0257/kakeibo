# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# For categories

income = Category.create(name: '収入')
i1 = income.children.create(name: '給与')
i1.children.create([{ name: '給料' }, { name: 'アルバイト' }, { name: '小遣い' }, { name: 'その他' }])
i2 = income.children.create(name: '賞与')
i2.children.create([{ name: 'ボーナス' }, { name: 'その他' }])
i3 = income.children.create(name: '臨時収入')
i3.children.create([{ name: 'お祝い' }, { name: '立替' }, { name: 'その他' }])
i4 = income.children.create(name: 'その他')
i4.children.create(name: 'その他')

static_outgo = Category.create(name: '固定支出')
so1 = static_outgo.children.create(name: '住居費')
so1.children.create([{ name: '住宅ローン' }, { name: '賃貸料' }])
so2 = static_outgo.children.create(name: '保険')
so2.children.create([{ name: '生命保険料' }, { name: '火災保険' }, { name: 'その他' }])
so3 = static_outgo.children.create(name: '税金')
so3.children.create([{ name: '住民税' }, { name: '国民健康保険料' }])
so4 = static_outgo.children.create(name: '水道光熱費')
so4.children.create([{ name: '水道' }, { name: '電気' }, { name: 'ガス' }])
so5 = static_outgo.children.create(name: '自動車')
so5.children.create([{ name: 'ガソリン' }, { name: 'レンタカー' },
                     { name: '点検' }, { name: '修理' }, { name: '自動車保険' }])
so6 = static_outgo.children.create(name: '通信費')
so6.children.create([{ name: 'スマホ' }, { name: 'インターネット' }, { name: '郵便料' }, { name: '運送料' }])
so7 = static_outgo.children.create(name: 'サブスクリプション')
so7.children.create([{ name: '音楽' }, { name: '動画' }, { name: 'ソフトウェア' }])
so8 = static_outgo.children.create(name: '学費')
so8.children.create([{ name: '学費' }])

dynamic_outgo = Category.create(name: '変動支出')
do1 = dynamic_outgo.children.create(name: '食費')
do1.children.create([{ name: '食品' }, { name: '外食' }, { name: '内食' }])
do2 = dynamic_outgo.children.create(name: '娯楽費')
do2.children.create([{ name: '映画' }, { name: 'イベント' }, { name: '会費' }, { name: '宿泊費' }, { name: 'レジャー' }])
do3 = dynamic_outgo.children.create(name: '医療費')
do3.children.create([{ name: '診療費' }, { name: '医薬品' }, { name: '予防・ケア' }, { name: '医療用品' }, { name: '器具' }])
do4 = dynamic_outgo.children.create(name: '交通費')
do4.children.create([{ name: '電車' }, { name: '飛行機' }, { name: 'タクシー' }, { name: '駐車場' }, { name: 'その他' }])
do5 = dynamic_outgo.children.create(name: '被服費')
do5.children.create([{ name: '服' }, { name: '雑貨' }, { name: 'アクセサリー' }, { name: 'シャツ・下着' }, { name: 'その他の衣類' },
                     { name: 'シューズ' }, { name: '美容院' }, { name: 'コスメ' }])
do6 = dynamic_outgo.children.create(name: '教育費')
do6.children.create([{ name: '教科書' }, { name: '試験費' }, { name: '参考資料' }, { name: '会費' }])
do7 = dynamic_outgo.children.create(name: '日用品')
do7.children.create([{ name: '消耗品' }, { name: 'ガジェット' }, { name: 'その他' }])
do8 = dynamic_outgo.children.create(name: 'その他')
do8.children.create([{ name: '手数料' }, { name: 'その他' }])

asset = Category.create(name: '資産形成')
asset1 = asset.children.create(name: '貯蓄')
asset1.children.create([{ name: '定期預金' }, { name: '普通預金' }, { name: 'その他' }])
asset2 = asset.children.create(name: '投資')
asset2.children.create([{ name: '積立NISA' }, { name: 'iDeCo' }, { name: '証券口座へ入金' }, { name: 'その他' }])
asset3 = asset.children.create(name: 'その他')
asset3.children.create([{ name: 'ブログ' }, { name: '不動産' }])
