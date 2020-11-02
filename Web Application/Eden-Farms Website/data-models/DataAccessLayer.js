const sql = require("mssql");
const { farmsData } = require("./data");

const config = {
    user: "USER",
    password: 'BCSocietyRules',
    server: 'localhost',
    database: 'EdenFarmsDB'
}

// sql.connect(config).then(pool => {
//     // Query
    
//     return pool.request()
//         .input('id', sql.Int, usesrID)
//         .query('select * from tblUser where UserID = @id AND UserPassword = @pass')
// }).then(result => {
//     console.dir(result.recordset[0].UserName)
// }).catch(err => {
//     console.log(err);
// });

// (async function () {
//     try {
//         let pool = await sql.connect(config)
//         let result1 = await pool.request()
//             .input('id', sql.Int, usesrID)
//             .query('select * from tblUser where UserID = @id')
            
//         console.dir(recordset.UserName)
//     }catch (err) {
//         console.log(err);
//     }
// })()

// sql.connect(config, (err)=>{
//     if(err) console.log(err);
//     var request = new sql.Request();

//     request.query(request.template`select * from tblUser WHERE UserName = ${username} AND UserPassword = ${password}`, (err, ress) => {
                
//         if (err) console.log(err)
        
//         logged = false;

//         console.log(ress.recordset[0]);

//         ress.recordset.forEach(user => {
//             if(user.UserName == 'dummy' && user.UserPassword == 'password'){
//                 logged = true;
//                 console.log(user.UserName);
//                 console.log(user.UserPassword);
//             }
//         });

//         console.log(logged);
//     });
// })

module.exports = {
    // user : {},
    // farmsData : [],
    // plotsData : [],
    // plantsData : [],
    // plantCategoriesData : [],
    CurrentUser: (loggedUser)=>{this.user = loggedUser;},
    getFarmData: (userid) =>{
        sql.connect(config, (err)=>{
            if(err) console.log(err);
            var request = new sql.Request();
        
            request.query(request.template`select * from tblFarm WHERE UserID = ${userid}`, (err, ress) => {
                if (err) console.log(err)
                console.log(ress.recordset);
                return ress.recordset;
                // ress.recordset.forEach(farm=>{farmsData.push(farm)});
                // console.log(farmsData);
            });
        })
    },
    getPlotData: (farmid) =>{
        sql.connect(config, (err)=>{
            if(err) console.log(err);
            var request = new sql.Request();
        
            request.query(request.template`select * from tblPlots WHERE FarmID = ${farmid}`, (err, ress) => {
                if (err) console.log(err)
                return ress.recordset;
            });
        })

    },
    getPlantData: (plantid) =>{
        sql.connect(config, (err)=>{
            if(err) console.log(err);
            var request = new sql.Request();
        
            request.query(request.template`select * from tblPlant WHERE PlantID = ${plantid}`, (err, ress) => {
                if (err) console.log(err)
                return ress.recordset;
            });
        })
    },
    getPlantCategoryData: (plantCatID) =>{
        sql.connect(config, (err)=>{
            if(err) console.log(err);
            var request = new sql.Request();
        
            request.query(request.template`select * from tblPlantCategory WHERE PlantCategoryID = ${plantCatID}`, (err, ress) => {
                if (err) console.log(err)
                return ress.recordset;
            });
        })
    }
}



