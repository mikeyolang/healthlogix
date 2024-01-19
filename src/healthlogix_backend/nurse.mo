// nurse.mo

import Patient "patient";
import Admin "admin";
import Form "form";

module Nurse {

  // Define the Nurse record type
  public type NurseInfo = {
    id: Nat;
    hospital: Text;
  };

  // Define the nurse actor
  actor class NurseRegistry {

    var nurses : [NurseInfo] = [];

    // Function to add a nurse
    public func addNurse(nurseNumber: Text, hospital: Text) : async NurseInfo {
      let nurseId = Array.length(nurses) + 1;
      let newNurse : NurseInfo = { id = nurseId; hospital = hospital };
      nurses := nurses ++ [newNurse];
      return newNurse;
    };

    // Function to get nurse information by nurse ID
    public func getNurseById(nurseId: Nat) : async NurseInfo {
      if (nurseId > 0 and nurseId <= Array.length(nurses)) {
        return nurses[nurseId - 1];
      } else {
        // Return an error or handle accordingly
        assert(false, "Invalid nurse ID");
      }
    };

    // Function to log in a nurse
    public func login(nurseNumber: Text, hospital: Text) : async NurseInfo {
    let existingNurse = Array.find(func(nurse) : Bool {
        return nurse.id == Nat.fromText(nurseNumber);
      }, nurses);

      if (existingNurse != null) {
        return existingNurse;
      } else {
        return await addNurse(nurseNumber, hospital);
      }
    };

    // Function to get assigned patients for a nurse
    public func getAssignedPatients(nurseId: Nat) : async [Patient.PatientInfo] {
      // Implement logic to fetch patients assigned to a nurse
      return await Patient.getAllPatients();
    };
  };
};

// Import other modules
// import Patient "patient";
// import Admin "admin";
// import Form "form";
