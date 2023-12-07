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