# UserRegistration - Java Servlet Web App

A full-stack Java web application built using **Java Servlets**, **JSP**, **PostgreSQL**, and **Apache Tomcat 9.0**, covering the complete user authentication flow:

- ✅ User Registration
- ✅ User Login with Session Management
- ✅ Forgot Password (Reset via username)
- ✅ Customer Home Page (after login)

---

## 🛠️ Tech Stack

| Layer | Technology |
|:---|:---|
| Backend | Java Servlets (javax.servlet) |
| Frontend | JSP (Java Server Pages) |
| Database | PostgreSQL |
| Build Tool | Maven |
| Server | Apache Tomcat 9.0 |

---

## 📁 Project Structure

```
UserRegistration/
├── src/
│   └── main/
│       ├── java/com/java/register/
│       │   ├── Register.java         # Handles user registration
│       │   ├── Login.java            # Handles login & session
│       │   └── ForgetPassword.java   # Handles password reset
│       ├── resources/
│       │   └── db.properties.example # Template for DB credentials
│       └── webapp/
│           ├── register.jsp          # Registration form
│           ├── login.jsp             # Login form
│           ├── ForgetPassword.jsp    # Forgot password form
│           ├── customer.jsp          # Post-registration page
│           └── customerhome.jsp      # Dashboard after login
├── pom.xml
└── .gitignore
```

---

## ⚙️ Setup & Run Locally

### 1. Clone the Repository
```bash
git clone https://github.com/pujajorwar/UserRegistration.git
cd UserRegistration
```

### 2. Set Up the Database
Create a PostgreSQL database and table:
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
# Copy the example file
cp src/main/resources/db.properties.example src/main/resources/db.properties

# Edit db.properties with your actual credentials
db.url=jdbc:postgresql://localhost:5432/registration
db.user=your_postgres_username
db.password=your_postgres_password
```

> ⚠️ **IMPORTANT**: `db.properties` is listed in `.gitignore` and will NOT be committed to GitHub. Never commit your real credentials.

### 4. Build and Deploy
```bash
mvn clean package
# Copy the generated .war file from target/ to your Tomcat webapps/ directory
```

### 5. Access the App
Open your browser and go to:
```
http://localhost:8080/UserRegistration/login.jsp
```

---

## 🔐 Security Notes
- DB credentials are stored in `db.properties` (gitignored, never committed).
- Use the provided `db.properties.example` as a reference template.
- Passwords are currently stored as plain text — use bcrypt hashing for production use.

---

## 📚 Part of the "Code with Puja" DevLog Series
This project is documented step-by-step in my blog series:
👉 [Read the DevLog Series](https://pujajorwar.hashnode.dev)

#Java #Servlets #JSP #PostgreSQL #BuildInPublic
