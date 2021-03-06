# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

create_account = User.create([email: 'designer@designerdeck.com', password: '111111', password_confirmation: '111111', is_designer: 'true', role: 1])
create_account = User.create([email: 'mapuying@gmail.com', password: '111111', password_confirmation: '111111', is_designer: 'false', role: 1])
create_account = User.create([email: 'user1@designerdeck.com', password: '111111', password_confirmation: '111111', is_designer: 'false', role: 0])
create_account = User.create([email: 'user2@designerdeck.com', password: '111111', password_confirmation: '111111', is_designer: 'false', role: 0])
create_account = User.create([email: 'admin@designerdeck.com', password: '111111', password_confirmation: '111111', is_designer: 'false', role: 2])



create_order = Order.create([title: "咖啡公司咖啡杯设计", description: "需要设计一款咖啡杯，体现出简洁优雅的风格", user_id: 3, preference_type: "LOGO商标", aasm_state: "paid"])
create_order = Order.create([title: "委托设计一系列统计图标", description: "需要有柱状图，饼图，和好看的色彩", user_id: 3, preference_type: "Web页面设计"])
create_order = Order.create([title: "大学圣诞创意作品大奖赛主题演讲幻灯片设计", description: "体现圣诞的气氛，加入欢乐的元素", user_id: 3, preference_type: "PPT演示文稿"])
