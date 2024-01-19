import Form "form";
// patient.mo

module Patient {

    // Define the Patient record type
    public type PatientInfo = {
        id : Nat;
        name : Text;
        ward : Text;
        medications : [Text];
        forms : [Form.FormData];
    };

    // Define the patient actor
    actor class PatientRegistry {

        var patients : [PatientInfo] = [];

        // Function to add a patient
        public func addPatient(name : Text, ward : Text) : async PatientInfo {
            let patientId = Array.length(patients) + 1;
            let newPatient : PatientInfo = {
                id = patientId;
                name = name;
                ward = ward;
                medications = [];
                forms = [];
            };
            patients := patients ++ [newPatient];
            return newPatient;
        };

        // Function to get patient information by patient ID
        public func getPatientById(patientId : Nat) : async PatientInfo {
            if (patientId > 0 and patientId <= Array.length(patients)) {
                return patients[patientId - 1];
            } else {
                // Return an error or handle accordingly
                assert (false, "Invalid patient ID");
            };
        };

        // Function to get all patients
        public func getAllPatients() : async [PatientInfo] {
            return patients;
        };

        // Function to add medication for a patient
        public func addMedication(patientId : Nat, medication : Text) : async PatientInfo {
            let patient = await getPatientById(patientId);
            patient.medications := patient.medications ++ [medication];
            return patient;
        };

        // Function to submit a form for a patient
        public func submitForm(patientId : Nat, formData : Form.FormData) : async PatientInfo {
            let patient = await getPatientById(patientId);
            patient.forms := patient;
        };
        public func getAllMedications(patientId : Nat) : async [Text] {
            let patient = await getPatientById(patientId);
            return patient.medications;
        };

        // Function to get all forms for a patient
        public func getAllForms(patientId : Nat) : async [Form.FormData] {
            let patient = await getPatientById(patientId);
            return patient.forms;
        };
    };
};
