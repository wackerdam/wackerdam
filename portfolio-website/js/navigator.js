navigator.js
var prevScrollpos = window.scrollY;
window.onscroll = function() {
    var currentScrollPos = window.scrollY;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("site-nav1").style.top = "0";
    } else {
        document.getElementById("site-nav1").style.top = "-100px"; /* Adjust the value as needed */
    }
    prevScrollpos = currentScrollPos;
}