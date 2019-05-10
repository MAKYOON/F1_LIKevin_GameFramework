unit Vect;

interface

type Vect2D = record
	posx : integer;
	posy : integer;
end;

function getVectPosX (vecteur : Vect2D) : integer; //retourne la position X d'un vecteur
function getVectPosY (vecteur : Vect2D) : integer; //retourne la position Y d'un vecteur
procedure setVectPosX (var vecteur : Vect2D; xTemp : integer); //permet de modifier la position X d'un vecteur
procedure setVectPosY (var vecteur : Vect2D; yTemp : integer);//permet de modifier la position Y d'un vecteur
function additionVect (vecteur1, vecteur2 : Vect2D) : Vect2D; // addition de deux vecteurs
function soustractionVect (vecteur1, vecteur2 : Vect2D) : Vect2D; //soustraction de deux vecteurs
function mult1VectScal (scalaire : integer; vecteur : Vect2D) : Vect2D; //multiplication d'un vecteur par un scalaire
function prodScalaire (vecteur1,vecteur2 : Vect2D) : integer; //produit scalaire
function prodVectoriel (vecteur1,vecteur2 : Vect2D) : Vect2D; //produit vectoriel

implementation

function getVectPosX (vecteur : Vect2D) : integer;
begin
	getVectPosX := vecteur.posx;
end;

function getVectPosY (vecteur : Vect2D) : integer;
begin
	getVectPosY := vecteur.posy;
end;

procedure setVectPosX (var vecteur : Vect2D; xTemp : integer); 
begin
	vecteur.posx := xTemp;
end;

procedure setVectPosY (var vecteur : Vect2D; yTemp : integer);
begin
	vecteur.posy := yTemp;
end;

function additionVect (vecteur1, vecteur2 : Vect2D) : Vect2D;
begin
	additionVect.posx := vecteur1.posx + vecteur2.posx ;
	additionVect.posy := vecteur1.posy + vecteur2.posy ;
end;

function soustractionVect (vecteur1, vecteur2 : Vect2D) : Vect2D;
begin
	soustractionVect.posx := vecteur1.posx - (vecteur2.posx);
	soustractionVect.posy := vecteur1.posy - (vecteur2.posy);
end;

function mult1VectScal (scalaire : integer; vecteur : Vect2D) : Vect2D;
begin
	mult1VectScal.posx := scalaire*vecteur.posx;
	mult1VectScal.posy := scalaire*vecteur.posy;
end;

function prodScalaire (vecteur1,vecteur2 : Vect2D) : integer;
begin
	prodScalaire := vecteur1.posx*vecteur2.posx + vecteur1.posy*vecteur2.posy;
end;

function prodVectoriel (vecteur1,vecteur2 : Vect2D) : Vect2D;
begin
	prodVectoriel.posx := vecteur1.posy-vecteur2.posy;
	prodVectoriel.posy := vecteur2.posx-vecteur1.posx;
end;


end.