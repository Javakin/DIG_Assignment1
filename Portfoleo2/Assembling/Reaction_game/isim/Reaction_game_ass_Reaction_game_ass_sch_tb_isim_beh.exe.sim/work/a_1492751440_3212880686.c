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
static const char *ng0 = "D:/Git/DIG_Assignment1/Portfoleo2/Components/ToggleButton/ToggleButton.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1492751440_3212880686_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = (3 - 2);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 2;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 2);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t3, t13, (char)99, t10, (char)101);
    t17 = (3U + 1U);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 6176);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t17, 0);
    goto LAB6;

}

static void work_a_1492751440_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9973);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t13 = (t0 + 6240);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 6016);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 6240);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_1492751440_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9977);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t13 = (t0 + 6304);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 6032);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 6304);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_1492751440_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t3 = (t0 + 2608U);
    t5 = *((char **)t3);
    t6 = 1;
    if (3U == 3U)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 2728U);
    t4 = *((char **)t1);
    t2 = 1;
    if (3U == 3U)
        goto LAB19;

LAB20:    t2 = 0;

LAB21:    if (t2 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 2848U);
    t4 = *((char **)t1);
    t2 = 1;
    if (3U == 3U)
        goto LAB27;

LAB28:    t2 = 0;

LAB29:    if (t2 != 0)
        goto LAB25;

LAB26:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 2968U);
    t4 = *((char **)t1);
    t2 = 1;
    if (3U == 3U)
        goto LAB38;

LAB39:    t2 = 0;

LAB40:    if (t2 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t2 = 1;
    if (3U == 3U)
        goto LAB49;

LAB50:    t2 = 0;

LAB51:    if (t2 != 0)
        goto LAB47;

LAB48:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t2 = 1;
    if (3U == 3U)
        goto LAB57;

LAB58:    t2 = 0;

LAB59:    if (t2 != 0)
        goto LAB55;

LAB56:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t1 = (t0 + 6368);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(80, ng0);
    t9 = (t0 + 1992U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB6;

LAB8:    t7 = 0;

LAB11:    if (t7 < 3U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t3 = (t4 + t7);
    t8 = (t5 + t7);
    if (*((unsigned char *)t3) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t7 = (t7 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(81, ng0);
    t9 = (t0 + 2728U);
    t13 = *((char **)t9);
    t9 = (t0 + 6368);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 3U);
    xsi_driver_first_trans_fast(t9);
    goto LAB15;

LAB17:    xsi_set_current_line(86, ng0);
    t8 = (t0 + 2848U);
    t9 = *((char **)t8);
    t8 = (t0 + 6368);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB19:    t7 = 0;

LAB22:    if (t7 < 3U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB20;

LAB24:    t7 = (t7 + 1);
    goto LAB22;

LAB25:    xsi_set_current_line(90, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t6 = *((unsigned char *)t9);
    t11 = (t6 == (unsigned char)3);
    if (t11 != 0)
        goto LAB33;

LAB35:
LAB34:    goto LAB6;

LAB27:    t7 = 0;

LAB30:    if (t7 < 3U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB28;

LAB32:    t7 = (t7 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(91, ng0);
    t8 = (t0 + 2968U);
    t10 = *((char **)t8);
    t8 = (t0 + 6368);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB34;

LAB36:    xsi_set_current_line(96, ng0);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t6 = *((unsigned char *)t9);
    t11 = (t6 == (unsigned char)3);
    if (t11 != 0)
        goto LAB44;

LAB46:
LAB45:    goto LAB6;

LAB38:    t7 = 0;

LAB41:    if (t7 < 3U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB39;

LAB43:    t7 = (t7 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(97, ng0);
    t8 = (t0 + 3088U);
    t10 = *((char **)t8);
    t8 = (t0 + 6368);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB45;

LAB47:    xsi_set_current_line(102, ng0);
    t8 = (t0 + 3208U);
    t9 = *((char **)t8);
    t8 = (t0 + 6368);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB49:    t7 = 0;

LAB52:    if (t7 < 3U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB50;

LAB54:    t7 = (t7 + 1);
    goto LAB52;

LAB55:    xsi_set_current_line(106, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t6 = *((unsigned char *)t9);
    t11 = (t6 == (unsigned char)3);
    if (t11 != 0)
        goto LAB63;

LAB65:
LAB64:    goto LAB6;

LAB57:    t7 = 0;

LAB60:    if (t7 < 3U)
        goto LAB61;
    else
        goto LAB59;

LAB61:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB58;

LAB62:    t7 = (t7 + 1);
    goto LAB60;

LAB63:    xsi_set_current_line(107, ng0);
    t8 = (t0 + 2608U);
    t10 = *((char **)t8);
    t8 = (t0 + 6368);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB64;

}

static void work_a_1492751440_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(120, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6432);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6064);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1492751440_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(121, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (1 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6496);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6080);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1492751440_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(122, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (0 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6096);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1492751440_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1492751440_3212880686_p_0,(void *)work_a_1492751440_3212880686_p_1,(void *)work_a_1492751440_3212880686_p_2,(void *)work_a_1492751440_3212880686_p_3,(void *)work_a_1492751440_3212880686_p_4,(void *)work_a_1492751440_3212880686_p_5,(void *)work_a_1492751440_3212880686_p_6};
	xsi_register_didat("work_a_1492751440_3212880686", "isim/Reaction_game_ass_Reaction_game_ass_sch_tb_isim_beh.exe.sim/work/a_1492751440_3212880686.didat");
	xsi_register_executes(pe);
}
