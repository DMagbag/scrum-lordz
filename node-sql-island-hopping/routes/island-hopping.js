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
            "SELECT continent.continent_id, continent.location, country.country_id, country.description, country.location " +
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
<<<<<<< HEAD
    let countryId = req.params.country_id
=======
    let countryId = req.params.country_id;
>>>>>>> 55397314d917fe6471e1aa03f096ac831c1a23e1

    return new Promise((resolve, reject) =>{
        dbConn.query(
            "SELECT country_island.country_id, country_island.island_id, island_chain.location, " + 
            "island_chain.adventures, country.continent_id " +
            "FROM country_island " +
            "INNER JOIN island_chain ON country_island.island_id = island_chain.island_id " + 
            "INNER JOIN country ON country_island.country_id = country.country_id " +
            "WHERE country_island.country_id = " +
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

island_hoppingRouter.get("/about-team", function(req, res, next){
    res.render("about-team", {title: "About Scrum Lordz"});
});

island_hoppingRouter.get("/about-island-hop", function(req, res, next){
    res.render("about-island-hop", {title: "About JAC Enterprises"});
});

module.exports = island_hoppingRouter;