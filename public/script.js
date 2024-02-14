/*
- This script handles user interaction for searching train trips. 
- Upon submitting the form with the 'research_left' id, it fetches and displays train trip results based on user-inputted departure, arrival, and date.
- The displayed results include trip details such as departure, arrival, time, and price, or a message if no trip is found.
*/

//When the page opens, we display an alert to guide users in testing the website with specific train ticket examples
alert('To test the website, you can notably find train tickets for the following trips :\n- Paris to Lyon on March 5, 2023.\n- Lyon to Marseille on January 24, 2023.')


document.querySelector('#research_left').addEventListener('submit',
    function(e) {
        e.preventDefault()

        document.querySelector('#result_right').innerHTML = ''

        const departureV0 = document.querySelector('#departure').value
        const arrivalV0 = document.querySelector('#arrival').value
        const dateV0 = document.querySelector('#date').value

        // We ensure that the format of the 'departure' and 'arrival' inputs matches that of the database
        const departure = departureV0[0].toUpperCase() + departureV0.slice(1).toLowerCase()
        const arrival = arrivalV0[0].toUpperCase() + arrivalV0.slice(1).toLowerCase()

        const date = new Date(dateV0) 
       
        /* You can interchange the value of the 'backendServiceUrl' variable.
        This depends on whether you are running the project locally or remotely - refer to the 'readme.md' file. */

        const backendServiceUrl = 'https://train-tickets-2023.onrender.com'
        //const backendServiceUrl = 'http://localhost:3000' // to deploy locally
        
        // We initiates a fetch request to the backend, sending user-inputted departure, arrival, and date parameters
        fetch(`${backendServiceUrl}/trains?departure=${departure}&arrival=${arrival}&date=${date}`)
            .then(response => response.json())
            .then(data => {
                // We display information about available train trips using data from the server response
                
                if (data.result) { 
                    for (let i=0; i<data.allTrips.length; i++) {

                        const departure = data.allTrips[i].departure
                        const arrival = data.allTrips[i].arrival
                        const price = data.allTrips[i].price
                        const dateV0 = data.allTrips[i].date

                        // We use moment().utcOffset() to normalize dates to UTC in order to avoid timezone offset issues
                        const date=moment(dateV0).utcOffset(0)

                        // We extract the hour and minutes from the 'date' variable
                        const hours = moment(date).hours()
                        const minutesV0 = moment(date).minutes()
                        const minutes= String(minutesV0).padStart(2, '0') // We use .padStart() to display the minutes in the correct format


                        document.querySelector('#result_right').innerHTML +=
                        `<p class='response'><span>${departure} > ${arrival}</span><span class='time'>${hours}:${minutes}</span><span>${price}€</span></p>`
                    
                    }

                } else { 
                    // If no trains are available, we display the following elements :
                    document.querySelector('#result_right').innerHTML = 
                    `<img id='no_results_icon' src='pictures/no_results_icon.png' alt='no_results_icon'/>
                    <hr id='hr_right'>
                    <p id='text_right'>No trip found.</p>`

                }
            }
        )    
    }
    
)
