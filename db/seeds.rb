User.create!(email: "sample@gmail.com",
            password: "password",
            password_confirmation: "password",
            name: "naoto")
User.create!(email: "sample1@gmail.com",
            password: "password",
            password_confirmation: "password",
            name: "kome")
User.create!(email: "sample2@gmail.com",
            password: "password",
            password_confirmation: "password",
            name: "sono")
User.create!(email: "sample3@gmail.com",
            password: "password",
            password_confirmation: "password",
            name: "takeru")

wish = ["ポテト", "かき氷", "焼き鳥", "水風船", "ビール", "佐世保バーガー"]
20.times do |n|
Tweet.create!(user_id: n%4+1,
             reward: (n%6+1)*100,
             count: n%5+1,
             wishing: wish[n%6],
             latitude: 33.591978499999996,
             longitude: 130.39475629999998)
end
