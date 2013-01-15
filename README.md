# The ResumAPI - Because Resumes Should be APIs too

The ResumAPI is an app designed to give API access to resumes. While the app is pre-populated with the author's resume, it's designed to support any number of resumes.

# Installation

1. Clone the repo
2. Run `bundle install`
3. Run `rake dirk:clean`
4. Start yours rails server and away you go!

# Dependencies

* This app uses the standard rails dependencies for 3.2.11
* Developed on Ruby 1.9.3 but should be compatible with 1.9.2+. It is not compatible with 1.8.7 or earlier

# Issues

The Rack Security Warning that occurs when you run the app is an issue between Rails and Rack. There is not actually a security vulnerability and the issue is [fixed in edge rails](https://github.com/rails/rails/issues/7372)

# Tools

Comes with a handy custom rake task called `dirk:clean` that restores your database to pristine condition.

# Roadmap

* Search support for finding applicant's by name, rather than id
* Index, counts and pagination for easily consuming multiple resumes
* Integration with GitHub and Stackoverflow for additional applicant info

# Fun

Add `with_quotes=true` parameter to a resume request to get an awesome quote. Thanks goes to the [Internet Chuck Norris Database](http://www.icndb.com/api/)