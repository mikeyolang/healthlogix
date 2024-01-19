
  import Admin "admin";
  import Patient "patient";
  import Form "form";
  import Nurse "nurse";
  

   shared func runApp() : async Text {
    let admin = await Admin.login();
    let adminDashboard = await Admin.accessDashboard(admin.id);

    let nurse = await Nurse.login("123", "Hospital A");
    let assignedPatients = await Nurse.getAssignedPatients(nurse.id);

    let patient = await Patient.addPatient("John Doe", "Ward 101");
    let formData : Form.FormData = { /* fill in form fields as needed */ };
    let submittedForm = await Form.submitForm(formData);

    let retrievedPatient = await Patient.getPatientById(patient.id);
    let retrievedForm = await Form.getFormById(submittedForm.id);

    return "DApp is running successfully!";
  };

