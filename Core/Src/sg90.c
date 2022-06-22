#include "sg90.h"

int SG90_set_ref(int angle)
{
	if(angle >= 0 && angle <= 180)
	{
		TIM14->CCR1 = 500 + angle * 1900 / 180;
		return 1;
	}
	return 0;
}

void SG90_start()
{
	HAL_TIM_PWM_Start(&htim14, TIM_CHANNEL_1);
}

void SG90_stop()
{
	HAL_TIM_PWM_Stop(&htim14, TIM_CHANNEL_1);
}

void rise()
{
	SG90_start();

	for(int ang = 1; ang != 180; ang++)
	{
		SG90_set_ref(ang);
		HAL_Delay(25);
	}

	SG90_stop();
}

void lower()
{
	SG90_start();

	for(int ang = 179; ang != 0; ang--)
	{
		SG90_set_ref(ang);
		HAL_Delay(25);
	}

	SG90_stop();
}
