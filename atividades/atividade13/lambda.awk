BEGIN{
    countAll=0
    countOut=0
    timeMSout=0
    soma=0
}

{
    if( $2 == "TraceId:"){
        countAll= countAll + 1;
        getline;
        if(NF > 4 && $(NF-3) == "out" ){
            countOut= countOut + 1;
        }else{
            getline;
            if(NF > 4 && $(NF-1) == "Elapsed:" ){
                getline;
            }
            getline;
            soma = soma + $7;
        }
    }
}

END{
    printf("1. Quantidade de acessos: %d\n",countAll)
    printf("2. invocações com sucesso: %d\n",countAll - countOut)
    printf("3. Quantidade de Falhas: %d\n",countOut)
    printf("4. Tempo médio das invocações com sucesso: %.2fms\n", (soma / (countAll - countOut)))
}