"use strict"; //bezpečnější js  (...hm, používá to vůbec i někdo jiný kromě mě?)

function rndmbg() {
  const rndmnum = Math.floor(Math.random()*7); // a nyní je vše ponecháno náhodě: 0-6
  const list = ["url('obrazky/BG_0.png')",
                "url('obrazky/BG_1.png')",
                "url('obrazky/BG_2.png')",
                "url('obrazky/BG_3.png')",
                "url('obrazky/BG_4.png')",
                "url('obrazky/BG_5.png')",
                "url('obrazky/BG_6.png')"];
  document.getElementById("bg").style.backgroundImage=list[rndmnum];
}

window.setInterval(rndmbg, 15000); //15s a změna aby to nebylo tak nudné
rndmbg();
//todo: css animace - nějaký přechod
