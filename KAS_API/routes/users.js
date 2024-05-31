const express = require('express');
const router = express.Router();
const users = require('../services/users');

/*LOG IN */ 
router.post('/login', async function(req, res, next) {
  try {
    const response = await users.login(req.body);

    if (response.auth) {
      res.status(200).json({
        success: true,
        message: 'Login successful',
        token: response.token
      });
    } else {
      res.status(401).json({
        success: false,
        message: response.message || 'Login failed'
      });
    }
  } catch (error) {
    next(error);
  }
});


/* GET USERS. */
router.get('/', async function(req, res, next) {
  try {
    res.json(await users.getUsers(req.query.page));
  } catch (err) {
    console.error(`Error while getting users`, err.message);
    next(err);
  }
});

/* GET USER BY EMAIL. */
router.get('/email/:email', async function(req, res, next) {
  try {
    const user = await users.getUserByEmail(req.params.email);
    if (user) {
      res.json({ data: user });
    } else {
      res.status(404).json({ message: 'User not found' });
    }
  } catch (err) {
    console.error(`Error while getting user by email`, err.message);
    next(err);
  }
});

/* POST  user */
router.post('/', async function(req, res, next) {
    try {
      res.json(await users.register(req.body));
    } catch (err) {
      console.error(`Error while creating user`, err.message);
      next(err);
    }
  });


  
  /* PUT  user */
router.put('/:id', async function(req, res, next) {
    try {
      res.json(await users.update(req.params.id, req.body));
    } catch (err) {
      console.error(`Error while updating user`, err.message);
      next(err);
    }
  });

  /* DELETE user */
router.delete('/:id', async function(req, res, next) {
    try {
      res.json(await users.remove(req.params.id));
    } catch (err) {
      console.error(`Error while deleting user`, err.message);
      next(err);
    }
  });

module.exports = router;