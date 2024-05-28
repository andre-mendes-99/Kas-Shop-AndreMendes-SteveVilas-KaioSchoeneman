const config = {
    db: {
      /* don't expose password or any sensitive info, done only for demo */
      host: "localhost",
      user: "root",
      password: "Passw0rd",
      database: "kas_db",
      connectTimeout: 60000
    },
    listPerPage: 10,
    secret: 'Passw0rd' 

  };
  module.exports = config;
  