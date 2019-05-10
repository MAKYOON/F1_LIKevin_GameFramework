unit ball; 

interface

uses GameObj,Vect;

type balle=record
	obj : GameObject;
	couleur : integer;
	velocite : integer;
end;

function getBallObj (ball : balle) : GameObject;
function getBallColor (ball : balle) : integer;
function getBallVelocity (ball : balle) : integer;
procedure setBallObj (var ball : balle; objTemp : GameObject);
procedure setBallColor (var ball : balle; colorTemp : integer);
procedure setBallVelocity (var ball : balle; velociteTemp : integer);


implementation

function getBallObj (ball : balle) : GameObject;
begin
	getBallObj := ball.obj;
end;

function getBallColor (ball : balle) : integer;
begin
	getBallColor := ball.couleur;
end;

function getBallVelocity (ball : balle) : integer;
begin
	getBallVelocity := ball.velocite;
end;

procedure setBallObj (var ball : balle; objTemp : GameObject);
begin
	ball.obj := objTemp;
end;

procedure setBallColor (var ball : balle; colorTemp : integer);
begin
	ball.couleur := colorTemp;
end;

procedure setBallVelocity (var ball : balle; velociteTemp : integer);
begin
	ball.velocite := velociteTemp;
end;


end.


