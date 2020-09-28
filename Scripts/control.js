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