/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Git/DIG_Assignment1/Projeckt/Komponenter/Lach_Time_Lap/TEST_Lach.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1540059012_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3784);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1540059012_2372691052_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int64 t15;

LAB0:    t1 = (t0 + 3400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 6332U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t2, 1);
    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (4U != t8);
    if (t9 == 1)
        goto LAB4;

LAB5:    t10 = (t0 + 3848);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6348U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t2, 1);
    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (8U != t8);
    if (t9 == 1)
        goto LAB6;

LAB7:    t10 = (t0 + 3912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6364U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t2, 1);
    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (8U != t8);
    if (t9 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 3976);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(106, ng0);
    t15 = (10 * 1000LL);
    t2 = (t0 + 3208);
    xsi_process_wait(t2, t15);

LAB12:    *((char **)t1) = &&LAB13;

LAB1:    return;
LAB4:    xsi_size_not_matching(4U, t8, 0);
    goto LAB5;

LAB6:    xsi_size_not_matching(8U, t8, 0);
    goto LAB7;

LAB8:    xsi_size_not_matching(8U, t8, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(108, ng0);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB14:    goto LAB2;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_1540059012_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1540059012_2372691052_p_0,(void *)work_a_1540059012_2372691052_p_1};
	xsi_register_didat("work_a_1540059012_2372691052", "isim/TEST_Lach_isim_beh.exe.sim/work/a_1540059012_2372691052.didat");
	xsi_register_executes(pe);
}
