
var current_bibtex = "";


function popdown_bibtex(id) {
  e = document.getElementById(id);
  if (e) { e.style.visibility = "hidden"; current_bibtex = ""; }
}

function popup_bibtex(id) {
  if (current_bibtex != "") popdown_bibtex(current_bibtex);
  e = document.getElementById(id);
  if (e) { e.style.visibility = "visible"; current_bibtex = id; }
}
