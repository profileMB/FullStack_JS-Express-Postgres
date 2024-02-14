/* 
In this file, you will find the route of the project, 'GET/trains', which allows you to find available trains.
*/

var express = require('express')
var router = express.Router()

require('dotenv').config()

const { Client } = require('pg')
const connectionString = process.env.DB_URL

const client = new Client({ connectionString })
client.connect()


router.get('/trains', (req, res) => {

  const departure = req.query.departure
  const arrival = req.query.arrival
  const date = new Date (req.query.date) 

  const sqlQuery=
  `SELECT *
  FROM tickets 
  where departure=$1 
  and arrival=$2 
  and date::date=$3 
  order by date`

  client.query(sqlQuery, [departure, arrival, date])
  .then(data => {
    if (data.rows.length) { 
      res.json({ allTrips: data.rows, result: true })
    } else {
      res.json({result: false })
    }
  })
  .catch(e => console.error(e.stack))
})

module.exports = router