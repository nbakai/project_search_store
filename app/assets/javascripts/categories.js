$(document).on('ready turbolinks:load', function(){
    $('#q').keyup(function(){
        if($(this).val().length > 1){
            $.ajax({
                type: 'GET',
                url: '/',
                data: {q: $(this).val()},
                dataType: 'script'
            });

        }else {
            $.ajax({
                type: 'GET',
                url: '/',
                dataType: 'script'
            })
        }
    })
})