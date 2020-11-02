const accessData = require('./DataAccessLayer');

module.exports = {
    // user : {},
    // farmsData : [],
    // plotsData : [],
    // plantsData : [],
    // plantCategoriesData : [],
    CurrentUser: (loggedUser)=>{this.user = loggedUser; console.log(this.user.UserID)}, 
    GetFarms: async ()=>{await accessData.getFarmData(this.user.UserID).forEach(farm => {
        farmsData.push(farm);
        });
        // let output = '';
        // farms.forEach((farm,i)=>{
        //     output += `<figure class="snip1515" style="float: left">
        //     <div class="profile-image"><img src=../Media/f${i}.jpg alt="Farm 1" /></div>
        //         <figcaption>
        //             <a href="#Plots" class="FarmLink"><h3>Farm 1</h3></a>
        //             <h3>${farm.FarmName}</h3>
        //             <h4>Owner: ${this.user.UserName}</h4>
        //             <h4>Location: ${farm.FarmLocation}</h4>
        //             <h4>Location Alias: ${farm.LocationAlias}</h4>
        //         </figcaption>
        //     </figure>`
        // })
        // document.getElementById("figures").innerHTML = output;
    },
    GetPlots: ()=>{farmsData.forEach(farm =>{
            accessData.getPlotData(farm.FarmID).forEach(plot=>{
                plotsData.push(plot);
            })
        })
    },
    GetPlants: ()=>{plotsData.forEach(plot=>{
            accessData.getPlantData(plot.PlantID).forEach(plant=>{
                plantsData.push(plant);
            })
        })
    },
    GetPlantCategory: ()=>{}
}