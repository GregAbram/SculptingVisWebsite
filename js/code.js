
var current_bibtex = "";

function popup_bibtex(id) {
  if (current_bibtex != "") popdown(current_bibtex);
  e = document.getElementById(id);
  if (e) { e.style.visibility = "visible"; current_bibtex = id; }
}

function popdown_bibtex(id) {
  e = document.getElementById(id);
  if (e) { e.style.visibility = "hidden"; current_bibtex = ""; }
}
