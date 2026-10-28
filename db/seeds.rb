Task.find_or_create_by!(title: "Setup Ruby on Rails 7 in GitHub Codespaces") do |t|
  t.completed = true
end

Task.find_or_create_by!(title: "Connect SQLite 3 database and verify queries") do |t|
  t.completed = true
end

Task.find_or_create_by!(title: "Style components with Bootstrap 5.3") do |t|
  t.completed = true
end

Task.find_or_create_by!(title: "Verify jQuery 3.7 event handlers and AJAX") do |t|
  t.completed = true
end

Task.find_or_create_by!(title: "Candidate interview assignment task") do |t|
  t.completed = false
end
