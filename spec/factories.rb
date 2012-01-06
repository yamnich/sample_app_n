Factory.define :user do |user|
  user.name                   "M H"
  user.email                  "m@h.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end