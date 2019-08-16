/*

My Custom JS
============
*/
$(function () {
  $('#datepicker1').datetimepicker({
    format: 'DD/MM/YYYY'
  });
  $('#datepicker2').datetimepicker({
    format: 'DD/MM/YYYY'
  });
});

$('select[multiple]').multiselect({
    columns: 2,
    placeholder: 'Select'
});