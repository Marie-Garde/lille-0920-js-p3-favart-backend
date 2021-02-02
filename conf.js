require("dotenv").config(); //process.env is created
const mysql = require("mysql2");

const {
    DB_HOST,
    DB_USER,
    DB_PASSWORD,
    DB_DATABASE,
    BACKEND_PORT,
    JWT_SALTROUNDS,
    JWT_SECRET,
} = process.env;

const db = mysql.createPool(
    "mysql2://b0fa75ca9326c6:7b597eb9@eu-cdbr-west-03.cleardb.net/heroku_4b0898950c4db3f?reconnect=true"
);

module.exports = {
    db,
    port: BACKEND_PORT,
    jwt_rounds: parseInt(JWT_SALTROUNDS),
    jwt_secret: JWT_SECRET,
};