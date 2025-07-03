const express = require('express');
const mongoose = require('mongoose');
const todosRouter = require('./routes/todos'); 

const app = express();
app.use(express.json());

mongoose.connect('mongodb://mongo:27017/todos', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
.then(() => console.log('✅ Connected to MongoDB'))
.catch((err) => console.error('❌ MongoDB connection error:', err));