require 'rails_helper'

feature 'Lessons API' do
  let(:curriculum) { create :curriculum }

  let!(:lesson) do
    create :lesson, curriculum: curriculum, title: "Week 1",
      description: "Introductory stuff", notes: "We'll be doing some stuff..."
  end

  scenario 'Getting lesson details' do
    response = hit_api "lessons/#{lesson.id}"

    lesson_json = response['lesson']

    expect(lesson_json['id']).to eq lesson.id
    expect(lesson_json['title']).to eq lesson.title
    expect(lesson_json['description']).to eq lesson.description
    expect(lesson_json['notes']).to eq lesson.notes
  end
end
