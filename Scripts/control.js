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
    var input, filter, cardd, div, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    cardd = document.getElementById("cardd");
    div = cardd.getElementsByTagName("div");
    for (i = 0; i < div.length; i++) {
        a = div[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            div[i].style.display = "";
        } else {
            div[i].style.display = "none";
        }
    }
}