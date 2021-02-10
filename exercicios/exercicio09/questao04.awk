BEGIN {
    soma = 0
}

FNR > 1 && $2 > 5000 {
    soma = soma + $2
}

END {
    print soma
}