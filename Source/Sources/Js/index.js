function cambiarIMG(sec){
    if(sec == 'back'){
        if(num == 1){num = 5
        }else{num -= 1
        }
    }else if (sec == 'sig'){
        if(num == 5){num = 1
        }else{num += 1
        }
    }
    let figura = document.getElementById("cambiarImg");
    switch (num) {
        case 1:
            figura.src = "Img/innovacion-salud.jpg"
            break;
        case 2:
            figura.src = "Img/csm_nuevas_tecnologias_sistemas_salud_ac770f142a.jpg"
            break;
        case 3:
            figura.src = "Img/Imagen-Medica-Actualpacs-900x480.jpg"
            break;
        case 4:
            figura.src = "Img/Imagen-Medica-Actualpcs-900x480.jpg"
            break;
        case 5:
            figura.src = "Img/AI-data-image.jpg"
            break;
    }
}
num = 1;