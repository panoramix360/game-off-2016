/// GenerateRandomLife(PositionStartX, PositionEndX, PositionStartY, PositionEndY, NumberToGenerate, oLife, Angle)
var PositionStartX = argument0;
var PositionEndX = argument1;
var PositionStartY = argument2;
var PositionEndY = argument3;
var NumberToGenerate = argument4;
var oLife = argument5;
var Angle = argument6;

for(var i = 0; i < NumberToGenerate; i += 1)
{
    var RandX = random_range(PositionStartX, PositionEndX);
    var RandY = random_range(PositionStartY, PositionEndY);
    var life = instance_create(RandX, RandY, oLife);
    with life
    {
        var Scale = (RandY * 1.5) / room_height;
        image_xscale = Scale;
        image_yscale = Scale;
        image_alpha = Scale;
        image_angle = Angle;
    }
}


