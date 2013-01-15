Resumapi::Application.routes.draw do

  # Non-RESTful routing because this is read-only and
  # we don't want to define a resource with non-existing
  # RESTful mappings (ie PUT -> update etc.)
  get 'resumes/:id' => 'resumes#show', :as => 'resume'

  # Set the default route to my resume
  root to: 'resumes#show', id: 1

end
