const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getProductLocations() {
    const query = `
        SELECT 
            product.product_name AS Produto,
            delivery.delivery_name AS Localizacao,
            ST_AsText(delivery.geom) AS Coordenadas
        FROM 
            sales
        INNER JOIN 
            pv ON pv.pv_sales_id = sales.sales_id
        INNER JOIN 
            product ON product.product_id = pv.pv_product_id
        INNER JOIN 
            delivery ON delivery.delivery_id = pv.pv_delivery_id
    `;

    const rows = await db.query(query);
    const data = helper.emptyOrRows(rows);

    return data;
}

module.exports = {
    getProductLocations
};
