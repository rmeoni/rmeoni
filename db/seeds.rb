# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	user1= User.create(first_name: 'Rodrigo', last_name: 'meoño', email: 'rodrigo.me13@gmail.com', password:'fUngus14.15', role: 'admin')

	p1= Project.create(image: '/images/blancnoir/canoe.jpg', name: 'blanc et noir', description: 'A collection in black and white')
		ph1 = Photograph.create(:name 'searching', :image '/images/blancnoir/searching.jpg', :iso '100', :exposure '1/100', :project_id = p1.id)