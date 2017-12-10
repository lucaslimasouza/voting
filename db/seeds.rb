admin = Admin.create!(
  email: 'admin@mail.com',
  password: '12345678',
  password_confirmation: '12345678'
)

meeting = Meeting.create!(name: Faker::Name.name, admin_id: admin.id)
3.times do
  job_role = meeting.job_roles.create!(name: Faker::Name.name )
  3.times { job_role.candidates.create!(name: Faker::Name.name) }
end

User.create!(
  email: 'user@mail.com',
  password: '12345678',
  password_confirmation: '12345678'
)
