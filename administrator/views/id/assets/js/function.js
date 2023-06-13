$("#print_button").click(function(){
    $("body > *").not("#id").hide();
    window.print();
    $("body > *").show();
});

