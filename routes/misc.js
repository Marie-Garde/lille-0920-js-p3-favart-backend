const express = require("express");
const router = express.Router();
const { db } = require("../conf");

//Display and modify clientbase

router.get("/", (req, res) => {
    res.status(200).send("Hello there");
});

//Get all clients
router.get("/client", (req, res) => {
    db.query("SELECT * from client", (err, results) => {
        if (err) {
            res.status(500).send("Error retrieving data");
        } else {
            res.status(200).json(results);
        }
    });
});

//Delete a client
router.delete("/client/:id", (req, res) => {
    const idClient = req.params.id;
    db.query(
        "DELETE FROM client WHERE idClient = ?", [idClient],
        (err, results) => {
            if (err) {
                res.status(500).send("😱 Error deleting an client");
            } else {
                res.status(200).send("🎉 Client deleted!");
            }
        }
    );
});

//Update a client
router.patch("/client/:id", (req, res) => {
    // We get the ID from the url:
    const idClient = req.params.id;
    // We get the data from the req.body
    const newClient = req.body;
    // We send a UPDATE query to the DB
    db.query(
        "UPDATE client SET ? WHERE idClient = ?", [newClient, idClient],
        (err, results) => {
            if (err) {
                res.status(500).send("Error updating an client");
            } else {
                res.status(200).send("Client updated successfully 🎉");
            }
        }
    );
});

//Display one client
router.get("/client/:id", (req, res) => {
    const idClient = req.params.id;
    db.query(
        "SELECT idClient, username, surname, email, phone, job, structure_name, structure_type, structure_field, job_field, territory, wishes, website FROM client WHERE idClient = ?", [idClient],
        (err, results) => {
            if (err) {
                res.status(500).send("Error client");
            } else {
                res.status(200).json(results);
            }
        }
    );
});

//Get all Ressources Favart
router.get("/ressources", (req, res) => {
    db.query("SELECT * from ressources_favart", (err, results) => {
        if (err) {
            res.status(500).send("Error retrieving data");
        } else {
            res.status(200).json(results);
        }
    });
});

//Post a new Favart doc
router.post("/ressources", (req, res) => {
    const { link, title, description } = req.body;
    db.query(
        "INSERT INTO ressources_favart(link, title, description) VALUES(?, ?, ?)", [link, title, description],
        (err, response) => {
            if (err) {
                res.status(500).send("Error saving a doc");
            } else {
                res.status(200).send("Successfully saved !");
            }
        }
    );
});

//Delete a Favart doc
router.delete("/ressources/:id", (req, res) => {
    const idClient = req.params.id;
    db.query(
        "DELETE FROM ressources_favart WHERE idRessources_Favart = ?", [idClient],
        (err, results) => {
            if (err) {
                res.status(500).send("😱 Error deleting a doc");
            } else {
                res.status(200).send("🎉 Doc deleted!");
            }
        }
    );
});

//Get all Ressources Ext
router.get("/ressourcesext", (req, res) => {
    db.query("SELECT * from ressources_externes", (err, results) => {
        if (err) {
            res.status(500).send("Error retrieving data");
        } else {
            res.status(200).json(results);
        }
    });
});

//Post a new ext doc
router.post("/ressourcesext", (req, res) => {
    const { link, title, description } = req.body;
    db.query(
        "INSERT INTO ressources_externes(link, title, description) VALUES(?, ?, ?)", [link, title, description],
        (err, response) => {
            if (err) {
                res.status(500).send("Error saving a doc");
            } else {
                res.status(200).send("Successfully saved !");
            }
        }
    );
});

//Delete a ext doc
router.delete("/ressourcesext/:id", (req, res) => {
    const idClient = req.params.id;
    db.query(
        "DELETE FROM ressources_externes WHERE idRessources_Externes = ?", [idClient],
        (err, results) => {
            if (err) {
                res.status(500).send("😱 Error deleting a doc");
            } else {
                res.status(200).send("🎉 Doc deleted!");
            }
        }
    );
});

module.exports = router;