const db = require('../config/dbconnection');

// --------------------------GET longest-duration-movies------------------------------

// a) GET /api/v1/longest-duration-movies
// This route returns as JSON the top 10 movies with the longest runTime
// The output should contain tconst, primaryTitle, runtimeMinutes & genres
const getLongestDurationMovies = async(req, res) => {
    try {
        const connection = await db.main();
        const [rows, fields] = await connection.execute(`SELECT tconst, primaryTitle, runtimeMinutes, genres FROM movies ORDER BY runtimeMinutes DESC LIMIT 10`);
        res.status(200).json(rows);
    } catch (error) {
        res.status(500).json({message: error.message});
    }
}

// b) POST /api/v1/new-movie
// This route takes JSON as input for new movie and saves it into the database
// On successful save, it returns “success”

const postNewMovie = async(req, res) => {
    const {titleType, primaryTitle, runtimeMinutes, genres, averageRating, numVotes} = req.body;
    try {
        const connection = await db.main();
        // first get last id
        const [rows, fields] = await connection.execute(`SELECT id FROM movies ORDER BY id DESC LIMIT 1`);
        const lastId = rows[0].id;
        // insert new movie
        // make tconst tt000000${lastId+1}; use LDPA to make it 7 digits
        const newTconst = `tt${'0'.repeat(7-String(lastId+1).length)}${lastId+1}`;
        const [rows2, fields2] = await connection.execute(`INSERT INTO movies (tconst, titleType, primaryTitle, runtimeMinutes, genres) VALUES ('${newTconst}', '${titleType}', '${primaryTitle}', '${runtimeMinutes}', '${genres}')`);
        // insert new rating
        const [rows3, fields3] = await connection.execute(`INSERT INTO ratings (tconst, averageRating, numVotes) VALUES ('${newTconst}', '${averageRating}', '${numVotes}')`);
        res.status(200).json({message: 'success'});
    } catch (error) {
        res.status(500).json({message: error.message});
    }
}
       

// c) GET /api/v1/top-rated-movies
// This route returns as JSON the movies with an averageRating > 6.0, in sorted
// order by averageRating
// The output should contain tconst, primaryTitle, genre & averageRating.

// ratings table fields: tconst, averageRating, numVotes
const getTopRatedMovies = async(req, res) => {
    try {
        const connection = await db.main();
        // first get averageRating > 6.0
        const [rows, fields] = await connection.execute(`SELECT tconst, averageRating FROM ratings WHERE averageRating > 6.0`);
        // then get tconst, primaryTitle, genre from movies by tconst in rows
        const [rows2, fields2] = await connection.execute(`SELECT tconst, primaryTitle, genres FROM movies WHERE tconst IN (${rows.map(row => `'${row.tconst}'`).join(',')})`);
        // then merge rows and rows2
        const mergedRows = rows.map(row => {
            const row2 = rows2.find(row2 => row2.tconst === row.tconst);
            return {...row, ...row2};
        });
        // then sort by averageRating
        const sortedRows = mergedRows.sort((a, b) => b.averageRating - a.averageRating);
        res.status(200).json(sortedRows);
    } catch (error) {
        res.status(500).json({message: error.message});
    }
}


// d) GET /api/v1/genre-movies-with-subtotals
// Show a list of all movies genre-wise with Subtotals of their numVotes.
// The calculation of subtotals should be done in SQL query; not the API code.

const getGenreMoviesWithSubtotals = async(req, res) => {
    try {
        const connection = await db.main();
        // first get all genres
        const [rows, fields] = await connection.execute(`SELECT DISTINCT genres FROM movies`);
        //  get the data from movies table as per the genres from rows
        const rows2 = await Promise.all(rows.map(async row => {
            const [rows3, fields3] = await connection.execute(`SELECT genres, primaryTitle,numVotes FROM movies INNER JOIN ratings ON movies.tconst = ratings.tconst WHERE genres = '${row.genres}'`);
            return rows3;
        }));
        // now add the total numVotes for each genre at the end of each row2
        const rows4 = rows2.map((row2, index) => {
            const totalNumVotes = row2.reduce((acc, curr) => acc + curr.numVotes, 0);
            return [...row2, {totalNumVotes}];
        });
        res.status(200).json(rows4);
    } catch (error) {
        res.status(500).json({message: error.message});
    }
}

// e) POST /api/v1/update-runtime-minutes
// Increment runtimeMinutes of all Movies using only SQL query (not in API code).
// Increment runtimeMinutes by :
// 15 if genre = Documentary
// 30 if genre = Animation
// 45 for the rest

const postUpdateRuntimeMinutes = async(req, res) => {
    const {genres} = req.body;
    try {
        const connection = await db.main();
        // get all movies data from movies table by genres
        const [rows, fields] = await connection.execute(`SELECT * FROM movies WHERE genres = '${genres}'`);
        // now update the runtimeMinutes by 15, 30, 45
        if( genres === 'Documentary' ) {
            const [rows2, fields2] = await connection.execute(`UPDATE movies SET runtimeMinutes = runtimeMinutes + 15 WHERE genres = '${genres}'`);
        } else if( genres === 'Animation' ) {
            const [rows2, fields2] = await connection.execute(`UPDATE movies SET runtimeMinutes = runtimeMinutes + 30 WHERE genres = '${genres}'`);
        } else {
            const [rows2, fields2] = await connection.execute(`UPDATE movies SET runtimeMinutes = runtimeMinutes + 45 WHERE genres = '${genres}'`);
        }
        res.status(200).json({message: 'success'});
    } catch (error) {
        res.status(500).json({message: error.message});
    }
}



module.exports = {
    getLongestDurationMovies,
    postNewMovie,
    getTopRatedMovies,
    getGenreMoviesWithSubtotals,
    postUpdateRuntimeMinutes,
}