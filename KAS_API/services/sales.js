const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getProductSales() {
    const query = `
        SELECT 
            p.product_id,
            p.product_name,
            SUM(pv.pv_amount) AS total_sales
        FROM 
            product p
        LEFT JOIN 
            PV pv ON p.product_id = pv.pv_product_id
        GROUP BY 
            p.product_id, p.product_name`;

    const rows = await db.query(query);
    const data = helper.emptyOrRows(rows);

    return data;
}


module.exports = {
    getProductSales
};
