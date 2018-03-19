10.times do |i|
  User.create(email: "test#{i}@test.com",
              password: '123123',
              password_confirmation: '123123')
end

AdminUser.create(email: 'admin@admin.com',
                 password: '123123',
                 password_confirmation: '123123')

category = Category.create!(name: 'Bags')
10.times do |i|
  Product.create(name: "Sample product #{i}",
                 category: category)
end
