# encoding: utf-8
Factory.define :user do |user|
  user.user_name                  "Иван"
  user.user_surname               "Иванов"
  user.user_secondname            "Иванович"
  user.user_email                 "mhartl@example.com"
  user.user_password              "foobar"
  user.user_password_confirmation "foobar"
end