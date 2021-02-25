$1 != "NOME"{
	PROFESSOR = $1
    CURSO = $2
    SALARIO = $3

    PROFESSORES[PROFESSOR] = SALARIO

    if(CURSOS[CURSO] == ""){
        CURSOS[CURSO] = PROFESSOR
    }else{ 
        if(PROFESSORES[CURSOS[CURSO]] < SALARIO){
            CURSOS[CURSO] = PROFESSOR
        }
    }
}
END {
    for (CURSO in CURSOS){
        printf "%s: %s, %d\n", CURSO, CURSOS[CURSO], PROFESSORES[CURSOS[CURSO]]
    }
}