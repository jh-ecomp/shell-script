BEGIN{
	soma = 0
}
$NF ~ /@gmail.com$/ {
	soma = soma + 1;
}
END{
	printf "A quantidade de alunos com o email no dominio @gmail.com é: %d", soma
}