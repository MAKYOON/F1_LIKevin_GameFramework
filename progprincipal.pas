program Game;


uses ball,Vect,GameObj,crt;

var 
	scalaire: integer;
	u,v,w: Vect2D;

BEGIN
	clrscr;
	//TEST DE l'UNIT VECT2D

	//TEST DES ASSESSEURS ET MUTATEURS GET/SET
	u.posx := 4; //soit u un vecteur (4)...
	u.posy := 2;// ...               (2)
	v.posx := 5;//soit v un vecteur (5)...
	v.posy := 7;// ...              (7)
	w.posx := getVectPosX(u); //on test la fonction getVectPosX, résultat attendu ici : 4
	w.posy := getVectPosY(u); //on test la fonction getVectPosY, résultat attendu ici : 2
	writeln('Position X du vecteur u : ', w.posx);
	writeln('Position Y du vecteur u : ', w.posy);
	setVectPosX(u,3);//on test la procédure setVectPosX en mettant u.posx à 3
	setVectPosY(u,1);//on test la procédure setVectPosY en mettant u.posy à 1
	writeln('Position X du vecteur u apres changement : ', u.posx); //on vérifie que le changement à eu lieu. résultat attendu : 3
	writeln('Position Y du vecteur u apres changement : ', u.posy);//on vérifie que le changement à eu lieu. résultat attendu : 1

	//MAINTENANT TEST DES OPERATIONS USUELLES SUR LES VECTEURS

	//ADDITION VECTORIELLE
	w := additionVect(u,v); //test de la fonction additionVect. u(3,1) et v(5,7)
    writeln('Soit w = u+v, on a w.posx : ', w.posx , ' et w.posy ' , w.posy);

	//SOUSTRACTION VECTORIELLE
	w := soustractionVect(u,v); //test de la fonction soustractionVect. u(3,1) et v(5,7)
    writeln('Soit w = u-v, on a w.posx : ', w.posx , ' et w.posy ' , w.posy);	

    //MULTIPLICATION D'UN VECTEUR PAR UN SCALAIRE
    v := mult1VectScal(3,u);//test de la fonction mult1VectScal. u(3,1)
    writeln('Soit v = 3u, on a v.posx : ', v.posx , ' et v.posy ' , v.posy);

    //PRODUIT SCALAIRE
    scalaire := prodScalaire(u,v);//test de la fonction prodScalaire. u : (3,1) et v : (9,3)
    writeln('Soit u(x1,y1) et v(x2,y2) on a u.v = x1y1 + x2y2, donc u.v = ', scalaire);

    //PRODUIT VECTORIEL
    scalaire := prodVectoriel(u,v);//test de la fonction prodVectoriel. u : (3,1) et v : (9,3)
    writeln('Soit u(x1,y1) et v(x2,y2) on a u*v = x1y2 - x2y1, donc u*v =  ', scalaire);

readln;
END.
