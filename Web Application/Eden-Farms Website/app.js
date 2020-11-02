const express = require('express');
const session = require('express-session');
const app = express();
const port = process.env.port || 8383;
const bodyParser = require('body-parser');
const ejs = require('ejs');
const sql = require("mssql");
const data = require('./data-models/DataAccessLayer');

const config = {
    user: "USER",
    password: 'BCSocietyRules',
    server: 'localhost',
    database: 'EdenFarmsDB'
}

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.use(express.static('static-files'));
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/home', (req, res) => {
    if (req.session.loggedin) {
        data.getFarmData();
        res.render('home.ejs',{farms:data.farmsData, farmLength: data.farmsData.length, user: data.user});
		//res.sendFile('static-files/Pages/home.html', { root: __dirname });
	} else {
		res.send('Please login to view this page!');
	}
	//res.end();
});

app.post('/auth', (req, response) => {
	var username = req.body.UserName;
    var password = req.body.UserPassword;

	sql.connect(config, (err)=>{
        if(err) console.log(err);
        var request = new sql.Request();

        request.query(request.template`SELECT * FROM tblUser WHERE UserName = ${username} AND UserPassword = ${password}`, (err, ress) => {
            if (ress.recordset.length > 0) {
                data.CurrentUser(ress.recordset[0]);
                req.session.loggedin = true;
                req.session.username = username;
                response.redirect('/home');
            } else {
                response.send('Incorrect Username and/or Password!');
            }
            response.end();
        });
    });
});

app.get('/login', (req, res) => {
    res.sendFile('static-files/Pages/login.html', { root: __dirname })
});

app.get('/admin', (req, res) => {
    res.sendFile('static-files/Pages/admin.html', { root: __dirname })
});

app.get('/plots', (req, res) => {
    res.sendFile('static-files/Pages/plots_page.html', { root: __dirname })
});

app.get('/account', (req, res) => {
    res.sendFile('static-files/Pages/user_account.html', { root: __dirname })
});

app.get('/user', (req, res) => {
    res.sendFile('static-files/Pages/user.html', { root: __dirname })
});

app.listen(port, () => {
    console.log(`listening on port ${port}`);
});