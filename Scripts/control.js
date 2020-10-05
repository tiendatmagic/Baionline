var mainshopping = document.getElementById("MainContent_ShoppingCartTitle");
var pay = document.getElementsByClassName("btn-pay")[0];
if (mainshopping.innerHTML === "Giỏ hàng rỗng") {
    pay.style.display = 'none';
}

else {
    pay.style.display = 'inline-block';
}

document.getElementsByClassName("btn-pay")[0].addEventListener("click", function () {
    document.getElementsByClassName("cart")[0].style.display = 'block';

});

function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("cardd");
    li = ul.getElementsByTagName("div");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("h5")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}