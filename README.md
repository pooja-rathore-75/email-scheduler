Manual Setup:

Install the required Ruby version (3.0.0) using your preferred Ruby version manager.

Install the necessary dependencies by running the following command: bundle install

Configure the database connection in the config/database.yml file.

Create and set up the database by running the following commands: rails db:create rails db:migrate

Start the Rails server by running: rails server


Create the user via postman
Below I attach the collect for it.

[email scheduler.postman_collection.zip](https://github.com/ankita-chourasiya/email-scheduler/files/11938550/email.scheduler.postman_collection.zip)



Also need to configure you gmail credentials for smtp in development.rb file

Run the scheduler run the below command:
`bundle exec clockwork clock.rb`
