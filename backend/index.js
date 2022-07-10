const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const mysql = require("mysql");
const cors = require("cors");

app.use(cors());
app.use(express.json());
app.use(bodyParser.json());

app.options("*", cors());
app.listen(3001, (err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("we are live on port");
  }
});

const db = mysql.createConnection({
  multipleStatements: true,
  host: "localhost",
  user: "root",
  password: "",
  database: "orion",
});

db.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }

  console.log("connected as id " + db.threadId);
});
app.get("/users", (req, res) => {
  var query = `select * from users`;
  db.query(query, (err, data) => {
    if (data) {
      res.json(data);
    } else {
      res.status(400).json({ message: "something went wrong" });
    }
  });
});

app.get("/emails", (req, res) => {
  var query = `select * from emails`;
  db.query(query, (err, data) => {
    if (data) {
      res.json(data);
    } else {
      res.status(400).json({ message: "something went wrong" });
    }
  });
});

app.post("/validate", (req, res) => {
  const names = req.body.names;
  var sql = `select Status from users Where Name = "${names}"`;
  db.query(sql, (err, data) => {
    if (data) {
      if (data.length == 0) {
        res.json("no user");
      } else {
        res.json(data[0]?.Status);
      }
    } else {
      res.status(400).json({ message: "something went wrong" });
    }
  });
});

app.put("/statusActive", (req, res) => {
  var username = req.body.username;

  var sql = `UPDATE users SET Status  = "active" WHERE Name = "${username}"`;
  db.query(sql, (err, data) => {
    if (data) {
      res.json("status updated");
    } else {
      res.status(400).json({ message: "fail to update" });
    }
  });
});

app.put("/statusInActive", (req, res) => {
  var username = req.body.username;

  var sql = `UPDATE users SET Status  = "inactive" WHERE Name = "${username}"`;
  db.query(sql, (err, data) => {
    if (data) {
      res.json("status updated");
    } else {
      res.status(400).json({ message: "fail to update" });
    }
  });
});

app.put("/emailStatusUpdate", (req, res) => {
  var id = req.body.id;
  var status = req.body.status;
  var processBy = req.body.processBy;

  var sql = `UPDATE emails SET status  = "${status}" WHERE ID = "${id}"; UPDATE emails SET processBy  = "${processBy}" WHERE id = ${id};`;
  db.query(sql, (err, data) => {
    if (data) {
      res.json("status updated");
    } else {
      res.status(400).json({ message: "fail to update" });
    }
  });
});

app.put("/emailStatusReset", (req, res) => {
  var sql = `UPDATE emails SET status  = "pending"; UPDATE emails SET processBy  = "" `;
  db.query(sql, (err, data) => {
    if (data) {
      res.json("Reset Done");
    } else {
      res.status(400).json({ message: "fail to update" });
    }
  });
});

app.post("/pagination", (req, res) => {
  var offset = req.body.offset;
  var limit = req.body.limit;
  var sql = `SELECT * from emails WHERE status = "pending" LIMIT ${offset} , ${limit}; SELECT COUNT(id) AS count FROM emails;`;
  db.query(sql, (err, data) => {
    if (data) {
      //res.json(data)
      const a = data[0].map((data) => {
        return data.id;
      });

      const b = data[1].map((data) => {
        return data.count;
      });

      res.json(data[0].concat(a).concat(b));

      // data = data;
      // const data2 = data.map((data1) => {
      //   return data1.id;
      // });
      // const t = data.concat(data2);
      // res.json(t);
    } else {
      res.status(400).json({ message: "something went wrong" });
    }
  });
});

app.post("/paginationAll", (req, res) => {
  var offset = req.body.offset;
  var limit = req.body.limit;
  var sql = `SELECT * from emails  LIMIT ${offset} , ${limit};SELECT COUNT(id) AS count FROM emails;`;
  db.query(sql, (err, data) => {
    if (data) {
      // data = data;
      // const data2 = data.map((data1) => {
      //   return data1.id;
      // });
      // const t = data.concat(data2);
      // res.json(t);
      const a = data[0].map((data) => {
        return data.id;
      });

      const b = data[1].map((data) => {
        return data.count;
      });

      res.json(data[0].concat(a).concat(b));
    } else {
      res.status(400).json({ message: "something went wrong" });
    }
  });
});
