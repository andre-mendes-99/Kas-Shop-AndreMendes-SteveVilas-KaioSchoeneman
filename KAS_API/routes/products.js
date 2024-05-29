const express = require('express');
const router = express.Router();
const products = require('../services/products');



/* GET PRODUCTS. */
router.get('/', async function(req, res, next) {
  try {
    res.json(await products.getProducts(req.query.page));
  } catch (err) {
    console.error(`Error while getting products`, err.message);
    next(err);
  }
});

/* GET CHEPEAST PRODUCTS. */
router.get('/chepeastprod', async function(req, res, next) {
    try {
      res.json(await products.getChepestProduct(req.query.page));
    } catch (err) {
      console.error(`Error while getting cheapest products`, err.message);
      next(err);
    }
  });

  /* GET Costliest PRODUCTS. */
router.get('/costliestprod', async function(req, res, next) {
    try {
      res.json(await products.getCostliestProduct(req.query.page));
    } catch (err) {
      console.error(`Error while getting costliest products`, err.message);
      next(err);
    }
  });



  /* PUT  products */
router.put('/updateStock/:id', async function(req, res, next) {
    try {
      res.json(await products.Addstock(req.params.id, req.body));
    } catch (err) {
      console.error(`Error while updating products`, err.message);
      next(err);
    }
  });

  /* DELETE user */
router.delete('/:id', async function(req, res, next) {
    try {
      res.json(await products.remove(req.params.id));
    } catch (err) {
      console.error(`Error while deleting user`, err.message);
      next(err);
    }
  });

module.exports = router;