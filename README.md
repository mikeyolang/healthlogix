# Health Logix Documentation

## Overview
This DApp (Decentralized Application) aims to streamline patient management for nurses, providing features for patient assignment, form submission, and record keeping. The project is implemented using Motoko for the backend logic and a simple HTML/JavaScript frontend.

## Motoko Modules

### 1. Nurse Module (`nurse.mo`)
- **Description:** Manages nurse information and functionalities.
- **Key Functions:**
  - `addNurse`: Adds a new nurse to the system.
  - `getNurseById`: Retrieves nurse information by ID.
  - `login`: Handles nurse login, assigning patients, and retrieving assigned patients.

### 2. Admin Module (`admin.mo`)
- **Description:** Manages admin-related functionalities.
- **Key Functions:**
  - `addAdmin`: Adds a new admin to the system.
  - `login`: Handles admin login and access to the admin dashboard.

### 3. Patient Module (`patient.mo`)
- **Description:** Manages patient information and functionalities.
- **Key Functions:**
  - `addPatient`: Adds a new patient to the system.
  - `getPatientById`: Retrieves patient information by ID.
  - `getAllPatients`: Retrieves information for all patients.
  - `addMedication`: Adds medication information for a patient.
  - `submitForm`: Submits a form for a patient.

### 4. Form Module (`form.mo`)
- **Description:** Manages form-related functionalities.
- **Key Functions:**
  - `submitForm`: Submits a form with relevant data.
  - `getFormById`: Retrieves a submitted form by ID.
  - `getAllForms`: Retrieves all submitted forms.

### 5. Main Module (`main.mo`)
- **Description:** Ties together the functionalities of all modules.
- **Key Functions:**
  - `runApp`: Initializes and runs the DApp, demonstrating various functionalities.

## Frontend Structure

### 1. HTML Files
- `index.html`: Main entry point for the DApp.
- `login.html`: Login page for nurses.
- `adminDashboard.html`: Admin dashboard page.
- `nurseDashboard.html`: Nurse dashboard page.
- `patientList.html`: Page displaying the list of patients for a nurse.
- `formSubmission.html`: Form submission page.
- `viewForms.html`: Page to view submitted forms.

### 2. JavaScript Files
- `index.js`: Main JavaScript file handling navigation and initialization.
- `login.js`: JavaScript file for the nurse login page.
- `adminDashboard.js`: JavaScript file for the admin dashboard page.
- `nurseDashboard.js`: JavaScript file for the nurse dashboard page.
- `patientList.js`: JavaScript file for the patient list page.
- `formSubmission.js`: JavaScript file for the form submission page.
- `viewForms.js`: JavaScript file for the page to view submitted forms.

## Deployment
- The Motoko backend is deployed as a canister on the Internet Computer.
- Frontend files and assets are hosted on a web server.

## Usage
1. Access the DApp through the provided URL.
2. Navigate through the different views (login, dashboard, patient list, etc.).
3. Interact with the forms, submit data, and view relevant information.

## Acknowledgments
- Special thanks to the Internet Computer platform for enabling the development of decentralized applications.

