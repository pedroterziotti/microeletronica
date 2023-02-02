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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pedrot/Desktop/microeletronica/Lab 4/temporizador2/temporizador2.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3075811685_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 2608U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 + 1);
    t3 = (t0 + 2608U);
    t10 = *((char **)t3);
    t3 = (t10 + 0);
    *((int *)t3) = t9;
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 >= 100000);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t1 = (t0 + 5112);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t6;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}

static void work_a_3075811685_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2128U);
    t7 = *((char **)t2);
    t8 = *((int *)t7);
    t9 = (t8 == 1);
    if (t9 == 1)
        goto LAB8;

LAB9:    t6 = (unsigned char)0;

LAB10:    t1 = t6;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1152U);
    t4 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t4 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:
LAB3:    t2 = (t0 + 5016);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2728U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t7 = (t0 + 2072U);
    xsi_variable_act(t7);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t7 = (t0 + 2192U);
    xsi_variable_act(t7);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t7 = (t0 + 2312U);
    xsi_variable_act(t7);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t7 = (t0 + 2432U);
    xsi_variable_act(t7);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (t0 + 2488U);
    t10 = *((char **)t2);
    t11 = *((int *)t10);
    t12 = (t11 == 1);
    t6 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2728U);
    t10 = *((char **)t3);
    t8 = *((int *)t10);
    t11 = (t8 + 1);
    t3 = (t0 + 2728U);
    t13 = *((char **)t3);
    t3 = (t13 + 0);
    *((int *)t3) = t11;
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t2 = (t0 + 2848U);
    t7 = *((char **)t2);
    t11 = *((int *)t7);
    t1 = (t8 > t11);
    if (t1 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB13:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)2);
    t1 = t6;
    goto LAB15;

LAB16:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2728U);
    t10 = *((char **)t2);
    t2 = (t10 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t11 = (t8 + 1);
    t2 = (t0 + 2488U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    t10 = (t0 + 2432U);
    xsi_variable_act(t10);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t1 = (t8 > 9);
    if (t1 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2488U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = 0;
    t10 = (t0 + 2432U);
    xsi_variable_act(t10);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t11 = (t8 + 1);
    t2 = (t0 + 2368U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    t10 = (t0 + 2312U);
    xsi_variable_act(t10);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t1 = (t8 > 9);
    if (t1 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB20;

LAB22:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2368U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = 0;
    t10 = (t0 + 2312U);
    xsi_variable_act(t10);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t11 = (t8 + 1);
    t2 = (t0 + 2248U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    t10 = (t0 + 2192U);
    xsi_variable_act(t10);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t1 = (t8 > 9);
    if (t1 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB23;

LAB25:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2248U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = 0;
    t10 = (t0 + 2192U);
    xsi_variable_act(t10);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t11 = (t8 + 1);
    t2 = (t0 + 2128U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    t10 = (t0 + 2072U);
    xsi_variable_act(t10);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t1 = (t8 > 9);
    if (t1 != 0)
        goto LAB28;

LAB30:
LAB29:    goto LAB26;

LAB28:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2128U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = 0;
    t10 = (t0 + 2072U);
    xsi_variable_act(t10);
    goto LAB29;

}

static void work_a_3075811685_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    if (t5 == 0)
        goto LAB18;

LAB29:    if (t5 == 1)
        goto LAB19;

LAB30:    if (t5 == 2)
        goto LAB20;

LAB31:    if (t5 == 3)
        goto LAB21;

LAB32:    if (t5 == 4)
        goto LAB22;

LAB33:    if (t5 == 5)
        goto LAB23;

LAB34:    if (t5 == 6)
        goto LAB24;

LAB35:    if (t5 == 7)
        goto LAB25;

LAB36:    if (t5 == 8)
        goto LAB26;

LAB37:    if (t5 == 9)
        goto LAB27;

LAB38:
LAB28:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 9026);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);

LAB17:    t1 = (t0 + 5032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 3208U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 3208U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = t6;
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 > 20000);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 2968U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    if (t5 == 0)
        goto LAB9;

LAB13:    if (t5 == 1)
        goto LAB10;

LAB14:    if (t5 == 2)
        goto LAB11;

LAB15:
LAB12:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 8952);
    t4 = (t0 + 5176);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2128U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t5;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 8940);
    t7 = (t0 + 5176);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2488U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t5;
    goto LAB8;

LAB10:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 8944);
    t4 = (t0 + 5176);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t5;
    goto LAB8;

LAB11:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 8948);
    t4 = (t0 + 5176);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2248U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t5;
    goto LAB8;

LAB16:;
LAB18:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 8956);
    t7 = (t0 + 5240);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB17;

LAB19:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 8963);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB20:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8970);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB21:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 8977);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB22:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 8984);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB23:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 8991);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB24:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 8998);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB25:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 9005);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB26:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 9012);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB27:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 9019);
    t4 = (t0 + 5240);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB17;

LAB39:;
}


extern void work_a_3075811685_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3075811685_3212880686_p_0,(void *)work_a_3075811685_3212880686_p_1,(void *)work_a_3075811685_3212880686_p_2};
	xsi_register_didat("work_a_3075811685_3212880686", "isim/temporizador2_tb_isim_beh.exe.sim/work/a_3075811685_3212880686.didat");
	xsi_register_executes(pe);
}
