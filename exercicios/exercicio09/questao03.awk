{
	a = $NF
	split(a, v, "@")
	printf "%s@alu.ufc.br\n", v[1];

}