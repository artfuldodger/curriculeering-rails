instructor = Instructor.where(
  first_name: 'Jon',
  last_name:  'Evans'
).first_or_create

curriculums = [
  {
    title: 'Ember Reading Group',
    description: 'A collection of things to read about Ember'
  },
  {
    title: 'Linguistics',
    description: 'An introduction to Linguistics.'
  }
]

curriculums.each do |curriculum|
  instructor.curriculums.where(
    title: curriculum[:title]
  ).create_with(
    description: curriculum[:description]
  ).first_or_create
end
