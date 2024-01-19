
// form.mo

import Nurse "nurse";
import Admin "admin";

module Form {

  // Define the Form record type
  public type FormData = {
    id: Nat;
    // Define form fields as needed
    // Example: field1: Text;
    //          field2: Nat;
  };

  // Define the form actor
  actor class FormRegistry {

    var forms : [FormData] = [];

    // Function to submit a form
    public func submitForm(formData: FormData) : async FormData {
      let formId = Array.length(forms) + 1;
      let newForm : FormData = { id = formId } ++ formData;
      forms := forms ++ [newForm];
      return newForm;
    };

    // Function to get submitted forms by form ID
    public func getFormById(formId: Nat) : async FormData {
      if (formId > 0 and formId <= Array.length(forms)) {
        return forms[formId - 1];
      } else {
        // Return an error or handle accordingly
        assert(false, "Invalid form ID");
      }
    };

    // Function to get all submitted forms
    public func getAllForms() : async [FormData] {
      return forms;
    };
  };
};

// Import other modules
import Nurse "nurse";
import Admin "admin";
