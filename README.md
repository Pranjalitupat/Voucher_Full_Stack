# VoucherFlow — Expense Voucher Management System

## Project Overview

VoucherFlow is a full-stack web application designed to streamline employee expense voucher submission, Director approval, and Accounts review through a centralized digital workflow.

The application provides role-based access for Employees, Directors, and Accounts users, enabling efficient voucher management, approval tracking, and improved visibility into the status of expense claims.

## Technology Stack

**Frontend**

* React
* Vite
* JavaScript
* CSS

**Backend**

* Node.js
* Express.js
* JWT-based authentication
* Multer for signature file uploads

**Database**

* MySQL 8.0

## Key Features

### Employee Module

* Secure login with role-based access control
* Create, view, search, and filter expense vouchers
* Save, retrieve, and edit draft vouchers
* Upload employee signatures
* Submit vouchers for approval
* Track voucher statuses and rejection reasons
* View voucher activity history

### Director Module

* View vouchers awaiting approval
* Review submitted voucher and expense details
* Upload Director signatures
* Approve or reject submitted vouchers
* Provide reasons for rejected vouchers
* Access dashboard statistics and recent activity

### Accounts Module

* Access voucher records across employees
* Search and filter voucher records
* Review voucher statuses and expense details
* View approved and rejected voucher records

### Security and Validation

* JWT-based user authentication
* Role-based authorization for protected operations
* Employee ownership verification for voucher access
* Server-side input validation
* PNG and JPEG signature file validation
* File upload size restrictions
* Protected access to uploaded signature files

## Project Structure

```text
Voucher_Full_Stack/
├── backend/
│   ├── config/
│   ├── controllers/
│   ├── middleware/
│   ├── routes/
│   ├── scripts/
│   ├── uploads/
│   ├── .env.example
│   ├── .gitignore
│   ├── package.json
│   └── server.js
├── frontend/
│   ├── src/
│   ├── public/
│   ├── package.json
│   └── index.html
└── README.md
```

*Note: The directory structure is illustrative. Update it to reflect the actual files and folders in the repository.*

## Prerequisites

Ensure the following software is installed before setting up the application:

* Node.js and npm
* MySQL Server 8.0 or a compatible MySQL installation
* Visual Studio Code or another code editor

## Installation and Setup

### 1. Clone or Extract the Project

Clone the repository or extract the project archive, then open the project directory in your terminal or code editor.

### 2. Configure the Database

Start the MySQL server and create the application database:

```sql
CREATE DATABASE expense_voucher_db;
```

Create the required tables using the SQL schema provided with the project.

### 3. Configure the Backend

Navigate to the backend directory:

```bash
cd backend
npm install
```

Create a `.env` file using `.env.example` as a reference.

Configure the required environment variables, including:

* MySQL database connection details
* JWT secret
* Any additional variables required by the backend or user-creation scripts

Use your own local credentials and keep sensitive configuration values private. Never commit the actual `.env` file to version control.

### 4. Start the Backend Server

From the `backend` directory, run the development command configured in `package.json`:

```bash
npm run dev
```

If the development script is unavailable, use the appropriate start command defined in `package.json`.

The backend is configured to use port `5000`.

### 5. Start the Frontend

Open a separate terminal and navigate to the frontend directory:

```bash
cd frontend
npm install
npm run dev
```

Open the local development URL displayed in the terminal. The default Vite URL is typically:

http://localhost:5173/

## API Overview

The backend provides REST API endpoints for authentication, voucher management, approval workflows, and application health checks.

| Route Prefix    | Description                             |
| --------------- | --------------------------------------- |
| `/api/auth`     | User authentication                     |
| `/api/vouchers` | Employee voucher management             |
| `/api/director` | Director review and approval operations |
| `/api/accounts` | Accounts voucher review                 |
| `/api/health`   | Backend and database health checks      |

Protected endpoints require a valid authentication token and the appropriate user role.

## Validation and Testing

The following application workflows have been identified for validation:

* Employee voucher creation and submission
* Director approval and rejection workflows
* Accounts review of voucher records
* Voucher status and activity history tracking
* Signature upload validation
* Rejection reason validation
* Authentication and role-based authorization
* Backend and MySQL connectivity

Run these checks in the target environment to verify that the application behaves as expected after installation.

## Security Considerations

* Keep database credentials and JWT secrets out of source control.
* Do not distribute real employee passwords or database credentials.
* Restrict access to uploaded signature files and avoid exposing private files through unrestricted static file serving.
* Use strong secrets and appropriate security settings before deploying the application to production.

## Project Purpose

VoucherFlow demonstrates practical full-stack development using React, Node.js, Express.js, and MySQL. It covers REST API integration, relational database management, authentication, role-based authorization, file upload validation, and multi-stage business workflow management.

## Author

Developed as part of an internship assignment for Prachay Securities Private Limited.
