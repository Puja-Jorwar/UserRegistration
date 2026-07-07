# 🖥️ UserRegistration — Java Servlet & JSP Web App

A full-stack **Java Servlet + JSP** web application with complete user authentication flow, built using **Apache Tomcat 9.0** and **PostgreSQL**.

> 📚 Part of the **"Code with Puja" DevLog Series** — documenting my Java backend learning journey step by step.
> 👉 [Read the Blog Series](https://pujajorwar.hashnode.dev)

---

## ✨ Features

- 📝 **User Registration** — New users can register with a username and password
- 🔐 **User Login** — Credentials verified against PostgreSQL database
- 🏠 **Customer Home Page** — Personalized welcome page after successful login
- 🔑 **Forgot Password** — Users can reset their password using their username
- ⚡ **Session Management** — HttpSession used to track logged-in users
- 🛡️ **Secure DB Config** — No hardcoded credentials (uses `db.properties` file)

---

## 🛠️ Tech Stack

| Layer | Technology |
|:---|:---|
| Backend | Java Servlets (`javax.servlet`) |
| View Layer | JSP (Java Server Pages) |
| Database | PostgreSQL |
| Build Tool | Maven |
| Server | Apache Tomcat 9.0 |
| Language | Java 8 |

---

## 📁 Project Structure

```
UserRegistration/
├── src/
│   └── main/
│       ├── java/com/java/register/
│       │   ├── Register.java           # Servlet: handles new user registration
│       │   ├── Login.java              # Servlet: validates login, sets session
│       │   └── ForgetPassword.java     # Servlet: updates password in DB
│       ├── resources/
│       │   └── db.properties.example   # Template for DB config (safe to commit)
│       └── webapp/
│           ├── register.jsp            # Registration form (JSP)
│           ├── login.jsp               # Login form with session message (JSP)
│           ├── ForgetPassword.jsp      # Forgot password form (JSP)
│           ├── customer.jsp            # Post-registration success page
│           ├── customerhome.jsp        # Dashboard after login
│           └── index.jsp               # Entry point (redirects to login)
├── pom.xml                             # Maven dependencies
├── README.md
└── .gitignore
```

---

## ⚙️ Setup & Run Locally

### 1. Clone the Repository
```bash
git clone https://github.com/Puja-Jorwar/UserRegistration.git
cd UserRegistration
```

### 2. Set Up the PostgreSQL Database
```sql
CREATE DATABASE registration;

\c registration

CREATE TABLE customer (
    username VARCHAR(100) PRIMARY KEY,
    password VARCHAR(100)
);
```

### 3. Configure DB Credentials
```bash
# Copy the example config file
cp src/main/resources/db.properties.example src/main/resources/db.properties
```

Then open `db.properties` and fill in your details:
```properties
db.url=jdbc:postgresql://localhost:5432/registration
db.user=your_postgres_username
db.password=your_postgres_password
```

> ⚠️ **`db.properties` is gitignored and will never be committed. Keep your credentials safe.**

### 4. Build the Project
```bash
mvn clean package
```

### 5. Deploy to Tomcat
- Copy the generated `target/UserRegistration.war` file to your Tomcat `webapps/` directory.
- Start Tomcat.

### 6. Open in Browser
```
http://localhost:8080/UserRegistration/login.jsp
```

---

## 🔄 Application Flow

```
Register.jsp  →  RegisterServlet  →  Insert into DB  →  customer.jsp
                                                               ↓
Login.jsp     →  LoginServlet     →  Check DB
                                       ↓           ↓
                                    ✅ True      ❌ False
                                       ↓           ↓
                               customerhome.jsp  Error msg on Login.jsp

Login.jsp  →  ForgetPassword.jsp  →  ForgetPasswordServlet
                                            ↓
                                     Update password in DB
                                            ↓
                                        Login.jsp ✅
```

---

## 🔐 Security Notes

- DB credentials are stored in `db.properties` (excluded from Git via `.gitignore`).
- Use `db.properties.example` as the reference template when setting up.
- Passwords are stored as plain text in this learning project. For production, use **BCrypt hashing**.

---

## 👩‍💻 Author

**Puja Jorwar** — Learning Java Backend Development in public.

- 📖 Blog: [pujajorwar.hashnode.dev](https://pujajorwar.hashnode.dev)
- 🐙 GitHub: [@Puja-Jorwar](https://github.com/Puja-Jorwar)

---

## 📌 Tags
`Java` `Servlets` `JSP` `PostgreSQL` `Tomcat` `Maven` `Backend` `BuildInPublic`
