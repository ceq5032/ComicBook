document.addEventListener('DOMContentLoaded', function () {
    var headerImage = document.querySelector('.header-image');

    window.addEventListener('scroll', function () {
        // Add a class to hide the header image when scrolling down
        if (window.scrollY > 50) {
            headerImage.classList.add('hidden');
        } else {
            headerImage.classList.remove('hidden');
        }
    });
});


var mybutton = document.getElementById("myBtn");
var scrollDelay = 500; 

window.onscroll = function () {
    scrollFunction();
};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        
        setTimeout(function () {
            mybutton.style.display = "block";
        }, scrollDelay);
    } else {
        mybutton.style.display = "none";
    }
}

function topFunction() {
    
    document.body.scrollTop = 0; 
    document.documentElement.scrollTop = 0; 
    mybutton.style.display = "none"; 
}