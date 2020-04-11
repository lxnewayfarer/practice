# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
admin = User.new( login: 'admin' , email: 'dolgikh.rey@yandex.ru', password: 'admin1' )
admin.save
admin.admin!
