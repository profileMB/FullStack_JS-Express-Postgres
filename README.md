# Full Stack Project (JavaScript, Express & PostgreSQL)
- TrainTickets is a web application demo that allows you to search for train tickets.
- This project is built using vanilla JavaScript for the frontend, Express.js for the backend and PostgreSQL for the database.

## Visit the site
See the final result of the website by clicking this link : https://traintickets.vercel.app

## Video presentation


https://github.com/profileMB/Full_Stack_Project_JavaScript-Express-PostgreSQL/assets/131761261/0fbea119-7367-4d91-81e2-4428fe2a011c



## Usage
- Open your web browser and navigate to https://traintickets.vercel.app.
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
- In the 'database' directory, you will find two versions of the database, one 'raw' and one 'modified'.
- The demo site retrieves its data from the 'modified' version via an externalized backend server. To avoid any issues related to timezone offsets, adjustments have been made to the 'date' column on this version.
- You can import this SQL file into your preferred PostgreSQL tool to have a database configured for the proper execution of this project's code.

#### Configure the environment variables
- Duplicate the '.env.example' file and rename the copy to '.env'.
- In this new '.env' file, replace the value of 'DB_URL' with your own PostgreSQL database connection string.
- Save and close the file.

#### Check your local adress
- Verify and adjust your local address for accessing the application. The default local address is 'http://localhost:3000'. If you are using a different port, make sure to replace '3000' with your specific port number.

#### Change the value of the 'backendServiceUrl' variable for local deployment
- Open the 'script.js' file in the 'public' directory.
- Comment out line 30 --> `// const backendServiceUrl = 'https://traintickets.vercel.app'
- Uncomment line 31 --> `const backendServiceUrl = 'http://localhost:3000'`

#### Start the application
- Run `yarn start` from the project's root directory to start the application.
- Open your browser and go to 'http://localhost:3000' to test the application.
