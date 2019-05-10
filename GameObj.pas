unit GameObj;

interface

uses Vect;

type GameObject = record
	texture : integer;
	vecteur : Vect2D;
end;

function getObjTexture(objet : GameObject) : integer;
function getObjVecteur(objet : GameObject) : Vect2D;
procedure setObjTexture(var objet:GameObject; textureTemp : integer);
procedure setObjVecteur(var objet:GameObject; vecteurTemp : Vect2D);

implementation

function getObjTexture(objet : GameObject) : integer;
begin
	getObjTexture := objet.texture;
end;

function getObjVecteur(objet : GameObject) : Vect2D;
begin
	getObjVecteur := objet.vecteur;
end;

procedure setObjTexture(var objet:GameObject;textureTemp : integer);
begin
	objet.texture := textureTemp;
end;

procedure setObjVecteur(var objet:GameObject;vecteurTemp : Vect2D);
begin
	objet.vecteur := vecteurTemp;
end;

end.
