require 'rails_helper'

feature 'Lessons API' do
  let(:curriculum) { create :curriculum }

  let!(:lesson) do
    create :lesson, curriculum: curriculum, title: "Week 1",
      description: "Introductory stuff", notes: "We'll be doing some stuff..."
  end

  scenario 'Listing lessons' do
    response = hit_api "curriculums/#{curriculum.id}/lessons"

    expect(response['lessons'].size).to eq 1

    lesson_json = response['lessons'].first

    expect(lesson_json['id']).to eq lesson.id
    expect(lesson_json['title']).to eq lesson.title
    expect(lesson_json['description']).to eq lesson.description
    expect(lesson_json['notes']).to eq lesson.notes
  end
end
