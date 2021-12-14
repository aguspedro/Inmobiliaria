const express = require('express');

const routes=express.Router();

const {
    renderHome,
    renderAlquileres,
    renderVentas,
    renderContacto,
    renderNewprop,
    addnewProp,
} =require('../controllers/inmoControllers');



routes.get("/",renderHome);
routes.get("/index2alquileres",renderAlquileres);
routes.get("/index3ventas",renderVentas);
routes.get("/indexcontacto",renderContacto);
routes.get("/formNewprop",renderNewprop);
routes.post("/formNewprop",addnewProp);

 

module.exports=routes;
