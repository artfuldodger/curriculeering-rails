require 'rails_helper'

feature 'Lessons API' do
  let(:curriculum) { create :curriculum }

  let!(:lesson) do
    create :lesson, curriculum: curriculum, title: "Week 1",
      description: "Introductory stuff", notes: "We'll be doing some stuff..."
  end

  let!(:resource) do
    create :resource, lesson: lesson, title: 'Some Resource',
      url: 'http://www.example.com', description: 'Read something.'
  end

  scenario 'Getting lesson details' do
    response = hit_api "lessons/#{lesson.id}"

    lesson_json = response['lesson']

    expect(lesson_json['id']).to eq lesson.id
    expect(lesson_json['title']).to eq lesson.title
    expect(lesson_json['description']).to eq lesson.description
    expect(lesson_json['notes']).to eq lesson.notes
    expect(lesson_json['resource_ids']).to eq [resource.id]

    resource_json = response['resources'].first

    expect(resource_json['id']).to eq resource.id
    expect(resource_json['title']).to eq resource.title
    expect(resource_json['url']).to eq resource.url
    expect(resource_json['description']).to eq resource.description
  end
end
