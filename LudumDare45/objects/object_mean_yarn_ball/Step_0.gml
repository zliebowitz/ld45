/// @description Insert description here
// You can write your code in this editor
deltaX = object_kitten.x - x;
deltaY = object_kitten.y - y;
distance = sqrt(deltaX * deltaX + deltaY * deltaY);

if (distance < 75.0)
{
	if (!place_free(yarnX, yarnY + yAcceleration))
	{
		yVelocity = -4.0;
	}
	
	image_index = 2;
}
else if (distance < 150.0)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if (object_kitten.x < yarnX && !place_free(yarnX, yarnY + yAcceleration))
{
	image_xscale = 1.0;
}
else if (!place_free(yarnX, yarnY + yAcceleration))
{
	image_xscale = -1.0;
}

if (place_meeting(yarnX + xVelocity, yarnY + yVelocity, object_kitten))
{
	decrement_health(object_kitten);
}

if (image_index == 2 && place_free(yarnX, yarnY + yVelocity))
{
	if (image_xscale = 1.0)
	{
		if (place_free(yarnX - xVelocity, yarnY))
		{
			yarnX -= xVelocity;
			xVelocity = min(xVelocity + xAcceleration, maxXVelocity);
		}
		else
		{
			xVelocity = 0.0;
		}
	}
	else
	{
		if (place_free(yarnX + xVelocity, yarnY))
		{
			yarnX += xVelocity;
			xVelocity = min(xVelocity + xAcceleration, maxXVelocity);
		}
		else
		{
			xVelocity = 0.0;
		}
	}
}
else
{
	xVelocity = 0.0;
}

if (place_free(yarnX, yarnY + yVelocity))
{
	yarnY += yVelocity;
	yVelocity = min(yVelocity + yAcceleration, maxYVelocity);
}
else
{
	yVelocity = 0.0;
}

x = floor(yarnX);
y = floor(yarnY);