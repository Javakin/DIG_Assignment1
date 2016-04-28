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
static const char *ng0 = "D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Lach_Time_Lap/TEST_latch2.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2129064804_2372691052_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 3792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6868U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB8;

LAB9:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(120, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(4U, t9, 0);
    goto LAB9;

LAB10:    goto LAB2;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

}


extern void work_a_2129064804_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2129064804_2372691052_p_0};
	xsi_register_didat("work_a_2129064804_2372691052", "isim/TEST_latch2_isim_beh.exe.sim/work/a_2129064804_2372691052.didat");
	xsi_register_executes(pe);
}
