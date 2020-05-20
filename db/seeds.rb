# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#admin = User.create( login: 'admin' , email: 'dolgikh.rey@yandex.ru', password: 'admin1' )
#admin.admin!

Country.create( name: 'Russia' )
Country.create( name: 'USA' )
Country.create( name: 'UK' )
Country.create( name: 'Ukraine' )
Country.create( name: 'Belarus' )

Genre.create( name: 'pop' )
Genre.create( name: 'rap' )
Genre.create( name: 'rock' )
Genre.create( name: 'classic' )
Genre.create( name: 'electronic' )
Genre.create( name: 'dance' )
Genre.create( name: 'indie' )

User.create( login: 'admin', email: 'dolgikh.rey@yandex.ru', password: 'admin1', role: 'admin' )


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?