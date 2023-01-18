const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    port: "3306",
    user: "root",
    password: "EarlGrey1981",
    database: "island_hopping",
    insecureAuth: true,
});

connection.connect(function (error) {
    if (!!error){
        console.log(error);
    } else {
        console.log(`Connected to database!`);
    }
});

module.exports = connection;