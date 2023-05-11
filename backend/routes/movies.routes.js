const express = require('express');
const router = express.Router();

const {moviesController} = require('../controllers/index');


router.get('/longest-duration-movies', moviesController.getLongestDurationMovies);
router.post('/new-movie', moviesController.postNewMovie);
router.get('/top-rated-movies', moviesController.getTopRatedMovies);
router.get('/genre-movies-with-subtotals', moviesController.getGenreMoviesWithSubtotals);
router.post('/update-runtime-minutes', moviesController.postUpdateRuntimeMinutes);

module.exports = router;