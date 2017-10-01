json.extract! home, :id, :firstname, :lastname, :middlename, :email, :phonenumber, :employmentstatus, :occupation, :created_at, :updated_at
json.url home_url(home, format: :json)
