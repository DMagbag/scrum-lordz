const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    port: "3306",
    user: "root",
<<<<<<< HEAD
    password: "92397237",
=======
    password: "EarlGrey1981",
>>>>>>> 55397314d917fe6471e1aa03f096ac831c1a23e1
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