



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
      WHERE product_price = (SELECT MAX(product_price) FROM product) LIMIT ${offset},${config.listPerPage};`
    );
    const data = helper.emptyOrRows(rows);
    const meta = { page };
  
    return {
      data,
      meta
    }
  }

async function Addstock(id, user) {
  const result = await db.query(
    `UPDATE app_users 
      SET user_name="${user.name}", user_password=${user.pass}, user_email=${user.mail}, 
      user_logo=${user.logo}
      WHERE user_id=${id}`
  );

  let message = 'Error in updating user';

  if (result.affectedRows) {
    message = 'User updated successfully';
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
