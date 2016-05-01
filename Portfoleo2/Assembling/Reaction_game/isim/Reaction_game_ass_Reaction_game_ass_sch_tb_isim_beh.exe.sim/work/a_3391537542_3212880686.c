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
static const char *ng0 = "D:/Git/DIG_Assignment1/Portfoleo2/Assembling/Reaction_game/Time_Lap_Lach.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3391537542_3212880686_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char t18[16];
    char t29[16];
    char t34[16];
    char t39[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)3, 16U);
    t6 = (t0 + 5568);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 8892U);
    t9 = (t0 + 8876U);
    t2 = xsi_base_array_concat(t2, t11, t7, (char)97, t5, t8, (char)97, t6, t9, (char)101);
    t10 = (t0 + 1672U);
    t12 = *((char **)t10);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 8860U);
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t2, t11, (char)97, t12, t15, (char)101);
    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t19 = ((IEEE_P_2592010699) + 4024);
    t20 = (t0 + 8844U);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t10, t13, (char)97, t17, t20, (char)101);
    t21 = (4U + 4U);
    t22 = (t21 + 4U);
    t23 = (t22 + 4U);
    t4 = (16U != t23);
    if (t4 == 1)
        goto LAB7;

LAB8:    t24 = (t0 + 5632);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t16, 16U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 8892U);
    t9 = (t0 + 8876U);
    t1 = xsi_base_array_concat(t1, t11, t7, (char)97, t5, t8, (char)97, t6, t9, (char)101);
    t10 = (t0 + 1672U);
    t12 = *((char **)t10);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 8860U);
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t1, t11, (char)97, t12, t15, (char)101);
    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t19 = ((IEEE_P_2592010699) + 4024);
    t20 = (t0 + 8844U);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t10, t13, (char)97, t17, t20, (char)101);
    t21 = (4U + 4U);
    t22 = (t21 + 4U);
    t23 = (t22 + 4U);
    t24 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_vhdl_greater(t24, t2, 16U, t16, t23);
    if (t3 != 0)
        goto LAB9;

LAB11:
LAB10:    goto LAB3;

LAB7:    xsi_size_not_matching(16U, t23, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(77, ng0);
    t25 = (t0 + 1992U);
    t26 = *((char **)t25);
    t25 = (t0 + 1832U);
    t27 = *((char **)t25);
    t28 = ((IEEE_P_2592010699) + 4024);
    t30 = (t0 + 8892U);
    t31 = (t0 + 8876U);
    t25 = xsi_base_array_concat(t25, t29, t28, (char)97, t26, t30, (char)97, t27, t31, (char)101);
    t32 = (t0 + 1672U);
    t33 = *((char **)t32);
    t35 = ((IEEE_P_2592010699) + 4024);
    t36 = (t0 + 8860U);
    t32 = xsi_base_array_concat(t32, t34, t35, (char)97, t25, t29, (char)97, t33, t36, (char)101);
    t37 = (t0 + 1512U);
    t38 = *((char **)t37);
    t40 = ((IEEE_P_2592010699) + 4024);
    t41 = (t0 + 8844U);
    t37 = xsi_base_array_concat(t37, t39, t40, (char)97, t32, t34, (char)97, t38, t41, (char)101);
    t42 = (4U + 4U);
    t43 = (t42 + 4U);
    t44 = (t43 + 4U);
    t4 = (16U != t44);
    if (t4 == 1)
        goto LAB12;

LAB13:    t45 = (t0 + 5568);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t37, 16U);
    xsi_driver_first_trans_fast(t45);
    goto LAB10;

LAB12:    xsi_size_not_matching(16U, t44, 0);
    goto LAB13;

}

static void work_a_3391537542_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB5;

LAB6:
LAB7:    t27 = (t0 + 1512U);
    t28 = *((char **)t27);
    t27 = (t0 + 5696);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t33 = (t0 + 5440);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (15 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 5696);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t14 = (t0 + 2792U);
    t18 = *((char **)t14);
    t19 = (15 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t14 = (t18 + t21);
    t22 = (t0 + 5696);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3391537542_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB5;

LAB6:
LAB7:    t27 = (t0 + 1672U);
    t28 = *((char **)t27);
    t27 = (t0 + 5760);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t33 = (t0 + 5456);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (15 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 5760);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t14 = (t0 + 2792U);
    t18 = *((char **)t14);
    t19 = (15 - 7);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t14 = (t18 + t21);
    t22 = (t0 + 5760);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3391537542_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB5;

LAB6:
LAB7:    t27 = (t0 + 1832U);
    t28 = *((char **)t27);
    t27 = (t0 + 5824);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t33 = (t0 + 5472);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (15 - 11);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 5824);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t14 = (t0 + 2792U);
    t18 = *((char **)t14);
    t19 = (15 - 11);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t14 = (t18 + t21);
    t22 = (t0 + 5824);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3391537542_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB5;

LAB6:
LAB7:    t27 = (t0 + 1992U);
    t28 = *((char **)t27);
    t27 = (t0 + 5888);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t33 = (t0 + 5488);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t6 = (15 - 15);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 5888);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t14 = (t0 + 2792U);
    t18 = *((char **)t14);
    t19 = (15 - 15);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t14 = (t18 + t21);
    t22 = (t0 + 5888);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_3391537542_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3391537542_3212880686_p_0,(void *)work_a_3391537542_3212880686_p_1,(void *)work_a_3391537542_3212880686_p_2,(void *)work_a_3391537542_3212880686_p_3,(void *)work_a_3391537542_3212880686_p_4};
	xsi_register_didat("work_a_3391537542_3212880686", "isim/Reaction_game_ass_Reaction_game_ass_sch_tb_isim_beh.exe.sim/work/a_3391537542_3212880686.didat");
	xsi_register_executes(pe);
}
