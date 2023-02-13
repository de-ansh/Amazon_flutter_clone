//Imports from packages
const express = require("express");

//Imposrts from other files
const authRouter = require("./routes/auth");


//INIT

const PORT = 3000;
const app = express();
//middleware

//client->middleware->server->CLIENT
app.use(authRouter);

app.listen(PORT, () => {
  console.log(`connected at post ${PORT}`);
});
