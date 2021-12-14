const databaseConnection=require('../../config/database');
 
const renderHome = (req,res)=>{

    databaseConnection.query('SELECT * FROM propiedades',(error,data)=>{
        if(error){
            console.log(error)
        }else{
          
            res.render('pages/index',{
                data
            }) 
        }
    });
}

const renderAlquileres = (req,res)=>{
    databaseConnection.query('SELECT * FROM propiedades',(error,data)=>{
        if(error){
            console.log(error)
        }else{
          
            res.render("./pages/index2alquileres.ejs",{
                data
            }) 
        }
    });
}

const renderVentas = (req,res)=>{
    databaseConnection.query('SELECT * FROM propiedades',(error,data)=>{
        if(error){
            console.log(error)
        }else{
          
            res.render("./pages/index3ventas.ejs",{
                data
            }) 
        }
    });
}

const renderContacto = (req,res)=>{
      res.render("./pages/indexcontacto.ejs") 
        }
const renderNewprop = (req,res)=>{
     res.render("./pages/formNewprop.ejs") 
     }
    
const addnewProp = (req,res)=>{
        const {categoria,operacion,propiedad,imagen,descripcion,precio}= req.body;
    
        databaseConnection.query('INSERT INTO propiedades(categoria,operacion,propiedad,imagen,descripcion,precio)VALUES(?,?,?,?,?,?)',[categoria,operacion,propiedad,imagen,descripcion,precio],(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.redirect("/")
            }
        });
    };

module.exports= {
    renderHome,
    renderAlquileres,
    renderVentas,
    renderContacto,
    renderNewprop,
    addnewProp
};