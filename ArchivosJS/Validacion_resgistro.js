function mostrarCampos(radio) {
  var campos_persona = document.getElementById("campos_personas");
  var campos_empresa = document.getElementById("campos_empresa");

  if (radio.value === "Personas") {
    campos_persona.style.display = "flex";
    campos_empresa.style.display = "none";
  } else {
    campos_persona.style.display = "none";
    campos_empresa.style.display = "flex";
  }
}


