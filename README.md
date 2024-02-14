# Full Stack Project (JavaScript, Express & PostgreSQL)
- TrainTickets is a web application demo that allows you to search for train tickets.
- This project is built using vanilla JavaScript for the frontend, Express.js for the backend and PostgreSQL for the database.

## Visit the site
See the final result of the website by clicking this link : https://train-tickets-2023.onrender.com. As the site is hosted for free, the initial page load may be slow.

## Video presentation




https://github.com/profileMB/Full_Stack_Project_JavaScript-Express-PostgreSQL-/assets/131761261/43b15465-3564-4622-add7-a6fad0ebf998





## Usage
- Open your web browser and navigate to 'https://train-tickets-2023.onrender.com'.
- Enter the departure and arrival locations, select a date, and click the 'Search' button.
    → Example : you will find train tickets between Paris and Lyon on March 5, 2023.
- View the available train trips on the right side of the page.
- Specificities : the application handles case errors in the input fields for departure and arrival cities.
- Responsive design.


## Technologies and languages
#### Frontend :
- JavaScript
- HTML
- CSS

#### Backend :
- Node.js
- Express.js

#### Database :
- PostgreSQL



## Setup for local deployment
If you want to deploy the site locally, here are the steps to follow :

#### Prerequisites
Make sure you have the following installed :
- Yarn
- Node.js
- The PostgreSQL tool of your choice, either installed locally or accessible via a cloud service.

#### Initial setup
- Clone this repository to your desktop.
- Run `yarn install` to install all the dependencies.

#### Database setup
- Copy the SQL file 'tickets_DB' located in the 'database' directory.
- Import this SQL file and execute it using your preferred PostgreSQL tool to create the database structure.

#### Configure the environment variables
- Duplicate the '.env.example' file and rename the copy to '.env'.
- In this new '.env' file, replace the value of 'DB_URL' with your own PostgreSQL database connection string.
- Save and close the file.

#### Check your local adress
- Verify and adjust your local address for accessing the application. The default local address is 'http://localhost:3000'. If you are using a different port, make sure to replace '3000' with your specific port number.

#### Change the value of the 'backendServiceUrl' variable for local deployment
- Open the 'script.js' file in the 'public' directory.
- Comment out line 29 --> `// const backendServiceUrl = 'https://train-tickets-2023.onrender.com'`
- Uncomment line 30 --> `const backendServiceUrl = 'http://localhost:3000'`

#### Start the application
- Run `yarn start` from the project's root directory to start the application.
- Open your browser and go to 'http://localhost:3000' to test the application.
