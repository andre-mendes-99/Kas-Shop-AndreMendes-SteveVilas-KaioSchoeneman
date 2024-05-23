const express = require('express');
const router = express.Router();
const users = require('../services/users');

/*LOG IN */ 
router.post('/login',async function(req, res, next) {
  var response = await users.login(req.body);
  
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
      res.json(await programmingLanguages.remove(req.params.id));
    } catch (err) {
      console.error(`Error while deleting user`, err.message);
      next(err);
    }
  });

module.exports = router;