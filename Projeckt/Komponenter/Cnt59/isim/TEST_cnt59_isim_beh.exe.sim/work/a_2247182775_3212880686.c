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
static const char *ng0 = "D:/Git/DIG_Assignment1/Projeckt/Komponenter/Cnt59/Cnt59.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2247182775_3212880686_p_0(char *t0)
{
    char t1[16];
    char t5[16];
    char t10[16];
    char *t2;
    char *t3;
    int t4;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t4, 4);
    t6 = (t0 + 1832U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t5, t8, 4);
    t11 = ((IEEE_P_2592010699) + 4024);
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t2, t1, (char)97, t6, t5, (char)101);
    t12 = (t1 + 12U);
    t13 = *((unsigned int *)t12);
    t13 = (t13 * 1U);
    t14 = (t5 + 12U);
    t15 = *((unsigned int *)t14);
    t15 = (t15 * 1U);
    t16 = (t13 + t15);
    t17 = (8U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 3816);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t9, 8U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 3720);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t16, 0);
    goto LAB6;

}

static void work_a_2247182775_3212880686_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 == 5);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 3880);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 3736);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 3880);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    t3 = (t0 + 1032U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;
    goto LAB7;

LAB8:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 == 9);
    t2 = t9;
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_2247182775_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2247182775_3212880686_p_0,(void *)work_a_2247182775_3212880686_p_1};
	xsi_register_didat("work_a_2247182775_3212880686", "isim/TEST_cnt59_isim_beh.exe.sim/work/a_2247182775_3212880686.didat");
	xsi_register_executes(pe);
}
