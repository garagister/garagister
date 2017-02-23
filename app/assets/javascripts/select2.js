$(document).ready(function() {
  $(".select2").select2({
  theme: "bootstrap",
  placeholder: "Quoi ? (Vidange, révision...)",
  allowClear: true
});
  $(".select2_code_postal").select2({
  theme: "bootstrap",
  placeholder: "Où ?",
  allowClear: true
});

});


