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

## 🗄️ Database Schema (Normalized Relational Design)

The database schema is structured based on the specific user requirements for Admins and Traders, supporting course management, attendance tracking, and certification.

### 🔹 1. Users Table (Authentication & RBAC)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `user_id` | uuid | PK | Unique identifier for the account |
| `email` | varchar | | User email address used for login |
| `password_hash` | varchar | | Password (National ID number for Traders initially) |
| `role` | varchar | | System access tier ('admin' or 'trader') |
| `created_at` | timestamp | | Account registration timestamp |

### 🔹 2. Traders Table (Trader Profiles & License Status)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `trader_id` | uuid | PK | Unique identifier for the trader |
| `user_id` | uuid | FK | References `users.user_id` |
| `citizen_id` | varchar(13) | | National Identification Number |
| `full_name` | varchar | | Trader's full name |
| `license_no` | varchar | | Bond trader license number |
| `status` | varchar | | Profile status (e.g., Active, Expiring, Expired) |
| `expired_date` | date | | License/Status expiration date for notifications |

### 🔹 3. Courses Table (Training Course Management)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `course_id` | uuid | PK | Unique identifier for the training course |
| `course_name` | varchar | | Name of the course |
| `description` | text | | Course outline and description |
| `is_approved` | boolean | | Approval status controlled by Admin |
| `created_by` | uuid | FK | References `users.user_id` (Admin creator) |

### 🔹 4. Course_Enrollments Table (Registration & Attendance Checking)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `enrollment_id` | uuid | PK | Unique identifier for the registration |
| `trader_id` | uuid | FK | References `traders.trader_id` |
| `course_id` | uuid | FK | References `courses.course_id` |
| `enroll_date` | timestamp | | Date of course registration |
| `attendance_status`| boolean | | Actual attendance verification (True = Attended) |

### 🔹 5. Certificates Table (Certification Issuance)
| Column Name | Data Type | Key | Description |
| :--- | :--- | :--- | :--- |
| `certificate_id`| uuid | PK | Unique identifier for the certificate |
| `trader_id` | uuid | FK | References `traders.trader_id` |
| `course_id` | uuid | FK | References `courses.course_id` |
| `certificate_no`| varchar | | Official certificate tracking number |
| `issued_date` | date | | Date the certificate was awarded |
| `file_url` | varchar | | Cloud storage URL for the certificate file |
