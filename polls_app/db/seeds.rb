# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all 

  u1 = User.create!(username: 'Eric')
  u2 = User.create!(username: 'David')
  u3 = User.create!(username: 'John')

  Poll.destroy_all

  p1 = Poll.create!(title: 'Cats or Dogs', author_id: u1.id)
  p2 = Poll.create!(title: 'Pepsi or Coke', author_id: u2.id)

  Question.destroy_all

  q1 = Question.create!(body: 'Do you like cats or dogs', poll_id: p1.id)
  q2 = Question.create!(body: 'Do you like Pepsi or Coke', poll_id: p2.id)

  AnswerChoice.destroy_all
  
  ans1 = AnswerChoice.create!(text: 'Dogs', question_id: q1.id)
  ans2 = AnswerChoice.create!(text: 'Cat', question_id: q1.id)
  ans3 = AnswerChoice.create!(text: 'Pepsi', question_id: q2.id)
  ans4 = AnswerChoice.create!(text: 'Coke', question_id: q2.id)

  Response.destroy_all

  r1 = Response.create!(response: 'Dog!', answer_choice_id: ans1.id, author_id: u1.id)
  r2 = Response.create!(response: 'coke!', answer_choice_id: ans2.id, author_id: u1.id)
  r3 = Response.create!(response: 'dog!', answer_choice_id: ans3.id, author_id: u2.id)
  r4 = Response.create!(response: 'Coke!', answer_choice_id: ans4.id, author_id: u2.id)
  r5 = Response.create!(response: 'Dog', answer_choice_id: ans1.id, author_id: u3.id)
  r6 = Response.create!(response: 'Coke!', answer_choice_id: ans1.id, author_id: u3.id)

end