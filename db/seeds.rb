100.times do
  Artist.create(
    name: Faker::Name.name,
    about: Faker::Lorem.paragraph,
    tattoo: Faker::Boolean.boolean,
    piercing: Faker::Boolean.boolean
  )
end
