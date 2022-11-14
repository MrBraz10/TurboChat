# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
nekita = User.create(email: 'nekita10@mail.ru',
                     password: 'password',
                     password_confirmation: 'password',
                     role: 'admin')
User.create(email: 'leva1570@yandex.ru',
            password: 'password',
            password_confirmation: 'password')
User.create(email: 'test@test.ru',
            password: 'password',
            password_confirmation: 'password')
nekita.joined_rooms << Room.create(name: 'General', is_private: false)
nekita.joined_rooms << Room.create(name: 'Testing', is_private: false)