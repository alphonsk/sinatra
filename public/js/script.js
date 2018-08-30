 

$(document).ready(() => {

    // $('.column1').on('click', ( )=> {
    //     $('.columnText1').show();
    //     $('.column1').hide();
    // });

    $('.menu').on('click', ()=> {
        $('.menuContent').toggle();
       
    });

     $('.homeMenu').on('click', ()=> {
        $('.menuContent').toggle();
       
    });

     $('.whatwedoMenu').on('click', ()=> {
        $('.menuContent').toggle();
       
    });

     $('.contactusMenu').on('click', ()=> {
        $('contuctus.erb').toggle();
       
    });

    $('.faqMenu').on('click', ()=> {
        $('.menuContent').toggle();
       
    });
 

})

function myFunction(imgs) {
    var expandImg = document.getElementById("expandedImg");
    var imgText = document.getElementById("imgtext");
    expandImg.src = imgs.src;
    imgText.innerHTML = imgs.alt;
    expandImg.parentElement.style.display = "block";
}
