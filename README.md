Manual Setup
Install the required Ruby version (3.0.0) using your preferred Ruby version manager.
Install the necessary dependencies by running the following command: bundle install
Configure the database connection in the config/database.yml file.
Create and set up the database by running the following commands: rails db:create rails db:migrate
Start the Rails server by running: rails server

Create the user via postman.
Below I attach the collect for it.

[Uploading email scheduler.postman_collection.json…](){
	"info": {
		"_postman_id": "443314c4-4d7e-457e-a4fa-ca65891bbb5d",
		"name": "email scheduler",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "Create User",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "{ \n    \"user\": {\n        \"email\": \"ankita@mailinator.com\"\n    }\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://localhost:3000/api/users",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"users"
					]
				}
			},
			"response": []
		},
		{
			"name": "index",
			"request": {
				"method": "GET",
				"header": []
			},
			"response": []
		},
		{
			"name": "show",
			"request": {
				"method": "GET",
				"header": []
			},
			"response": []
		}
	]
}


Also need to configure you gmail credentials for smtp in development.rb file

Run the scheduler run the below command:
`bundle exec clockwork clock.rb`
