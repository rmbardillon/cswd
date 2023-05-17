$(document).ready(function() {
   $("#applicationTypeModal").modal("show"); 
});

// Forms Validation
const forms = document.querySelectorAll("form");
forms.forEach(function(form) {
    form.addEventListener('submit', e => {
        if (!form.checkValidity()) {
            e.preventDefault();
        }
        form.classList.add('was-validated');
    });
});

$(document).on('keyup change', 'input[type="text"]', function() {
    $(this).val($(this).val().toUpperCase());
});

$(document).on('keypress', '.numbers', function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        return false;
    }
});

$(document).on('paste', '.numbers', function(e) {
    e.preventDefault();
});

$(document).on('keyup', '.telephone', function() {
    if ($(this).val().length > 11) {
        $(this).val($(this).val().substring(0, 11));
    }
});

// World Time API
function getDataFromAPI() {
    return $.getJSON('https://worldtimeapi.org/api/ip');
}
