let express = require("express")
let island_hoppingRouter = express.Router();
const dbConn = require("../lib/db");

//display continents on the page
island_hoppingRouter.get("/", function (req, res, next){
    return new Promise((resolve, reject) => {
        dbConn.query(
            "SELECT * FROM continent ORDER BY continent_id desc",
            function (err, rows) {
                if (err) {
                    req.flash("error", err);
                    // render to views/continents/index.ejs
                    res.render("continents", {data: ""});
                } else {
                    //render to views/continents/index.ejs
                    res.render("continents", {data: rows});
                }
            }
        );
    });
});
module.exports = island_hoppingRouter;