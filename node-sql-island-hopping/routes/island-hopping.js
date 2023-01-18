let express = require("express");
const { resolve } = require("path");
let island_hoppingRouter = express.Router();
let dbConn = require("../lib/db");

//display continents on the page
island_hoppingRouter.get("/", function (req, res, next){
    return new Promise((resolve, reject) => {
        dbConn.query(
            "SELECT * FROM continent ORDER BY continent_id desc",
            function (err, rows) {
                if (err) {
                    req.flash("error", err);
                    // render to views/island-hopping/index.ejs
                    res.render("island-hopping", {data: ""});
                } else {
                    //render to views/island-hopping/index.ejs
                    res.render("island-hopping", {data: rows});
                }
            }
        );
    });
});

island_hoppingRouter.get("/continent/:continent_id", function(req, res, next){
    let continentId = req.params.continent_id;

    return new Promise((resolve, reject) => {
        dbConn.query(
            "SELECT continent.continent_id, continent.location, country.country_id, country.location " +
            "FROM continent, country " +
            "WHERE continent.continent_id = country.continent_id " +
            "AND continent.continent_id = " +
            continentId,

            function (err, rows) {
                if (err) {
                    req.flash("error", err);
                    // render to views/continent/index.ejs
                    res.render("continent", {data: ""});
                } else {
                    //render to views/continent/index.ejs
                    res.render("continent", { data: rows });
                }
            }
        );
    });
});

island_hoppingRouter.get("/continent/country/:country_id", function (req, res, next){
    let countryId = req.params.country_id

    return new Promise((resolve, reject) =>{
        dbConn.query(
            "SELECT country.country_id, country.location, island_chain.island_id, island_chain.location " + 
            "FROM country, island_chain " +
            'WHERE country.continent_id = island_chain.country_id ' + 
            "AND country.country_id = " +
            countryId,

            function (err, rows) {
                if (err) {
                    req.flash("error", err);
                    //render to views/country/index.ejs
                    res.render("country", {data: ""});
                } else {
                    //render to views/country/index.ejs
                    res.render("country", { data: rows });
                }
            }
        );
    });
});

module.exports = island_hoppingRouter;