# README

Requires Ruby 2.5.0, Rails 5.1.6 and PostgreSQL 10.3.

To run:
-Open directory in console.
-Run 'bundle install'
-Run 'rake db:create' followed by 'rake db:migrate'
-Run 'rake db:seed'
-run 'rails s'
-Open in browser at localhost:3000

-To run tests, run 'bundle exec rspec'

#Creating the app

In creating this application I made all doctors have the attributes 'name', 'location', 'specialty', 'rating', and 'description'. The search function can find doctors by name, location, or specialty using the search function. All matches to the keyword input by the user are returned in a table displaying their name, location, and specialty. A user may click on the name of a doctor to be taken to that doctor's show page. All of the doctor's information is displayed on this page. At the bottom of the page is a list of a maximum of 5 other doctors in the same location with the same specialty, ordered by rating (highest rating at the top of the list).

#Further considerations

Due to the time limit, I did not take much into consideration in terms of scalability. If this database were to expand to have thousands or millions of doctors, I would want to change the search functionality to handle doctors in batches, or use database indexing to sort doctors by location and/or specialty. I would also want to examine making an advanced search function, where a user could choose what they wanted to search by (location, specialty, etc.), avoiding the need to execute multiple searches for one term.

There's a lot of places this application could go. It could be used for patients finding doctors, or for clinical staff to match a patient with the correct doctor. In terms of the rating system, I would want to add a way for users to input their rating, and have the application calculate the overall rating of the doctor. This final rating would be displayed on the doctor's profile. There could also be space for reviews to contain comments, ratings on specific strengths and limitations of doctors, etc. If a doctor wants to be able to create and maintain their own profile, they would need login capability and a way to verify their identity. In short, this application is very open-ended, and there's many ways to expand it.