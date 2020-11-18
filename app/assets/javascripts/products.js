document.addEventListener("turbolinks:load", function(){
    document.querySelector("#add_to_cart").addEventListener("click", function(e){
        console.log(e.target.dataset);
    })
});