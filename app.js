const express = require('express');
const app = express();
const path = require('path');
const routes=require('./src/routes/inmoRoutes');
const databaseConnection = require('./config/database');

databaseConnection.connect();


app.use(express.json());
app.use(express.urlencoded({extended:false}));

app.set('views',path.join(__dirname,'views'));
app.set('view engine','ejs');
app.use(express.static(path.join(__dirname,'public')));

/*
app.get('/',(req,res)=>{
    res.render("./pages/index.ejs");
});
*/

app.use("",routes);


app.listen(4000,()=>{
    console.log("Server corriendo en el puerto 4000");
});
