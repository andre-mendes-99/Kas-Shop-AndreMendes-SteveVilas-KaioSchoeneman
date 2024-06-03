const express = require("express");
const app = express();
const port = process.env.port || 3000;
const cors = require('cors');
const usersRouter = require("./routes/users");
const productsRouter = require("./routes/products");
const salesRouter = require("./routes/sales");
const locationsRouter = require("./routes/delivery");

app.use(cors());
const corsOptions = {
    origin: 'http://127.0.0.1:5500',
    optionsSuccessStatus: 200 // Algumas versões de navegadores exigem esse status
};

app.use(cors(corsOptions));
app.use(express.json());

app.use(
    express.urlencoded({
        extended: true,
    })
);

app.get("/", (req, res) => {
    res.json({ message: "ok" });
});
app.use("/users", usersRouter);

app.use("/products", productsRouter);

app.use("/sales", salesRouter);

app.use("/deliverys", locationsRouter);

/* Error handler middleware */
app.use((err, req, res, next) => {
    const statusCode = err.statusCode || 500;
    console.error(err.message, err.stack);
    res.status(statusCode).json({ message: err.message });
    return;
});
app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});