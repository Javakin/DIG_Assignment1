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
static const char *ng0 = "D:/Git/DIG_Assignment1/Projeckt/Komponenter/MuxDisplay/MuxDisplay.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0001761066_3212880686_p_0(char *t0)
{
    char t16[16];
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = (3 - 2);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (3 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t17 = ((IEEE_P_2592010699) + 4024);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 2;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 2);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t15 = xsi_base_array_concat(t15, t16, t17, (char)97, t3, t18, (char)99, t14, (char)101);
    t22 = (3U + 1U);
    t23 = (4U != t22);
    if (t23 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 5088);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t15, 4U);
    xsi_driver_first_trans_fast(t20);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t22, 0);
    goto LAB6;

}

static void work_a_0001761066_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4960);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0001761066_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 8089);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 8093);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 8097);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(74, ng0);

LAB15:    t2 = (t0 + 4976);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(75, ng0);
    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t14 = (7 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 5216);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t14 = (7 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 4976);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}

static void work_a_0001761066_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 8101);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB22:    t6 = (t0 + 8105);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB23:    t9 = (t0 + 8109);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB24:    t12 = (t0 + 8113);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB25:    t15 = (t0 + 8117);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB26:    t18 = (t0 + 8121);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB27:    t21 = (t0 + 8125);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB28:    t24 = (t0 + 8129);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB29:    t27 = (t0 + 8133);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB30:    t30 = (t0 + 8137);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB31:    t33 = (t0 + 8141);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB32:    t36 = (t0 + 8145);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB33:    t39 = (t0 + 8149);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB34:    t42 = (t0 + 8153);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB35:    t45 = (t0 + 8157);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB36:    t48 = (t0 + 8161);
    t50 = xsi_mem_cmp(t48, t3, 4U);
    if (t50 == 1)
        goto LAB20;

LAB37:
LAB21:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8277);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(82, ng0);

LAB41:    t2 = (t0 + 4992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB42;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng0);
    t51 = (t0 + 8165);
    t53 = (t0 + 5280);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t51, 7U);
    xsi_driver_first_trans_fast(t53);
    goto LAB4;

LAB6:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8172);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8179);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8186);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8193);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8200);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8207);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8214);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8221);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8228);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8235);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8242);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8249);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8256);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8263);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 8270);
    t4 = (t0 + 5280);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB38:;
LAB39:    t3 = (t0 + 4992);
    *((int *)t3) = 0;
    goto LAB2;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

}

static void work_a_0001761066_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 8284);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 8288);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 8292);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t5 = (3 - 3);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5344);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(103, ng0);

LAB15:    t2 = (t0 + 5008);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(104, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = (0 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 5344);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t5 = (1 - 3);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5344);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t5 = (2 - 3);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5344);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 5008);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_0001761066_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0001761066_3212880686_p_0,(void *)work_a_0001761066_3212880686_p_1,(void *)work_a_0001761066_3212880686_p_2,(void *)work_a_0001761066_3212880686_p_3,(void *)work_a_0001761066_3212880686_p_4};
	xsi_register_didat("work_a_0001761066_3212880686", "isim/TEST_MuxDisplay_isim_beh.exe.sim/work/a_0001761066_3212880686.didat");
	xsi_register_executes(pe);
}
