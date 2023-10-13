"use strict";

function hodiny() {
  const date = new Date();
  const hod = date.getHours();
  const min = date.getMinutes();
  let hodiny;

  if (min < 10) {
    hodiny = hod + ':' + "0" + min;
  }
  else {
    hodiny = hod + ':' + min;
  }
  if (hod < 10) {
    hodiny = "0" + hodiny;
  }
  document.getElementById('hodiny').innerHTML = hodiny;
}

window.setInterval(hodiny, 10000);
hodiny();
