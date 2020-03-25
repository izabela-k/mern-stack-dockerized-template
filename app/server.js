import express from 'express';
import mongoose from 'mongoose';

// Create the app
const app = express();

mongoose.connect(process.env.MONGODB_URL);

// let's start the server...
const server = app.listen( process.env.PORT || 3000, function(){
    console.log('Listening on port ' + server.address().port);
});