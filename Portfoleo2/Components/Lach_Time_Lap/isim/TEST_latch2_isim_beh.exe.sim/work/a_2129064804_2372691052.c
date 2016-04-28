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
    t2 = (t0 + 6984U);
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
    xsi_set_current_line(119, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(4U, t9, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6984U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(121, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB14:    xsi_size_not_matching(4U, t9, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6984U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB20;

LAB21:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(123, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_size_not_matching(4U, t9, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6984U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB26;

LAB27:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(125, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    xsi_size_not_matching(4U, t9, 0);
    goto LAB27;

LAB28:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6984U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB32;

LAB33:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(127, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_size_not_matching(4U, t9, 0);
    goto LAB33;

LAB34:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6984U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t4, t5, t2, 1);
    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB38;

LAB39:    t11 = (t0 + 4176);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(129, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    xsi_size_not_matching(4U, t9, 0);
    goto LAB39;

LAB40:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4240);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);
    t3 = (2 * 1000000000LL);
    t2 = (t0 + 3600);
    xsi_process_wait(t2, t3);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 4240);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_2129064804_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2129064804_2372691052_p_0};
	xsi_register_didat("work_a_2129064804_2372691052", "isim/TEST_latch2_isim_beh.exe.sim/work/a_2129064804_2372691052.didat");
	xsi_register_executes(pe);
}
