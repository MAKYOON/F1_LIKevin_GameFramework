program Game;


uses ball,Vect,GameObj,crt;

var 
	pong : balle;
	scalaire: integer;
	v,w: Vect2D;

BEGIN
	clrscr;
	//TEST DE l'UNIT VECT2D

	//TEST DES ASSESSEURS ET MUTATEURS GET/SET
	pong.obj.vecteur.posx := 4; //soit pong.obj.vecteur un vecteur (4)...
	pong.obj.vecteur.posy := 2;// ...               (2)
	v.posx := 5;//soit v un vecteur (5)...
	v.posy := 7;// ...              (7)
	w.posx := getVectPosX(pong.obj.vecteur); //on test la fonction getVectPosX
	w.posy := getVectPosY(pong.obj.vecteur); //on test la fonction getVectPosY
	writeln('Position X du vecteur pong.obj.vecteur : ', w.posx);
	writeln('Position Y du vecteur pong.obj.vecteur : ', w.posy);
	setVectPosX(pong.obj.vecteur,3);//on test la procédure setVectPosX en mettant pong.obj.vecteur.posx à 3
	setVectPosY(pong.obj.vecteur,1);//on test la procédure setVectPosY en mettant pong.obj.vecteur.posy à 1
	writeln('Position X du vecteur pong.obj.vecteur apres changement : ', pong.obj.vecteur.posx); //on vérifie que le changement à eu lieu.
	writeln('Position Y du vecteur pong.obj.vecteur apres changement : ', pong.obj.vecteur.posy);//on vérifie que le changement à eu lieu. 

	//MAINTENANT TEST DES OPERATIONS USUELLES SUR LES VECTEURS

	//ADDITION VECTORIELLE
	w := additionVect(pong.obj.vecteur,v); //test de la fonction additionVect. pong.obj.vecteur(3,1) et v(5,7)
    writeln('Soit w = pong.obj.vecteur+v, on a w.posx : ', w.posx , ' et w.posy ' , w.posy);

	//SOUSTRACTION VECTORIELLE
	w := soustractionVect(pong.obj.vecteur,v); //test de la fonction soustractionVect. pong.obj.vecteur(3,1) et v(5,7)
    writeln('Soit w = pong.obj.vecteur-v, on a w.posx : ', w.posx , ' et w.posy ' , w.posy);	

    //MULTIPLICATION D'UN VECTEUR PAR UN SCALAIRE
    v := mult1VectScal(3,pong.obj.vecteur);//test de la fonction mult1VectScal. pong.obj.vecteur(3,1)
    writeln('Soit v = 3pong.obj.vecteur, on a v.posx : ', v.posx , ' et v.posy ' , v.posy);

    //PRODUIT SCALAIRE
    scalaire := prodScalaire(pong.obj.vecteur,v);//test de la fonction prodScalaire. pong.obj.vecteur : (3,1) et v : (9,3)
    writeln('Soit pong.obj.vecteur(x1,y1) et v(x2,y2) on a pong.obj.vecteur.v = x1y1 + x2y2, donc pong.obj.vecteur.v = ', scalaire);

    //PRODUIT VECTORIEL
    scalaire := prodVectoriel(pong.obj.vecteur,v);//test de la fonction prodVectoriel. pong.obj.vecteur : (3,1) et v : (9,3)
    writeln('Soit pong.obj.vecteur(x1,y1) et v(x2,y2) on a pong.obj.vecteur*v = x1y2 - x2y1, donc pong.obj.vecteur*v =  ', scalaire);

readln;
END.
