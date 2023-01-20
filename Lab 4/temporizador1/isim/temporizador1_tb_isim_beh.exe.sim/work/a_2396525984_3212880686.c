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
static const char *ng0 = "/home/pedrot/Desktop/microeletronica/Lab 4/temporizador1/temporizador1.vhd";



static void work_a_2396525984_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    if (t9 == 0)
        goto LAB17;

LAB28:    if (t9 == 1)
        goto LAB18;

LAB29:    if (t9 == 2)
        goto LAB19;

LAB30:    if (t9 == 3)
        goto LAB20;

LAB31:    if (t9 == 4)
        goto LAB21;

LAB32:    if (t9 == 5)
        goto LAB22;

LAB33:    if (t9 == 6)
        goto LAB23;

LAB34:    if (t9 == 7)
        goto LAB24;

LAB35:    if (t9 == 8)
        goto LAB25;

LAB36:    if (t9 == 9)
        goto LAB26;

LAB37:
LAB27:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5978);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);

LAB16:    t1 = (t0 + 3504);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1968U);
    t8 = *((char **)t2);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t2 = (t0 + 1968U);
    t11 = *((char **)t2);
    t2 = (t11 + 0);
    *((int *)t2) = t10;
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 2208U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t3 = (t9 >= t10);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1968U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 > 9);
    if (t3 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    goto LAB14;

LAB17:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5908);
    t8 = (t0 + 3584);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 7U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB16;

LAB18:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5915);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB19:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5922);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB20:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5929);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB21:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5936);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB22:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5943);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB23:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5950);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB24:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5957);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB25:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5964);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB26:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5971);
    t5 = (t0 + 3584);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB16;

LAB38:;
}


extern void work_a_2396525984_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2396525984_3212880686_p_0};
	xsi_register_didat("work_a_2396525984_3212880686", "isim/temporizador1_tb_isim_beh.exe.sim/work/a_2396525984_3212880686.didat");
	xsi_register_executes(pe);
}
