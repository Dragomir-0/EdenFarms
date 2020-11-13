const express = require('express');
const session = require('express-session');
const app = express();
const port = process.env.port || 8383;
const bodyParser = require('body-parser');
const sql = require("mssql");
//const data = require('./data-models/DataAccessLayer');

user = {};
farmsData= [];
plotsData = [];
plantsData = [];
plantCategoriesData = [];

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
        sql.connect(config, (err)=>{
            if(err) console.log(err);
            var request = new sql.Request();
        
            request.query(request.template`select * from tblFarm WHERE UserID = ${user.UserID}`, (err, ress) => {
                if (err) console.log(err)
                ress.recordset.forEach(farm=>{farmsData.push(farm)});
                res.render('home.ejs',{farms:farmsData, farmLength: farmsData.length, user: user});
            });
        })
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
                user = ress.recordset[0];
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
    //farm = req.body.selectedFarm;
    //console.log(farm.innerText);
    sql.connect(config, (err)=>{
        if(err) console.log(err);
        var request = new sql.Request();
    
        request.query(request.template`select * from tblPlots WHERE FarmID = 1`, (err, ress) => {
            if (err) console.log(err)
            ress.recordset.forEach(plot=>{plotsData.push(plot)});
            res.render('Plots page.ejs',{plots:plotsData, plotsLength: plotsData.length, user: user});
        });
    })
    //res.sendFile('static-files/Pages/plots_page.html', { root: __dirname })
});

app.get('/account', (req, res) => {
    res.render('User account.ejs', {user:user});
    //res.sendFile('static-files/Pages/user account.html', { root: __dirname })
});

app.get('/user', (req, res) => {
    res.sendFile('static-files/Pages/user.html', { root: __dirname })
});

app.listen(port, () => {
    console.log(`listening on port ${port}`);
});