const express = require('express');
const app = express();
const http = require('http');

// create http server
const server = http.createServer(app);

const morgan = require('morgan');
const router = require('./routes/index');

// mysql connection
const db = require('./config/dbconnection');

// check connection
db.main().then(() => {
    console.log('Database connected');
}).catch(err => {
    console.log(err);
})

// json parser
app.use(express.json());
app.use(express.urlencoded({extended: true}));

const PORT = process.env.PORT || 8082; 

// morgan
app.use(morgan('dev'));

// routes
app.use('/api', router);

// listen on port
server.listen(PORT, () => {
    console.log(`Server is running on port  http://localhost:${PORT}`);
})


