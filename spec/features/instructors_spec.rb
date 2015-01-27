require 'rails_helper'

feature 'Curriculums API' do
  let!(:instructor) { create :instructor, first_name: 'Joe', last_name: 'Mojo' }

  scenario 'listing instructors' do
    response = hit_api 'instructors'

    instructor_json = response['instructors'].first

    expect(instructor_json['id']).to eq instructor.id
    expect(instructor_json['first_name']).to eq instructor.first_name
    expect(instructor_json['last_name']).to eq instructor.last_name
  end

  scenario 'viewing individual instructors' do
    response = hit_api "instructors/#{instructor.id}"

    instructor_json = response['instructor']

    expect(instructor_json['id']).to eq instructor.id
    expect(instructor_json['first_name']).to eq instructor.first_name
    expect(instructor_json['last_name']).to eq instructor.last_name
  end
end
