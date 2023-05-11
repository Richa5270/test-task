const express = require('express');
const router = express.Router();

const moviesRoutes = require('./movies.routes');

router.use('/v1', moviesRoutes);



module.exports = router;