const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getUsers(page = 1){
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT *
    FROM user LIMIT ${offset},${config.listPerPage}`
  );
  const data = helper.emptyOrRows(rows);
  const meta = {page};

  return {
    data,
    meta
  }
}

//register
async function register(user){
    const result = await db.query(
      `INSERT INTO user 
      (user_name, user_password, user_email, user_logo)
      VALUES 
      ('${user.name}', ${user.pass}, ${user.email}, null)`
    );
  
    let message = 'Error in creating programming language';
  
    if (result.affectedRows) {
      message = 'Programming language created successfully';
    }
  
    return {message};
  }


  async function update(id, user){
    const result = await db.query(
      `UPDATE user 
      SET user_name="${user.name}", user_password=${user.pass}, user_email=${user.mail}, 
      user_logo=${user.logo}
      WHERE user_id=${id}` 
    );
  
    let message = 'Error in updating user';
  
    if (result.affectedRows) {
      message = 'user updated successfully';
    }
  
    return {message};
  }


  async function remove(id){
    const result = await db.query(
      `DELETE FROM user WHERE user_id=${id}`
    );
  
    let message = 'Error in deleting user';
  
    if (result.affectedRows) {
      message = 'User deleted successfully';
    }
  
    return {message};
  }

module.exports = {
    getUsers,
    register,
    update,
    remove
}
