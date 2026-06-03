# 📈 EasyBond-project

A web-based enterprise application built to streamline and manage bond trading activities, focusing on secure data handling, financial business logic, and distinct user access controls.

## 🚀 Tech Stack & Core Focus
* **Frontend Framework:** Next.js (React)
* **Language:** JavaScript
* **Styling:** Bootstrap
* **System Analyst Focus:** Role-Based Access Control (RBAC) & Secure Workflow Planning

---

## 🔄 System Workflow (RBAC Logic)
This diagram illustrates how the system verifies user identity and splits functionalities based on permissions:

## 🗄️ Database Schema (Relational Model)

The database structure is designed to isolate user credentials from financial profile data to maintain security and integrity.

### 🔹 1. Users Table (Authentication & Roles)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `user_id` | uuid | PK | Unique identifier for each user account |
| `email` | varchar | | User email address |
| `password_hash` | varchar | | Hashed password for security |
| `role` | varchar | | Access level (e.g., 'Trader', 'Admin') |
| `created_at` | timestamp | | Account creation timestamp |

### 🔹 2. Trader_Details Table (Profile Data)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `trader_id` | uuid | PK | Unique identifier for the trader profile |
| `user_id` | uuid | FK | References `Users.user_id` |
| `full_name` | varchar | | Trader's first and last name |
| `company_name` | varchar | | Employing financial institution |
| `license_no` | varchar | | Authorized bond trader license number |

### 🔹 3. Bond_Transactions Table (Transaction Logs)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `transaction_id` | uuid | PK | Unique identifier for the transaction |
| `trader_id` | uuid | FK | References `Trader_Details.trader_id` |
| `bond_code` | varchar | | Identified code of the bond |
| `amount` | numeric | | Transaction value / volume |
| `status` | varchar | | Transaction state (e.g., Pending, Approved) |
| `updated_by` | uuid | FK | References `Users.user_id` (Admin action) |
