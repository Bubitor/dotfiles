"use strict";

function datum() {
  const date = new Date();
  const den = date.getDate();
  // welp..., právě jsem zjistil, že .getDate() vrátí hodnotu počtu dní v týdnu, resp. tak to zatím chápu...
  const mesic = date.getMonth() + 1; // ...a samozřejmě, že musí vždy začínat počítat od nuly - zlatá Lua, tam vše dává mnohem větší smysl
  const rok = String(date.getFullYear()).slice(-2); //pouze "23"
  let datum;

  if (mesic < 10) {
    datum = den + "-" + "0" + mesic + "-" + rok;
  }
  else {
    datum = den + "-" + mesic + "-" + rok;
  }
  if (den < 10) {
    datum = "0" + datum;
  }

  document.getElementById('datum').innerHTML = datum;
}

datum();
