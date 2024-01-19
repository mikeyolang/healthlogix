// admin.mo

import Patient "patient";

module Admin {

  // Define the Admin record type
  public type AdminInfo = {
    id: Nat;
  };

  // Define the admin actor
  actor class AdminRegistry {

    var admins : [AdminInfo] = [];

    // Function to add an admin
    public func addAdmin() : async AdminInfo {
      let adminId = Array.length(admins) + 1;
      let newAdmin : AdminInfo = { id = adminId };
      admins := admins ++ [newAdmin];
      return newAdmin;
    };

    // Function to log in as an admin
    public func login() : async AdminInfo {
      if (Array.length(admins) > 0) {
        return admins[0];
      } else {
        return await addAdmin();
      }
    };

    // Function to access the admin dashboard
    public func accessDashboard(adminId: Nat) : async Text {
      return "Admin Dashboard - Welcome!";
    };
  };
};

// Import other modules

