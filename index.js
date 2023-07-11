const dotenv = require("dotenv");
dotenv.config();

const app = express();

app.set("view engine", "ejs");
app.set("views", "./src/views");

app.use(express.static("public")); // Ca revient à déclarer une route par fichier en quelque sorte
app.use(express.urlencoded());
app.use(express.json());
app.use(cookieParser());

app.use(router);


const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`);
});