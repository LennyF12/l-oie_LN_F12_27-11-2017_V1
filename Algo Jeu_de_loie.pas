
program jeu_de_loie;

uses crt;

//BUT:Faire une jeu de l'oie
//ENTREE:Jet
//Sortie:Position
CONST
	 MORT=58;
	 FIN=66;
	 MULTIPLE=9;


VAR
	pos,jet:INTEGER;

BEGIN

	pos:=0;
	jet:=0;

	REPEAT
		clrscr;
		writeln (pos);

		REPEAT
			BEGIN
				writeln ('Entrez la valeur de votre jet');
				readln (jet);
			END;
		UNTIL (jet>=2) AND (jet<=12);

			pos:=pos+jet;
		IF (pos MOD MULTIPLE = 0) AND (pos< FIN-MULTIPLE) THEN

		pos:=pos+jet;

		IF pos> FIN THEN
			pos:=FIN-(pos-FIN);

		IF pos=MORT THEN

			BEGIN	
				writeln ('Pas de chance tu recommences');
				pos:=0
			END;
		readln();
	UNTIL (pos=FIN);
	
	writeln ('Victoire');
	readln()

END.
