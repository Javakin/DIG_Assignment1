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
static const char *ng0 = "D:/Git/DIG_Portfoleo2/Portfoleo2/Components/Lach_Time_Lap/Time_Lap_Lach.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3391537542_3212880686_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char t18[16];
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
    char *t29;
    char *t30;

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
LAB3:    t1 = (t0 + 5672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)3, 16U);
    t6 = (t0 + 5832);
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
    t8 = (t0 + 9236U);
    t9 = (t0 + 9220U);
    t2 = xsi_base_array_concat(t2, t11, t7, (char)97, t5, t8, (char)97, t6, t9, (char)101);
    t10 = (t0 + 1672U);
    t12 = *((char **)t10);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 9204U);
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t2, t11, (char)97, t12, t15, (char)101);
    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t19 = ((IEEE_P_2592010699) + 4024);
    t20 = (t0 + 9188U);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t10, t13, (char)97, t17, t20, (char)101);
    t21 = (4U + 4U);
    t22 = (t21 + 4U);
    t23 = (t22 + 4U);
    t4 = (16U != t23);
    if (t4 == 1)
        goto LAB7;

LAB8:    t24 = (t0 + 5896);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t16, 16U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_vhdl_greater(t1, t2, 16U, t5, 16U);
    if (t3 != 0)
        goto LAB9;

LAB11:
LAB10:    goto LAB3;

LAB7:    xsi_size_not_matching(16U, t23, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(77, ng0);
    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t6 = (t0 + 1832U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t0 + 9236U);
    t12 = (t0 + 9220U);
    t6 = xsi_base_array_concat(t6, t11, t9, (char)97, t7, t10, (char)97, t8, t12, (char)101);
    t14 = (t0 + 1672U);
    t15 = *((char **)t14);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 9204U);
    t14 = xsi_base_array_concat(t14, t13, t16, (char)97, t6, t11, (char)97, t15, t17, (char)101);
    t19 = (t0 + 1512U);
    t20 = *((char **)t19);
    t24 = ((IEEE_P_2592010699) + 4024);
    t25 = (t0 + 9188U);
    t19 = xsi_base_array_concat(t19, t18, t24, (char)97, t14, t13, (char)97, t20, t25, (char)101);
    t21 = (4U + 4U);
    t22 = (t21 + 4U);
    t23 = (t22 + 4U);
    t4 = (16U != t23);
    if (t4 == 1)
        goto LAB12;

LAB13:    t26 = (t0 + 5832);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t19, 16U);
    xsi_driver_first_trans_fast(t26);
    goto LAB10;

LAB12:    xsi_size_not_matching(16U, t23, 0);
    goto LAB13;

}

static void work_a_3391537542_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;

LAB0:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5688);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

}

static void work_a_3391537542_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
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
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = *((unsigned char *)t29);
    t31 = (t30 == (unsigned char)3);
    if (t31 == 1)
        goto LAB12;

LAB13:    t27 = (unsigned char)0;

LAB14:    if (t27 != 0)
        goto LAB10;

LAB11:
LAB2:    t44 = (t0 + 5704);
    *((int *)t44) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 5960);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t11 = (t0 + 2952U);
    t18 = *((char **)t11);
    t19 = (15 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t11 = (t18 + t21);
    t22 = (t0 + 5960);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    t28 = (t0 + 2792U);
    t35 = *((char **)t28);
    t36 = (15 - 3);
    t37 = (t36 * 1U);
    t38 = (0 + t37);
    t28 = (t35 + t38);
    t39 = (t0 + 5960);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t28, 4U);
    xsi_driver_first_trans_fast_port(t39);
    goto LAB2;

LAB12:    t28 = (t0 + 1352U);
    t32 = *((char **)t28);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)2);
    t27 = t34;
    goto LAB14;

}

static void work_a_3391537542_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
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
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = *((unsigned char *)t29);
    t31 = (t30 == (unsigned char)3);
    if (t31 == 1)
        goto LAB12;

LAB13:    t27 = (unsigned char)0;

LAB14:    if (t27 != 0)
        goto LAB10;

LAB11:
LAB2:    t44 = (t0 + 5720);
    *((int *)t44) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6024);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t11 = (t0 + 2952U);
    t18 = *((char **)t11);
    t19 = (15 - 7);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t11 = (t18 + t21);
    t22 = (t0 + 6024);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    t28 = (t0 + 2792U);
    t35 = *((char **)t28);
    t36 = (15 - 7);
    t37 = (t36 * 1U);
    t38 = (0 + t37);
    t28 = (t35 + t38);
    t39 = (t0 + 6024);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t28, 4U);
    xsi_driver_first_trans_fast_port(t39);
    goto LAB2;

LAB12:    t28 = (t0 + 1352U);
    t32 = *((char **)t28);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)2);
    t27 = t34;
    goto LAB14;

}

static void work_a_3391537542_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
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
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = *((unsigned char *)t29);
    t31 = (t30 == (unsigned char)3);
    if (t31 == 1)
        goto LAB12;

LAB13:    t27 = (unsigned char)0;

LAB14:    if (t27 != 0)
        goto LAB10;

LAB11:
LAB2:    t44 = (t0 + 5736);
    *((int *)t44) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 6088);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t11 = (t0 + 2952U);
    t18 = *((char **)t11);
    t19 = (15 - 11);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t11 = (t18 + t21);
    t22 = (t0 + 6088);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    t28 = (t0 + 2792U);
    t35 = *((char **)t28);
    t36 = (15 - 11);
    t37 = (t36 * 1U);
    t38 = (0 + t37);
    t28 = (t35 + t38);
    t39 = (t0 + 6088);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t28, 4U);
    xsi_driver_first_trans_fast_port(t39);
    goto LAB2;

LAB12:    t28 = (t0 + 1352U);
    t32 = *((char **)t28);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)2);
    t27 = t34;
    goto LAB14;

}

static void work_a_3391537542_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
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
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = *((unsigned char *)t29);
    t31 = (t30 == (unsigned char)3);
    if (t31 == 1)
        goto LAB12;

LAB13:    t27 = (unsigned char)0;

LAB14:    if (t27 != 0)
        goto LAB10;

LAB11:
LAB2:    t44 = (t0 + 5752);
    *((int *)t44) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 6152);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t11 = (t0 + 2952U);
    t18 = *((char **)t11);
    t19 = (15 - 15);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t11 = (t18 + t21);
    t22 = (t0 + 6152);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    t28 = (t0 + 2792U);
    t35 = *((char **)t28);
    t36 = (15 - 15);
    t37 = (t36 * 1U);
    t38 = (0 + t37);
    t28 = (t35 + t38);
    t39 = (t0 + 6152);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t28, 4U);
    xsi_driver_first_trans_fast_port(t39);
    goto LAB2;

LAB12:    t28 = (t0 + 1352U);
    t32 = *((char **)t28);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)2);
    t27 = t34;
    goto LAB14;

}


extern void work_a_3391537542_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3391537542_3212880686_p_0,(void *)work_a_3391537542_3212880686_p_1,(void *)work_a_3391537542_3212880686_p_2,(void *)work_a_3391537542_3212880686_p_3,(void *)work_a_3391537542_3212880686_p_4,(void *)work_a_3391537542_3212880686_p_5};
	xsi_register_didat("work_a_3391537542_3212880686", "isim/TEST_latch2_isim_beh.exe.sim/work/a_3391537542_3212880686.didat");
	xsi_register_executes(pe);
}
