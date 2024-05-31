const express = require('express');
const router = express.Router();
const deliveryService = require('../services/deliverys');

/* GET PRODUCTSALES. */
router.get('/getProductLocations', async function(req, res, next) {
    try {
        const result = await deliveryService.getProductLocations(req.query.page);
        res.json(result);
    } catch (err) {
        console.error(`Erro ao buscar vendas dos produtos`, err.message);
        next(err);
    }
});

module.exports = router;
