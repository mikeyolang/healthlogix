document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.getElementById('loginForm');
    const nurseForm = document.getElementById('nurseForm');
    const patientForm = document.getElementById('patientForm');
    const roleDropdown = document.getElementById('role');
  
    loginForm.addEventListener('submit', function (event) {
      event.preventDefault();
  
      const selectedRole = roleDropdown.value;
  
      if (selectedRole === 'nurse') {
        nurseForm.classList.remove('hidden');
        patientForm.classList.add('hidden');
      } else if (selectedRole === 'patient') {
        patientForm.classList.remove('hidden');
        nurseForm.classList.add('hidden');
      }
      // Handle admin login separately if needed
    });
  });