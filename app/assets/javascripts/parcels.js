function setFragile(checkbox) {
    var hidden = checkbox.parentNode.firstElementChild.nextElementSibling;
    hidden.value = $(checkbox).is(':checked') ? 1 : 0;
}

function remove(e, link) {
    e.preventDefault();
    let item = link.parentElement;
    item.remove();
}
