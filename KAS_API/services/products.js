



const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getProducts(page = 1) {
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT *
    FROM product LIMIT ${offset},${config.listPerPage}`
  );
  const data = helper.emptyOrRows(rows);
  const meta = { page };

  return {
    data,
    meta
  }
}

async function getChepestProduct(page = 1) {
    const offset = helper.getOffset(page, config.listPerPage);
    const rows = await db.query(
      `SELECT product_name, product_price
      FROM product
      WHERE product_price = (SELECT MIN(product_price) FROM product) LIMIT ${offset},${config.listPerPage};`
    );
    const data = helper.emptyOrRows(rows);
    const meta = { page };
  
    return {
      data,
      meta
    }
  }

  async function getCostliestProduct(page = 1) {
    const offset = helper.getOffset(page, config.listPerPage);
    const rows = await db.query(
      `SELECT product_name, product_price
      FROM product
      WHERE product_price = (SELECT MAX(product_price) FROM product)
      LIMIT ${offset}, ${config.listPerPage};`
    );
    const data = helper.emptyOrRows(rows);
    const meta = { page };
  
    return {
      data,
      meta
    }
}

async function Addstock(id, product) {
  const result = await db.query(
    `UPDATE product 
      SET product_quantity = ? 
      WHERE product_id = ?`,
    [product.product_quantity, id]
  );

  let message = 'Erro ao atualizar estoque';

  if (result.affectedRows) {
    message = 'Estoque atualizado com sucesso';
  }

  return { message };
}


async function remove(id) {
  const result = await db.query(
    `DELETE FROM app_users WHERE user_id=${id}`
  );

  let message = 'Error in deleting user';

  if (result.affectedRows) {
    message = 'User deleted successfully';
  }

  return { message };
}

module.exports = {
  getProducts,
  getChepestProduct,
  getCostliestProduct,
  Addstock,
  remove
}
