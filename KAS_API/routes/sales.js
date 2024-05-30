const express = require('express');
const router = express.Router();
const salesService = require('../services/sales');

/* GET PRODUCTSALES. */
router.get('/getProductSales', async function(req, res, next) {
    try {
        const result = await salesService.getProductSales(req.query.page);
        res.json(result);
    } catch (err) {
        console.error(`Erro ao buscar vendas dos produtos`, err.message);
        next(err);
    }
});

module.exports = router;
