$1 != "NOME"{
	PROFESSOR = $1
    CURSO = $2
    SALARIO = $3

    SALARIOS[PROFESSOR] = SALARIO

    if(CURSOS[CURSO] == ""){
        CURSOS[CURSO] = PROFESSOR
    }
    else{ 
        if(SALARIOS[CURSOs[CURSO]] < SALARIO){
            CURSOS[CURSO] = PROFESSOR
        }
    }
}
END {
    for (CURSO in CURSOS){
        printf "%s: %s, %d\n", CURSO, CURSOS[CURSO], SALARIOS[CURSOS[CURSO]]
    }
}