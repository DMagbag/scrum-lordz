let express = require("express")
let campusRouter = express.Router();
const dbConn = require();

//display continents on the page
continentRouter.get("/", function (req, res, next){
    return new Promise((resolve, reject) => {
        dbConn.query(
            "SELECT * FROM continent ORDER BY continent_id desc",
            function (err, rows) {
                if (err) {
                    req.flash("error", err);
                    // render to views/campuses/index.ejs
                    res.render("campuses", {data: rows});
                }
            }
        );
    });
});
module.exports = continentRouter;