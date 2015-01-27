require 'rails_helper'

feature 'Curriculums API' do
  let(:instructor) { create :instructor, first_name: 'Joe', last_name: 'Mojo' }
  let!(:curriculum_1) do
    create :curriculum, instructor: instructor, title: "A Curriculum",
      description: "It's about things."
  end
  let!(:curriculum_2) do
    create :curriculum, instructor: instructor, title: "B Curriculum",
      description: "Not about things."
  end

  scenario 'listing curriculums returns them' do
    response = hit_api 'curriculums'

    expect(response['curriculums'].size).to eq 2

    first = response['curriculums'].first

    expect(first['title']).to eq 'A Curriculum'
    expect(first['description']).to eq "It's about things."
    expect(first['instructor_id']).to eq instructor.id

    second = response['curriculums'].last

    expect(second['title']).to eq 'B Curriculum'
    expect(second['description']).to eq 'Not about things.'
    expect(second['instructor_id']).to eq instructor.id

    # Instructor side loading

    expect(response['instructors'].size).to eq 1

    instructor_json = response['instructors'].first

    expect(instructor_json['id']).to eq instructor.id
    expect(instructor_json['first_name']).to eq 'Joe'
    expect(instructor_json['last_name']).to eq 'Mojo'
  end

  scenario 'getting an individual curriculum' do
    response = hit_api "curriculums/#{curriculum_1.id}"
    curriculum = response['curriculum']

    expect(curriculum['title']).to eq 'A Curriculum'
    expect(curriculum['description']).to eq "It's about things."
    expect(curriculum['instructor_id']).to eq instructor.id

    instructor_json = response['instructors'].first

    expect(instructor_json['id']).to eq instructor.id
    expect(instructor_json['first_name']).to eq 'Joe'
    expect(instructor_json['last_name']).to eq 'Mojo'
  end
end
