# Retirou os :, deixando arquivo inadequado para o sistema.
BEGIN {
	FS=":"
}
sub("/home/alunos", "/srv/students", $6)
{
	print > "passwd.new"
}
