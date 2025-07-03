const express = require('express');
const router = express.Router();

// GET /todos
router.get('/', (req, res) => {
  res.send('GET all todos');
});

// POST /todos
router.post('/', (req, res) => {
  res.send('Create a new todo');
});

// GET /todos/:id
router.get('/:id', (req, res) => {
  res.send(`GET todo with id ${req.params.id}`);
});

// PUT /todos/:id
router.put('/:id', (req, res) => {
  res.send(`Update todo with id ${req.params.id}`);
});

// DELETE /todos/:id
router.delete('/:id', (req, res) => {
  res.send(`Delete todo with id ${req.params.id}`);
});

module.exports = router;