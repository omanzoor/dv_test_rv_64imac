.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x15, 0x8000000000001105
                  csrw 0x301, x15
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x181800
                  csrw 0x300, x15 # MSTATUS
                  li x15, 0x0
                  csrw 0x304, x15 # MIE
                  mret
init:             
                  li x0, 0xbe8f728d
                  li x1, 0x8312c416
                  li x2, 0x417e9b92
                  li x3, 0xfc8bdf39
                  li x4, 0x6
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xce9274ad
                  li x9, 0x0
                  li x10, 0x44b7e199
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x0
                  li x15, 0xaeee546d
                  li x16, 0x80000000
                  li x17, 0xf69281ad
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x3
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x9
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x8
                  li x27, 0xfdf348bb
                  li x28, 0x7
                  li x29, 0xa8165060
                  li x30, 0x2
                  li x31, 0x1
                  la x8, user_stack_end
main:             sllw         s3, ra, s11
                  slliw        sp, a1, 21
                  ori          t0, t4, -1898
                  auipc        t4, 232938
                  sltu         a5, s11, s11
                  lui          t5, 191443
                  and          a6, a1, t1
                  remw         zero, a4, ra
                  divw         s11, t0, a1
                  lui          t3, 21123
                  srli         s6, a7, 22
                  srai         s4, a2, 23
                  sra          a6, s5, s2
                  divw         s6, s7, s10
                  remu         t1, t4, s0
                  xor          t2, a0, s1
                  divuw        a2, gp, zero
                  sltu         t3, tp, s2
                  addiw        a3, s5, 1238
                  addiw        s2, t5, 103
                  addi         t4, s9, -793
                  divuw        gp, s5, a7
                  slli         t6, s1, 1
                  sltu         s5, s11, a2
                  srlw         t2, t4, s6
                  sltiu        s7, gp, 1658
                  divuw        t0, a7, a5
                  lui          t5, 922307
                  sraiw        t6, s11, 21
                  addw         s3, a6, a6
                  srai         t2, s9, 60
                  add          s6, a2, tp
                  divuw        a0, gp, t5
                  slli         s11, s2, 47
                  andi         ra, t4, 1790
                  andi         a7, a6, -899
                  and          t1, s6, t1
                  slti         t3, t3, 1974
                  srlw         zero, s7, s6
                  remu         s3, s2, a7
                  sllw         t5, s3, s2
                  sltu         s8, s0, sp
                  addiw        t6, a2, -1104
                  remw         a1, t3, t5
                  addw         t2, s9, t2
                  div          a0, t0, s2
                  srai         a3, gp, 49
                  sllw         s5, s3, t6
                  sraiw        ra, sp, 12
                  or           a3, a4, s9
                  srliw        s8, s4, 12
                  remw         t1, s9, sp
                  divuw        s4, s1, s1
                  remw         t3, a3, s5
                  ori          s7, a7, 1609
                  lui          s5, 287567
                  addi         a3, s4, 1859
                  or           t3, a2, s9
                  div          s3, t4, a7
                  addw         s2, a6, t1
                  rem          s5, t2, s6
                  addi         s7, s8, -93
                  remw         s9, a5, a5
                  sraiw        zero, t0, 2
                  remuw        t6, a0, sp
                  slliw        a0, t6, 19
                  add          s8, s2, s6
                  mulhu        a6, tp, a1
                  subw         a3, a6, t5
                  sra          s6, a7, t0
                  divu         s1, s2, ra
                  subw         s8, s11, zero
                  sltu         s6, a1, a1
                  srliw        a6, tp, 20
                  remuw        sp, s1, s1
                  srliw        s5, sp, 12
                  srlw         tp, t5, a4
                  slti         a5, s4, -829
                  slt          t6, tp, s1
                  nop
                  addi         a3, s2, -1571
                  andi         a5, s1, -675
                  nop
                  addw         s4, s10, s5
                  andi         s11, s11, -168
                  xori         a0, s8, 1763
                  xori         t5, a2, 55
                  rem          s11, s9, zero
                  mulhu        a2, s6, s2
                  sraiw        s1, s7, 13
                  lui          gp, 469765
                  sltu         s1, a7, s9
                  mulhsu       s6, t4, s4
                  srl          s6, s10, s3
                  sltiu        sp, gp, -1290
                  auipc        t4, 343247
                  add          s9, s3, t1
                  sltiu        a5, t0, -53
                  mulhu        a3, a5, t2
                  sraiw        t5, a6, 4
                  srlw         t2, ra, t2
                  or           s11, a6, s4
                  srl          t0, a5, s4
                  sra          t6, zero, a1
                  auipc        t5, 418261
                  rem          t5, t4, ra
                  nop
                  div          a3, s6, s7
                  nop
                  sllw         s6, s10, t5
                  lui          t5, 605881
                  slti         s6, s1, 528
                  nop
                  srl          a1, s2, t2
                  xor          t4, s8, ra
                  slli         t6, a6, 0
                  mul          s11, s7, s9
                  slli         s1, t0, 58
                  srlw         s11, tp, s9
                  slli         zero, a5, 54
                  remu         zero, gp, t2
                  xori         zero, zero, 1087
                  srli         zero, a3, 45
                  mulhu        ra, s8, gp
                  xor          a6, zero, a4
                  addw         ra, s11, zero
                  slliw        s1, s10, 9
                  subw         s7, s8, a2
                  xori         a6, s7, -1237
                  sll          zero, a2, s6
                  divu         t4, s3, s10
                  xori         s6, t2, 1354
                  srlw         a0, s10, zero
                  divuw        s8, a4, t4
                  subw         t3, s3, t5
                  xori         zero, a2, 2006
                  slliw        t3, s7, 0
                  subw         a0, a3, s5
                  sltu         a2, t3, t2
                  sll          t6, a4, s8
                  ori          s11, s8, -1625
                  andi         t1, a0, 369
                  sltu         s1, s11, a1
                  slt          s5, s10, s11
                  xor          gp, s6, t0
                  addi         s2, t0, -1751
                  sllw         t1, t0, a7
                  rem          zero, s5, s10
                  lui          t4, 228984
                  ori          s7, s4, 244
                  slt          s3, s7, t2
                  sra          a5, s11, t4
                  slliw        a3, t4, 19
                  nop
                  remu         a3, s1, s11
                  srli         a6, s11, 55
                  div          t2, tp, s2
                  slti         t0, s8, -1627
                  mulh         a0, s10, s5
                  addi         s9, s1, 1048
                  sllw         s6, s7, s11
                  rem          a2, t3, a1
                  slli         s11, s4, 10
                  sltu         t0, s8, gp
                  sra          a3, s1, t4
                  mulhsu       a0, s4, t1
                  addw         a2, s1, s2
                  slt          t2, t2, a6
                  sll          t0, zero, a7
                  sra          t2, t6, s4
                  mul          s3, t4, s1
                  divuw        t6, a0, s6
                  slt          a7, t0, s8
                  sraw         s9, a0, s8
                  srli         s8, a7, 56
                  nop
                  sraiw        a2, a5, 3
                  add          a1, t6, a1
                  sub          s6, a2, s3
                  addi         a5, s4, 1604
                  remuw        s9, a3, s7
                  srlw         t1, s7, ra
                  srlw         t1, t0, a3
                  mulhsu       zero, s5, t1
                  auipc        t1, 466144
                  div          ra, s7, a0
                  nop
                  and          t0, a2, s11
                  sra          s6, s11, t6
                  mulh         t2, s9, a7
                  sll          a1, s0, zero
                  mulhu        a5, ra, s6
                  slli         a0, s5, 62
                  divw         t2, s1, s5
                  addw         a1, t1, s2
                  mulhu        s1, t1, s7
                  remu         a5, s3, s0
                  and          s5, a1, a1
                  andi         a2, s1, -32
                  sra          s8, t1, s6
                  lui          t5, 120992
                  ori          s4, zero, -1303
                  addi         t0, s2, 1916
                  mulh         t6, a3, s2
                  sllw         a0, a3, s0
                  srli         a5, s1, 1
                  sub          t2, s2, t4
                  subw         a0, s0, s2
                  srl          a5, zero, gp
                  addi         tp, t6, -187
                  mulhu        a0, s5, s8
                  sraiw        a3, t0, 13
                  lui          s6, 671854
                  slti         s2, a7, -222
                  ori          t5, t0, 1193
                  ori          a3, s11, -1826
                  andi         s3, a7, 2014
                  mulhsu       sp, tp, t0
                  ori          tp, t3, 1589
                  addw         a2, t2, a3
                  srliw        a6, s6, 0
                  sll          t0, s10, t5
                  sllw         t0, t3, t4
                  addi         t1, gp, -79
                  remu         t0, s4, a6
                  or           a5, a1, t2
                  remuw        a3, ra, s0
                  and          t1, a6, a5
                  divw         a6, s8, s11
                  sll          a2, sp, a4
                  sraw         sp, tp, ra
                  xor          t5, a2, t4
                  rem          t5, zero, t4
                  xori         tp, s9, 39
                  sll          a2, s2, t6
                  sll          s9, s8, tp
                  subw         s5, tp, a7
                  addiw        a7, a7, 1156
                  sltiu        a5, s1, 1358
                  sraw         s1, t3, a4
                  addi         s6, t5, -1432
                  subw         s11, t0, ra
                  slti         s5, t4, -576
                  sltu         t1, s8, s5
                  slli         s5, s2, 42
                  sltu         s11, t5, s5
                  or           s3, gp, s7
                  sll          t2, gp, a4
                  srai         a5, t4, 46
                  sub          gp, sp, s8
                  xori         t0, a4, 1993
                  remw         t0, a4, tp
                  srai         s4, t1, 24
                  remuw        sp, t4, t2
                  slli         s9, a7, 7
                  remw         s8, gp, a2
                  div          t3, tp, s1
                  srliw        s11, s3, 26
                  sra          s9, s11, s8
                  addw         s8, zero, a0
                  addiw        a0, a3, -1132
                  remw         a7, t0, t4
                  subw         s6, s4, a1
                  and          s8, ra, s8
                  lui          a5, 767250
                  xori         a7, s8, -1308
                  ori          a1, a2, -242
                  divuw        s4, a5, t4
                  divuw        s8, a5, a1
                  slti         s11, s5, -684
                  divuw        s7, t0, t5
                  subw         s7, t1, s10
                  addw         s9, s2, s11
                  mul          a6, a3, a7
                  addi         s1, t2, 1849
                  mul          a1, s0, s3
                  sllw         s6, t2, s8
                  slliw        s3, a3, 3
                  sllw         s11, a5, s7
                  sub          s2, zero, s6
                  slti         s8, zero, 1544
                  srl          a2, tp, s8
                  sll          a2, a0, a3
                  sllw         s3, t2, tp
                  slli         t3, s8, 15
                  slliw        t3, t5, 14
                  divuw        t5, s2, a1
                  slt          a6, a4, s9
                  mulhu        s1, t1, a5
                  remw         a2, s6, s11
                  divu         t3, s1, a6
                  nop
                  rem          t1, s8, sp
                  slti         s1, t4, 1020
                  remu         s1, s9, sp
                  srlw         s9, s7, a3
                  div          t6, tp, t6
                  nop
                  sub          a1, s0, t5
                  divw         a3, t6, gp
                  ori          s6, gp, 433
                  add          s1, t1, a3
                  add          t5, a2, sp
                  andi         tp, a7, 855
                  auipc        t3, 96708
                  add          zero, a2, s3
                  div          a6, t6, s9
                  slliw        a6, s3, 5
                  mulw         s8, s8, t1
                  divw         s7, t2, a6
                  slli         s6, ra, 54
                  sltu         s6, a5, t2
                  slli         ra, ra, 37
                  nop
                  slliw        s4, s7, 14
                  auipc        t0, 738900
                  slliw        s6, s7, 16
                  mul          t5, tp, a1
                  lui          a0, 259009
                  addi         t6, s11, -102
                  sraw         s6, s8, s0
                  andi         s5, a0, 1343
                  mulw         a3, t3, a0
                  lui          s5, 641866
                  addi         t5, t6, 496
                  remu         a5, a4, t4
                  add          t6, a2, t4
                  slt          a3, a3, s3
                  xor          s3, s8, zero
                  sltiu        t3, a1, -1405
                  add          a3, t6, s1
                  slti         tp, s11, -1803
                  sltu         s11, t1, a7
                  remuw        t5, a5, a6
                  sltu         t0, s6, a7
                  remuw        a7, a1, sp
                  sra          s8, s8, s5
                  slti         sp, s7, -754
                  rem          t4, a7, s6
                  addw         sp, a3, s2
                  sllw         a6, a7, t5
                  srlw         a6, a4, t3
                  sltiu        zero, s10, 242
                  sub          a0, s10, a0
                  mulhu        a5, s10, s6
                  addiw        t0, a3, -1918
                  sraiw        ra, s11, 7
                  addi         t1, s1, 858
                  nop
                  mulhsu       t2, zero, a3
                  sltu         s5, s7, t1
                  mulw         t6, a5, s1
                  subw         s7, t1, s7
                  mulh         a7, t0, s9
                  addi         s2, t5, -1024
                  remw         a5, s4, s11
                  mulhu        a5, ra, s11
                  sltiu        s1, s8, -1507
                  addi         ra, sp, -1189
                  nop
                  divu         t1, s7, ra
                  mulw         t1, s11, s3
                  srai         t6, sp, 26
                  andi         a5, a5, 1877
                  or           t0, s7, a5
                  remuw        s3, s9, a1
                  nop
                  sllw         t4, t2, t1
                  nop
                  ori          a1, zero, -1812
                  andi         tp, a6, 555
                  remuw        tp, a6, s1
                  mulhsu       s8, t4, s8
                  auipc        s8, 264627
                  sraiw        t3, ra, 19
                  srliw        t0, a5, 5
                  srliw        t2, t4, 7
                  sub          s6, a5, s9
                  srliw        s8, s3, 29
                  srli         tp, s9, 31
                  mulw         a5, a6, tp
                  sub          a1, a2, s6
                  and          a7, a1, s9
                  srlw         s2, s1, t3
                  sltu         a1, s10, t2
                  divu         a7, s3, a5
                  xor          a6, a3, s1
                  subw         a7, s2, s1
                  or           a2, s4, s9
                  or           a2, gp, sp
                  sra          t5, s6, t0
                  slt          t3, sp, a0
                  nop
                  sraw         zero, ra, a2
                  divu         s6, a5, s10
                  srl          s11, t0, gp
                  and          ra, t2, t1
                  sraiw        a0, a5, 5
                  mulh         s8, t2, s7
                  sltu         zero, s6, ra
                  mul          a3, t5, a6
                  slti         a2, t0, -1461
                  andi         t3, a4, -1754
                  nop
                  sra          a5, a7, s11
                  remuw        s11, t6, s6
                  mul          sp, t3, s3
                  slliw        s8, a3, 9
                  mul          a7, s10, s6
                  mulhsu       t5, a4, s11
                  addiw        t6, s9, 302
                  remw         a2, s9, a6
                  mul          a3, a6, a6
                  srliw        a5, a1, 24
                  srl          tp, s6, s10
                  mul          s7, s10, a4
                  slli         a3, s2, 15
                  mulhsu       a2, a7, s9
                  divw         s7, a0, s11
                  remw         s11, t2, tp
                  remuw        t2, t6, tp
                  ori          a6, a1, 1567
                  slti         a0, a6, -398
                  auipc        a0, 63446
                  and          gp, s3, t1
                  addiw        sp, s1, -1982
                  mulw         s5, sp, a7
                  sltiu        t3, a5, -1334
                  mulhsu       s7, sp, ra
                  srli         s2, a5, 58
                  sltiu        s9, a2, -1811
                  srlw         s9, s9, s4
                  divw         a7, a7, s9
                  rem          a0, a7, a7
                  add          a3, s1, a6
                  sllw         s3, a4, s8
                  add          s2, s5, s5
                  xor          t2, s0, gp
                  subw         s9, a4, s6
                  lui          a6, 851234
                  sraw         a5, t6, s8
                  or           a1, a1, s4
                  lui          t1, 508771
                  andi         s2, tp, -1922
                  sub          t2, a5, a1
                  sltu         t0, a7, a3
                  remuw        s2, t5, zero
                  sltiu        t5, s2, -1785
                  sll          zero, s9, s1
                  and          s2, t4, zero
                  sraw         s5, t2, t6
                  mulh         gp, s2, a7
                  div          t4, ra, a0
                  remw         a6, s6, sp
                  addi         zero, zero, 140
                  srlw         a3, s9, t6
                  sll          s8, s3, s9
                  mulhu        s9, s5, t0
                  xori         t6, s8, -1401
                  slti         a6, s1, -439
                  xori         s1, a1, 256
                  sra          s7, t5, gp
                  addiw        t3, a4, -1100
                  or           s1, s7, s0
                  div          t0, s1, s2
                  srlw         tp, s1, sp
                  mulh         t1, s11, a2
                  mul          s3, t3, gp
                  mulw         a7, gp, s6
                  subw         a7, s9, s10
                  or           t0, gp, a6
                  addiw        sp, s9, 2044
                  auipc        a2, 37266
                  lui          gp, 50724
                  slt          a7, a1, s10
                  mulw         s8, a6, sp
                  and          a5, a3, t1
                  srli         s6, t1, 35
                  addiw        a3, s0, 1431
                  auipc        a2, 1017219
                  divu         a5, tp, t6
                  subw         zero, s9, ra
                  remuw        a3, a0, a5
                  srai         s11, t4, 46
                  sraw         s6, t0, t4
                  slt          a5, a3, zero
                  mulhsu       t5, s7, t0
                  addiw        a0, t6, -406
                  divw         t6, s1, t2
                  and          a5, s9, t4
                  auipc        zero, 836819
                  srai         s8, t6, 57
                  and          a2, zero, s9
                  mul          t1, s9, t4
                  remu         gp, s1, s9
                  mulhu        s3, s9, t5
                  addiw        s6, s2, -1718
                  andi         zero, ra, -927
                  addi         a6, s6, 1035
                  srliw        a3, a5, 11
                  addw         a0, a5, a7
                  sltiu        zero, s0, 823
                  andi         a2, s1, 889
                  subw         a0, s10, t1
                  xori         s6, a2, -1611
                  sraiw        s4, t6, 9
                  remuw        sp, s6, t1
                  mul          s9, tp, a7
                  sllw         s7, s3, t6
                  divu         t6, a2, a1
                  sraiw        s5, t1, 24
                  remuw        t4, s10, s7
                  ori          t6, a1, 1554
                  addi         s9, t2, 1199
                  slli         s2, a6, 0
                  mul          t6, s6, t3
                  sraiw        s3, zero, 0
                  subw         a0, a1, a0
                  slt          s6, sp, a0
                  slti         s2, s6, -763
                  andi         tp, a0, 402
                  sll          tp, t6, a4
                  sraiw        zero, t2, 30
                  subw         t6, s10, s5
                  xori         a2, a3, -1233
                  or           ra, s8, a4
                  auipc        a6, 755966
                  auipc        ra, 993492
                  slli         s11, t0, 41
                  mulh         s2, a5, t1
                  div          s2, a7, t6
                  rem          gp, t2, s9
                  sltu         s11, a7, a2
                  mulhsu       a5, tp, a7
                  srlw         s7, t4, s8
                  and          tp, s3, t4
                  div          s1, a6, s5
                  or           s1, a6, a0
                  srli         t1, a5, 0
                  sraiw        a1, t5, 21
                  mulh         t1, a1, s5
                  addiw        a1, s7, 1698
                  sraiw        s9, a3, 19
                  slti         a6, t1, -1116
                  mul          t5, tp, t6
                  srl          t0, a4, zero
                  remu         s8, a2, s4
                  addi         t2, sp, 1147
                  slt          zero, ra, a4
                  divw         s2, s0, zero
                  slti         t2, s5, -1211
                  sra          a5, s9, s11
                  rem          zero, zero, s4
                  slt          t1, tp, tp
                  srliw        t5, a6, 29
                  slti         s3, a7, 375
                  sraiw        t5, a7, 28
                  mulw         sp, s10, t6
                  remw         s5, a5, a3
                  lui          a3, 315911
                  sllw         s2, a6, s11
                  rem          a0, zero, s9
                  addiw        s6, s11, 833
                  divw         s7, s4, a2
                  and          a0, zero, a4
                  slti         s4, t4, -684
                  sraiw        s1, a0, 29
                  xori         s6, a4, -1498
                  sltiu        a0, s3, -231
                  sub          a2, s10, t0
                  addi         t2, s9, -24
                  sraw         s11, s7, t0
                  rem          s8, ra, s11
                  sltiu        a3, s3, 1404
                  addw         a7, t0, t3
                  div          a7, sp, t0
                  srai         a2, t2, 14
                  sltiu        t1, a4, 1076
                  sltu         s6, a0, gp
                  div          zero, t4, a2
                  mulw         zero, s2, a1
                  addiw        t3, tp, -1896
                  xor          s2, s1, s3
                  or           a3, s1, s3
                  auipc        s9, 90437
                  lui          t4, 1033472
                  remuw        s8, s5, a3
                  xori         a1, s10, -1888
                  ori          s6, ra, 1913
                  divw         s1, t6, a0
                  mulh         zero, s6, s9
                  slli         t5, s6, 50
                  addi         sp, ra, 1937
                  and          t1, t3, gp
                  and          s2, a6, gp
                  auipc        gp, 837971
                  mul          t3, sp, s2
                  div          a5, s10, tp
                  srlw         s4, a4, s1
                  sraw         ra, s3, t0
                  sra          s9, a0, sp
                  mulw         s6, a3, a6
                  remuw        t1, zero, a4
                  add          s9, a1, t1
                  sub          t2, s4, s10
                  divu         s11, a2, gp
                  xori         s3, s7, -295
                  divuw        s4, s5, s6
                  mulhu        a1, t3, t0
                  sltu         tp, s3, gp
                  sll          a2, a2, s4
                  divuw        s4, a3, s6
                  mul          t1, s11, a2
                  remuw        s6, s5, t2
                  or           s5, ra, t3
                  xori         t4, s11, -1682
                  sraiw        s7, s1, 26
                  rem          t2, gp, s7
                  slti         t1, s8, -2040
                  srl          ra, t5, a2
                  srl          a0, a4, t6
                  sra          s2, gp, a4
                  sub          gp, a7, sp
                  subw         a5, s6, t6
                  sub          a7, tp, t5
                  mulhsu       a5, gp, zero
                  srlw         t2, s4, t5
                  mulhu        gp, zero, t6
                  ori          ra, s9, 231
                  sltiu        t1, t6, -1374
                  mulh         a6, ra, t4
                  auipc        t3, 257306
                  addw         t4, t4, t0
                  sllw         t4, s11, t3
                  and          s5, s0, a4
                  mulw         sp, a0, s0
                  mulw         t5, s11, a4
                  sltiu        s2, t3, 1171
                  addi         s4, s4, -1897
                  sraiw        t5, s0, 28
                  remu         a7, t5, a0
                  remw         t3, s2, t6
                  and          sp, s5, s1
                  auipc        a7, 333426
                  srliw        a2, s8, 9
                  andi         a0, t1, -27
                  mulhu        s8, a3, t6
                  addiw        t1, s3, 348
                  slti         a1, s1, 831
                  sll          s6, s4, zero
                  xor          a1, s0, a3
                  sltiu        a2, t1, 165
                  div          a5, s4, gp
                  sraw         a7, s11, t3
                  slliw        s4, a5, 11
                  mulh         t4, s11, s8
                  remu         s9, sp, s8
                  divw         s8, s8, s9
                  sraiw        t4, a3, 9
                  slt          a3, t2, s10
                  subw         s2, zero, s2
                  mulh         t1, s1, s0
                  addi         t2, s5, 2040
                  sll          s9, s2, a3
                  srli         s11, s7, 48
                  remw         t5, t1, a5
                  divu         t1, zero, t3
                  divw         s7, zero, s0
                  ori          t6, a2, -1746
                  remu         a0, s7, sp
                  sub          s8, tp, a4
                  divuw        tp, a2, tp
                  auipc        t0, 813628
                  remuw        t4, t0, zero
                  addiw        s7, a7, 715
                  slt          s5, a4, s10
                  and          s7, a1, sp
                  or           s8, a2, t4
                  subw         a2, s5, t1
                  remw         gp, s4, t6
                  andi         gp, s10, 1250
                  slli         zero, t1, 30
                  srl          zero, ra, t2
                  xor          a2, t0, a0
                  sraiw        tp, a6, 31
                  sraw         tp, s1, ra
                  div          a7, s4, t2
                  remuw        a7, gp, s5
                  sllw         s8, s2, s3
                  slli         s9, ra, 13
                  sub          t0, zero, t5
                  mul          s5, a0, zero
                  srlw         t1, s11, sp
                  xor          t5, sp, s0
                  slti         a1, s6, -55
                  slt          a1, s11, t3
                  and          s5, zero, s1
                  sraw         s5, s2, a2
                  xor          t2, tp, tp
                  mul          a0, s4, s11
                  add          t6, a7, s6
                  sltu         s3, t2, t1
                  ori          gp, a7, 1235
                  srlw         a0, t3, a3
                  xori         a7, sp, -1258
                  sra          sp, s2, ra
                  srl          t1, a3, a0
                  sll          t0, s3, a5
                  srai         s5, s2, 58
                  sraiw        a0, a7, 17
                  slliw        s1, t6, 4
                  andi         s6, a3, 1426
                  or           zero, a4, tp
                  srlw         sp, a0, s1
                  sll          s2, a3, zero
                  xor          s3, zero, ra
                  lui          t4, 68295
                  mul          s7, s3, ra
                  sra          t1, s5, s6
                  ori          a2, ra, -1055
                  remuw        gp, a1, sp
                  div          sp, t3, s0
                  addiw        s1, t2, 629
                  mulhu        t5, sp, s0
                  divw         t3, s3, s6
                  mulhu        s6, zero, s3
                  addiw        s3, s10, -1377
                  mulh         a5, t3, gp
                  ori          a5, a3, -514
                  slli         t4, s6, 18
                  or           sp, s4, a2
                  mul          a6, ra, ra
                  rem          a1, t1, a3
                  addiw        a7, s7, 1365
                  divw         a3, tp, s6
                  andi         zero, s10, -9
                  sllw         t0, a7, s0
                  srlw         s7, s8, t6
                  xori         t5, s8, 1664
                  sltu         s9, a0, a7
                  mulhsu       s5, a7, zero
                  divw         s6, sp, t6
                  remuw        t4, tp, t1
                  divu         a3, s4, t5
                  rem          a2, s11, ra
                  mulhsu       a2, a0, t3
                  slti         t1, s6, -1276
                  sraw         a1, s9, ra
                  addiw        t2, ra, 259
                  sll          t4, zero, t1
                  remuw        s4, ra, a6
                  addiw        s9, a3, -1147
                  mulhu        zero, s8, s11
                  sub          s6, a1, t5
                  add          t1, gp, a2
                  subw         t2, tp, a5
                  remw         s11, zero, sp
                  lui          s9, 254676
                  addiw        a3, a6, -83
                  sllw         a3, s1, s9
                  and          a3, sp, s2
                  ori          ra, s3, -1260
                  add          zero, t0, t4
                  mulh         s11, t6, a7
                  divu         s4, s1, a5
                  add          zero, s5, s2
                  addiw        a0, s5, 863
                  sltiu        a0, s1, 1658
                  and          a2, a0, s11
                  remuw        sp, t3, s8
                  xori         t1, s0, -1955
                  sltiu        t4, a5, 863
                  srlw         a7, a6, s3
                  mulw         a2, ra, s2
                  xor          s5, a3, s5
                  auipc        zero, 324473
                  srli         t3, a4, 51
                  sraiw        s6, zero, 29
                  div          t3, s9, s4
                  sltiu        s11, s1, 1980
                  auipc        a5, 829452
                  rem          sp, t5, tp
                  or           s5, zero, a4
                  srai         tp, s0, 55
                  sraw         a5, a2, tp
                  sra          s11, s1, tp
                  mulw         t5, gp, zero
                  remuw        s2, s11, a6
                  mul          a6, sp, t0
                  divuw        s5, s9, t1
                  sub          s8, a6, s4
                  slliw        t3, a0, 25
                  andi         s7, t0, -1256
                  lui          a7, 522428
                  xori         a6, t6, 2009
                  xori         a1, t1, 687
                  srlw         t6, s2, a7
                  div          s11, tp, a6
                  sltu         s1, zero, s6
                  ori          s1, t1, -1606
                  sraw         s2, a6, tp
                  nop
                  auipc        gp, 585233
                  slliw        a5, zero, 30
                  slti         s1, gp, -563
                  sll          t3, a7, s3
                  remu         s11, s1, a7
                  xor          s8, s3, s4
                  srl          a5, a0, a4
                  addw         s6, t1, a2
                  mul          a3, s2, s2
                  srl          s11, a7, t6
                  addiw        s8, t6, 901
                  auipc        a1, 701368
                  addi         s2, t1, -1038
                  slliw        ra, s6, 22
                  addiw        a1, sp, -1475
                  divu         s6, s0, t3
                  sra          t6, t0, sp
                  remw         s2, t4, s10
                  add          s5, a1, s0
                  mulw         t5, t5, a5
                  divuw        t2, s0, s11
                  sraw         s1, tp, a1
                  slt          t5, s7, a6
                  and          a3, t5, tp
                  sub          s8, a0, a7
                  slliw        s9, a4, 24
                  rem          a1, t2, t2
                  sltiu        t5, s1, 735
                  add          s9, s8, t3
                  auipc        s7, 881598
                  xor          s7, t5, a6
                  divu         a0, s4, sp
                  xor          a1, a5, s10
                  addiw        zero, gp, -1196
                  nop
                  mulw         t5, t3, t4
                  add          t2, s0, a0
                  srli         s2, t4, 3
                  sra          ra, s4, t0
                  sllw         s6, a7, a5
                  slli         t4, t3, 18
                  nop
                  mulhsu       a0, s1, a6
                  ori          tp, s10, -753
                  divuw        s11, t0, t4
                  slti         s1, t0, 1811
                  remuw        s7, a0, s3
                  subw         t2, s4, a4
                  addiw        s3, zero, -1678
                  srli         gp, sp, 19
                  srlw         s3, s7, ra
                  remuw        t0, a3, a1
                  slt          s3, t4, a0
                  addw         a5, s6, s9
                  sllw         s3, s5, s6
                  and          s4, s9, t5
                  sll          a7, t4, a2
                  mulw         ra, t0, s1
                  sraiw        s9, s4, 7
                  addi         s6, s1, 446
                  divuw        a2, t3, a4
                  slli         tp, tp, 40
                  auipc        a1, 707092
                  divuw        ra, s2, t0
                  srl          gp, t6, sp
                  remw         gp, gp, a7
                  xor          t5, t6, t1
                  srlw         tp, a5, t1
                  sll          t6, s4, s7
                  or           s1, s9, s2
                  sll          ra, s9, gp
                  mulhu        sp, a0, s2
                  add          s5, a4, a0
                  and          t1, gp, t2
                  sltiu        a0, t4, 659
                  divu         s11, s7, s11
                  mulhu        a6, t6, a3
                  srai         s5, t2, 44
                  slliw        t5, a2, 16
                  sraiw        a5, s0, 3
                  mul          s1, t6, s7
                  slli         tp, zero, 53
                  lui          s11, 560541
                  slt          a5, s5, a0
                  auipc        t6, 370337
                  sltu         s8, s6, s8
                  srl          s4, s1, t0
                  add          sp, a1, s9
                  remu         a5, ra, a5
                  addw         t2, t1, a5
                  remuw        a1, a2, s4
                  div          s2, t1, s8
                  subw         a7, s4, a5
                  sra          a0, s6, t5
                  sub          t0, s8, t4
                  divu         tp, t6, s1
                  slt          s6, s1, a3
                  sltiu        s5, s10, 626
                  slti         t0, t5, 29
                  rem          t6, t1, s7
                  sraiw        s4, t5, 15
                  divw         t6, a4, ra
                  divu         t4, s10, s4
                  lui          sp, 919750
                  srlw         s8, a3, tp
                  srl          t4, a4, s1
                  mul          t1, a5, t2
                  srai         t6, t6, 5
                  mul          a3, a6, sp
                  or           ra, t0, ra
                  slliw        s9, s7, 16
                  divu         t0, t4, t4
                  mulw         s2, sp, s10
                  xori         a6, t2, -2039
                  slt          a7, s9, s6
                  srl          t2, s8, zero
                  slli         s9, s4, 48
                  divu         s11, ra, a3
                  xori         t0, t2, 1190
                  srai         t0, gp, 40
                  addi         t6, s2, 1444
                  mulhu        s7, a5, sp
                  mulhu        t2, gp, s0
                  sraw         a0, a3, s10
                  divu         a7, t3, a7
                  remu         a2, s8, t1
                  slti         a7, a7, -1731
                  auipc        s8, 477151
                  divuw        a1, a7, a6
                  mulhsu       t1, a6, s1
                  rem          t1, a0, s6
                  addw         a0, a5, s1
                  remu         s11, t2, s7
                  divw         gp, a3, t1
                  addiw        s2, a1, -329
                  srai         s3, s0, 37
                  sllw         t2, gp, s7
                  sltiu        tp, tp, -1982
                  slt          s11, s7, sp
                  slli         zero, a2, 12
                  srai         a3, s4, 36
                  addi         s2, s4, -1688
                  andi         t3, t1, 672
                  xori         s9, s10, -996
                  addw         s9, s2, s9
                  mulh         a1, s2, t1
                  sraiw        s11, t5, 24
                  srlw         a2, gp, t6
                  slli         a0, sp, 41
                  srl          s4, s3, a1
                  slli         a2, t0, 42
                  remuw        a2, s8, s6
                  mulh         s4, a4, s10
                  sllw         zero, s9, sp
                  or           t4, s6, s9
                  div          s9, t3, s1
                  subw         s7, t2, t1
                  slti         tp, s10, -235
                  and          a0, s0, s2
                  addi         t6, a6, -1276
                  rem          s9, a6, t6
                  slt          t5, s4, t3
                  srai         t3, a6, 19
                  mulhu        s3, a7, s5
                  divw         t6, s8, s9
                  mulh         a5, s7, s0
                  mulh         zero, a7, t4
                  srl          t1, a0, a5
                  divu         s11, a2, t3
                  subw         t5, t3, t5
                  rem          a5, s6, s7
                  slli         a7, s5, 7
                  sltiu        s1, a3, -1051
                  srl          zero, sp, s2
                  mulhsu       t1, s6, zero
                  sraw         s3, s1, t3
                  divuw        tp, t0, a7
                  sltu         a6, ra, s0
                  sllw         zero, s5, ra
                  sra          t0, s10, a4
                  remw         a1, a4, a6
                  remu         a7, a3, tp
                  srliw        t6, sp, 9
                  remw         s6, s2, a3
                  andi         t4, zero, -938
                  subw         a7, s10, sp
                  sltu         gp, s0, a6
                  srliw        a0, s0, 5
                  lui          a0, 219063
                  mul          t6, s8, t4
                  nop
                  add          s9, t1, s3
                  lui          t2, 125239
                  srlw         sp, zero, a3
                  sll          a7, s8, s10
                  srai         a2, a1, 60
                  sllw         s7, s2, t6
                  ori          s2, s10, -487
                  srl          a0, s2, a0
                  divu         t2, a1, s3
                  srlw         t3, s8, s3
                  lui          a7, 684784
                  srli         s4, s6, 62
                  subw         s2, t3, s3
                  divuw        a0, tp, s2
                  div          s4, gp, t3
                  mulhsu       a6, s4, s6
                  divu         a7, t5, zero
                  lui          ra, 171816
                  add          t1, a7, t5
                  mulw         ra, s0, s8
                  srli         s11, a4, 41
                  xor          ra, t4, t1
                  slli         s4, sp, 12
                  sraiw        s9, t3, 24
                  srlw         s1, tp, a0
                  sra          t0, s1, a0
                  auipc        s3, 529248
                  andi         t6, a4, -808
                  sraiw        a2, a2, 13
                  and          t4, s11, t2
                  slt          s9, a5, s11
                  divw         s2, t4, a0
                  addi         a0, s10, 418
                  addw         s11, ra, gp
                  or           a7, a3, t4
                  remw         a5, a6, t1
                  srlw         a6, t6, sp
                  remw         s2, s8, a1
                  divw         t6, s11, a5
                  subw         s5, s4, a3
                  sllw         t5, s11, s0
                  srai         s2, t5, 53
                  addw         a5, s8, a0
                  srai         t5, sp, 50
                  slli         a0, t5, 4
                  remuw        zero, s11, a1
                  rem          ra, s9, s3
                  addi         zero, t2, -1085
                  div          ra, a2, s9
                  slti         t2, s9, 1326
                  sub          a2, s4, a6
                  add          s1, gp, a2
                  xori         t2, a6, -1695
                  slti         a5, t4, 786
                  remw         t0, a7, a5
                  addiw        a0, a2, -1858
                  nop
                  remw         s9, gp, s9
                  divu         s8, a4, t5
                  sraw         a3, a4, a5
                  mulw         a0, t6, t1
                  add          ra, s8, zero
                  srliw        t5, zero, 5
                  xor          ra, t6, t2
                  remu         a3, s11, sp
                  srli         s2, s10, 41
                  mulh         s5, zero, t6
                  srlw         s9, a5, zero
                  sub          t5, s0, t5
                  or           gp, t6, s6
                  sltiu        tp, a7, -577
                  slli         t4, s4, 23
                  ori          ra, s2, -893
                  mulhsu       s2, t4, s3
                  addw         t4, t4, t0
                  srliw        t5, t5, 19
                  remu         a6, s5, s6
                  divw         a1, t6, s10
                  sltiu        tp, t3, -456
                  divw         t6, s0, t2
                  sub          t5, sp, s0
                  srli         s7, t5, 34
                  andi         t5, a0, 1415
                  subw         s7, t2, sp
                  addw         a5, gp, a4
                  remuw        s4, a0, a3
                  sltiu        s7, s9, 768
                  and          s11, s6, a3
                  slli         zero, t6, 18
                  remu         t4, t4, s0
                  mulhu        ra, zero, s2
                  slli         t3, t3, 21
                  mulhu        t3, s0, tp
                  mulh         a0, a5, a2
                  lui          t5, 246628
                  mulhu        tp, a0, s7
                  remw         s4, t4, s11
                  mulhsu       t2, s10, a7
                  mulh         s8, s10, t1
                  div          t2, s0, t2
                  add          s8, t3, a3
                  sra          s9, t3, sp
                  slli         t5, ra, 42
                  slliw        s2, a4, 5
                  ori          t4, sp, 1903
                  remw         s6, t4, a4
                  sraw         a7, s3, s1
                  xori         s4, s3, -1826
                  lui          zero, 447066
                  slti         s6, s3, -811
                  sltu         s6, a7, a4
                  sll          s8, t3, t6
                  divw         s1, s11, s5
                  auipc        sp, 735450
                  mulh         s5, a5, s10
                  div          s6, a4, a7
                  andi         a5, s2, 1268
                  mulhsu       s8, a5, s0
                  nop
                  divu         a1, s3, s3
                  remuw        s4, s4, s5
                  remw         zero, t2, t1
                  remw         s5, s11, tp
                  remw         s6, s9, ra
                  sltiu        ra, s3, 537
                  slti         t1, t4, -1521
                  srlw         s2, gp, a1
                  sll          t4, s3, t3
                  mulhu        t3, s6, t0
                  remw         gp, a4, t4
                  lui          t3, 673367
                  mulw         ra, a4, s0
                  mulw         a2, a4, s3
                  srlw         t4, s6, a4
                  srlw         t0, a3, s5
                  slli         a5, a5, 53
                  mulhu        t5, t6, ra
                  divw         s2, sp, t6
                  xori         t4, t6, -1607
                  srliw        t3, sp, 24
                  slli         a6, s11, 42
                  sll          a6, s10, a7
                  addiw        t6, t2, 2035
                  divu         t1, gp, a0
                  srli         t5, s11, 60
                  remuw        t5, s7, s5
                  ori          s2, a5, -233
                  divuw        a7, t1, t5
                  mulhu        s4, a0, s8
                  sll          s7, tp, s7
                  xori         a0, a2, 1309
                  srai         s8, s5, 8
                  xor          t1, tp, ra
                  div          t1, s0, s3
                  sltu         s11, a7, t6
                  divuw        s6, a0, s6
                  slliw        s6, t4, 19
                  div          tp, t4, s5
                  divuw        t1, zero, s8
                  sllw         gp, s7, a2
                  sllw         sp, a1, t0
                  nop
                  lui          a5, 421347
                  sltu         t1, s3, a2
                  sra          ra, s9, t0
                  mulhu        s9, a4, t6
                  srlw         a0, s11, s0
                  srai         s4, t2, 22
                  and          s5, s10, s6
                  slli         s5, t1, 60
                  sraiw        s2, s0, 29
                  mulh         ra, t0, sp
                  remuw        a0, gp, s11
                  mulw         zero, t6, a2
                  andi         a7, s10, 805
                  and          a0, s11, a3
                  remw         t1, sp, a4
                  sub          a2, s2, s10
                  mulhsu       a1, t5, t2
                  remu         gp, a0, tp
                  addw         t0, a7, a1
                  xori         a7, a5, -300
                  srli         t0, a2, 49
                  mulhu        t3, s3, t3
                  remuw        zero, t4, s7
                  nop
                  xori         s8, a5, -1166
                  lui          t4, 110153
                  lui          ra, 878279
                  slti         t1, t5, 1858
                  xori         a6, tp, -484
                  remw         s8, a0, sp
                  addi         a1, t6, 1955
                  addiw        s1, t0, -1184
                  remuw        s4, a6, s1
                  mulhsu       t2, tp, s5
                  mulhsu       t3, s1, t0
                  remuw        s8, s5, a6
                  addw         s9, s10, a2
                  add          a2, s0, s6
                  and          a5, s10, a7
                  srlw         t5, s9, t0
                  subw         a2, t4, s11
                  remu         t5, zero, gp
                  auipc        a7, 906809
                  slti         a3, t5, 708
                  remuw        a0, a3, zero
                  srlw         t5, a1, a2
                  sltiu        t0, t0, -1821
                  subw         s2, a4, a0
                  and          tp, t5, a7
                  srli         s1, a3, 56
                  sra          t6, s8, s10
                  add          s7, s8, t5
                  sllw         s9, gp, a7
                  mulh         zero, s9, a4
                  sraw         a5, s4, a7
                  add          t0, s10, s4
                  xori         a1, zero, -1940
                  addiw        ra, s10, 1559
                  mulw         s9, a4, t6
                  xor          zero, a0, s2
                  remu         s6, a4, s6
                  sraw         s8, s0, a1
                  divw         a0, s3, s10
                  slti         s2, a7, 546
                  remuw        s9, s9, a3
                  sraw         s8, s4, s8
                  remw         t1, t0, a5
                  srai         gp, ra, 33
                  remw         a0, t0, gp
                  divw         s1, s6, a0
                  sraiw        s3, a5, 27
                  mulhsu       a7, a0, t2
                  sllw         a0, gp, a3
                  nop
                  and          s5, t0, t0
                  mulhu        t1, a0, a4
                  auipc        s8, 623875
                  remw         t0, t5, sp
                  div          t2, tp, a2
                  mulhu        a1, a6, gp
                  mulhsu       a2, s1, gp
                  slliw        a2, t6, 2
                  subw         s6, tp, a4
                  srli         s6, s8, 27
                  divuw        t5, gp, s0
                  srliw        tp, t4, 27
                  add          s11, s0, a1
                  slliw        s3, s9, 15
                  sraiw        t6, a3, 13
                  slt          gp, t5, s3
                  mulh         s11, tp, a4
                  sltu         t5, s3, a6
                  remw         ra, s9, s2
                  sltiu        s9, t0, -1114
                  srliw        t6, a3, 2
                  div          gp, s2, t4
                  sub          s8, s10, ra
                  and          zero, s5, tp
                  sub          a7, s3, t3
                  add          a0, s6, sp
                  slliw        s3, t1, 31
                  sra          a2, tp, a0
                  sraiw        t1, a2, 3
                  rem          t6, tp, t5
                  remuw        t1, s5, a3
                  divw         t2, tp, zero
                  divu         a1, a7, t4
                  addiw        t1, s0, 1340
                  mul          t4, t6, a3
                  mulhsu       s6, a1, a6
                  addi         t5, t3, 342
                  mulhsu       zero, s2, s10
                  mulhsu       a2, t0, s6
                  nop
                  auipc        s11, 461548
                  mulw         s3, zero, s10
                  remuw        a7, s7, a6
                  div          s3, s1, t4
                  rem          a2, a1, s0
                  lui          s3, 998824
                  mulw         t0, ra, sp
                  slti         s11, s6, 1518
                  sra          s2, s3, s10
                  slli         a6, s3, 40
                  add          s1, s2, a4
                  xori         a0, s10, 1079
                  auipc        a0, 848872
                  sllw         a0, s6, s10
                  addw         s2, tp, s9
                  auipc        t5, 234303
                  subw         t4, s3, a1
                  ori          s6, t1, -928
                  mul          s3, s5, a5
                  subw         a7, a5, s6
                  sraiw        t4, s8, 30
                  slliw        a7, t1, 17
                  subw         a5, s2, gp
                  andi         s6, s4, -1451
                  addi         s11, s5, -734
                  srai         s1, t4, 60
                  sub          a7, s9, a7
                  sltu         s8, tp, s10
                  remw         s7, a1, s5
                  subw         t5, t5, s2
                  srliw        t6, sp, 8
                  mulw         t2, a7, s8
                  slti         t1, a6, 1056
                  sllw         t2, a7, a5
                  srli         t3, t6, 49
                  sltiu        t6, s8, 279
                  auipc        zero, 274550
                  slli         a7, s11, 8
                  srli         s8, s5, 39
                  lui          a7, 277143
                  srli         t0, t6, 49
                  mulw         s7, t5, zero
                  remu         s8, s3, t2
                  slt          t3, a3, s1
                  addw         t5, s5, t4
                  srli         t4, zero, 31
                  subw         t4, a7, t2
                  addiw        a5, sp, 1933
                  divu         a0, a1, t5
                  sra          a6, t5, gp
                  slt          s6, a2, a7
                  sll          t1, s7, s11
                  sllw         s8, t2, s9
                  remu         t3, a1, s2
                  sub          a7, t4, a1
                  nop
                  mulh         t2, s11, s3
                  or           t4, t3, a1
                  sraw         s11, t6, a3
                  addw         s7, s5, s3
                  sra          t6, t6, s7
                  addw         s8, s6, t3
                  remuw        a1, zero, t5
                  slt          a0, a0, sp
                  nop
                  divuw        ra, a5, t4
                  nop
                  div          s7, s2, s11
                  ori          t6, t3, 1108
                  sraw         s11, t1, t2
                  slti         a1, ra, -1021
                  addiw        t1, zero, -1531
                  divuw        s2, zero, s1
                  add          t6, ra, s0
                  sltu         s8, t1, t2
                  subw         t5, s11, s0
                  nop
                  srliw        a1, gp, 21
                  lui          s11, 676971
                  xori         a2, ra, 228
                  slt          a1, s6, t2
                  divu         ra, s6, s2
                  sub          s8, t5, a4
                  sraiw        sp, a0, 6
                  sra          s1, s9, t4
                  sltiu        s5, zero, -49
                  slt          t0, t3, t6
                  mulw         a6, t3, tp
                  sra          s11, a4, a3
                  rem          a5, s1, zero
                  subw         s4, s1, t5
                  lui          s3, 33058
                  divu         a1, s8, s2
                  slli         a3, a4, 0
                  srl          s4, s8, tp
                  srai         tp, s1, 37
                  slt          t5, t0, sp
                  srli         a2, sp, 29
                  subw         s1, a2, s9
                  slti         s1, a4, -1715
                  srli         sp, a2, 0
                  xori         t5, tp, -1102
                  sra          a2, t4, a0
                  mulw         t5, sp, s10
                  mul          a3, a3, s3
                  and          s3, tp, t0
                  and          s8, a5, a7
                  remu         a3, a2, s8
                  divu         sp, s4, s1
                  srl          a7, t4, s9
                  sll          zero, s7, s3
                  mulhsu       a0, gp, t6
                  or           s5, t3, a5
                  remuw        t0, a7, s7
                  mulh         s7, t6, s7
                  ori          sp, s3, 52
                  remu         s2, s8, t3
                  srai         t0, s3, 60
                  addi         sp, a3, 1677
                  divw         s5, t3, s4
                  mulw         s8, t0, s9
                  mulhsu       t6, t2, a5
                  lui          s3, 483790
                  addi         a5, s6, 876
                  srli         s9, s11, 17
                  add          s4, a0, t3
                  mul          tp, a2, a4
                  xori         s7, gp, -273
                  div          s9, t3, t4
                  sll          t4, zero, s0
                  srlw         s2, s11, a4
                  mul          zero, s8, t2
                  xori         a1, ra, -1147
                  sltu         s1, a4, s10
                  sltiu        t2, a3, 681
                  auipc        tp, 178763
                  and          a0, t5, sp
                  xor          t2, s4, s9
                  lui          sp, 1031408
                  slti         t5, s4, 388
                  subw         t3, a0, s9
                  mulhu        tp, tp, tp
                  xor          s4, s9, a7
                  sra          a0, t1, a5
                  divw         t0, s2, zero
                  subw         s4, s4, s3
                  sra          a7, s1, s5
                  lui          gp, 106230
                  slli         a0, t3, 30
                  mulhu        s11, gp, a3
                  subw         a3, t5, sp
                  mul          s3, s2, t2
                  sraiw        t4, s2, 3
                  slt          a1, s6, a2
                  and          sp, t3, s11
                  remuw        s1, s8, t6
                  sra          t4, sp, s3
                  xor          ra, a1, tp
                  divu         s8, s1, a0
                  nop
                  nop
                  sltiu        gp, t3, 202
                  slliw        a5, gp, 16
                  sltiu        s11, ra, 1775
                  divuw        s7, a0, a0
                  srai         s9, zero, 60
                  srl          s5, sp, zero
                  slli         ra, a7, 12
                  divuw        ra, sp, t2
                  andi         t5, s6, -764
                  xori         s2, s7, -1111
                  add          a6, s2, a5
                  or           t3, s1, s0
                  srlw         s2, s1, s7
                  srlw         s6, t1, s5
                  mulhsu       t4, ra, s3
                  srl          s9, gp, t0
                  nop
                  rem          tp, gp, t0
                  rem          tp, a4, a3
                  divuw        a5, s5, a2
                  div          a7, a0, s11
                  or           tp, t5, a6
                  xor          a7, s8, a4
                  sraw         s7, s0, a5
                  sub          s1, a0, s11
                  add          a7, s3, s1
                  sraw         a5, a1, a5
                  divu         t2, a5, gp
                  subw         a1, s5, s9
                  auipc        s9, 158589
                  rem          a3, t5, sp
                  rem          s9, s11, sp
                  srlw         a5, s0, s5
                  slti         s6, s0, -409
                  sltu         s5, ra, a3
                  srli         s1, s8, 10
                  and          a5, a1, s5
                  remuw        t1, sp, a6
                  addiw        a2, t5, -1151
                  add          ra, t3, s3
                  sub          s7, t0, s8
                  addw         a6, a4, a3
                  divuw        t4, s4, a6
                  srai         tp, gp, 6
                  divu         s9, t6, s10
                  xori         a0, a6, -1897
                  divu         s4, s7, t4
                  subw         t5, a7, t1
                  addw         s7, s2, zero
                  srai         tp, sp, 17
                  sllw         t1, s3, a6
                  divu         t6, s3, t3
                  srliw        s9, s8, 15
                  ori          t4, s9, -279
                  divuw        tp, zero, s8
                  sraiw        tp, a5, 10
                  srli         a2, t1, 60
                  srli         s7, ra, 17
                  sll          s9, a2, t6
                  addi         s4, a2, 561
                  divw         s2, s10, a1
                  mulhsu       ra, s0, a6
                  srlw         zero, a7, s11
                  mulh         s1, t1, a3
                  sra          s7, s6, s2
                  sllw         a1, s3, s1
                  divuw        s6, s2, t3
                  srl          a3, s3, s10
                  sra          a0, t0, sp
                  lui          t3, 182830
                  addi         t2, a7, 715
                  divw         zero, t1, a3
                  srai         s4, t2, 38
                  slliw        s7, s10, 25
                  divw         t5, a3, t5
                  addw         t0, a1, s9
                  addw         a6, a2, s8
                  slt          t5, sp, t3
                  subw         s4, t1, s6
                  divw         tp, t4, t4
                  mul          s3, s6, a5
                  sll          s3, gp, s8
                  nop
                  div          a3, a0, s7
                  sraiw        a2, gp, 9
                  srli         tp, zero, 27
                  sub          s11, t6, t2
                  mulhsu       a5, s0, s3
                  srlw         a2, s1, ra
                  srli         a5, a5, 54
                  sraw         t3, s2, sp
                  andi         tp, a1, 1218
                  srliw        s11, t6, 30
                  addiw        s4, s2, -1850
                  ori          s5, s5, 1775
                  sra          s6, gp, t3
                  sllw         s9, a2, tp
                  xor          a3, s2, s0
                  divuw        zero, a1, s4
                  xor          t5, s11, s6
                  srliw        s1, s4, 17
                  xor          a7, t4, ra
                  mulw         t6, a0, s6
                  sllw         gp, s8, t3
                  mul          t6, s1, s10
                  divuw        t2, s8, s1
                  sraiw        s7, s1, 9
                  remuw        ra, t3, s4
                  mulhu        t4, s10, zero
                  slliw        ra, s3, 26
                  sltiu        gp, t1, 451
                  sllw         s8, sp, a1
                  div          a6, s9, a7
                  lui          t1, 439161
                  and          t1, t4, a4
                  sraiw        t3, t4, 2
                  srl          t1, a6, sp
                  div          a1, t1, a7
                  mulh         t3, a3, s1
                  divu         s4, a6, t3
                  sraw         zero, tp, a2
                  srl          a3, gp, t4
                  srl          a3, tp, a7
                  remw         a2, tp, s9
                  mul          s7, t5, s5
                  divuw        a2, s7, a1
                  slt          a5, s3, t2
                  slliw        s1, zero, 1
                  remu         a5, s3, s3
                  xori         s5, s0, -431
                  add          tp, s6, gp
                  srai         s4, t6, 10
                  sll          gp, s1, sp
                  ori          t4, t4, -1172
                  slliw        a0, gp, 28
                  and          a6, a7, gp
                  slli         zero, s5, 27
                  mulw         t3, a0, a5
                  mulh         ra, s6, t3
                  slti         s11, a0, -1491
                  divuw        s7, t2, t4
                  remw         t2, s9, a2
                  sraiw        t2, a7, 10
                  divuw        a2, zero, a4
                  divuw        s9, t2, a4
                  mulhu        s9, a7, s4
                  sra          a0, s6, t3
                  srli         ra, s8, 46
                  srl          zero, tp, s9
                  mulw         a5, zero, a1
                  sraiw        zero, a7, 15
                  sltu         a2, s11, t6
                  nop
                  divuw        t2, a3, tp
                  and          a3, ra, s7
                  andi         t1, s5, -1433
                  mulw         s7, t5, sp
                  ori          a0, a2, -109
                  subw         a0, t0, t0
                  mulw         a1, a2, a2
                  ori          a5, a4, -1973
                  sllw         t1, s10, t6
                  remw         s3, a1, s8
                  auipc        t2, 973600
                  addw         a1, a1, a2
                  sltiu        s9, a4, 1460
                  mulhsu       zero, a2, a7
                  mulhsu       zero, t0, s6
                  addi         a5, t2, -1499
                  slli         s11, sp, 31
                  div          a5, s2, zero
                  xori         s1, t3, -1466
                  lui          t0, 1048227
                  xori         sp, s5, 3
                  slli         s5, a4, 16
                  rem          t0, sp, s4
                  xor          t4, a2, s0
                  remw         s11, t4, a3
                  srli         t4, s3, 2
                  sraw         s3, s9, a4
                  slliw        a7, s10, 11
                  srai         t6, t5, 11
                  addiw        a0, s11, 1375
                  nop
                  or           a3, t0, gp
                  ori          s4, s3, -1459
                  sra          t6, s7, a6
                  divu         ra, t6, gp
                  sra          s7, a3, t1
                  mulw         s5, s9, t2
                  remw         s1, s5, t0
                  sllw         zero, s10, s3
                  sltu         t1, t3, s7
                  mulh         s2, tp, gp
                  srliw        a5, t4, 24
                  slt          a0, s8, s4
                  addw         s4, s4, t5
                  mulhu        a6, zero, t1
                  xor          s6, s9, s3
                  ori          zero, s10, -9
                  or           s9, s8, a0
                  remu         a5, ra, s7
                  divuw        a5, a0, gp
                  and          t2, t2, a5
                  addw         t5, sp, a6
                  mulw         s3, a5, s6
                  lui          a0, 935527
                  srl          s1, tp, sp
                  addiw        t2, a3, 792
                  slli         sp, a3, 43
                  sraw         s5, s11, t2
                  xor          s5, t1, s1
                  slt          t0, t2, s8
                  srl          t0, a1, tp
                  sll          a5, t3, t1
                  sub          s11, t3, zero
                  sltiu        a2, a0, 1389
                  addi         tp, s4, 117
                  sub          gp, ra, a4
                  lui          tp, 738116
                  addiw        a3, s1, -569
                  mulh         a2, s11, s1
                  mulh         s7, s2, t5
                  slliw        zero, a1, 11
                  divuw        a5, t6, s10
                  sltiu        s6, a4, -867
                  srli         gp, zero, 13
                  sraiw        s11, a1, 11
                  addi         t1, s1, -66
                  slliw        s2, zero, 14
                  mulhu        s8, gp, s3
                  andi         s6, a7, -93
                  slliw        s8, s2, 29
                  divw         s9, s8, s1
                  sraw         ra, a1, s6
                  srlw         s5, gp, s3
                  rem          s3, s11, zero
                  sllw         gp, t6, s4
                  sraiw        t1, a0, 21
                  sll          s11, tp, s7
                  sraw         t5, s5, s8
                  xor          t1, a1, t5
                  srli         s6, s3, 36
                  remw         gp, sp, t6
                  sltu         s2, s11, tp
                  add          s7, s1, s4
                  slliw        s5, s6, 19
                  divw         gp, s7, a2
                  xor          ra, s6, zero
                  divuw        s3, s6, a6
                  auipc        s5, 556386
                  slt          a1, a5, a1
                  auipc        s6, 1035770
                  remu         a2, s5, s10
                  srlw         t2, a1, t2
                  srliw        s3, tp, 16
                  ori          s9, t4, 1248
                  mulh         s5, s8, s7
                  sltu         a6, a4, a2
                  slt          t2, s7, t2
                  divw         s6, ra, gp
                  sltu         t5, s7, s5
                  mulhsu       t3, s3, t3
                  mulhu        t0, zero, s0
                  remu         t3, a2, t0
                  sraiw        a3, s9, 27
                  ori          a7, t4, -1103
                  sltu         t3, t6, s6
                  divu         t3, a0, s9
                  divuw        t3, s0, s8
                  add          t3, s0, a1
                  remuw        a3, s10, a7
                  srli         a2, s2, 5
                  remw         a1, tp, ra
                  sra          a5, a1, a0
                  auipc        s7, 217094
                  add          s4, s9, a7
                  xor          s2, s11, s8
                  mulw         s7, t2, s11
                  and          a2, s1, t1
                  xori         t5, s1, -1209
                  or           a7, s11, s6
                  addiw        tp, a4, 890
                  divuw        a0, s3, s4
                  srli         s4, s0, 31
                  sraw         a6, t6, t6
                  remu         sp, a6, s9
                  remu         a2, t2, t3
                  slli         a7, s11, 1
                  addw         s1, a1, t5
                  mulh         a5, t2, s5
                  srai         s6, a0, 41
                  sub          tp, t2, t5
                  mulhu        a0, a1, s10
                  remw         s2, s11, t2
                  xori         t4, s4, -1406
                  divuw        t0, s9, t2
                  slli         a2, zero, 43
                  slti         s7, s10, -1636
                  remw         s7, s10, a3
                  remuw        s2, t4, s1
                  andi         s2, a2, 704
                  remw         zero, t2, s4
                  xor          s8, s10, a5
                  slli         a0, sp, 22
                  srliw        a2, s10, 2
                  srli         s7, a2, 35
                  sraiw        sp, s5, 19
                  slt          s9, s1, t2
                  srai         t2, ra, 19
                  sll          a5, a5, t2
                  sltiu        s8, s1, 159
                  sltiu        t2, zero, 1445
                  ori          tp, s7, -1041
                  divu         s3, s0, s1
                  xori         s2, s11, 113
                  auipc        s6, 633582
                  remu         a1, s3, s7
                  addi         s11, tp, -131
                  sraw         ra, t3, a1
                  sraw         a3, s2, s4
                  or           t4, s5, s2
                  nop
                  sltu         s2, a2, s2
                  srl          a1, a3, a2
                  remu         s7, tp, ra
                  or           a1, t5, a5
                  subw         gp, a3, s5
                  xori         s5, s3, -1529
                  nop
                  sraw         a1, s2, a4
                  slliw        a7, a3, 16
                  addi         a7, s5, -1252
                  rem          s2, s5, a4
                  mulhsu       s6, a0, a0
                  xor          s8, a6, zero
                  addw         s5, s9, a7
                  sraiw        s7, s8, 8
                  subw         a5, s6, a5
                  div          t6, t1, s10
                  mulhsu       s6, a2, gp
                  or           s1, s4, s1
                  slli         t1, zero, 48
                  mulw         a1, zero, sp
                  div          s5, s9, s6
                  or           sp, t1, t0
                  addiw        s6, s3, 277
                  sll          sp, t1, t1
                  subw         zero, a5, zero
                  divw         t5, a4, t6
                  remw         s4, a2, t0
                  rem          sp, ra, t2
                  srli         zero, s4, 21
                  slli         a0, tp, 52
                  mul          s8, a0, t1
                  srliw        t6, a2, 22
                  srai         s7, s0, 32
                  divuw        a2, a5, s4
                  addiw        t0, a6, -45
                  div          a7, s7, s9
                  mul          t6, t3, t3
                  mul          zero, a0, s8
                  remw         a7, tp, s8
                  div          t4, a3, t0
                  slti         tp, s8, 1865
                  divuw        t4, s10, a6
                  nop
                  remw         zero, s3, s1
                  slliw        s7, s6, 3
                  subw         t2, s7, s8
                  sltu         s9, t5, s0
                  lui          s5, 306893
                  sllw         a7, s0, a7
                  mulw         s11, s3, s10
                  addiw        s9, t3, -865
                  addw         t0, s11, t5
                  divuw        s6, a0, gp
                  srlw         s4, a1, t2
                  mul          sp, a3, s3
                  remu         ra, a0, t0
                  sraw         sp, t2, t0
                  sub          s2, sp, gp
                  sraw         a0, s3, s0
                  mulhsu       t0, a7, t2
                  auipc        a3, 250590
                  div          s8, t1, a3
                  addw         s3, s0, s11
                  addiw        s11, t0, -159
                  srlw         tp, s3, t1
                  mulh         s2, a4, tp
                  remw         gp, a2, sp
                  sllw         s6, t0, t6
                  sltiu        a2, a0, 660
                  xori         s9, zero, -181
                  sll          s8, s9, zero
                  sraiw        s8, s2, 0
                  srliw        ra, s9, 27
                  addw         sp, s6, a7
                  mulh         s1, a1, a4
                  subw         s5, a6, t3
                  addiw        t6, tp, 134
                  sll          s1, a4, s6
                  sltiu        a2, s8, -1186
                  addi         a3, s11, -2008
                  auipc        tp, 403331
                  slt          a2, s4, sp
                  add          t4, ra, t2
                  sraw         t2, s7, s0
                  mulhu        a1, a1, s10
                  remuw        s4, a6, s3
                  or           s6, a2, t2
                  remu         a0, t3, s1
                  or           s6, t3, a7
                  addiw        t0, s2, 1976
                  sltu         t0, s7, s10
                  mulhsu       t2, s7, a0
                  div          ra, a7, t4
                  sltiu        s8, sp, -1055
                  srliw        a1, a7, 27
                  mulw         s9, ra, s4
                  addi         s7, ra, -674
                  slliw        s8, s7, 1
                  sll          t1, a4, s0
                  srli         t5, a2, 1
                  addw         s6, s3, t3
                  and          a0, a5, a5
                  mulhu        zero, zero, a0
                  and          t5, s3, s6
                  srl          a6, s5, a4
                  mulhu        tp, t4, s2
                  slli         t1, s10, 15
                  slliw        t2, t5, 7
                  mul          a2, s10, s8
                  mulhu        t2, s9, a6
                  divu         a6, t6, a0
                  sllw         s9, a3, a2
                  divw         t2, tp, s2
                  sra          a2, t6, s9
                  sltiu        a5, t3, 802
                  slliw        a5, t4, 31
                  sraiw        a5, a1, 9
                  remuw        s9, a7, t4
                  nop
                  addiw        s3, zero, -2016
                  slt          s9, t6, s7
                  mulhu        a5, ra, ra
                  srliw        s6, s3, 19
                  remu         s7, s8, s4
                  divw         t5, a7, s10
                  slt          s8, s1, s8
                  sra          t6, zero, sp
                  remu         a2, t4, a6
                  ori          t5, s8, 183
                  sub          s3, t6, t5
                  srliw        a0, a6, 28
                  sraiw        tp, a7, 2
                  sraiw        a2, t5, 24
                  xori         t3, a0, -408
                  sll          s8, s1, a4
                  divw         s1, a0, t6
                  xor          gp, s5, s3
                  mul          s8, a7, a3
                  andi         zero, t1, 410
                  sub          t6, a2, s1
                  divuw        ra, t2, a1
                  rem          a3, t2, t2
                  srlw         t5, gp, s8
                  sub          gp, t3, t2
                  remw         s2, a3, a6
                  remw         s11, a0, s1
                  nop
                  nop
                  andi         t5, t6, -731
                  nop
                  mulh         ra, tp, s5
                  xor          t6, a6, s4
                  srl          tp, s10, a0
                  nop
                  mulhu        t0, t1, s9
                  mul          a5, t0, s3
                  srai         a7, t6, 37
                  mulhsu       zero, a4, a7
                  remw         t2, s1, a6
                  srliw        t1, a1, 10
                  or           t6, t6, s11
                  srliw        t6, a0, 23
                  sltu         t6, s6, zero
                  srli         s5, a0, 32
                  remw         s1, t0, a4
                  sllw         sp, s2, t1
                  sll          s5, s11, zero
                  remuw        t0, t4, a2
                  and          zero, s2, gp
                  slt          s7, t0, t3
                  sltu         gp, s4, s10
                  rem          a0, gp, s7
                  addi         t1, a4, 1647
                  slt          a3, s1, t6
                  sra          a1, s1, s11
                  slt          zero, a0, a2
                  ori          s7, t2, -1310
                  rem          sp, a3, s0
                  mul          a0, s9, t2
                  sll          s3, s5, s10
                  rem          zero, sp, ra
                  mulw         s8, s7, t2
                  rem          a0, s5, tp
                  sllw         s1, t4, a7
                  srai         a3, a6, 30
                  slliw        s3, t5, 11
                  sltiu        t1, a6, -1693
                  sll          t1, t4, t6
                  remuw        s2, s8, t2
                  mulhu        t2, a7, a7
                  mul          a2, a0, a5
                  addiw        t1, s5, 356
                  mul          t4, s8, s10
                  sltu         t4, s3, a5
                  mulhu        s2, gp, a7
                  andi         a5, t2, -1121
                  mulhu        gp, a0, s10
                  rem          t3, a7, t3
                  andi         t0, s3, -59
                  addiw        ra, t4, -665
                  and          t2, sp, a1
                  div          s9, t5, t5
                  sltiu        ra, t0, -1748
                  add          sp, t5, a0
                  and          a7, a0, a3
                  divw         ra, t1, a2
                  and          a7, a7, s4
                  sltu         a7, s7, s8
                  srli         a0, s5, 34
                  sraw         s1, a2, gp
                  divuw        s8, zero, t4
                  auipc        a0, 72433
                  mul          zero, gp, s3
                  ori          gp, a0, -1716
                  mulh         t4, s2, a5
                  auipc        s1, 460303
                  and          t2, a7, a1
                  lui          t6, 57514
                  slti         s1, s5, 520
                  lui          a1, 80409
                  slt          t3, s6, t3
                  sraw         t5, sp, s11
                  remw         t2, ra, s8
                  sub          s3, sp, t4
                  sra          tp, a0, t1
                  addw         s1, t2, s3
                  mul          s6, a3, t4
                  slt          t3, s9, s5
                  slli         s3, a5, 50
                  and          t0, s6, s0
                  xor          s5, a1, a5
                  rem          s1, t5, s4
                  addw         a2, a1, gp
                  sub          t5, t1, t3
                  mulhu        ra, s9, tp
                  slt          s5, t5, s8
                  sraiw        s8, t3, 30
                  remu         s8, s5, a6
                  and          a5, s1, s10
                  srlw         tp, s7, a3
                  srliw        s11, a5, 0
                  remu         t5, ra, ra
                  divu         t1, gp, s0
                  sllw         t2, a7, t5
                  mulhu        zero, s8, s7
                  sraiw        gp, t2, 6
                  andi         t5, t3, -441
                  sltiu        t5, tp, -254
                  and          a5, s8, s5
                  sub          t4, gp, s3
                  sraiw        s4, s6, 23
                  sllw         s11, t0, gp
                  addw         s9, s7, s9
                  slliw        a5, sp, 26
                  srlw         t1, a1, a0
                  sll          s2, t6, s6
                  sub          s5, s3, s0
                  remw         t1, s2, s9
                  mulh         s1, tp, s10
                  slti         sp, s9, 712
                  div          a5, a5, s9
                  sltu         s3, t3, s9
                  remuw        s6, t4, t3
                  mulh         t3, s1, s2
                  remu         a6, s11, sp
                  addw         a6, s8, t2
                  andi         s2, s5, 543
                  slliw        s5, s2, 9
                  mulw         sp, a1, t1
                  srli         t1, a7, 36
                  slli         a7, s3, 56
                  lui          tp, 132687
                  remw         a5, s8, t2
                  xori         a6, sp, -1438
                  mul          sp, zero, tp
                  slli         t6, a7, 22
                  xor          t3, ra, a7
                  rem          t0, t6, s1
                  divw         s1, zero, t2
                  sraiw        t5, s10, 17
                  div          s7, t3, s1
                  xori         ra, s10, -2012
                  andi         s4, a1, -1396
                  remuw        t5, t3, s8
                  sub          a6, a5, a3
                  subw         a5, s4, zero
                  divw         a1, a6, s4
                  rem          t1, t5, gp
                  auipc        a0, 651428
                  divu         t1, t1, a0
                  srai         tp, s9, 24
                  srl          s11, s10, s7
                  auipc        s9, 355455
                  sllw         zero, sp, a3
                  srli         t4, zero, 46
                  or           sp, t6, a1
                  xori         sp, s3, -499
                  subw         t3, s0, a6
                  mulhsu       s2, s6, zero
                  sraiw        t0, a5, 24
                  sltu         a3, a6, a7
                  mul          t6, t1, t4
                  xori         ra, s1, -1167
                  divu         ra, s0, s4
                  ori          s8, t4, 1687
                  rem          s9, a0, s10
                  mulhsu       s3, a5, a5
                  sltiu        zero, s0, -1020
                  div          t1, s6, a7
                  nop
                  ori          s7, t6, 777
                  mulhsu       s1, s8, t4
                  divu         s11, s7, s0
                  slti         s5, t1, -600
                  lui          s9, 340828
                  slli         t1, s1, 3
                  remuw        a0, a7, t3
                  xori         s7, s11, -487
                  slti         s1, t6, -1751
                  add          zero, zero, t4
                  subw         a7, s2, t1
                  mulhu        t5, s8, gp
                  divw         t5, zero, s6
                  sll          s11, s4, a3
                  remw         a3, s1, ra
                  addiw        s8, zero, -154
                  remuw        s2, s0, t3
                  divw         t2, gp, a1
                  sltiu        s6, s10, 1036
                  divu         s5, a6, a0
                  auipc        tp, 858328
                  slt          a6, a4, a1
                  remuw        s1, a1, a4
                  lui          s1, 952708
                  sub          s11, s1, gp
                  slliw        s11, zero, 23
                  rem          sp, a6, s2
                  srli         ra, a1, 18
                  addiw        s2, ra, -1376
                  auipc        s1, 706530
                  mulhu        s1, t0, s10
                  sltiu        a6, sp, -832
                  div          t1, s1, s7
                  mulh         s1, sp, a0
                  slti         gp, t4, -659
                  srli         s6, s5, 59
                  nop
                  srli         t2, ra, 26
                  srai         a2, ra, 11
                  sra          s5, a7, s5
                  ori          a2, s11, 1778
                  subw         sp, s7, t6
                  addi         a5, a3, -715
                  sll          s1, s6, zero
                  nop
                  sub          t5, t3, s7
                  or           t1, s4, a1
                  sraiw        s2, t1, 9
                  remu         a2, a3, a0
                  ori          a3, a3, 786
                  slti         a0, a0, 1152
                  slli         t2, s8, 2
                  mulw         s11, s1, a5
                  andi         t1, a7, -1489
                  div          t2, t3, tp
                  sub          t5, tp, a7
                  mulhsu       gp, s11, ra
                  srl          a0, a2, s8
                  divuw        a6, a4, a1
                  addiw        s2, s7, 1130
                  srl          s2, a3, a2
                  mulh         t2, a4, zero
                  ori          s8, a1, 634
                  sltu         a2, s5, s10
                  slti         s8, a2, 701
                  srl          ra, s3, s9
                  xor          a2, s10, t1
                  auipc        s3, 100861
                  add          s9, gp, zero
                  srliw        a6, a2, 9
                  sraw         a5, s3, s2
                  and          t5, s4, s3
                  remu         a2, s9, a7
                  slti         s9, gp, -1238
                  add          a6, a4, s5
                  auipc        s8, 1043234
                  mul          zero, t6, zero
                  divuw        a5, t6, a0
                  slliw        t5, t3, 28
                  slliw        s4, s0, 3
                  remuw        s6, t2, t3
                  subw         s1, gp, s5
                  xori         a7, ra, -395
                  srl          ra, s7, a2
                  sltiu        s9, s5, -3
                  addiw        tp, a3, -1040
                  xori         s1, a7, 302
                  mulw         s5, t5, a2
                  mulhu        s8, s4, t0
                  srliw        s2, t4, 26
                  mulhu        a7, s5, a1
                  rem          s3, a7, tp
                  add          s5, s3, s0
                  addiw        a6, s3, 185
                  mulh         gp, t0, a7
                  srai         t5, s3, 14
                  sub          s2, s1, s7
                  subw         t2, s1, s3
                  ori          t6, t3, 1101
                  or           t2, s0, gp
                  remuw        t1, s3, t2
                  nop
                  divw         t6, zero, s2
                  addi         t2, t2, -1393
                  slliw        t4, ra, 0
                  subw         ra, sp, s2
                  and          t5, s9, t5
                  remu         sp, a5, s5
                  divw         a5, s7, t6
                  divu         sp, s4, s9
                  addw         t4, a5, s0
                  divw         t5, s4, a1
                  srliw        zero, a0, 25
                  sllw         a2, s6, t2
                  xor          t3, zero, t2
                  divw         s1, tp, s0
                  auipc        t0, 656841
                  sra          gp, a4, sp
                  lui          a6, 116849
                  srai         ra, t6, 51
                  add          zero, s11, s11
                  slti         t2, tp, -1504
                  sraw         t1, s9, a0
                  slti         a1, s8, -1711
                  sll          a3, a6, t3
                  mulw         t2, s11, s7
                  nop
                  add          ra, a5, t1
                  lui          s11, 757160
                  slt          s9, s4, t6
                  mulh         s1, a3, t2
                  xori         t1, s5, -902
                  lui          s6, 227254
                  srlw         t6, a7, s5
                  sltiu        sp, tp, 2012
                  andi         s7, s0, -246
                  srai         s3, a2, 34
                  slt          s9, a3, t6
                  subw         s4, ra, ra
                  addiw        s5, t4, 1265
                  xor          gp, t0, s6
                  addiw        s2, t1, -573
                  or           a6, s10, a3
                  mul          t1, a7, t0
                  srlw         sp, t5, t1
                  sra          ra, a7, s8
                  divw         a0, s11, s0
                  sub          a0, s11, a4
                  srli         a2, s3, 7
                  srl          gp, a3, a7
                  lui          zero, 77800
                  sltu         a5, t4, a2
                  remw         s6, t6, s1
                  addiw        t5, s8, 1680
                  slti         t2, t3, -601
                  divw         s4, s5, s7
                  ori          t1, a4, 1486
                  divu         t1, s1, tp
                  mulw         a6, a4, t1
                  addw         gp, ra, a1
                  sllw         t5, ra, a7
                  mulw         s11, zero, s2
                  remuw        s6, a3, s3
                  sltu         t5, a0, t1
                  nop
                  addiw        s7, ra, -1414
                  mul          t1, gp, s10
                  slli         sp, s10, 57
                  mul          s6, ra, a0
                  srl          a5, t3, zero
                  mulhsu       t2, a7, gp
                  slli         a6, ra, 30
                  addw         t4, a6, zero
                  slli         s2, s0, 60
                  addw         tp, s5, a2
                  slli         a2, s0, 41
                  sraw         s1, zero, a0
                  subw         s1, s10, a5
                  sltiu        s1, a3, -430
                  sltu         s5, t0, gp
                  ori          s4, gp, -1440
                  sllw         s2, s4, t4
                  rem          a0, a1, s4
                  andi         t0, s10, -1966
                  divw         s5, s3, t0
                  addiw        s6, a1, -606
                  sll          a0, s3, s1
                  or           s8, s3, a5
                  andi         s4, gp, 777
                  srai         tp, s4, 23
                  slli         t2, t4, 60
                  subw         a2, s2, s9
                  xori         t0, s7, -787
                  xor          s7, t2, t5
                  remw         sp, tp, a2
                  sub          ra, tp, t1
                  divuw        s5, t6, gp
                  mulh         a7, s1, s4
                  or           s6, gp, s8
                  divuw        s9, s4, s1
                  sltu         s9, s0, a2
                  mulh         a6, t4, s10
                  lui          ra, 800912
                  srl          s11, tp, tp
                  ori          a2, a7, 2024
                  slliw        tp, s3, 20
                  divu         t6, a3, s11
                  mulhsu       gp, a7, a1
                  remuw        gp, t6, sp
                  remuw        zero, s6, gp
                  xori         tp, a0, -317
                  srai         s3, ra, 17
                  divuw        s9, s0, a3
                  rem          a0, t2, s11
                  add          ra, s10, t3
                  srliw        s7, s1, 13
                  sltu         s11, zero, t6
                  and          sp, s8, s3
                  slliw        s4, zero, 5
                  auipc        a2, 564069
                  sub          s4, s3, t1
                  subw         a2, s2, a3
                  rem          t1, t1, s3
                  mulw         s9, s6, s4
                  xori         a5, a6, 73
                  sraiw        a0, a1, 9
                  subw         t5, a2, a4
                  addw         s2, gp, a6
                  srli         t3, gp, 39
                  rem          a0, s5, s4
                  divu         t0, zero, zero
                  divuw        ra, s7, s3
                  srl          zero, a0, a6
                  srl          t0, gp, s4
                  sraiw        gp, s4, 12
                  srl          s7, s7, s2
                  mulh         a6, s4, gp
                  srli         t6, a5, 36
                  mul          t0, t4, t5
                  divw         sp, a1, s3
                  sll          a5, s7, t6
                  andi         ra, t2, 1077
                  nop
                  srl          s5, gp, s11
                  sltu         a0, sp, t0
                  xor          sp, zero, gp
                  sub          s7, a7, s10
                  ori          a0, ra, -1063
                  srliw        sp, a3, 21
                  sltu         s8, a5, t5
                  sllw         s2, s9, t1
                  slt          t0, gp, a7
                  mulhu        s3, t2, t2
                  sraw         t0, a5, a6
                  slliw        s3, s9, 1
                  slliw        a6, s0, 2
                  sll          t2, a2, s4
                  add          ra, t1, a1
                  mulw         a5, ra, gp
                  andi         t5, s9, 1062
                  or           s5, s1, ra
                  xori         a1, s5, 12
                  sll          a1, t5, a0
                  sra          s5, tp, t0
                  addiw        t1, s11, -670
                  sltu         a3, t4, s3
                  slt          t1, tp, ra
                  div          s5, a5, t6
                  or           s11, s6, a5
                  divu         s3, t1, t0
                  divu         ra, s7, zero
                  slti         t1, ra, -245
                  srl          gp, s7, s1
                  lui          t3, 58264
                  sraw         s5, s8, s1
                  mulw         zero, a2, a2
                  mulw         gp, t1, s11
                  lui          t4, 115241
                  xor          s1, s6, a4
                  remw         s7, tp, a6
                  sraiw        t2, tp, 0
                  remu         s2, a0, t1
                  slliw        t2, a2, 26
                  sub          s5, a4, s7
                  srl          gp, a1, s7
                  sllw         t1, s10, s9
                  remuw        a7, ra, s1
                  sltiu        t3, t2, -777
                  divw         tp, s11, t0
                  mulh         s6, a1, ra
                  slli         t1, s3, 11
                  sraw         s9, s10, a3
                  or           s2, t2, t0
                  add          s7, s6, s0
                  subw         t1, s10, s1
                  add          a0, t4, t3
                  nop
                  ori          gp, zero, 369
                  srai         a1, zero, 19
                  addi         s11, a1, -1206
                  sraiw        t5, s1, 29
                  mulw         tp, t4, a6
                  srli         a6, a4, 60
                  div          t2, s6, t1
                  divu         a0, gp, t1
                  rem          t3, s2, s3
                  sll          a5, zero, t2
                  xor          zero, t5, t2
                  remu         a3, a7, a3
                  divw         sp, a5, s9
                  mulhu        zero, t0, s7
                  or           gp, a6, s9
                  remw         gp, a3, a2
                  slt          a6, t0, a3
                  divu         t5, t5, s6
                  nop
                  slt          a1, t0, s9
                  add          s2, s6, zero
                  srai         a0, t4, 51
                  sllw         t3, a4, s6
                  div          a3, t5, t5
                  ori          t5, s1, 381
                  srl          t1, s0, gp
                  divuw        ra, a4, a3
                  srai         a0, t6, 55
                  srli         s9, s2, 1
                  srlw         a7, a1, t3
                  andi         a0, s0, -543
                  addi         s5, s1, 1052
                  srai         a0, s0, 9
                  remw         s6, s11, s4
                  xor          s8, a4, t5
                  sub          s9, t0, t0
                  sraiw        sp, t3, 8
                  srai         a2, s5, 48
                  srliw        s3, t2, 12
                  lui          a6, 678751
                  nop
                  xor          t6, t4, t1
                  sraiw        s6, t5, 18
                  mul          a6, a5, s7
                  sllw         sp, s9, s8
                  mulhsu       a6, s3, a5
                  addiw        gp, a5, 1625
                  xor          t6, a3, s1
                  add          a7, s7, a5
                  remuw        gp, zero, a5
                  add          a0, a2, s7
                  subw         t2, t6, t3
                  mul          s9, s6, s3
                  srl          t4, s9, s4
                  or           t4, a0, s3
                  slt          t5, a6, s2
                  srl          s11, a0, a1
                  srliw        s8, t2, 20
                  mulh         a3, a3, t5
                  or           gp, a6, t6
                  srliw        s2, s5, 26
                  remuw        s11, gp, s3
                  sra          s1, t2, s2
                  auipc        a6, 571083
                  slli         s7, s6, 23
                  addw         s3, t3, t6
                  slti         t2, t2, -1331
                  sllw         s1, s11, s7
                  nop
                  remuw        s2, s11, sp
                  mul          t6, s9, t4
                  add          t4, s8, s0
                  xor          t0, s6, t3
                  remuw        a1, s6, s3
                  xori         s2, a6, 500
                  sltu         a6, s2, sp
                  or           a1, s4, s9
                  mul          s4, a7, t4
                  divuw        s7, sp, s3
                  rem          t5, a6, a2
                  divuw        a2, s2, a5
                  remuw        s6, s6, a2
                  srli         ra, sp, 13
                  slti         a1, a1, 1833
                  srlw         a0, t6, a4
                  remuw        a6, a2, s3
                  mulhsu       a3, s1, t5
                  lui          gp, 139838
                  lui          sp, 763332
                  subw         t5, ra, zero
                  sll          s8, t1, a1
                  sll          a3, s11, s5
                  remw         t6, a7, sp
                  ori          t5, s5, -1446
                  srai         t2, zero, 63
                  addiw        s5, s4, 769
                  xori         s6, s0, -1710
                  sltiu        a7, a7, -47
                  addiw        s8, s11, -579
                  nop
                  sraw         a3, s7, t2
                  srai         s2, a1, 32
                  sub          t6, gp, s5
                  xor          s4, s7, a1
                  lui          a1, 795142
                  sll          a6, s4, s7
                  xori         t5, s3, -1839
                  mulhsu       a0, a5, a0
                  slli         t5, s5, 48
                  rem          s7, s7, ra
                  auipc        s9, 724556
                  sraw         s9, s7, t0
                  remu         s3, s8, s11
                  lui          t5, 728536
                  rem          ra, s8, s0
                  xor          a1, s2, s11
                  divuw        sp, sp, sp
                  divuw        t5, s3, s4
                  sllw         s3, s9, s1
                  xor          a6, ra, ra
                  mulw         s11, s0, s4
                  remuw        s8, t1, s8
                  slti         t0, a2, -767
                  ori          t1, a2, -981
                  sltiu        s8, a0, -183
                  remuw        t5, s11, s11
                  mulw         s11, sp, t1
                  rem          a3, a4, t1
                  sraw         a0, s6, s9
                  remw         t3, t2, sp
                  xor          s2, s4, s8
                  mulhsu       s11, t2, s8
                  slti         gp, gp, -705
                  srliw        t6, a4, 14
                  or           t5, s6, s0
                  sltu         tp, a0, a0
                  addi         a6, tp, -1691
                  divuw        t3, t1, a5
                  sllw         s11, s4, s5
                  nop
                  divw         t6, s3, t2
                  mulhsu       s8, sp, s10
                  mulhu        a2, s8, a5
                  slli         gp, ra, 30
                  addw         sp, gp, a3
                  srli         t6, tp, 47
                  rem          gp, a2, t6
                  subw         ra, t4, a5
                  rem          s5, s5, s7
                  andi         t4, s11, 1615
                  sll          a5, t4, s3
                  sllw         s1, s3, t2
                  mulw         gp, t2, a3
                  sltiu        s5, s4, -1020
                  srliw        gp, zero, 5
                  divu         a1, s10, tp
                  slt          s9, a4, t6
                  sltu         t5, s2, t1
                  and          s2, s6, s6
                  mulh         t5, s4, s10
                  sra          s6, s10, s0
                  srl          sp, a6, s7
                  mul          a0, s7, a3
                  ori          a3, s9, -1703
                  rem          t5, a3, s0
                  srliw        s1, t3, 4
                  mul          s11, a3, a4
                  srl          a2, s5, s3
                  slt          tp, ra, sp
                  sraw         s7, sp, sp
                  sll          t6, a5, s8
                  subw         zero, t6, a3
                  slliw        s5, a4, 1
                  lui          t2, 89397
                  srliw        t4, t5, 24
                  mulhsu       a5, s7, a7
                  nop
                  srliw        a1, a0, 12
                  srli         t6, a0, 9
                  remuw        s3, t2, gp
                  slti         t3, a6, 1122
                  slt          s9, a1, s11
                  remu         s8, a0, a6
                  srli         a7, a7, 20
                  sra          a5, a4, s7
                  ori          s7, s10, -174
                  srai         zero, a7, 45
                  slliw        s8, a4, 10
                  sraw         t5, s2, a2
                  andi         tp, a7, -249
                  srlw         s1, s6, a1
                  divw         s3, t1, s9
                  xor          sp, a2, s10
                  srai         t5, s2, 54
                  or           t5, s1, s2
                  remuw        t4, t0, s4
                  sub          a5, a2, a0
                  srli         a0, a0, 5
                  sraiw        s4, t6, 9
                  divw         s11, a5, s3
                  mul          a1, t1, s6
                  sll          t3, tp, sp
                  sllw         t5, sp, t3
                  xori         a3, s10, -1489
                  remuw        a5, zero, s9
                  mulw         gp, s3, s9
                  div          t3, sp, s6
                  slti         s3, s3, -21
                  addw         s7, a0, s5
                  addiw        a6, t1, -1800
                  nop
                  divw         sp, a5, a4
                  addw         s11, t2, s0
                  slti         a7, s11, -1254
                  slli         s11, sp, 28
                  slli         gp, gp, 48
                  add          a3, ra, sp
                  addw         a2, a2, zero
                  remw         s7, s4, a4
                  xor          t2, a6, t4
                  and          s5, zero, a0
                  xori         a3, s4, 1170
                  sra          t1, s0, t1
                  slti         s3, t4, -310
                  addw         s2, s0, s7
                  sraiw        t2, t5, 11
                  srl          tp, t4, s3
                  sraiw        a6, t1, 14
                  remw         t5, t0, t5
                  andi         a5, s8, 457
                  sltu         a0, a3, s3
                  srl          zero, s4, s0
                  sllw         s3, s1, s9
                  mul          s8, sp, s11
                  div          s9, ra, s5
                  srl          a5, s10, t5
                  ori          zero, t1, -1604
                  divu         s8, t4, a1
                  andi         sp, t4, -1928
                  srlw         a2, a6, gp
                  divuw        s2, a3, t4
                  sub          t0, s1, a4
                  divu         s3, a5, s1
                  auipc        t6, 813469
                  srai         a6, t5, 59
                  mul          t5, t4, a0
                  lui          t5, 148561
                  slli         tp, gp, 3
                  remw         t6, zero, s10
                  mulhu        zero, sp, t3
                  slli         a3, ra, 32
                  srliw        s4, tp, 23
                  mulhu        s1, a7, sp
                  slti         s9, s5, 860
                  sraiw        t4, zero, 28
                  subw         a0, s0, a6
                  xor          s4, t1, s0
                  andi         a6, s0, 870
                  mul          s11, sp, zero
                  auipc        a7, 287551
                  addw         s8, s6, t2
                  rem          s4, t5, a1
                  add          s8, t5, s1
                  sllw         a7, s0, t0
                  srlw         sp, a3, zero
                  and          t2, t1, t6
                  divw         s9, t2, tp
                  subw         a0, t3, t6
                  divuw        s1, gp, t1
                  divw         t4, t2, s8
                  mulw         a5, a7, s4
                  sltiu        t0, t6, 944
                  or           gp, a3, a3
                  divw         ra, s9, a2
                  addiw        t6, a3, -1096
                  nop
                  sltiu        s8, s3, 701
                  srlw         s7, s9, a0
                  sltu         t0, a5, s1
                  sltu         s3, a7, a5
                  xor          s7, a1, a1
                  sltu         s6, a3, a5
                  srai         s5, zero, 23
                  sll          a6, a4, a2
                  sllw         t0, sp, a2
                  andi         t2, t1, 9
                  lui          a0, 44536
                  sllw         zero, s6, s9
                  srli         gp, s7, 24
                  sll          t4, s0, tp
                  mulw         gp, t6, t2
                  or           s9, t4, s9
                  sltiu        s6, ra, 166
                  srlw         a5, t0, gp
                  mulh         sp, t4, a5
                  remuw        t1, t1, sp
                  rem          s4, zero, a5
                  addi         s5, s10, 172
                  sraw         tp, t3, t3
                  srl          s7, s11, zero
                  slti         a0, a7, 1692
                  slt          s11, s5, s3
                  mulhu        t5, a5, tp
                  slliw        gp, s0, 20
                  sltiu        a5, t5, 736
                  divuw        s6, tp, a0
                  divw         a1, a3, a7
                  mulh         a5, t0, s4
                  rem          sp, s9, ra
                  srl          t3, s8, s3
                  mul          ra, a5, a1
                  srai         a1, gp, 30
                  slti         t4, a6, 454
                  mulhsu       t5, ra, a6
                  divuw        s4, s11, sp
                  xor          t1, s6, a5
                  xori         s8, t4, 1470
                  rem          s3, tp, s11
                  nop
                  slti         s4, t1, -1043
                  slli         ra, gp, 26
                  remuw        s3, a0, tp
                  subw         a7, a6, s9
                  rem          sp, a2, s10
                  addiw        s8, a2, 1989
                  andi         t5, s0, -1633
                  slliw        a1, a4, 7
                  mulhsu       s3, t6, s5
                  remw         s7, a7, s1
                  xori         a2, t1, -1598
                  sltu         sp, a2, ra
                  andi         a5, a5, 1544
                  andi         s9, gp, -747
                  sll          gp, t4, s1
                  add          a2, s9, s7
                  rem          a5, s1, s10
                  slliw        a0, s10, 31
                  add          s9, a3, t0
                  mul          s5, s3, zero
                  xori         a7, a3, 1337
                  srai         s8, ra, 37
                  addw         a6, ra, s7
                  mulhu        a2, s8, s2
                  add          gp, s4, s6
                  sllw         t1, gp, tp
                  addi         s8, a3, 440
                  mulw         t5, t1, t4
                  slliw        s5, sp, 23
                  mulh         s8, s1, t3
                  divuw        s2, s0, a7
                  addiw        a0, tp, -407
                  sraiw        s4, a2, 31
                  sllw         s9, t0, gp
                  lui          t3, 18211
                  div          t5, tp, s8
                  sltiu        s4, t6, -610
                  mulhu        t2, sp, s3
                  auipc        a3, 619424
                  slt          t6, s0, s5
                  mulhsu       s7, s10, s10
                  sraw         s6, s2, t0
                  rem          a2, t0, tp
                  addi         s2, s3, 946
                  srli         t4, sp, 40
                  srliw        t6, t4, 4
                  slt          t6, a7, ra
                  srliw        t1, s2, 11
                  mulhu        s1, s0, s5
                  divuw        t3, t1, a7
                  mulhsu       s2, s3, t3
                  mulw         s9, s7, sp
                  divuw        t2, t1, t5
                  remuw        t5, s7, a7
                  or           a0, a5, s6
                  ori          t1, a7, 612
                  srliw        s11, s7, 2
                  addi         s9, t3, 1055
                  sllw         t5, t4, a5
                  divw         s8, a1, a4
                  slt          a1, a5, a4
                  slli         gp, tp, 26
                  sll          s11, s7, s4
                  rem          tp, t2, a2
                  xor          t2, s11, sp
                  slti         s4, t4, 344
                  sll          s2, s4, ra
                  xor          a3, s3, t2
                  mul          s3, zero, t1
                  xori         t6, s5, -356
                  divw         a0, a7, s10
                  srl          s2, s4, t5
                  ori          s2, zero, 1207
                  add          a1, sp, a1
                  slliw        t6, a6, 28
                  divuw        a0, a2, s10
                  sra          t2, gp, s9
                  sraw         t5, s1, a0
                  srliw        t0, t0, 3
                  sra          s1, a1, s6
                  or           s9, t2, s7
                  auipc        s2, 93562
                  addi         a6, a7, 954
                  srliw        a7, a1, 7
                  slliw        a2, a1, 10
                  subw         t2, a6, a7
                  sllw         t2, s1, s1
                  remuw        t6, gp, zero
                  sltiu        s7, s10, -1318
                  sllw         a7, gp, a1
                  srai         gp, gp, 46
                  addi         tp, a5, -500
                  remw         s5, ra, a4
                  andi         t0, s6, -1401
                  nop
                  mulhsu       s4, s4, ra
                  mulh         t0, s11, s4
                  sraiw        t3, t4, 30
                  slliw        gp, a0, 18
                  sllw         a2, t3, a2
                  sraw         s6, s1, s4
                  slliw        s8, s1, 31
                  addiw        t2, t0, -1058
                  mul          s7, s7, a7
                  addiw        a2, s3, -109
                  auipc        tp, 817023
                  addi         a6, s1, 1298
                  add          s2, t1, a5
                  sltiu        gp, a0, -1014
                  sltu         a2, s9, a2
                  remuw        gp, gp, a7
                  mulw         s5, a4, t2
                  lui          zero, 617359
                  xor          tp, a6, a0
                  srl          s11, tp, t0
                  mulhu        t1, sp, t1
                  sraiw        s2, s5, 5
                  rem          s2, s9, s10
                  nop
                  sll          tp, t5, a5
                  slliw        a5, s8, 16
                  srl          t1, t1, gp
                  sltiu        a5, zero, 26
                  auipc        t4, 418275
                  slt          t2, t0, s4
                  ori          t6, s10, -1428
                  remu         s4, t6, s11
                  srl          zero, a7, t0
                  srai         t1, s4, 3
                  or           tp, a3, s8
                  sraiw        s3, ra, 17
                  mul          a0, tp, t2
                  mulw         a7, sp, a6
                  srliw        s5, s10, 3
                  mulhu        gp, t6, s0
                  mulhsu       s8, ra, a0
                  mulhsu       t1, s8, s6
                  addiw        a6, t6, 1370
                  sra          t1, a6, s2
                  remw         zero, a2, t3
                  divw         s7, a2, a1
                  xori         s4, s4, -1669
                  sltu         s6, s7, s1
                  sll          s1, t4, a2
                  andi         t0, a1, 675
                  ori          a7, t1, 901
                  divuw        s7, a2, a0
                  nop
                  divuw        t1, gp, ra
                  mulh         s5, s6, s7
                  srl          t1, s8, t0
                  remu         t5, gp, s6
                  mul          t5, t6, s8
                  mulhu        a7, s3, s11
                  lui          t6, 731462
                  sltu         s4, s8, t0
                  sltu         s1, t6, t2
                  sub          s3, s8, a0
                  sll          s2, s0, a1
                  addi         s8, s2, -1219
                  add          a1, s0, s3
                  divw         t1, s11, a5
                  addw         s6, a3, sp
                  xori         s4, sp, -802
                  nop
                  div          t4, a1, zero
                  or           t2, s1, s2
                  mulhu        zero, gp, gp
                  divu         s1, a2, a0
                  div          t4, a4, s6
                  subw         zero, a3, a2
                  ori          t2, s11, 2018
                  remw         s4, t6, a6
                  remu         s8, s3, t0
                  srli         t2, t2, 46
                  lui          s6, 333233
                  addi         t1, s5, 794
                  mulh         ra, a0, t2
                  remu         s8, s1, s2
                  sll          s8, s2, s3
                  sra          zero, t0, s7
                  xor          a6, s5, s6
                  slt          s5, a7, a1
                  div          ra, t5, s6
                  mulhu        s5, s8, s11
                  sraiw        s2, t2, 10
                  divuw        t1, tp, t4
                  ori          t5, s9, 1107
                  slliw        sp, sp, 4
                  divu         t6, s11, s10
                  or           s11, s5, a3
                  srliw        t2, a3, 11
                  addiw        a3, a4, -978
                  slti         s3, s6, 274
                  slt          s1, s7, t2
                  slt          t2, s8, t4
                  divu         s11, gp, a2
                  xor          a2, a5, s4
                  subw         t1, a1, a6
                  auipc        s11, 599284
                  nop
                  or           a5, t3, s1
                  remw         s7, s6, tp
                  or           s7, s10, s9
                  sltu         t4, sp, t4
                  sltiu        a6, s8, 462
                  sraw         s1, s7, gp
                  srai         tp, a0, 55
                  sra          s7, t4, t3
                  or           s4, a0, a5
                  sraiw        t5, a3, 26
                  srlw         zero, t1, a7
                  sraiw        t5, a0, 20
                  sraw         t2, t0, s6
                  divuw        s7, t0, t0
                  xor          s2, tp, a3
                  srliw        a2, s9, 2
                  addi         t6, t3, -679
                  or           s3, t4, s8
                  srl          a2, a2, s7
                  srlw         s7, t3, t4
                  ori          a2, a7, -752
                  sub          a7, s11, t2
                  xor          s6, s6, a0
                  srli         s11, a2, 55
                  slt          t6, a3, t2
                  xor          s3, s6, a7
                  sll          s9, a4, s9
                  addiw        a3, a0, 673
                  slti         t3, t0, 1341
                  sltu         s9, zero, t0
                  divu         s4, a0, t4
                  addw         a2, s8, t0
                  add          s2, a6, s8
                  remu         ra, t6, s11
                  and          a6, a6, t5
                  subw         s5, a6, a3
                  and          s3, a4, tp
                  divw         a5, ra, a2
                  mulh         a7, t1, a4
                  sraiw        a1, s11, 24
                  slli         sp, t3, 7
                  divw         t0, s3, a6
                  slti         a0, s0, 932
                  sllw         a5, a3, tp
                  srliw        s2, t3, 8
                  subw         s4, ra, s3
                  srlw         s1, a0, s8
                  mul          a1, tp, sp
                  auipc        s5, 943569
                  srli         s7, s3, 31
                  srai         s4, s2, 55
                  mulhsu       s6, a3, sp
                  auipc        ra, 70227
                  divu         t2, ra, a7
                  addw         s9, t2, t3
                  xor          s4, a1, t0
                  andi         t5, gp, -579
                  srl          a7, s4, a5
                  remw         t4, t5, s8
                  mulhu        a5, a7, sp
                  div          s2, a1, s5
                  mulh         s7, a2, a3
                  sub          t3, gp, s7
                  lui          t2, 901477
                  addiw        t1, tp, -482
                  nop
                  andi         a2, t0, 1549
                  divuw        a2, s9, s8
                  srai         t1, s6, 55
                  divu         s11, a4, s9
                  remw         s11, s7, a7
                  sra          s11, s7, tp
                  divu         a0, a6, gp
                  divw         s7, t1, a5
                  divuw        s11, a3, sp
                  mulh         t6, a6, a6
                  slliw        s5, a3, 29
                  or           gp, t4, a4
                  sltu         t1, s7, gp
                  auipc        a6, 556996
                  andi         s4, a5, 1526
                  mul          a0, tp, a2
                  and          t6, gp, a3
                  auipc        s6, 641839
                  divuw        t3, s10, a5
                  addw         a1, s10, s10
                  sub          t2, a6, a1
                  auipc        a2, 924812
                  add          s9, a6, a6
                  sll          gp, sp, t3
                  addiw        a6, ra, 154
                  lui          s2, 139019
                  mulhsu       s7, s6, ra
                  slt          a7, t1, s11
                  addw         s2, s10, s9
                  and          a7, s8, a0
                  srl          s1, s4, s2
                  addi         a2, ra, -902
                  divu         a3, zero, s8
                  divu         a5, t2, t5
                  mulw         t4, t0, gp
                  or           sp, a3, s6
                  srl          t1, a2, s9
                  sra          tp, a3, a2
                  sltiu        s6, s1, -1336
                  addw         a5, a6, s0
                  auipc        s7, 894714
                  slt          s1, a4, s9
                  xori         gp, zero, 1617
                  mulw         t3, s7, s11
                  sll          t3, s10, s1
                  slli         s6, t0, 58
                  and          s4, t6, s1
                  remu         s7, gp, t1
                  remw         t0, ra, s2
                  remuw        a2, t5, a3
                  slli         s11, t0, 43
                  slti         ra, tp, 1471
                  mulhsu       s1, s10, s5
                  srliw        t1, s6, 17
                  srliw        s11, ra, 0
                  slli         a1, a7, 3
                  rem          t6, t1, s8
                  nop
                  remw         s5, s6, t3
                  sub          a3, t5, s9
                  sraiw        t0, sp, 12
                  rem          a1, zero, s6
                  and          t5, s2, a1
                  subw         t1, s5, zero
                  xor          ra, s9, t1
                  xori         s3, a6, -1
                  sraiw        s11, a2, 29
                  srai         sp, a3, 55
                  auipc        a2, 930409
                  srli         s1, s5, 60
                  div          a0, ra, a5
                  lui          gp, 391684
                  sraw         a3, t3, ra
                  xori         s8, s3, 440
                  addiw        ra, a4, -1659
                  mulhu        gp, a0, t4
                  srliw        a0, gp, 9
                  subw         s2, sp, s4
                  ori          a1, t0, -1771
                  lui          s1, 134825
                  nop
                  ori          t4, s6, -1611
                  slliw        t3, sp, 10
                  mul          s6, t6, a3
                  slti         s9, t5, 1172
                  xori         t4, a1, -1942
                  addiw        ra, a7, 1446
                  addw         s6, a7, t0
                  srli         gp, t5, 24
                  slt          t1, s2, t0
                  slli         a5, t3, 19
                  mulhu        t0, a1, t5
                  sltu         a3, t3, a7
                  add          sp, a1, t4
                  ori          s6, t2, -1480
                  addi         s6, s6, 1998
                  mulhsu       s8, a7, t4
                  srli         a7, t4, 62
                  sra          s11, a0, a2
                  slti         t6, zero, -628
                  slli         t3, zero, 16
                  srlw         s2, a5, s4
                  addi         gp, t4, 1196
                  sllw         t4, t3, a4
                  sraw         tp, s5, t5
                  remuw        a6, a1, s10
                  remuw        t5, a1, t0
                  sra          a2, s0, a0
                  divw         s4, a0, a6
                  sltu         zero, s3, a2
                  slliw        a2, a7, 21
                  divu         t0, s5, a0
                  slli         s3, ra, 13
                  auipc        a5, 214963
                  lui          t1, 523246
                  srl          s7, t3, a4
                  xori         tp, gp, -1706
                  srliw        s3, ra, 27
                  srlw         sp, t0, s8
                  slti         s11, gp, -285
                  addi         s11, s4, -1802
                  sltu         s6, a6, a0
                  div          t5, t0, t0
                  srl          a7, zero, a1
                  srai         s3, a5, 51
                  mulhsu       s6, a5, ra
                  ori          t3, t4, 1644
                  and          t5, s6, tp
                  slli         t3, t2, 45
                  add          s2, s10, t6
                  srliw        t5, s6, 26
                  xor          s2, a1, s10
                  sll          a0, a5, t2
                  subw         a2, a4, zero
                  sraw         s8, s3, s7
                  auipc        t1, 662959
                  div          a7, a1, s3
                  sub          a7, a6, tp
                  mul          s5, s10, t3
                  slli         gp, s9, 34
                  nop
                  slliw        zero, s1, 20
                  xor          s11, tp, a5
                  divu         s7, s2, a5
                  sub          sp, s8, s10
                  sra          s3, t3, s5
                  lui          t4, 729256
                  auipc        t6, 255082
                  auipc        t3, 740052
                  xor          t4, a1, ra
                  addw         s1, sp, a7
                  and          a3, t5, s9
                  sra          t3, tp, a5
                  addi         t4, s11, -914
                  slliw        a1, t4, 3
                  sltu         s7, t5, s1
                  sltiu        s1, a0, 422
                  srliw        a5, t1, 23
                  sraiw        s2, t5, 30
                  remu         s11, a6, s0
                  sll          a5, a7, s4
                  srl          a6, ra, zero
                  remuw        s2, ra, t2
                  remw         t1, a1, a6
                  mulw         s11, zero, gp
                  sraw         s9, s7, ra
                  slli         a6, t1, 20
                  srli         s2, s6, 0
                  mulw         s8, ra, t2
                  nop
                  addiw        t5, t1, -1372
                  remw         gp, s8, t2
                  sraiw        a1, gp, 24
                  xor          s7, s10, s6
                  srai         t5, s8, 46
                  ori          t5, t5, 928
                  sraw         t3, gp, t6
                  remu         s7, s11, t1
                  div          t1, a1, s8
                  and          s7, s7, s7
                  or           a0, s4, s5
                  srai         t6, s8, 47
                  sll          t2, t5, t4
                  subw         t3, ra, a5
                  mulhsu       a5, t2, s0
                  addiw        a3, s3, 956
                  slli         t6, a1, 58
                  slti         t1, s9, -1707
                  sltiu        sp, a5, -764
                  slti         t1, t6, -1166
                  rem          s7, t4, gp
                  addiw        s11, a7, -1111
                  slliw        a2, s8, 31
                  srli         t3, a0, 52
                  rem          t3, t4, a3
                  remuw        t5, t2, t6
                  xor          s7, gp, a6
                  slt          s6, gp, gp
                  srai         s11, t4, 59
                  mulw         t0, t6, gp
                  rem          s1, t6, t6
                  slliw        s1, s3, 16
                  nop
                  divuw        s5, t3, s6
                  add          t2, t4, t5
                  andi         s9, s0, -919
                  lui          zero, 549606
                  srai         s1, s4, 60
                  addi         t4, s6, -199
                  add          t2, t5, t5
                  xor          a5, a2, ra
                  srliw        tp, zero, 30
                  srl          s2, a3, t6
                  mulw         s6, a5, a5
                  xor          gp, s6, s3
                  add          a3, t5, gp
                  or           s8, s9, ra
                  addiw        s2, ra, -1814
                  sraiw        s2, s1, 6
                  divuw        a3, s8, s10
                  sltu         t1, s11, s3
                  sraiw        a1, t4, 30
                  ori          t6, s2, 1702
                  or           gp, t1, a6
                  divw         t1, sp, a3
                  srlw         a2, s9, a3
                  sllw         sp, zero, t4
                  addw         a7, a7, a5
                  sraiw        s4, s10, 7
                  subw         a6, a5, ra
                  divuw        s5, a1, a5
                  sltiu        t2, a4, 2029
                  andi         s1, s5, 1632
                  or           s1, a2, gp
                  add          a0, t5, gp
                  nop
                  and          t5, tp, zero
                  and          a6, gp, gp
                  lui          a0, 678331
                  sraiw        s7, s0, 20
                  srlw         t2, t3, s5
                  mulhu        s11, s7, a5
                  xori         t5, s11, -321
                  slti         a2, s2, -715
                  remuw        t4, a5, s11
                  xor          a3, a7, a4
                  mulhu        a2, s9, s1
                  srlw         s8, s1, s7
                  sllw         a6, t1, a5
                  ori          a6, t4, 1391
                  and          tp, a3, t4
                  or           a2, ra, s0
                  remuw        s8, t0, s4
                  divw         t1, s0, a6
                  sll          a5, zero, s0
                  or           sp, a0, s1
                  andi         sp, s10, 33
                  srlw         ra, t3, zero
                  divuw        tp, sp, t6
                  srl          sp, s6, s10
                  sllw         s8, s8, s10
                  srl          gp, a3, a6
                  xor          t0, t6, a7
                  subw         t5, s0, t3
                  auipc        s6, 335224
                  addiw        t4, t6, 1814
                  divu         s2, t6, s10
                  nop
                  div          a1, a6, a2
                  sltu         s2, s0, a3
                  sraiw        t6, t1, 13
                  mul          t1, s6, s8
                  div          t3, a6, t3
                  sub          a7, t6, s0
                  auipc        a5, 100390
                  mulh         s3, s10, a5
                  remu         zero, a5, s9
                  or           s8, s11, s0
                  sllw         t6, tp, s3
                  remuw        s1, t6, a5
                  xor          t6, t1, s0
                  srlw         a5, sp, a0
                  lui          s7, 219683
                  add          a2, a6, t0
                  lui          t5, 77495
                  slt          a1, s1, t1
                  and          gp, t5, s11
                  subw         s7, t5, gp
                  slli         s8, s2, 39
                  ori          t5, zero, 265
                  sub          a5, ra, a5
                  rem          s6, s10, t2
                  addiw        s9, s5, 1396
                  srli         gp, a4, 3
                  rem          s8, t2, s8
                  mulhsu       a7, gp, s6
                  sraw         s1, s5, a0
                  divuw        ra, t6, a4
                  slti         tp, a0, 1207
                  sra          a7, s0, t3
                  remu         zero, t6, t5
                  slliw        s9, s3, 21
                  addi         t2, a1, -703
                  sra          a0, s0, s1
                  divw         s3, a4, a0
                  xori         t2, t4, 1060
                  sltu         s7, s9, a3
                  mulhu        tp, zero, s2
                  or           sp, s9, a4
                  sraw         s5, s5, s1
                  srli         s7, s6, 29
                  subw         t6, a2, a5
                  divu         a2, a7, t0
                  sllw         t1, zero, t2
                  divw         s7, s9, gp
                  xori         tp, t2, -911
                  subw         gp, tp, a5
                  srai         a3, a6, 5
                  sltu         t4, s9, a7
                  ori          tp, t2, 432
                  add          a1, s5, ra
                  srliw        t0, sp, 3
                  div          s8, ra, zero
                  sub          s2, a1, t4
                  mulw         sp, s9, s11
                  lui          t6, 395888
                  mul          t5, a5, s8
                  sraiw        s1, a0, 1
                  mul          s8, s9, a3
                  div          t6, s7, s6
                  div          a6, t4, t6
                  slli         s1, a0, 6
                  srl          t0, a0, a4
                  mulhu        s3, a2, a7
                  nop
                  slt          s1, t0, a0
                  sltiu        ra, tp, 883
                  andi         s9, s2, -1580
                  sltiu        a6, s3, 654
                  addi         s9, a3, 1949
                  andi         t6, s8, -1866
                  lui          t5, 532996
                  subw         a0, s10, s0
                  sllw         s8, s3, gp
                  mul          s2, a6, t4
                  addiw        gp, a6, -225
                  sllw         t4, s1, a0
                  andi         s3, t6, -1967
                  addw         a0, s5, a7
                  andi         s1, a1, -361
                  mulhu        t1, s1, s3
                  div          a2, a1, t0
                  slt          ra, t6, t4
                  xor          s8, a1, a2
                  divuw        t6, a2, t3
                  sraw         t3, a7, a0
                  sltiu        t5, sp, 187
                  slliw        s6, s8, 10
                  or           t0, t0, s1
                  xor          s1, t6, a2
                  slti         s11, gp, -912
                  sltu         a0, s4, gp
                  mul          a2, a2, s11
                  mulhu        a7, s11, t5
                  xori         s4, a7, -1541
                  auipc        t4, 50979
                  add          s9, ra, s9
                  andi         a3, s8, 1527
                  ori          a5, s0, -259
                  slt          a1, s0, t6
                  xori         s11, a7, -1111
                  remuw        a7, t3, t5
                  or           s4, a0, s9
                  xori         t1, t4, 1070
                  sltu         s11, s10, a0
                  rem          s8, ra, s0
                  slliw        a0, s1, 12
                  remw         t6, t4, a7
                  mul          s3, a1, s9
                  srliw        t3, t6, 13
                  mulhsu       t0, a3, s8
                  sub          s4, s9, s4
                  addiw        gp, t5, -192
                  divuw        t6, s6, a7
                  andi         t3, t1, 1067
                  xori         s5, s9, -497
                  sltiu        t3, s4, -1202
                  mulhu        sp, s11, s0
                  srai         a5, t1, 52
                  mulhu        s7, t2, t4
                  sraiw        s7, gp, 7
                  slli         a5, s10, 54
                  addi         a2, s8, -1467
                  remw         s5, tp, t1
                  addw         zero, s2, a3
                  slt          a6, a7, tp
                  srli         t3, a2, 47
                  slt          s9, tp, t1
                  mulhsu       s9, s2, t5
                  andi         t4, t6, -139
                  nop
                  srai         s6, tp, 61
                  addiw        t6, a2, -1231
                  xori         a3, s9, -596
                  divw         a0, t4, s7
                  sraiw        s6, a6, 23
                  sra          t3, a3, t4
                  slli         t0, a6, 39
                  addiw        t3, t2, 232
                  subw         t5, t2, sp
                  divw         s11, s5, t0
                  mulhu        s5, a2, sp
                  slt          t4, s4, s2
                  or           s2, s4, zero
                  add          t0, s9, t4
                  sraiw        s2, s7, 15
                  and          a5, a6, sp
                  sraiw        t2, a4, 9
                  srliw        s3, ra, 21
                  addw         t2, s1, t1
                  sub          t4, t5, t2
                  xor          a2, s4, t0
                  mulh         t2, tp, gp
                  sll          gp, t1, s10
                  divw         t6, a6, t2
                  sltiu        gp, s6, 24
                  remw         t3, t6, s10
                  andi         s2, s4, 580
                  and          tp, t2, s3
                  sltiu        a7, tp, -1261
                  addi         s6, s11, 962
                  auipc        t3, 541147
                  or           a0, s10, s7
                  auipc        a3, 408890
                  div          t3, t2, a0
                  add          gp, ra, sp
                  or           a0, tp, s9
                  divw         a0, ra, a2
                  nop
                  divu         s1, a0, a4
                  divu         a7, a4, a6
                  divw         s6, s3, a0
                  lui          gp, 790140
                  sub          t6, s1, a3
                  andi         zero, t2, -274
                  remu         s7, s0, t5
                  add          s2, t5, sp
                  addi         t5, t0, -403
                  srli         a6, t6, 20
                  addiw        a0, s9, -1490
                  rem          a7, s1, t2
                  srlw         s2, a0, s11
                  div          s6, s1, s7
                  add          ra, a6, t6
                  mulhsu       zero, t1, t6
                  sra          s7, s11, a5
                  sraiw        s2, s9, 19
                  sll          t0, a7, t6
                  sub          ra, s0, t2
                  mulhu        tp, t1, t4
                  sll          t5, a3, ra
                  andi         s9, t6, -1579
                  subw         s9, gp, s6
                  andi         s1, s8, -630
                  addi         t0, a1, -1768
                  sllw         a3, sp, s6
                  mul          s5, s4, s2
                  divu         t4, t6, s7
                  rem          t2, s0, t6
                  addiw        a3, gp, 630
                  xori         a2, a6, 1215
                  or           t4, t1, a0
                  divu         t0, a7, s10
                  remuw        s4, s0, s9
                  xor          t2, a0, s2
                  mulhu        s1, s5, zero
                  nop
                  and          s8, s1, gp
                  sltu         s2, gp, s8
                  divu         t2, s0, sp
                  srli         s2, sp, 41
                  add          ra, s4, a6
                  slti         t1, s6, 1690
                  divuw        t6, t3, a4
                  srlw         s11, s8, s0
                  addiw        a3, s0, 1933
                  and          a1, t3, t1
                  sltiu        t5, s5, -101
                  or           s1, s10, a7
                  sraw         t5, t3, a0
                  slliw        s6, t6, 20
                  auipc        s4, 67314
                  sltu         s4, a5, s2
                  auipc        t3, 865828
                  slt          s8, t4, s2
                  srlw         ra, a3, s8
                  subw         s3, s4, t4
                  addw         s5, sp, gp
                  lui          s1, 103079
                  srai         gp, zero, 10
                  ori          s11, s9, 653
                  xori         s7, a2, -916
                  sll          s2, s10, t6
                  mul          t2, sp, t1
                  sltiu        ra, ra, 1101
                  auipc        a5, 943959
                  or           a3, a5, s11
                  mul          s2, sp, s10
                  divw         a6, s4, s8
                  addi         ra, a0, -423
                  ori          t4, zero, 919
                  div          a6, a4, zero
                  remu         t5, s8, a0
                  mulh         s5, s2, s0
                  divw         t6, a1, a4
                  slliw        a1, zero, 19
                  divu         a7, tp, s6
                  lui          t6, 493875
                  srliw        s4, t4, 22
                  sra          zero, s11, tp
                  slti         s4, a7, -1974
                  mulh         a2, s1, t0
                  auipc        ra, 230131
                  mulw         s1, s0, a3
                  remw         a0, t5, a4
                  sraiw        t5, a0, 21
                  add          a6, s9, s2
                  remu         s7, s11, s11
                  srai         s6, s11, 33
                  slliw        sp, t3, 24
                  div          s3, s0, s3
                  srli         a7, s4, 28
                  and          s2, t3, s0
                  remuw        s7, t1, s4
                  and          a2, a4, s1
                  sub          t2, a1, a6
                  div          t5, t6, ra
                  divw         s7, a4, t6
                  slt          s2, t4, t1
                  xori         s4, a7, 1417
                  srliw        t6, s5, 7
                  mulhu        t5, t0, a5
                  remw         t1, zero, t3
                  sra          s11, t4, t1
                  auipc        tp, 602942
                  remw         a0, ra, s10
                  remu         t4, a7, s6
                  add          a3, ra, t6
                  divu         s3, a6, sp
                  slli         s11, s0, 56
                  rem          t0, t5, s1
                  slti         sp, ra, 546
                  sltu         t3, a7, a6
                  mulhu        s7, s4, zero
                  sraiw        tp, a7, 6
                  addw         a5, t3, a7
                  or           s1, a1, a7
                  nop
                  remuw        s7, a5, t5
                  sra          s11, a3, s11
                  srai         s9, a0, 44
                  sll          a3, ra, a1
                  srli         a6, s11, 56
                  sra          s4, t2, t1
                  addi         a7, t6, 738
                  sltu         s9, t4, tp
                  remu         gp, s4, s3
                  divuw        t4, s0, a1
                  addi         s5, s0, 545
                  remw         s7, sp, a2
                  addiw        zero, s6, 163
                  sra          t1, t2, a6
                  add          a7, t4, t1
                  sll          t6, t1, t1
                  addw         s11, sp, s6
                  remu         s7, a1, a3
                  subw         s5, s1, zero
                  sra          s6, gp, s7
                  sllw         t1, sp, a2
                  mulhsu       s11, s2, t5
                  divu         t4, a2, s5
                  mulhsu       a2, t0, a6
                  sll          t1, t4, s7
                  nop
                  sraiw        s6, t4, 9
                  sra          t2, s0, tp
                  sllw         a0, a4, t0
                  srli         s1, a1, 51
                  slli         gp, a2, 16
                  sltiu        a3, t6, -1613
                  srai         a5, s10, 51
                  mul          a0, s4, t3
                  divu         t0, a2, a2
                  div          s1, t5, s2
                  lui          s4, 221192
                  mulhsu       s3, s9, a0
                  addw         a2, t2, a3
                  subw         s5, t4, a2
                  add          a2, s1, a7
                  xor          zero, s6, s8
                  sltu         t3, gp, a4
                  sub          s8, s1, s2
                  andi         t4, a6, -503
                  srli         s4, s1, 46
                  srliw        a0, s9, 6
                  slt          t4, s1, sp
                  mulh         s6, a0, a0
                  srlw         s11, s10, a1
                  nop
                  sraiw        a0, t0, 11
                  remu         s5, s0, s7
                  srli         t3, a4, 43
                  slli         s3, s10, 56
                  andi         s11, t2, 47
                  rem          sp, s8, t6
                  lui          s9, 68926
                  slli         sp, t0, 62
                  and          t3, t5, s9
                  ori          s8, a6, 1092
                  xori         s6, s0, 1516
                  slliw        t3, a3, 24
                  sltu         a7, a3, s1
                  subw         a3, a1, zero
                  sraiw        a5, tp, 12
                  sraiw        zero, t5, 18
                  xori         tp, s11, 669
                  addi         a3, s11, -360
                  remw         t5, a4, a5
                  slti         s8, tp, -1682
                  addiw        s11, t0, -1786
                  sraiw        s7, s5, 0
                  nop
                  mulh         s4, s9, s3
                  mulh         sp, a2, t0
                  slli         t4, t5, 31
                  srli         s3, gp, 35
                  auipc        a1, 613263
                  srai         t1, s8, 5
                  div          t4, a6, t4
                  addw         s4, s7, t1
                  divuw        gp, t5, sp
                  remuw        a0, s7, s9
                  srliw        ra, s8, 14
                  sllw         t0, a5, zero
                  mulw         tp, a0, a4
                  andi         s7, s9, -2000
                  divuw        s8, a0, s9
                  sll          t1, a1, sp
                  nop
                  lui          s1, 337409
                  mulhu        a3, tp, s9
                  sraw         a6, a6, zero
                  sll          t1, s2, t6
                  addw         t3, a2, s2
                  mulh         t1, t0, tp
                  mulh         s4, s5, t3
                  remu         s11, a7, a2
                  divw         s7, s0, a2
                  addiw        s9, t3, 1549
                  andi         t5, s5, -1065
                  xor          a7, a6, t1
                  sllw         s4, t4, t2
                  or           gp, s0, a1
                  add          zero, zero, t0
                  sll          s5, gp, a3
                  divu         a2, a6, sp
                  srli         s8, s3, 5
                  divuw        s7, a4, s8
                  sll          t1, t5, s3
                  nop
                  srli         a6, t5, 13
                  and          t5, t2, s7
                  ori          a7, s1, -848
                  subw         s2, s11, a7
                  srl          a0, t1, sp
                  remu         tp, t2, a4
                  slliw        t6, a7, 1
                  and          t3, s10, t5
                  xori         s7, tp, -1630
                  srli         a0, s11, 14
                  addiw        s3, a0, -613
                  divu         s4, t5, a5
                  xori         t3, tp, -781
                  subw         s3, a4, tp
                  srliw        s6, t0, 13
                  remu         s4, s3, t0
                  sll          zero, s11, tp
                  nop
                  sraw         a2, s1, s6
                  srl          zero, tp, a2
                  remu         s8, s6, t2
                  div          ra, s4, s3
                  addiw        a5, s9, -443
                  sllw         t5, tp, ra
                  slt          a6, s0, a6
                  mulw         a7, s11, zero
                  addw         s6, a1, t3
                  srl          s4, gp, gp
                  addiw        s7, s1, -329
                  mulh         t0, s4, s2
                  div          t1, s10, s0
                  sraiw        a1, zero, 3
                  auipc        t3, 922389
                  xor          s5, a5, s1
                  sll          a6, t2, ra
                  or           gp, ra, s7
                  slli         t3, ra, 42
                  sraiw        t1, sp, 5
                  divw         s4, s4, t3
                  srli         zero, t4, 62
                  slliw        t5, a5, 10
                  sll          s4, t0, s9
                  addw         t4, t2, a0
                  andi         s3, ra, -1566
                  lui          t4, 433040
                  divu         t1, s3, a4
                  remu         s8, s2, s3
                  sltiu        zero, a0, -1672
                  or           t3, s1, t1
                  div          t0, a6, gp
                  divuw        a6, a4, ra
                  divuw        s8, a2, t1
                  rem          t0, s11, s7
                  xori         gp, s10, 1545
                  ori          a3, a2, -1094
                  sllw         s1, t6, a0
                  andi         s4, t4, -589
                  addiw        s11, s10, 679
                  divw         ra, t6, t5
                  mulhsu       tp, s1, a5
                  slti         s4, s2, -1327
                  xor          s7, zero, zero
                  lui          a1, 204123
                  divuw        t0, s7, t2
                  slt          s11, s2, s4
                  and          t0, a3, s11
                  remw         t6, t0, t3
                  and          sp, t3, t4
                  srl          s2, t1, a0
                  divw         sp, t0, a0
                  sraiw        sp, a0, 25
                  andi         s8, s1, -998
                  ori          t0, s9, 770
                  slti         t5, s7, -910
                  divuw        a2, s4, t0
                  srliw        a2, s5, 18
                  divuw        s6, a2, t3
                  andi         a1, t0, -1500
                  srli         a7, a6, 42
                  mulh         s1, s4, s0
                  add          t6, s7, s2
                  mulhu        a6, s4, s8
                  slliw        t6, a4, 27
                  srai         a2, s10, 15
                  and          a3, zero, a5
                  sllw         s5, t6, s5
                  remw         s8, a3, t6
                  mulh         t2, s5, s9
                  remw         s11, t5, a3
                  sltu         s9, s8, t4
                  mulh         tp, s11, t5
                  andi         a3, s1, 396
                  rem          s2, tp, s3
                  nop
                  addw         gp, s10, s9
                  srliw        s1, a6, 28
                  slt          sp, a2, a7
                  mulw         zero, a3, t1
                  divw         s4, a6, s9
                  srai         ra, a3, 34
                  sll          t6, s9, tp
                  slti         zero, s11, -752
                  sraiw        tp, tp, 30
                  mulhu        t3, t2, a4
                  divu         a1, a4, t3
                  sltu         s7, s1, s7
                  sll          s2, t5, a0
                  mul          s8, zero, s4
                  divu         sp, t3, s4
                  xor          zero, a1, s5
                  slt          t2, ra, zero
                  addiw        a1, t3, 1837
                  nop
                  srlw         t1, s10, a7
                  srli         zero, s10, 3
                  mulhsu       s3, a6, s4
                  addi         t2, s5, 599
                  andi         s2, t2, 1255
                  slti         s8, t3, 1970
                  mulw         t2, s0, a5
                  mulh         a1, tp, a7
                  mulhu        s1, s5, s6
                  srlw         a2, t0, s7
                  srlw         s11, s10, s7
                  mulw         t4, a2, s2
                  divu         s9, a3, a3
                  slti         tp, t2, -1275
                  sraw         a5, tp, a1
                  divu         s5, s9, t6
                  xori         t2, t0, -1138
                  slt          a3, s11, s9
                  slti         s3, a5, -1310
                  sraw         s5, s3, t4
                  remu         s1, a1, s10
                  slliw        a2, t5, 12
                  or           t4, a2, t2
                  sltu         a6, a7, a1
                  mulh         t0, t5, t3
                  srl          s2, s10, sp
                  auipc        a0, 287909
                  remw         tp, t3, s1
                  ori          ra, s3, 619
                  divu         s7, s10, t6
                  remu         a7, s3, t1
                  sll          s7, t3, zero
                  slti         s6, t1, -401
                  divu         s2, zero, t4
                  sub          a6, a4, s8
                  slliw        ra, a1, 17
                  sra          a1, a2, t6
                  mulh         s4, gp, zero
                  sra          a2, a5, s2
                  and          a5, t5, t1
                  slt          tp, gp, ra
                  divu         s1, a1, gp
                  mulw         t3, t2, s11
                  srli         s3, t5, 38
                  addiw        t1, a3, -1505
                  div          a5, ra, t0
                  mulhsu       t1, s8, s1
                  srliw        t1, s2, 2
                  mul          a0, a0, s2
                  remu         a2, s0, t1
                  mul          gp, s2, t2
                  mulh         s9, a1, a7
                  divw         t2, a6, s2
                  addiw        a3, t6, -859
                  sub          sp, t5, a7
                  rem          s8, t2, s5
                  sraiw        t1, gp, 5
                  slliw        s2, t2, 14
                  mulh         t0, t3, ra
                  xor          t6, a6, t6
                  slti         a7, s8, 1455
                  mulhsu       s3, t3, s5
                  sltiu        a0, s2, -1810
                  xor          t2, sp, s8
                  sltiu        t2, t0, -503
                  addw         s9, a3, t4
                  divuw        zero, s8, a3
                  srlw         a0, s4, a4
                  slliw        a5, gp, 0
                  srlw         t3, s9, s4
                  sltu         gp, s11, a2
                  mulw         t5, a6, s3
                  sltu         ra, t4, a4
                  sraw         t6, s4, a2
                  addiw        s6, s10, 1106
                  and          s5, a4, t0
                  nop
                  and          sp, t6, t6
                  rem          a5, s2, a2
                  addiw        a2, s10, -385
                  ori          a6, a0, -1822
                  sub          s4, zero, a7
                  and          gp, gp, gp
                  slli         a2, s10, 27
                  rem          a0, t2, a3
                  addw         s8, gp, s2
                  sll          t1, t0, s5
                  mulhsu       t3, a0, s1
                  or           s8, sp, t5
                  srl          s8, s8, a3
                  sraw         zero, t6, s7
                  and          t0, s5, t3
                  addi         t1, a7, 176
                  lui          s5, 797443
                  xori         a3, tp, 1959
                  mul          gp, a6, t0
                  slti         a5, a1, 1839
                  addw         t3, s6, s3
                  rem          t5, t1, s7
                  sltu         a0, s2, s5
                  add          sp, a2, s11
                  mulhu        a0, t1, s6
                  xori         s9, sp, 9
                  slti         s2, t2, -1708
                  subw         s8, a6, a2
                  subw         a6, s11, a1
                  slliw        ra, t5, 25
                  auipc        s8, 923644
                  slt          s9, s4, s5
                  sra          s11, tp, t3
                  lui          sp, 1008159
                  lui          t5, 280974
                  mulh         zero, s5, a2
                  srai         t6, a6, 29
                  sltiu        t5, a2, 1010
                  or           s7, s5, t2
                  sub          a0, s7, s0
                  sraw         s1, s0, t2
                  divw         t2, zero, t5
                  remuw        s8, zero, a6
                  andi         s4, a5, 793
                  auipc        t6, 641447
                  srai         a0, a0, 52
                  remuw        t4, s8, a6
                  srlw         tp, sp, t2
                  srai         a7, s2, 12
                  srlw         t1, t2, t4
                  andi         a6, s6, -444
                  addiw        a0, zero, 1985
                  div          t5, a4, t0
                  divw         s11, a6, t0
                  addi         a3, s6, 1219
                  addiw        a2, s10, -365
                  rem          t5, gp, s8
                  addiw        s2, s3, -1056
                  slli         a0, s4, 27
                  lui          t3, 713974
                  ori          a7, sp, 1496
                  mulh         a7, s11, a4
                  mul          s11, s7, a2
                  andi         t1, a4, -1741
                  or           t0, a4, s4
                  divw         zero, a3, gp
                  auipc        a0, 28538
                  srli         s6, s6, 60
                  add          a2, t1, t2
                  divw         s8, s2, a3
                  divu         t1, s10, s3
                  mulhu        t0, s3, t3
                  mulhsu       s1, ra, a0
                  sraw         gp, tp, sp
                  sll          s3, a3, t0
                  sraiw        t5, zero, 28
                  mulhsu       a5, s9, gp
                  srli         zero, a5, 42
                  sra          a7, s6, t4
                  xori         s4, t5, 364
                  mulw         t6, a5, s3
                  divu         t1, a3, a7
                  add          s2, s10, a3
                  mulh         a3, s7, t1
                  sltiu        a6, a3, -1390
                  andi         s4, s9, -345
                  xori         s2, t0, -524
                  remuw        s9, t2, s9
                  slt          tp, t5, s0
                  divw         t2, sp, s9
                  ori          t3, s8, -94
                  lui          t6, 357894
                  remu         t6, s11, s11
                  sltiu        t0, gp, -1629
                  nop
                  nop
                  rem          a5, a4, sp
                  rem          s1, s2, t4
                  mulhsu       s4, s2, s9
                  remu         t2, s0, t4
                  xor          a2, t0, s3
                  lui          s8, 96813
                  sltu         zero, a1, a1
                  and          s1, gp, gp
                  addw         a1, a0, s3
                  or           s3, t1, a7
                  sraiw        gp, s5, 21
                  xori         s3, s3, 1432
                  addw         a6, t0, t1
                  srliw        sp, s11, 10
                  sraiw        t4, a4, 9
                  sll          t6, a3, t0
                  nop
                  slli         t0, sp, 33
                  divw         s8, t4, t4
                  mulh         zero, t4, sp
                  or           a0, a3, s7
                  mulhu        t0, a4, zero
                  add          a0, a3, s2
                  sllw         a5, sp, s6
                  mul          ra, s6, a1
                  slti         s1, tp, -1333
                  srai         a1, s11, 26
                  sraiw        s1, s8, 19
                  addiw        a3, s0, -2
                  andi         t0, s11, 126
                  mulhu        zero, a4, s11
                  srai         s3, s3, 37
                  srlw         s6, a1, s7
                  lui          t3, 735784
                  ori          t0, t4, 538
                  sraw         s6, s4, s3
                  srl          s2, s11, s6
                  remw         t0, s2, s10
                  ori          s7, a5, -584
                  slli         ra, ra, 25
                  mulw         s9, a6, a0
                  sltiu        a2, a5, 337
                  mulh         zero, s10, a1
                  srliw        t4, a1, 9
                  remuw        t4, a4, a0
                  nop
                  or           a5, gp, a0
                  srlw         gp, a3, s1
                  mulw         t5, a4, a6
                  srl          s11, s6, s5
                  rem          t3, a0, s9
                  sraw         a6, a7, s7
                  slli         t2, t0, 2
                  srlw         tp, gp, s11
                  divuw        t0, t2, zero
                  addw         s3, t2, t5
                  ori          t0, s7, -124
                  divw         t4, tp, ra
                  addi         a2, a3, 814
                  srlw         a6, a0, a5
                  srlw         a3, a3, s3
                  srliw        a2, s3, 13
                  sltu         a0, s4, s4
                  sra          t4, s10, gp
                  divw         t1, s1, s6
                  sltu         ra, s4, t3
                  divw         gp, t6, t0
                  div          t0, s8, s9
                  divu         s1, s11, zero
                  or           zero, s2, s0
                  sll          gp, s0, s8
                  subw         t6, s10, s8
                  subw         t0, s7, a7
                  rem          zero, s9, a3
                  srli         sp, a7, 60
                  remw         s1, sp, s6
                  add          s5, s0, a7
                  mulh         a2, t4, a4
                  srlw         s1, a6, a7
                  nop
                  slli         a2, t3, 12
                  nop
                  sub          t2, t1, s5
                  remuw        s1, s0, a3
                  srai         s8, a2, 2
                  srl          s8, t3, s8
                  xori         a2, a0, 208
                  slliw        sp, s8, 30
                  srliw        s5, a1, 23
                  mul          a1, t6, a4
                  slti         t5, t4, -1667
                  auipc        s3, 323010
                  mulw         s4, s11, gp
                  and          a6, s8, t1
                  srlw         t2, s7, gp
                  slt          a3, t0, zero
                  sra          zero, t4, s10
                  srl          s9, s3, a1
                  mulhu        a0, t0, a4
                  sltu         s2, a2, t6
                  rem          t5, a0, zero
                  add          a0, a7, a7
                  mulhsu       s4, t0, s2
                  div          s9, t6, t0
                  sll          a7, sp, a2
                  mul          t0, a5, a2
                  slti         s11, s7, 293
                  addi         t4, s1, 1288
                  sra          s11, t3, s8
                  slti         t1, s2, -441
                  mul          t3, t5, zero
                  mulw         s9, s6, a0
                  srl          a3, s3, tp
                  divu         s9, t2, s11
                  divu         t5, s2, s4
                  ori          a5, s8, 1914
                  remu         a3, a6, sp
                  mulhu        a5, s5, s11
                  mulh         s3, tp, s0
                  andi         a5, t5, -1695
                  addw         t5, s5, s7
                  divu         t5, t6, a2
                  srli         a0, s4, 36
                  sll          zero, s0, t3
                  remuw        s4, t5, s4
                  ori          a7, s6, 296
                  remu         zero, t6, s6
                  and          s5, s0, s10
                  andi         s4, s7, 374
                  srli         gp, s0, 18
                  add          a2, s11, a3
                  divw         t4, t3, s0
                  mulh         a1, t2, a1
                  slti         tp, t5, -1956
                  sraiw        s4, tp, 28
                  sraiw        a3, s7, 29
                  remw         s4, zero, s8
                  andi         s3, t1, -290
                  sltiu        s8, a5, 836
                  and          s1, a6, sp
                  andi         a2, a0, -1059
                  sraw         a5, zero, s10
                  divu         a0, a3, tp
                  sltiu        s6, t3, -631
                  srai         t1, s4, 5
                  lui          ra, 52815
                  xor          sp, a7, a0
                  andi         s8, s7, 2042
                  srl          t2, t5, s2
                  srl          gp, sp, ra
                  or           a0, t1, t3
                  remw         t6, s10, s10
                  xor          t2, t6, a3
                  andi         s4, a3, -807
                  rem          t5, t0, s6
                  slti         a1, s5, -1966
                  ori          a7, t5, 152
                  divu         a0, s6, a3
                  mulhu        ra, a6, t0
                  srlw         ra, ra, a6
                  mulhsu       s2, t6, a6
                  mul          a2, gp, s11
                  sub          s8, sp, a3
                  divu         s7, zero, a2
                  nop
                  addw         s4, s4, ra
                  sltu         t4, t6, tp
                  slliw        s2, t1, 25
                  remuw        s1, a6, s2
                  addw         s7, t0, a0
                  divw         tp, s7, s1
                  or           t5, s10, t0
                  subw         s4, a0, a5
                  andi         s1, s1, -1643
                  xori         t0, a1, 136
                  mulhsu       t6, s9, t5
                  remuw        ra, a0, t3
                  divu         t5, gp, sp
                  mul          a2, a2, t2
                  auipc        s3, 32657
                  srli         a2, t6, 5
                  sll          a0, gp, s10
                  xor          s11, s5, s1
                  srai         t0, gp, 2
                  sra          a7, s2, zero
                  ori          s8, a3, -622
                  srlw         a0, s8, a1
                  slt          s8, s11, s9
                  remuw        s9, t3, tp
                  mulw         a0, sp, s4
                  sub          s1, s2, t0
                  lui          sp, 797919
                  mulhsu       s4, s11, a1
                  and          a1, tp, s0
                  sll          s6, s4, t4
                  sll          a7, t0, tp
                  divw         s5, s0, sp
                  addi         s7, s7, -1721
                  srliw        t5, s4, 7
                  srlw         t0, s2, tp
                  mulw         a3, s7, a2
                  divuw        ra, s10, s4
                  nop
                  rem          s5, s0, s1
                  remu         a2, ra, s9
                  ori          s11, gp, -749
                  mulh         a0, gp, s6
                  sraiw        s2, t1, 11
                  divu         s8, gp, s9
                  lui          a1, 490919
                  divuw        a2, s8, s6
                  sltiu        s2, zero, -1607
                  subw         s9, a7, s7
                  xor          a0, t1, s4
                  divuw        a1, tp, zero
                  xori         t2, t0, -329
                  sraw         s11, t2, s3
                  divu         s8, a5, s9
                  mulw         s8, s6, t6
                  sll          s11, a6, s3
                  mulhsu       s2, a5, sp
                  addi         t5, a4, -16
                  andi         s4, a6, -1047
                  addi         s7, t1, 1411
                  and          t6, t5, s4
                  auipc        a1, 889199
                  srlw         zero, s8, s4
                  slti         ra, ra, 1152
                  sra          t5, s10, s3
                  mulw         t6, s9, t1
                  rem          s11, s9, gp
                  ori          a7, s9, 454
                  slti         s11, t3, -1721
                  remuw        tp, t1, gp
                  mul          sp, s3, a7
                  or           s5, a3, a4
                  nop
                  sllw         a0, s5, s4
                  subw         a6, t0, t6
                  sraiw        a1, s2, 29
                  addw         s1, a3, t5
                  divuw        s11, a2, a7
                  srlw         a2, zero, ra
                  addw         t3, a5, s5
                  div          s11, s3, t1
                  lui          ra, 608891
                  sraiw        a2, ra, 2
                  sllw         s8, a4, zero
                  sraiw        t5, a2, 5
                  remuw        a7, gp, ra
                  sltu         tp, a7, a2
                  or           s8, s9, s9
                  remuw        s11, t2, t3
                  slt          a2, s9, a7
                  add          s5, t4, s7
                  mulw         ra, t3, t4
                  divu         s8, s3, s7
                  div          a6, s3, zero
                  sltiu        t5, s8, -1945
                  andi         zero, s11, 1858
                  and          s3, s6, gp
                  xori         t5, a6, 1335
                  rem          s8, t3, a4
                  divuw        t0, s1, s9
                  mul          a2, sp, t3
                  divuw        t6, t4, a4
                  divuw        ra, t2, zero
                  rem          t2, t0, a0
                  subw         t1, tp, t3
                  sltiu        a3, tp, 621
                  sra          a0, s2, s11
                  mul          t2, s3, t2
                  slliw        t4, t2, 7
                  andi         t4, zero, 1136
                  sra          s4, a4, a5
                  and          s11, t6, s2
                  div          s9, s3, s3
                  div          t2, t5, s6
                  xor          s8, tp, t6
                  srliw        a2, t0, 19
                  slt          a7, s9, t3
                  mulw         gp, gp, gp
                  div          s3, t3, t5
                  divuw        s3, s3, a4
                  sub          sp, gp, a5
                  mulw         t1, a4, t1
                  mulw         zero, a7, s5
                  sub          zero, t5, t3
                  ori          s2, t4, -318
                  remu         s5, s4, a3
                  remu         t5, t6, s6
                  slti         a3, s10, 396
                  or           a5, sp, zero
                  divu         s6, tp, t0
                  sll          ra, s7, t1
                  sra          s2, s11, s3
                  slli         s3, a6, 14
                  andi         ra, t4, -1048
                  and          a5, a2, s6
                  srli         sp, s11, 18
                  mulw         t3, s5, s0
                  xori         t4, s0, -54
                  and          a0, zero, a6
                  and          s8, a4, s9
                  lui          t1, 220736
                  slliw        t5, t4, 8
                  divw         s7, s1, a2
                  xor          sp, s9, a2
                  and          s9, s4, s3
                  sll          zero, s9, s7
                  mulw         s2, s3, a4
                  sltiu        a6, zero, 1505
                  andi         s5, s9, 1893
                  srliw        t4, sp, 2
                  sll          a7, a7, s3
                  mulhu        t1, s1, a3
                  slti         tp, s8, -1749
                  slliw        s7, t2, 31
                  srlw         t5, t0, a4
                  and          t5, s10, s9
                  andi         a3, a7, 1342
                  mulw         t0, a4, ra
                  andi         sp, s10, 1333
                  mulhu        zero, a4, ra
                  or           t5, s5, ra
                  subw         zero, s5, a6
                  divuw        gp, s6, s1
                  slt          s2, ra, s6
                  subw         s2, s9, t1
                  sraw         a0, t6, t1
                  remuw        tp, s3, a4
                  div          s1, a4, a5
                  lui          s3, 485788
                  add          t6, a0, a0
                  divu         t0, s5, a5
                  remu         s2, a4, a2
                  addi         tp, t0, -2001
                  srli         tp, s2, 4
                  addi         s11, tp, -2036
                  lui          a1, 791294
                  remw         sp, a6, t6
                  and          t0, t4, s6
                  slt          t4, t0, s10
                  auipc        s2, 642983
                  srlw         a3, s0, s3
                  slti         a7, t0, -1646
                  mul          s1, s1, t6
                  srliw        a7, s2, 6
                  srliw        a5, s1, 26
                  mulh         s11, t4, t6
                  sltiu        zero, a5, -84
                  add          sp, s4, s3
                  add          s8, s10, s5
                  andi         a5, t3, 1230
                  divuw        s5, t0, s4
                  srl          a5, s5, s1
                  divuw        t0, a1, s11
                  ori          s6, a1, -847
                  lui          s7, 93802
                  div          t4, a6, gp
                  sltiu        a0, s2, -182
                  mulhsu       t5, a4, s2
                  mul          t2, s9, ra
                  or           s1, s3, a0
                  divw         s4, s2, s2
                  sra          t1, gp, a0
                  mulhsu       t4, s5, s2
                  mulh         a6, a0, s11
                  srliw        a5, zero, 4
                  slli         a6, s10, 13
                  srl          s11, sp, t4
                  sll          s4, sp, a5
                  ori          a7, s3, -853
                  sllw         tp, t6, t3
                  sltu         a3, s6, s0
                  divu         t1, a2, a2
                  subw         a7, s10, s8
                  slt          tp, a1, t1
                  srai         t4, s0, 10
                  srlw         a2, t2, t6
                  sub          gp, a2, a4
                  sra          s9, t5, s1
                  mulhu        s4, a4, s10
                  sltiu        s9, s5, 1439
                  xor          s8, s7, a5
                  mulw         ra, ra, t1
                  add          a5, s8, t0
                  mulhu        s4, gp, s2
                  xor          s11, t4, t3
                  nop
                  rem          a0, tp, a7
                  mulhsu       s5, a3, s2
                  slt          a6, gp, gp
                  divuw        a2, s1, t4
                  sraw         s11, s10, s0
                  ori          gp, s3, -376
                  andi         t1, t6, -1867
                  mul          t6, a6, t0
                  sraw         a0, s9, a2
                  mulh         t4, a3, a1
                  addi         a3, s0, -886
                  xori         s7, t4, -708
                  srl          t4, tp, s11
                  mul          a0, s4, ra
                  sraiw        s1, a2, 6
                  divuw        t4, s1, zero
                  sraw         tp, t5, s7
                  sub          a3, s10, a1
                  srliw        t1, s1, 2
                  sll          zero, a5, tp
                  sraw         tp, s0, t3
                  slt          tp, s6, s2
                  sllw         s7, s3, ra
                  remuw        t1, t0, sp
                  divuw        ra, a4, zero
                  or           t0, s7, gp
                  mulh         s8, s4, s3
                  sub          s6, ra, s4
                  div          t5, s8, a1
                  addiw        s4, a4, 1178
                  sll          t1, a5, t2
                  divu         s2, s9, gp
                  mulw         a0, s6, a4
                  srl          a2, a6, t0
                  mulhsu       tp, a5, s3
                  mulw         a6, t5, t0
                  sra          t4, a0, s4
                  remw         sp, a0, s10
                  divu         s1, a6, s4
                  mulhu        s5, t1, s5
                  mulhu        zero, t6, a0
                  mulhsu       ra, s2, t3
                  slli         gp, s1, 36
                  srai         sp, t3, 13
                  andi         a2, s4, 619
                  remuw        s1, a0, s11
                  divw         s7, t0, t1
                  sraiw        s1, a2, 6
                  sltiu        a2, s5, -1473
                  sll          t3, s9, t4
                  nop
                  remu         s8, a3, s10
                  sraiw        s8, s1, 23
                  addi         s2, s2, -292
                  subw         s4, t5, a6
                  remu         a3, a2, s1
                  auipc        s3, 875118
                  addi         tp, t1, -1499
                  and          s5, a4, s9
                  remuw        t1, a4, tp
                  slt          t1, s3, s9
                  sltu         a2, s9, a2
                  or           zero, ra, a5
                  divuw        s8, a0, a5
                  srai         s8, t6, 10
                  sra          a2, a0, s2
                  srliw        s6, s2, 22
                  addiw        s1, a1, -1429
                  ori          t1, a2, -1802
                  remu         t4, a7, zero
                  ori          s8, a3, 1309
                  addi         t5, t4, -1848
                  subw         s3, s3, s0
                  mulhsu       t5, s4, s9
                  srl          s9, t1, s8
                  addiw        t3, a3, 1937
                  srli         t4, t3, 31
                  mulhsu       s7, a7, s11
                  xor          t3, s9, s10
                  slliw        s11, s2, 8
                  addiw        tp, a5, 50
                  add          t3, a2, s6
                  rem          zero, t2, t1
                  mul          s1, a7, s3
                  addw         a2, a7, zero
                  sll          zero, s9, a0
                  remu         t5, s7, s3
                  slt          s2, s8, a3
                  addi         s11, s8, -825
                  mulh         a2, a3, s6
                  addiw        t5, ra, 1777
                  lui          t6, 866802
                  and          a6, a7, a3
                  andi         s11, a3, -765
                  remw         a0, t1, s6
                  mulhu        s8, t4, ra
                  sraiw        a6, s2, 14
                  xori         a5, t4, -281
                  sll          s5, s10, s10
                  srai         s8, s9, 18
                  xor          t5, s8, t0
                  nop
                  sra          a7, tp, t4
                  and          s3, s0, s9
                  subw         s5, t5, s1
                  auipc        s11, 678800
                  sra          s7, s2, a2
                  addw         s1, t0, s2
                  subw         t4, s6, s10
                  mulw         t3, s8, a0
                  div          a6, a1, a3
                  sraw         s6, t6, gp
                  xor          t4, sp, tp
                  nop
                  sltiu        t2, t6, 597
                  sllw         t0, zero, ra
                  remu         t1, s9, t0
                  remuw        tp, a6, gp
                  remu         ra, s5, a7
                  sltu         s6, a3, s2
                  remuw        t1, s8, t4
                  addi         t2, t3, 224
                  sltu         zero, s1, s3
                  or           sp, a7, s5
                  subw         s3, s11, s7
                  slti         t2, s3, -1242
                  ori          a3, s0, -669
                  sraiw        s6, s6, 20
                  addw         t6, a4, a7
                  subw         a7, tp, ra
                  srlw         s6, s2, s8
                  srliw        s9, s3, 14
                  mulw         zero, a5, sp
                  remuw        t4, a4, s10
                  sub          gp, zero, ra
                  sltiu        t5, a7, -1367
                  sraiw        a7, s6, 17
                  and          s5, ra, t6
                  addi         t5, tp, 1297
                  sllw         a2, a6, a5
                  mul          zero, a0, t3
                  sllw         a1, t2, t4
                  sraiw        ra, a2, 23
                  divu         t1, gp, zero
                  sra          zero, a1, t6
                  sltiu        t3, a4, -989
                  slt          s6, t6, s0
                  srl          a5, a2, t4
                  srlw         a0, tp, s10
                  sub          s8, ra, t0
                  slliw        a3, s7, 25
                  remu         t3, a1, s7
                  add          gp, s2, zero
                  srliw        a5, a6, 9
                  rem          t1, a0, s0
                  sub          s7, s0, s2
                  addi         a0, s10, -1959
                  sllw         a1, t5, a1
                  remu         s6, a1, a7
                  srlw         s8, s11, s7
                  srli         sp, a1, 14
                  srlw         a3, a1, s5
                  slli         a1, t2, 21
                  add          s8, s2, t1
                  sraiw        t0, zero, 9
                  ori          a2, s7, -887
                  and          gp, t0, a1
                  slliw        s4, a3, 30
                  ori          zero, a1, 94
                  sll          t6, t2, s8
                  mulw         s9, t5, t0
                  add          gp, s4, s5
                  divw         a1, s11, ra
                  remu         tp, a7, s5
                  add          a6, ra, a1
                  nop
                  xor          t1, s4, s3
                  sra          a3, a6, s0
                  lui          t6, 1044427
                  or           s8, t1, t5
                  slli         a2, a0, 51
                  srli         t4, t3, 41
                  srai         s9, t2, 20
                  remu         a2, t2, s10
                  add          a5, a4, a2
                  srli         t1, gp, 15
                  and          a6, tp, t6
                  ori          gp, s10, -1982
                  divuw        a6, tp, t0
                  and          s1, ra, t2
                  sllw         t0, s6, t1
                  mulhu        a1, a3, a1
                  and          t5, s5, t4
                  or           a5, s0, s11
                  ori          s4, a6, 1722
                  mul          t1, s4, t5
                  mulw         t4, s11, s3
                  xori         zero, a4, 52
                  mulh         gp, s7, t6
                  sltiu        a7, a6, -1215
                  mulh         s4, sp, a7
                  addiw        s8, a3, -629
                  div          gp, s9, a1
                  mulh         t3, s6, s8
                  add          ra, s4, a0
                  lui          gp, 266557
                  mul          gp, zero, a1
                  divuw        t2, s7, s10
                  sltiu        s2, s5, -1500
                  mulw         zero, s5, s9
                  remw         t4, s4, s2
                  slti         s8, s8, 1205
                  slt          a1, s4, s11
                  sub          a0, t5, gp
                  div          t5, s3, a7
                  divuw        a0, t2, s4
                  xori         t0, s0, -827
                  slli         sp, a2, 15
                  slliw        a1, s0, 3
                  srlw         a0, a1, a2
                  srai         t3, a0, 4
                  nop
                  xori         a3, t0, 232
                  srl          t2, zero, a6
                  subw         a5, s6, a1
                  andi         ra, t3, 1909
                  sraw         gp, s5, a3
                  ori          a0, a2, 248
                  rem          gp, s2, s2
                  mul          s3, t4, s11
                  sraiw        s2, a5, 9
                  addw         s8, s3, t4
                  slti         a0, a1, 687
                  remw         t2, t0, a6
                  lui          a6, 135468
                  and          a2, s4, t0
                  or           s3, s7, s2
                  srl          t0, a7, a5
                  addw         t6, a1, s10
                  sub          t3, s3, t4
                  ori          a3, s8, 756
                  divu         s11, s11, s0
                  sra          a5, s6, s1
                  lui          a1, 678867
                  slli         a6, s11, 8
                  xori         t5, a1, -1506
                  sra          s4, t0, a4
                  auipc        s5, 384012
                  subw         s4, a5, tp
                  sraiw        s9, t5, 8
                  slliw        t4, ra, 26
                  sltiu        a5, ra, -740
                  sraw         zero, s7, a3
                  add          a2, t5, t2
                  sub          t6, s8, a0
                  remw         s4, a5, s6
                  mulw         a0, a4, t2
                  addw         s8, t4, s1
                  sraiw        a6, s8, 18
                  mulw         s4, a3, s5
                  remu         s3, sp, s2
                  sraw         s9, a3, zero
                  remuw        gp, t3, s7
                  addw         t1, s2, s1
                  slliw        s1, s9, 6
                  remuw        a3, a6, s2
                  andi         a1, s9, -1539
                  srlw         t4, t6, t4
                  remuw        gp, s8, a4
                  srli         s11, a2, 40
                  remu         zero, t1, s6
                  sra          tp, a7, t6
                  mulh         ra, gp, s3
                  divu         a6, ra, s5
                  subw         s11, s6, t4
                  divu         a0, s8, t2
                  ori          s2, s0, -1490
                  mul          a3, a7, t0
                  slli         a5, a7, 21
                  sltu         s3, a0, a3
                  mulhsu       gp, s5, t1
                  divuw        a0, t5, s3
                  sub          s5, s3, a1
                  sllw         t6, t1, a2
                  slliw        a2, s10, 22
                  remw         s11, a6, s6
                  slt          t3, a5, s1
                  sra          s6, zero, a0
                  or           t3, a4, s9
                  addw         sp, s1, s5
                  remu         a6, a0, a3
                  mulhsu       a7, a1, tp
                  slli         a6, s7, 46
                  div          sp, s7, s10
                  slli         t6, s3, 42
                  sltu         a0, t5, t6
                  srl          a2, s6, t5
                  divuw        a5, tp, zero
                  subw         s8, ra, zero
                  slliw        a2, s6, 12
                  remw         a5, a1, sp
                  add          s11, zero, s5
                  srl          s9, s0, a7
                  remuw        a3, a2, t3
                  add          a6, a2, s6
                  addw         t6, s3, s5
                  and          t0, t6, a0
                  slti         t5, t6, 1585
                  or           a2, t4, t2
                  slliw        s8, t3, 4
                  remu         t4, sp, t4
                  and          t4, s9, s11
                  sra          s5, t4, zero
                  nop
                  slli         s7, a3, 63
                  div          a3, s1, a7
                  sltu         a5, gp, s5
                  mulhsu       t0, sp, t6
                  mul          ra, t2, s0
                  addiw        s1, ra, -142
                  remw         s4, s3, t1
                  sub          s1, s9, a0
                  rem          a1, s9, a1
                  remw         a0, a1, a6
                  sltu         t2, t4, a5
                  sraiw        a5, a6, 26
                  divu         s1, ra, s11
                  mulh         s11, s6, s6
                  subw         s6, ra, gp
                  auipc        a0, 377709
                  lui          ra, 721646
                  auipc        t6, 503797
                  sltu         t3, a7, t5
                  rem          s4, s4, s1
                  nop
                  addi         t6, ra, -1775
                  mulw         s11, a3, ra
                  addiw        s1, s8, -385
                  srli         ra, s3, 28
                  sraw         a3, tp, ra
                  mulhsu       a0, s9, s8
                  remu         s1, a1, a3
                  subw         a6, a0, a5
                  sraiw        t6, a0, 16
                  slli         a6, a2, 34
                  mulhu        s11, ra, t1
                  or           a0, s4, s1
                  add          t2, t4, s3
                  addi         s2, a6, 178
                  srl          s3, a2, s0
                  rem          a1, s5, s2
                  sra          s6, s3, s3
                  divu         a1, a2, t5
                  ori          s5, zero, 1415
                  mulhsu       s11, s4, s3
                  sra          s1, t2, t3
                  mulh         zero, s9, tp
                  srai         t1, a6, 46
                  slliw        zero, s8, 14
                  and          s4, s10, s6
                  srliw        t5, gp, 29
                  mulh         s3, a2, a1
                  add          s2, s2, zero
                  mulw         a3, t4, s10
                  srli         s6, t2, 12
                  add          s8, t0, sp
                  divu         s9, t1, s8
                  remu         t4, t2, ra
                  xor          t0, s0, t6
                  rem          s1, ra, s11
                  xori         gp, a2, -1274
                  slli         t0, a1, 14
                  remw         a7, ra, a7
                  srai         a5, s3, 52
                  xor          a2, s9, t5
                  andi         ra, t1, -411
                  mulh         gp, zero, s3
                  slti         s5, s1, 282
                  div          t2, a1, tp
                  mul          a5, s1, s3
                  sltu         s2, a4, gp
                  slliw        a3, sp, 1
                  sra          s9, s5, a2
                  auipc        s6, 735411
                  divuw        sp, t6, s1
                  rem          sp, s10, t4
                  subw         t6, s8, s2
                  lui          s4, 160117
                  sll          s8, t3, s10
                  div          s8, a5, zero
                  sra          t0, zero, t4
                  slli         a5, s10, 61
                  mul          sp, a4, a0
                  xori         s6, gp, 1168
                  rem          s6, s10, s6
                  sltu         t1, s10, gp
                  rem          t4, s7, s3
                  remuw        t1, s4, tp
                  mul          t6, t2, a7
                  sub          a3, a4, s7
                  sllw         t4, s2, t2
                  andi         s9, a6, -1034
                  slli         t1, s7, 31
                  sllw         a7, a6, a6
                  add          s6, t6, a3
                  remw         s8, s3, s10
                  mulw         gp, a7, t4
                  divw         t5, s5, a6
                  subw         a0, s11, a3
                  addiw        s6, s11, -1497
                  sll          a0, a3, a6
                  mulhu        s5, s0, t3
                  sra          t3, s4, s3
                  mul          t4, sp, t1
                  xori         s9, a7, -1896
                  divuw        a5, sp, t6
                  remw         s8, s9, s6
                  addiw        t6, a7, -907
                  slliw        t3, a6, 13
                  auipc        t3, 551369
                  mulh         s6, a5, s4
                  ori          t0, s3, -1167
                  srliw        s1, t6, 1
                  sraw         a1, s5, t3
                  divuw        a3, t1, sp
                  srl          a3, s8, ra
                  slliw        a5, a6, 30
                  divu         ra, ra, a2
                  mulw         a2, s5, s2
                  xori         a0, s3, 293
                  sltiu        a2, tp, 782
                  srli         a7, ra, 39
                  mulh         ra, s6, a4
                  remu         a7, zero, s2
                  addiw        s5, s1, 1129
                  rem          gp, s11, a1
                  srliw        s8, s3, 29
                  sllw         t5, t3, t6
                  srliw        zero, zero, 21
                  lui          t0, 145560
                  nop
                  xor          t3, s8, t2
                  mul          a2, t6, a1
                  nop
                  slliw        a5, s9, 13
                  slli         s6, s0, 10
                  sll          a2, a2, zero
                  xor          a2, gp, a4
                  xor          s11, a5, gp
                  ori          t5, s3, -1381
                  mul          zero, tp, s4
                  xor          s11, ra, t1
                  andi         t4, a7, 249
                  xor          s3, a4, s8
                  nop
                  srai         a1, t1, 60
                  srli         a6, t2, 18
                  sra          zero, a3, s3
                  srl          a0, s9, t0
                  mul          s1, a0, s2
                  div          a7, gp, t1
                  srli         gp, zero, 63
                  and          t5, a6, a4
                  srliw        sp, s4, 22
                  subw         t5, a6, t0
                  add          t0, t0, a5
                  srai         s2, t2, 27
                  sraw         ra, t5, s3
                  divw         a5, t6, s0
                  srlw         zero, t6, s8
                  slliw        t0, t5, 25
                  add          a2, a6, t6
                  ori          s9, s6, 1124
                  lui          t2, 1006618
                  sll          t1, a0, s4
                  sraiw        gp, t5, 19
                  xori         s8, a6, 1512
                  sllw         s8, s6, a4
                  rem          a3, t3, tp
                  srli         t2, s9, 22
                  sltu         gp, s9, s1
                  xor          s9, s5, s3
                  mulw         s7, a7, a5
                  auipc        s3, 240449
                  sub          sp, s1, t1
                  lui          a3, 18312
                  add          a2, s11, s2
                  mulw         ra, s8, ra
                  ori          a1, s1, -277
                  rem          s7, a2, a2
                  slli         s8, t4, 15
                  sltiu        a5, t5, -132
                  or           a1, s1, s9
                  slliw        s9, a3, 20
                  slt          s3, s11, a4
                  ori          s11, a7, 889
                  sltu         t4, t2, a6
                  slliw        s9, s4, 19
                  add          s4, ra, s7
                  sraw         s11, t1, sp
                  slt          s6, s11, t0
                  srli         s1, a5, 12
                  divu         t6, t2, t4
                  srlw         s1, a7, gp
                  mulhu        a2, a6, t1
                  sltiu        a7, a7, -887
                  lui          a6, 377352
                  and          ra, t0, t6
                  sll          ra, t5, s4
                  divu         tp, s6, a5
                  divw         s9, t6, a6
                  remu         a3, s0, s1
                  sub          s2, a3, a1
                  sub          s6, s6, a7
                  and          a2, sp, gp
                  rem          a5, t3, a0
                  sltu         s6, s6, t6
                  divu         s11, t1, t2
                  sltu         a0, s10, t1
                  sltu         a6, s9, a2
                  sraw         t5, tp, s2
                  srai         s6, a3, 30
                  slliw        a2, t0, 23
                  div          t2, ra, t2
                  divuw        ra, t5, t0
                  slt          s4, s7, a3
                  ori          a5, a6, -722
                  auipc        sp, 479973
                  mulhsu       s7, s11, zero
                  mulhu        s9, t0, t0
                  srliw        a0, a6, 25
                  slli         s4, t1, 12
                  srlw         a0, ra, s8
                  divw         t1, t6, s5
                  subw         a2, ra, s6
                  sllw         t4, gp, zero
                  sltu         s3, s7, t4
                  andi         zero, zero, -321
                  xor          s11, s5, s7
                  xori         zero, t1, -1361
                  add          a2, t1, t4
                  addw         t1, ra, a1
                  mulw         a7, a6, s1
                  auipc        a0, 698007
                  and          a7, a0, s2
                  add          t4, s3, s6
                  divw         a1, a7, s10
                  sraiw        s11, s11, 18
                  add          zero, s2, s11
                  addw         gp, sp, s1
                  addiw        s6, s8, 1448
                  srliw        sp, s7, 9
                  remuw        t1, a0, s11
                  add          s11, s2, t3
                  mulhu        a5, s7, s4
                  divw         a1, tp, s1
                  srai         a2, a7, 60
                  divuw        a2, t5, t1
                  slt          tp, t4, s9
                  nop
                  sra          t2, t4, tp
                  add          a0, s2, s5
                  srliw        s11, a5, 6
                  divw         tp, a4, s3
                  auipc        s1, 826351
                  addw         t3, s9, a6
                  remw         ra, t0, a7
                  nop
                  slti         zero, s5, 1162
                  ori          a1, s2, -138
                  addi         t0, t4, 959
                  sra          s2, a0, sp
                  sllw         t0, sp, a5
                  andi         a0, s1, 2019
                  xori         s6, s5, 1450
                  sub          s11, s10, t6
                  slli         a2, a6, 63
                  lui          sp, 398082
                  auipc        s1, 79811
                  auipc        t5, 512201
                  slli         t3, s4, 15
                  subw         tp, s7, gp
                  add          t1, s0, s5
                  slt          t4, ra, t5
                  mulhu        t0, s9, s0
                  sll          t1, t4, s1
                  remw         t6, s3, t2
                  or           t5, t5, s4
                  remu         sp, t2, gp
                  rem          t1, a1, t1
                  sltiu        s11, ra, 267
                  srliw        gp, a1, 10
                  sub          s2, t4, t0
                  sraiw        s1, a1, 17
                  sraiw        t2, s5, 13
                  andi         s8, t2, 1158
                  xor          t3, sp, s5
                  and          s3, zero, a1
                  divu         a2, s10, a6
                  ori          s8, s1, -1639
                  slti         t1, gp, -37
                  xori         s2, t2, 177
                  slt          s7, t2, sp
                  add          s9, zero, s3
                  mulw         a6, a1, s0
                  srli         s7, s9, 50
                  add          t1, s9, t5
                  lui          s3, 584607
                  divw         s11, tp, gp
                  sra          s11, s10, a7
                  divuw        tp, tp, s10
                  addiw        s7, t5, 1465
                  srlw         s11, s0, a3
                  srliw        a7, s4, 6
                  sll          tp, t3, t6
                  srli         t5, t4, 14
                  sll          s1, tp, t0
                  and          zero, a4, s9
                  slt          ra, s5, t2
                  srai         a7, zero, 22
                  sll          s5, gp, t2
                  sraw         a6, s10, a6
                  srl          s1, t6, a4
                  srai         t4, s11, 61
                  srlw         s6, s1, t2
                  sltu         t5, t6, s4
                  auipc        a5, 1037680
                  and          t6, tp, s3
                  lui          s4, 1567
                  lui          s7, 37567
                  srli         s5, t1, 59
                  lui          a5, 360603
                  remw         a5, a1, gp
                  remuw        s2, ra, s10
                  divuw        sp, a2, sp
                  sltu         a7, s9, s2
                  remuw        gp, a6, a1
                  andi         a5, a3, -758
                  mul          a5, t6, sp
                  sltiu        t4, a3, 16
                  auipc        t4, 110244
                  addi         a3, t3, 1700
                  divu         a5, gp, s1
                  xori         tp, s4, 147
                  srliw        a1, a6, 22
                  add          t6, s8, s4
                  mulw         s9, s11, ra
                  slti         a6, sp, 76
                  and          t4, s9, s3
                  mulh         t5, s2, t5
                  add          t5, t1, a6
                  sltiu        t4, s4, 1341
                  divw         a6, a3, s10
                  divuw        zero, zero, s9
                  xori         s1, s3, 1082
                  or           a1, t3, a2
                  sllw         a2, ra, a4
                  srliw        s11, a3, 14
                  remw         ra, s9, s0
                  xori         t4, a4, -1205
                  or           a2, s4, s10
                  xor          a3, a1, s1
                  auipc        a1, 222788
                  mulhu        s1, s7, s7
                  slti         s2, t4, -1047
                  add          s6, tp, a4
                  or           a1, t3, tp
                  addiw        s2, a1, 2003
                  slli         s8, t0, 9
                  and          gp, a1, a7
                  slli         t6, t1, 62
                  rem          tp, t5, s10
                  srl          s11, a3, t5
                  andi         t1, zero, 1415
                  slt          s3, t2, t4
                  mulhu        s11, s2, a2
                  divuw        s2, a4, t2
                  add          t4, t5, ra
                  sltu         t4, tp, t6
                  slt          gp, ra, gp
                  mulhu        a5, s11, s6
                  auipc        zero, 535626
                  mulhu        t4, t6, t3
                  div          t0, s2, zero
                  divuw        a0, s10, s2
                  addw         t0, s7, s6
                  srlw         a2, a4, gp
                  xori         t4, a0, -122
                  mul          s2, tp, a1
                  remw         s2, t3, s3
                  remuw        s11, a4, sp
                  slli         t0, t0, 0
                  divuw        zero, t1, t2
                  auipc        t3, 452538
                  or           s3, a1, a3
                  srli         zero, t2, 41
                  mulh         a2, s1, a5
                  remw         s2, t2, gp
                  sltiu        t6, s6, -1851
                  srlw         a5, s1, s5
                  sub          s1, s2, a0
                  sraiw        t4, s9, 0
                  sll          s1, t6, a0
                  addiw        a0, s5, 511
                  mulw         s8, s6, zero
                  slli         s6, s3, 49
                  sraiw        t6, t6, 5
                  nop
                  mul          a6, s9, ra
                  slt          a7, a6, s5
                  remuw        a0, gp, s11
                  mulhsu       ra, s7, s11
                  nop
                  srl          t0, s6, a6
                  remw         s7, a4, t4
                  ori          s1, s4, 1909
                  andi         s3, t1, 519
                  xor          t4, a6, s0
                  divw         tp, s1, s5
                  lui          a5, 724355
                  mulhu        t4, tp, s7
                  and          a6, t1, a5
                  slti         s5, a5, -2029
                  subw         s8, a1, s0
                  mulhu        a0, s1, s5
                  sll          a6, s3, t2
                  remuw        s9, s2, s7
                  addi         t2, s2, 1363
                  srl          a0, a2, s8
                  mulh         t5, s1, a7
                  addiw        s1, ra, -1789
                  mulh         a2, tp, s1
                  or           s1, a6, sp
                  xor          s4, t4, s5
                  div          a3, t5, gp
                  nop
                  sltu         a0, s6, s4
                  andi         t2, a0, 1739
                  rem          ra, a4, a2
                  addw         s4, t2, gp
                  sltiu        s8, t6, 809
                  subw         s7, s9, t4
                  remuw        a5, a1, a7
                  mulhu        a7, s4, s10
                  sllw         t2, a6, s3
                  mul          zero, a0, s7
                  and          ra, s8, a2
                  sltu         t5, s3, a6
                  sllw         a1, t1, t1
                  divu         t1, s5, a4
                  srli         a6, t2, 9
                  auipc        s5, 446045
                  remu         gp, s3, s11
                  addiw        t3, s10, 439
                  srli         s7, s11, 22
                  addw         a5, t1, s1
                  sltu         t6, a0, s6
                  auipc        s6, 744604
                  slliw        s7, gp, 14
                  remw         s2, gp, a1
                  addw         t5, t2, a5
                  divu         t4, sp, a2
                  xori         s3, tp, 1643
                  lui          a5, 316733
                  sltiu        a5, t1, -1892
                  auipc        a3, 42958
                  srl          s9, s6, s6
                  and          s11, s8, t6
                  sltiu        a5, ra, -251
                  divw         t2, s7, t0
                  divw         a5, a1, s9
                  auipc        tp, 452462
                  div          gp, a0, t1
                  sltu         gp, gp, zero
                  lui          s5, 113582
                  slli         gp, ra, 2
                  divw         a0, s3, s2
                  andi         a0, t5, 1267
                  andi         s3, sp, 862
                  sub          tp, t0, s3
                  sll          t4, s3, t0
                  divu         a7, a3, s8
                  mulhsu       a0, a3, t4
                  srli         zero, gp, 29
                  mulh         tp, t4, t0
                  rem          t2, zero, s4
                  slt          a1, s9, t2
                  add          s11, s7, s9
                  divw         zero, t5, a1
                  or           t1, tp, t4
                  srai         a5, a2, 26
                  sraiw        s9, t4, 12
                  auipc        t1, 754364
                  addw         s11, s10, s7
                  nop
                  or           sp, t5, a1
                  sllw         t1, sp, a0
                  sraiw        a0, t3, 28
                  remu         t5, s8, s2
                  or           t4, s7, s11
                  addw         a0, a3, s1
                  lui          s11, 927742
                  slliw        a0, a3, 4
                  divu         sp, s4, s1
                  sllw         s9, s5, s6
                  remw         zero, t0, s8
                  sraw         zero, a7, a4
                  xor          a5, s2, a2
                  lui          a6, 746895
                  or           s3, a3, s0
                  ori          a3, s4, 1555
                  lui          t6, 1012501
                  slli         t0, s6, 41
                  xor          ra, zero, t1
                  andi         s8, t4, -1589
                  sra          s11, s10, sp
                  addi         s2, t0, 145
                  sllw         s1, s8, a4
                  subw         a0, ra, t5
                  rem          s5, a6, a7
                  remu         zero, sp, t6
                  mulh         t1, t5, s1
                  mulw         s8, s7, s0
                  and          t3, a0, s7
                  addw         a7, s6, a3
                  xor          a6, s1, s0
                  mulh         a7, s8, a6
                  add          s9, a1, a1
                  addw         s6, s8, t1
                  sub          t3, gp, a4
                  rem          s3, a6, zero
                  nop
                  slliw        a5, s11, 17
                  srliw        a6, zero, 19
                  sltu         s11, t3, s2
                  mulh         zero, a3, s9
                  slti         t6, t4, 156
                  divu         s1, a5, t1
                  xori         a5, t3, -219
                  addiw        a2, t1, 1640
                  sltu         ra, s3, s2
                  srl          a7, s1, t6
                  ori          s4, gp, -1168
                  sraw         gp, t0, s11
                  and          sp, t3, zero
                  subw         t5, a7, s0
                  srli         a2, t2, 55
                  div          a3, a2, a1
                  sll          t1, t4, a6
                  srl          s1, t2, a5
                  divuw        a3, t5, t1
                  slti         ra, s8, -908
                  sltiu        s7, t1, -1660
                  addi         gp, s9, 1862
                  mulhsu       s5, s11, s8
                  divuw        t0, ra, t5
                  srl          s6, a1, a5
                  divuw        a6, s3, s7
                  rem          s8, s11, a4
                  srai         tp, s4, 60
                  xori         a6, s6, -323
                  slt          sp, s11, a0
                  divw         a5, a3, t2
                  andi         t1, gp, -883
                  rem          zero, a2, t5
                  srl          a2, t6, t3
                  srlw         a0, s5, a3
                  remw         t6, a6, s11
                  addi         a5, t6, -1920
                  sll          t3, zero, s2
                  mulhsu       s2, a5, s11
                  sra          s3, a3, sp
                  div          s7, a2, a7
                  slli         ra, sp, 18
                  divu         a1, ra, s9
                  and          t5, t0, s7
                  slt          gp, t5, s8
                  remuw        s5, ra, a0
                  ori          t6, t1, -6
                  div          t1, s7, a0
                  srai         tp, s9, 21
                  slli         t3, t1, 59
                  srli         s9, s6, 0
                  remw         a5, tp, a5
                  mulhu        a2, a5, t6
                  remw         a0, s1, s7
                  addiw        s1, a7, -637
                  slliw        tp, a5, 4
                  mulh         a2, s0, tp
                  slti         ra, t6, -1505
                  sltiu        gp, s7, 1299
                  nop
                  sltiu        s1, a2, -1022
                  lui          ra, 258721
                  sraw         s9, a6, a4
                  and          s8, t6, sp
                  ori          s2, a2, -1821
                  nop
                  sra          t4, s3, tp
                  mulhu        s1, sp, t6
                  slti         t0, a7, -1527
                  mulhu        t4, s3, a7
                  add          s6, ra, s6
                  mulhu        s1, s5, a2
                  remw         a3, t5, tp
                  slliw        a0, s10, 17
                  auipc        t5, 479150
                  and          sp, s3, t5
                  remw         sp, a7, zero
                  nop
                  or           t5, a2, t3
                  ori          s3, s3, -1751
                  srliw        a1, s10, 12
                  lui          a3, 931249
                  mulhu        t5, t4, a3
                  remu         tp, s0, s10
                  or           s2, s0, sp
                  sraw         t2, t2, a1
                  ori          zero, sp, -593
                  srli         s5, t0, 37
                  or           s1, tp, a1
                  sub          t3, a0, s10
                  remu         t6, sp, a7
                  xor          t2, a0, gp
                  srl          t6, s4, a7
                  slti         a6, s10, -380
                  xor          t1, s3, ra
                  subw         zero, s10, a7
                  add          gp, t0, s5
                  and          ra, a0, t6
                  sll          t5, s4, zero
                  addiw        a2, s11, -1015
                  slti         t5, zero, -866
                  addw         a0, s7, a1
                  or           a5, s7, a0
                  sll          a0, s7, s2
                  sub          s11, a6, a3
                  slt          s5, tp, s6
                  srliw        s7, t5, 9
                  sll          s6, t0, s8
                  xori         a7, s9, 89
                  xori         a7, s11, 1479
                  andi         s5, s8, 1312
                  mulh         t6, s2, s11
                  or           tp, a6, a5
                  remw         t2, zero, t1
                  xori         tp, t5, -3
                  sll          a1, t5, s5
                  mulhu        t6, s4, s2
                  remw         a7, s3, s8
                  remuw        a1, a6, s1
                  remuw        s3, s10, s0
                  rem          t2, zero, s5
                  xori         t6, t3, -298
                  srli         tp, sp, 19
                  sll          a6, gp, s1
                  mul          t0, t6, a0
                  remuw        a2, s7, t4
                  subw         t5, s10, s7
                  or           s9, s8, a5
                  sraiw        t5, s0, 28
                  or           a3, s10, zero
                  remw         a5, a1, ra
                  andi         a7, s6, -350
                  mulh         s9, a7, t2
                  mulhu        sp, t2, s11
                  slti         ra, t5, 1010
                  sltu         t5, s6, zero
                  rem          s4, s5, a1
                  slt          a2, t5, t6
                  xori         a6, s2, -497
                  nop
                  mul          t0, s3, gp
                  srli         a3, a4, 59
                  sllw         s5, t4, a3
                  ori          s11, a4, 676
                  sraiw        sp, s8, 6
                  div          a3, zero, a1
                  andi         a3, s11, -195
                  sraiw        a5, sp, 24
                  remu         s6, a2, a5
                  sraiw        a0, a0, 15
                  remuw        a0, t2, a7
                  mulh         s11, a2, t3
                  addiw        ra, sp, -1940
                  andi         a0, a1, -1086
                  divw         a5, s0, s5
                  andi         a7, t6, -99
                  mul          t6, t0, t0
                  divw         t5, s10, a4
                  srlw         ra, a5, t5
                  srli         a5, s5, 60
                  andi         tp, a2, -666
                  srl          s11, t0, s3
                  divuw        s8, t4, a6
                  slti         sp, s6, -1109
                  addi         s5, s1, -462
                  srliw        a5, a4, 20
                  subw         a6, s7, a6
                  sllw         a2, a4, t1
                  sraiw        s11, tp, 9
                  mulw         t1, tp, s2
                  divu         a0, ra, tp
                  xor          s9, t5, s0
                  sltiu        gp, s6, -1638
                  remu         ra, s10, t5
                  div          a2, a5, a5
                  remw         t2, a4, s5
                  remw         sp, a2, sp
                  divu         a5, s11, s5
                  addiw        s11, s7, -162
                  divu         t6, a2, a1
                  slliw        t5, zero, 17
                  and          s5, a3, s3
                  divu         s6, t5, a7
                  mulhsu       a5, s5, s11
                  rem          s4, s11, tp
                  srlw         a5, s11, a3
                  lui          a7, 447233
                  and          s5, a1, t0
                  xor          s8, s5, a1
                  slli         t2, s11, 39
                  mul          a3, s1, t5
                  mulhsu       s11, t0, s11
                  sub          s3, s11, s2
                  xor          a2, a5, s5
                  slt          t3, sp, a4
                  divuw        zero, sp, t6
                  srlw         s11, t2, t0
                  and          t5, zero, zero
                  sra          sp, a3, s5
                  mulw         a2, s0, tp
                  auipc        t5, 887051
                  auipc        a3, 246883
                  mulh         t1, a0, s1
                  divw         t2, t2, t0
                  slli         gp, s10, 36
                  srli         t6, s3, 35
                  sll          s11, s6, s0
                  sra          s11, tp, s7
                  nop
                  slli         s6, t5, 13
                  addiw        gp, t2, 656
                  addi         t5, zero, 505
                  slli         a3, s3, 11
                  mulhu        s3, a3, a2
                  mul          s2, a1, s4
                  addw         gp, sp, gp
                  mul          a6, t0, sp
                  remuw        a1, t0, ra
                  mulw         s2, s7, s11
                  lui          ra, 78219
                  xori         t2, t6, 739
                  sub          t5, a6, a1
                  mulh         a1, t2, s5
                  remw         a7, s6, s3
                  mulh         a5, s8, a0
                  andi         a5, a2, 673
                  addiw        s7, s4, 1996
                  add          gp, s2, tp
                  divuw        a7, t6, s3
                  mulw         a0, s7, t3
                  srliw        s5, tp, 4
                  xor          a1, t5, s8
                  sltu         a7, s6, t4
                  div          sp, t3, t4
                  srlw         ra, s6, t2
                  sltu         gp, s2, s5
                  mulw         t0, s0, sp
                  auipc        zero, 76214
                  sraw         ra, ra, s4
                  remuw        t4, zero, tp
                  srai         a2, a1, 52
                  remuw        s11, s1, a5
                  srlw         a3, a0, t3
                  mulhsu       s8, s4, s6
                  subw         t2, a3, a0
                  divu         s11, a1, a1
                  slt          t3, a4, gp
                  srliw        s9, sp, 13
                  remw         s9, a7, a5
                  xor          s9, t0, zero
                  slti         t3, a5, -465
                  srli         t6, s9, 44
                  remu         zero, a0, t4
                  mul          tp, s4, t4
                  lui          s1, 610190
                  mulw         a2, t0, s10
                  sraiw        a5, s6, 0
                  addi         s5, gp, 266
                  slliw        s1, s11, 27
                  or           tp, s3, s9
                  ori          a3, s4, -823
                  or           s11, s2, a7
                  mul          zero, s6, s5
                  mulhu        s7, a1, a3
                  addi         t4, t4, -730
                  divuw        gp, s2, a6
                  lui          t3, 221278
                  sraw         s4, t3, zero
                  slli         gp, a1, 6
                  mulhu        s11, t6, zero
                  srlw         s9, s5, t6
                  slliw        s8, a7, 24
                  ori          sp, sp, -993
                  subw         a0, a0, a1
                  slti         a6, ra, -1330
                  nop
                  ori          a1, a1, -1674
                  sllw         t4, s11, a2
                  slliw        a1, s3, 3
                  mulhu        s7, t1, a7
                  divuw        a0, a4, s4
                  nop
                  srliw        a1, zero, 8
                  addi         s1, sp, 1884
                  sltiu        a2, a0, -1756
                  srliw        a1, s7, 5
                  slti         s6, sp, 1878
                  div          t3, s6, s4
                  add          s11, t2, s7
                  slli         s6, a3, 49
                  addw         s6, gp, a4
                  xori         sp, zero, 184
                  xori         zero, s10, 1885
                  srai         tp, t3, 21
                  or           t2, a2, s4
                  slt          a5, a2, t4
                  divu         s3, s1, s11
                  sll          s4, s10, a5
                  divw         t0, s5, s11
                  slt          a3, t0, s4
                  subw         s11, a0, sp
                  sltiu        t0, s7, -1700
                  sraiw        s5, s1, 18
                  addw         a5, s9, zero
                  nop
                  sltiu        a2, tp, 977
                  rem          sp, s11, s0
                  srliw        s2, a3, 3
                  add          s3, a7, s5
                  divu         a0, s4, s4
                  mulh         tp, zero, s5
                  lui          tp, 795891
                  andi         s1, t1, -1269
                  sltiu        s9, sp, -311
                  sltu         a0, ra, s9
                  mul          a0, zero, s0
                  xori         s9, s1, -204
                  andi         t0, t0, 1116
                  sraiw        s11, t6, 21
                  slli         s7, tp, 28
                  sraiw        s3, s7, 4
                  srl          a3, tp, s3
                  srl          s8, s11, t0
                  sraiw        t5, s4, 4
                  nop
                  sraw         s8, t6, s11
                  sltiu        s8, a6, 834
                  rem          t0, a3, t3
                  ori          t0, t0, -1838
                  sllw         t2, ra, t6
                  slt          t2, s6, t4
                  remw         t2, s4, s3
                  addw         a3, gp, s4
                  srlw         t3, s11, a0
                  sraiw        s9, a0, 15
                  sltu         a3, s1, s7
                  slliw        s2, ra, 19
                  mulh         a2, s8, a7
                  srai         t0, s8, 24
                  mulhsu       t3, s4, zero
                  mul          gp, t4, zero
                  srliw        zero, a3, 9
                  remuw        s5, a2, a3
                  srli         t1, sp, 53
                  remuw        s1, a2, s9
                  srl          ra, s0, a1
                  remuw        s3, s3, t3
                  subw         a2, t0, s3
                  nop
                  andi         t1, t4, 461
                  or           s4, s3, t6
                  srl          ra, tp, a0
                  div          a6, a6, s7
                  sraw         a3, s8, t4
                  slli         t0, a2, 18
                  ori          s2, sp, 135
                  auipc        a5, 320379
                  lui          a7, 345251
                  mul          s3, a2, t0
                  nop
                  sub          zero, t3, s3
                  mul          a0, s11, s2
                  addw         a0, a5, a1
                  sll          s7, tp, a1
                  srl          a5, s1, s3
                  sllw         gp, t2, tp
                  sllw         s8, s5, t1
                  andi         s6, a1, -887
                  xor          s6, gp, a6
                  slti         t2, s11, 1599
                  rem          zero, a7, t3
                  remu         s8, s10, s11
                  subw         t5, s4, t6
                  remu         t5, t1, s10
                  sllw         a2, tp, s5
                  srli         s1, s10, 31
                  ori          s9, s5, -1954
                  div          s2, t0, gp
                  sraw         tp, s0, s4
                  xori         s6, sp, 924
                  addi         t3, t0, 419
                  or           s8, s8, a6
                  remuw        gp, s7, s4
                  srl          t5, s3, s10
                  remw         t0, ra, s6
                  remw         s8, a0, s10
                  mul          gp, ra, s3
                  slt          a5, a0, s4
                  sltiu        t1, tp, 1287
                  addiw        a0, sp, -1688
                  mulw         a1, s8, a4
                  mulhsu       s4, t0, t0
                  mulw         tp, zero, a1
                  srli         a6, s8, 41
                  sltu         s11, s11, s7
                  slli         a0, s7, 34
                  auipc        s3, 264718
                  and          s6, s3, s11
                  sraiw        a5, s1, 15
                  divu         a2, gp, zero
                  slti         gp, s6, 1693
                  div          a1, s11, s9
                  sub          s8, a6, t0
                  nop
                  sltu         s5, a0, t5
                  slti         t6, t2, -1856
                  remuw        a1, s11, s10
                  mulhu        t3, s0, a4
                  remuw        t4, gp, s11
                  subw         s6, a7, t3
                  add          a1, a2, t3
                  slliw        a1, sp, 19
                  mulh         a0, s6, t0
                  or           t4, t5, a4
                  srlw         ra, a5, ra
                  addw         zero, ra, t1
                  mulw         s1, a7, s7
                  sltu         a0, zero, s5
                  mulhsu       t5, s0, tp
                  remw         s4, t1, t3
                  remu         gp, a1, s3
                  ori          a3, ra, -1300
                  sra          t1, a2, s1
                  divw         s2, sp, sp
                  ori          a2, s10, -1265
                  nop
                  mulhsu       s5, t5, tp
                  add          s3, a4, s8
                  sll          s11, s7, t0
                  remu         s6, s3, a2
                  slt          t3, t1, a2
                  addiw        t6, t6, -1132
                  lui          t3, 825700
                  slti         ra, a4, 1132
                  slt          a0, s1, s7
                  mul          a5, a0, t5
                  div          a6, s11, a5
                  srl          s1, s4, s1
                  sraw         a2, gp, s11
                  nop
                  srli         s2, a7, 17
                  nop
                  lui          a0, 179559
                  remu         t5, s11, a1
                  and          t0, s1, s10
                  slt          t5, s6, a7
                  srl          s3, ra, s2
                  sll          t2, s9, gp
                  addw         sp, a6, a3
                  addi         a5, s5, -1451
                  mulhsu       a2, s10, a5
                  mul          ra, a1, s0
                  srlw         s4, a7, tp
                  mulw         s7, a6, t3
                  sll          s3, t4, t2
                  mulw         s8, s2, s3
                  nop
                  ori          s6, ra, -1893
                  rem          t1, t5, s11
                  sra          s9, a3, a7
                  div          s1, s5, tp
                  ori          a2, s8, -933
                  sraw         s7, s5, t2
                  sub          s7, s5, a3
                  mul          a6, s6, t5
                  sllw         a2, s11, s8
                  slt          a1, s5, s5
                  xori         s5, a2, -1724
                  mulhsu       s9, s7, t6
                  xori         a0, t1, -1728
                  mulhsu       s6, s0, s5
                  remw         s11, s7, ra
                  mulhsu       gp, a5, sp
                  slli         t6, a6, 42
                  srli         s7, s5, 0
                  xor          t3, t1, a1
                  srl          s5, t2, a3
                  remu         s4, t3, t5
                  addw         a6, sp, t6
                  div          a2, a0, a3
                  sll          a3, a6, s0
                  addi         s9, t3, -1003
                  and          s11, zero, a0
                  mul          s2, t5, a4
                  addw         t5, s1, s6
                  xor          s9, s11, a5
                  slli         a5, s3, 34
                  sltiu        gp, a2, 1453
                  andi         t4, a7, -350
                  mulw         a0, t4, t1
                  sub          a1, gp, t6
                  mulhu        t0, a1, s1
                  slti         ra, t3, 836
                  auipc        s1, 722181
                  xori         sp, gp, -1714
                  or           t5, s10, s7
                  auipc        s3, 293259
                  srli         a1, a2, 53
                  sraiw        a5, t2, 1
                  sllw         s8, s8, s11
                  and          t0, t1, a7
                  addi         t0, t3, -1473
                  lui          t3, 80488
                  srai         sp, a5, 25
                  addw         t6, a0, s7
                  slliw        s9, tp, 17
                  lui          t6, 498531
                  slt          a1, s2, s9
                  andi         s4, s6, 1532
                  auipc        ra, 516791
                  divu         s4, s5, t0
                  andi         t5, t6, 1327
                  srliw        a7, zero, 6
                  sll          t1, gp, s4
                  sub          s11, t3, t4
                  mulh         s1, zero, s6
                  addiw        s11, ra, 954
                  srai         t5, s2, 7
                  ori          a5, s5, 785
                  sra          t3, s11, s11
                  mulw         t0, s11, a0
                  srai         a2, a6, 58
                  divw         t6, t1, s10
                  remuw        t1, t6, ra
                  sltiu        tp, a6, 1744
                  srai         a5, t1, 15
                  slliw        s6, a3, 31
                  slti         a6, a4, -199
                  remu         s3, s1, a6
                  mulhsu       tp, a2, t2
                  divw         zero, t2, s4
                  srli         t2, t3, 42
                  divu         a0, t2, t1
                  xor          t3, t4, t5
                  sra          ra, s10, t5
                  srliw        a0, a6, 16
                  mulw         t5, t5, gp
                  addi         t0, zero, 1051
                  nop
                  sltiu        tp, t2, -1613
                  sra          s2, s3, t6
                  sltu         s1, s2, a4
                  ori          a0, s9, -1969
                  sraiw        sp, a6, 1
                  srl          t6, s6, t3
                  srliw        s9, a2, 24
                  subw         zero, s6, s6
                  or           s6, a5, a5
                  divw         a1, t1, s0
                  mulh         a5, s11, a2
                  xor          a7, s7, a2
                  nop
                  srlw         s2, ra, s2
                  mul          zero, s6, sp
                  xori         a2, a2, -1124
                  sll          s7, a6, s2
                  divu         s11, s6, a7
                  auipc        t1, 976626
                  xor          a7, s1, s3
                  remu         a3, s6, s10
                  addi         s9, s10, 1728
                  srl          a5, a7, s7
                  mul          s9, a2, s8
                  srliw        a3, s0, 1
                  slt          zero, a6, s0
                  sraiw        a0, t4, 1
                  xori         a7, t1, 1359
                  mulhu        gp, t4, t5
                  and          a6, s0, t6
                  srai         s3, a4, 5
                  addi         tp, s8, -1678
                  slti         tp, a7, -1638
                  auipc        a0, 514825
                  subw         ra, s6, s5
                  xori         ra, ra, -1014
                  srl          ra, a5, s9
                  divu         t6, t4, s9
                  remuw        s8, s10, s8
                  slli         s4, a4, 41
                  addiw        tp, gp, -1903
                  divuw        a5, ra, a3
                  slt          tp, s6, zero
                  slti         a7, s1, 611
                  slti         a7, t5, -317
                  add          s9, s3, gp
                  sltu         s1, s8, s3
                  slti         t3, s7, -50
                  sll          s1, s0, s5
                  sltiu        t4, tp, -981
                  div          s11, s11, a3
                  add          t5, t5, s5
                  sraw         t2, s6, s6
                  sraiw        a7, t4, 1
                  sltu         a6, s11, tp
                  and          t5, s9, s7
                  sraiw        a0, t4, 30
                  rem          s9, a3, a4
                  slti         s8, s8, -1804
                  div          sp, a5, t5
                  addi         a5, a5, -2046
                  mulhsu       t6, s10, t3
                  xor          tp, t6, t0
                  ori          a7, a1, 9
                  sllw         a7, t1, s2
                  slli         s6, t5, 48
                  slti         t5, s11, -1854
                  divw         a0, s3, tp
                  sub          gp, s1, a7
                  divw         a0, s2, s8
                  sraiw        tp, t1, 17
                  auipc        t1, 546072
                  rem          s2, a2, s7
                  xor          t0, s6, s5
                  auipc        a1, 170904
                  sraiw        s8, sp, 30
                  addw         s8, s11, s7
                  remu         t5, s4, t0
                  slt          t1, t4, s8
                  ori          t5, ra, -22
                  addi         s6, s8, 2029
                  remw         t0, a0, sp
                  add          s2, t1, a1
                  slli         a1, a6, 3
                  xori         tp, t4, 1277
                  mul          t0, gp, t3
                  remuw        t1, s10, t1
                  rem          a3, s5, tp
                  lui          s1, 165001
                  div          s9, sp, a6
                  add          s6, s8, t1
                  sltu         a0, a0, a3
                  and          t3, gp, zero
                  sllw         s5, sp, s0
                  srliw        a2, s11, 19
                  sraiw        a5, tp, 14
                  slliw        t4, s0, 19
                  sraiw        t5, s8, 24
                  slli         a2, t2, 36
                  nop
                  sraw         a5, s3, a0
                  slliw        s2, s3, 23
                  addiw        s2, s6, -1026
                  sltu         t2, s6, a7
                  divuw        s11, s0, s3
                  slli         t5, tp, 17
                  sltiu        a5, t2, -876
                  addi         a7, s3, 962
                  remw         s7, s2, s5
                  remu         s4, t1, s6
                  mulw         t2, s7, sp
                  or           a6, a7, s1
                  mulh         s8, ra, s11
                  rem          a3, a5, a5
                  subw         zero, s4, t4
                  slliw        tp, a0, 18
                  lui          t2, 402665
                  subw         s9, s2, s7
                  srlw         a0, s8, gp
                  srl          s11, t2, s2
                  srliw        s11, s0, 24
                  xori         a3, s9, 685
                  rem          a3, t3, a6
                  sraw         a0, s10, s9
                  sraw         s8, s7, s6
                  sra          a7, t1, a3
                  div          gp, a4, t2
                  mulhsu       t0, ra, ra
                  sraw         a0, s10, s6
                  srai         s7, a0, 45
                  xor          s8, s1, a1
                  slliw        s4, a6, 31
                  add          s1, t6, a3
                  add          t0, s6, a6
                  xori         t5, s1, 521
                  rem          a6, a2, s9
                  xori         t0, s0, 1851
                  xori         t0, s10, 978
                  sltu         s8, t1, s7
                  add          s11, gp, t5
                  div          t5, sp, s7
                  srl          a6, a7, t6
                  srl          s7, t2, gp
                  sraw         s7, s0, a2
                  sraw         a2, s10, s8
                  addw         a2, t1, a1
                  and          zero, a6, gp
                  sltiu        s2, tp, -1055
                  lui          t3, 591384
                  div          a1, s0, a2
                  slliw        s8, a2, 20
                  addi         s7, a3, -882
                  sraw         t6, s0, s4
                  srl          a3, a2, s9
                  lui          s11, 989194
                  xor          s11, s1, t5
                  lui          s1, 291280
                  sraiw        a0, s2, 27
                  addi         t1, t0, -1749
                  add          zero, s2, t0
                  srl          t1, a0, t2
                  sra          t1, a7, t6
                  mulhsu       sp, a5, gp
                  addw         a5, s7, ra
                  rem          s11, s2, s4
                  sll          t1, gp, s6
                  nop
                  remuw        s3, a6, a6
                  mul          s11, a7, a6
                  divu         s2, t2, s6
                  sub          s6, t3, a4
                  addw         s1, t3, a1
                  xori         t0, tp, 842
                  sltiu        s6, a6, 2043
                  remw         a2, tp, s11
                  addiw        s4, t0, -488
                  divuw        gp, a2, s4
                  divuw        ra, t6, s9
                  slliw        a5, a7, 4
                  divu         ra, a0, gp
                  divw         s11, a4, t5
                  divu         s6, s5, s1
                  mulh         zero, a2, s9
                  lui          t1, 504085
                  divu         s9, a1, a3
                  sll          s7, a2, a1
                  sll          s4, s3, s1
                  remuw        t6, tp, a4
                  xori         a0, s0, -838
                  mulh         s8, s11, a0
                  slli         t2, t6, 53
                  srlw         s2, tp, a5
                  nop
                  sraw         t0, s5, s9
                  sra          t3, s0, gp
                  srai         s6, s2, 18
                  srliw        s5, a2, 31
                  remuw        a7, a0, gp
                  srai         a1, sp, 46
                  srlw         t4, sp, a0
                  remu         s6, tp, a2
                  div          a2, s2, t0
                  addw         t2, t0, a3
                  add          s8, t1, sp
                  sltu         a7, a6, t4
                  or           s4, s7, t4
                  mulh         tp, a3, t1
                  addw         t2, a0, ra
                  divuw        t6, a7, t2
                  sltu         s5, a5, zero
                  slliw        s2, a4, 12
                  sltu         ra, s6, s10
                  divu         t5, s1, a0
                  sllw         t6, t6, s0
                  remu         s2, s4, t1
                  slliw        s3, t6, 18
                  mulw         a6, a6, a7
                  srli         t3, t6, 42
                  srliw        sp, a6, 6
                  slliw        a5, s8, 9
                  add          s5, s8, s6
                  slli         s9, s1, 18
                  srli         s8, s3, 13
                  slliw        s6, a2, 25
                  slt          t3, a4, s2
                  divu         a1, s5, s2
                  auipc        s4, 570202
                  or           a2, t5, a7
                  or           t5, t0, t4
                  sra          s6, s5, tp
                  addw         a1, gp, zero
                  sllw         t3, t1, gp
                  sltiu        tp, tp, 1381
                  addiw        s11, s3, -1042
                  mul          t0, s7, s10
                  div          t5, tp, a1
                  nop
                  andi         t1, t5, -472
                  divw         t5, t5, s7
                  mul          s8, s6, a4
                  add          s6, a2, a2
                  xori         a6, tp, 1837
                  xori         a5, t5, 1572
                  lui          a2, 109128
                  divw         ra, a1, a6
                  mulhu        a6, t3, t4
                  divu         s4, s11, s5
                  sraw         a0, ra, s2
                  divuw        gp, s4, s6
                  slliw        t5, zero, 27
                  rem          t2, s7, s10
                  sltiu        a3, gp, -1490
                  mulhu        s3, a5, a3
                  srli         sp, a3, 5
                  subw         a5, a3, s6
                  xori         t2, a1, 885
                  addiw        zero, a6, -1996
                  nop
                  addw         a2, s9, s9
                  andi         s1, a7, -169
                  remw         a2, a7, tp
                  xor          t4, s6, s7
                  slti         s11, a4, 440
                  andi         a5, s10, 117
                  addw         t6, a2, s5
                  sltiu        t0, sp, -119
                  divu         s9, a1, t5
                  slt          a0, a7, s11
                  sraiw        s2, a2, 3
                  remw         a0, a2, ra
                  add          t1, ra, s8
                  remu         s4, t5, s6
                  slli         t5, t4, 62
                  add          a6, s7, s5
                  sra          s11, t2, a6
                  auipc        s2, 92690
                  ori          t5, a7, 573
                  or           s11, s3, tp
                  subw         s9, s11, t2
                  sraiw        a2, s3, 28
                  div          s4, s11, t6
                  add          s7, s8, a3
                  sltiu        a2, sp, 326
                  auipc        s9, 14054
                  divu         s7, sp, a4
                  remw         a0, a5, s6
                  mulw         s3, zero, a3
                  rem          s2, a0, a5
                  remuw        s9, t0, sp
                  divu         s8, s10, s11
                  nop
                  mulw         a0, s0, t5
                  sltiu        t6, sp, -325
                  or           t1, t1, t1
                  rem          sp, s1, s6
                  mulh         t3, t3, a5
                  or           t2, s1, s4
                  xori         s6, s7, 1
                  slti         ra, a0, 1581
                  xor          s4, s0, t5
                  nop
                  nop
                  addw         tp, t1, t3
                  remuw        s6, s8, zero
                  sltiu        ra, a3, -483
                  lui          zero, 784874
                  div          sp, t0, s11
                  or           s3, s4, s0
                  mul          s1, a7, a4
                  nop
                  srlw         a3, s11, s7
                  mulw         t0, a3, s4
                  divw         a2, t5, s2
                  nop
                  ori          a6, s6, -1315
                  andi         a0, s0, 351
                  addiw        t5, t5, 1488
                  sraiw        s8, s9, 27
                  slti         t2, zero, 1582
                  mulhu        a0, t0, t1
                  srli         s3, a2, 6
                  slt          t4, tp, a2
                  mulhu        t5, s5, t2
                  divuw        s9, s4, s8
                  nop
                  subw         s5, s3, s1
                  srli         s5, t3, 32
                  remu         sp, gp, s7
                  andi         a7, a4, 908
                  divw         t2, s11, zero
                  sra          s1, s11, s1
                  subw         a7, t4, t3
                  and          zero, s9, t4
                  slli         a3, t4, 20
                  sltiu        t5, a6, 1951
                  and          t5, s2, s8
                  mulw         t6, zero, a1
                  div          a2, a5, a0
                  div          t3, t2, sp
                  subw         sp, s1, s1
                  srl          a3, a6, t2
                  divuw        s6, t0, s9
                  addi         t4, s8, 29
                  sub          a0, s11, t5
                  slli         t3, ra, 31
                  andi         s1, t2, 2013
                  auipc        ra, 466586
                  remu         a0, a5, t3
                  srl          ra, s11, s6
                  and          a2, s2, s3
                  sll          a0, s2, a7
                  add          a1, a7, gp
                  sltu         t1, a5, t0
                  slli         gp, t6, 20
                  mulh         s7, t4, sp
                  mulhu        a0, s2, s9
                  slliw        s9, s7, 1
                  divuw        s5, a6, s10
                  addi         a2, s7, 1527
                  sltu         t5, t3, s9
                  remw         a1, s10, s8
                  addiw        s1, s2, 370
                  div          s5, s4, s6
                  remw         a5, ra, ra
                  mulhsu       t5, t0, t3
                  remu         zero, a2, gp
                  slli         s9, a0, 46
                  sltu         s4, a3, tp
                  divu         s11, zero, tp
                  srlw         s9, gp, a2
                  slti         s5, s3, 379
                  mulw         t0, s7, s8
                  or           ra, t6, s10
                  subw         a7, a6, a2
                  sltu         zero, a6, a7
                  remu         s7, s11, a6
                  addi         a2, a0, 166
                  sltu         a2, s1, s10
                  nop
                  slt          s1, s5, t3
                  remu         s3, t4, s11
                  srai         s5, t5, 24
                  mulh         t3, a5, s0
                  divu         a0, sp, s4
                  slti         a2, a7, -628
                  sraw         s11, a3, tp
                  slti         s7, t0, 222
                  mulhsu       gp, s10, s4
                  divuw        a2, s2, s10
                  sra          t1, s7, gp
                  ori          zero, gp, 448
                  div          s1, a7, t5
                  srl          tp, t0, t6
                  sltu         s11, s6, s3
                  srai         s5, a1, 50
                  slli         a2, a2, 63
                  remw         zero, a2, t0
                  sraiw        s7, a4, 13
                  srai         t2, s7, 56
                  mulhsu       t0, s0, s11
                  mul          a3, t5, t5
                  slt          t3, s2, s10
                  xori         s9, a7, -1472
                  slli         a0, s8, 8
                  slliw        s11, s11, 16
                  mul          a7, s9, a5
                  mulw         s1, s0, a2
                  nop
                  andi         zero, s6, 1043
                  srli         a0, t6, 2
                  addiw        t3, s3, -556
                  slti         t1, t4, -886
                  slt          s5, t5, t3
                  sra          gp, t3, s7
                  auipc        t1, 162405
                  sll          tp, a3, tp
                  auipc        a6, 958627
                  divw         a2, ra, tp
                  andi         s4, a0, -591
                  or           t4, ra, gp
                  addiw        s7, a5, -677
                  mulhsu       t3, s0, s9
                  add          t4, s4, a7
                  sllw         t3, a0, t4
                  mulh         tp, t6, zero
                  srlw         tp, s2, t0
                  remu         s3, ra, t6
                  mulw         a0, s11, s3
                  sltu         t1, sp, a6
                  sltu         s5, a3, t5
                  srliw        a2, s9, 10
                  div          sp, tp, tp
                  srli         s3, a4, 49
                  mulhu        s5, s11, t2
                  sub          zero, s2, a5
                  mulhsu       s3, s2, a1
                  divuw        a5, s3, tp
                  andi         a6, a4, -1088
                  slli         s4, s11, 1
                  sraw         a7, s11, zero
                  add          a0, s7, s9
                  or           s6, t3, gp
                  divuw        s7, ra, t5
                  addiw        ra, a4, 1739
                  and          s8, s6, t3
                  mulhsu       a0, s1, gp
                  sltu         a6, a1, s3
                  xori         sp, s2, 469
                  remuw        s9, sp, s9
                  auipc        t5, 777539
                  addi         s8, s7, 148
                  slt          t3, t6, s1
                  div          a5, t2, a3
                  sub          sp, s7, s9
                  addi         t1, zero, -1404
                  auipc        a1, 376802
                  divw         s4, s11, a4
                  sll          ra, s8, a6
                  rem          s11, sp, a4
                  subw         a3, s6, a7
                  subw         tp, a4, s0
                  sllw         a5, t0, gp
                  add          s6, a1, a2
                  slti         a5, t5, 342
                  sraw         a6, t6, a3
                  and          a6, t1, t3
                  srliw        s5, t2, 6
                  mul          s7, tp, s0
                  mulhsu       s2, t0, t5
                  xori         a5, s4, 514
                  divw         a0, t4, gp
                  remuw        t5, t4, s11
                  mul          s6, s5, a4
                  sraw         sp, gp, s8
                  addi         t3, t4, 887
                  srl          t3, a4, s3
                  or           t4, a2, t3
                  remu         s4, gp, a4
                  xori         s4, a0, 1390
                  srli         gp, ra, 31
                  andi         s4, s7, -1056
                  subw         a3, s11, s3
                  addw         ra, s10, a2
                  xor          s5, gp, t6
                  rem          s11, t1, t4
                  srliw        s2, t1, 0
                  divw         a0, a0, s6
                  srlw         s7, t2, s11
                  srliw        a1, s4, 26
                  or           t4, s1, s3
                  sraw         s4, s0, t6
                  srl          sp, s5, t4
                  sra          a5, s0, a0
                  sll          t2, ra, a3
                  remw         t2, a7, s5
                  srlw         s1, s3, s5
                  sll          t5, s6, zero
                  remu         s6, s5, a5
                  slt          t1, s6, t6
                  sllw         t5, tp, s6
                  srai         t1, s6, 46
                  mulw         t0, s2, s4
                  lui          a2, 481968
                  mulh         gp, a4, t5
                  srai         s6, s9, 17
                  addw         a7, a7, s9
                  divw         t3, s0, a7
                  sraiw        s11, a5, 10
                  sraw         t2, sp, ra
                  sltu         a7, a2, s1
                  sltu         s8, t3, tp
                  and          a2, t1, ra
                  mulhsu       s4, a5, a6
                  andi         t4, t6, 102
                  addiw        sp, a4, 439
                  mulw         s1, s3, s6
                  subw         s9, gp, s7
                  remuw        sp, a2, sp
                  rem          sp, s4, t1
                  divu         s7, ra, s6
                  sllw         zero, s5, a5
                  xori         a1, s2, 714
                  divuw        gp, s8, t4
                  xori         s5, s9, -625
                  srliw        s11, t5, 28
                  and          t3, s7, s11
                  srliw        s8, s6, 21
                  mulw         sp, s7, a2
                  mulw         a2, s0, t6
                  sraw         t3, t5, zero
                  remw         zero, t5, s9
                  slliw        a1, t4, 3
                  sraw         t5, s5, s1
                  sra          s2, s9, s7
                  lui          s11, 1033121
                  mul          a3, a3, t4
                  slli         s5, t5, 42
                  remu         t6, s10, t6
                  sra          t5, t2, ra
                  rem          s9, t5, s5
                  lui          t2, 105648
                  sraw         t3, s5, s7
                  xor          a3, a0, t1
                  sraiw        a0, s9, 2
                  divu         s7, gp, a4
                  rem          zero, a0, s3
                  sll          ra, t5, s1
                  sraiw        s9, t0, 7
                  add          a5, s3, ra
                  auipc        s3, 47975
                  sltiu        a3, s7, 877
                  sltiu        a7, sp, 148
                  mulhu        a1, t3, s9
                  ori          a3, a1, 1051
                  mul          a5, s6, s1
                  addi         a6, t0, -140
                  xori         s5, s6, -1401
                  sltu         s2, a7, s0
                  ori          t4, t0, 1396
                  or           t3, a2, sp
                  srli         a1, ra, 46
                  or           s1, t4, s11
                  divu         s8, a4, t1
                  sub          s6, tp, s7
                  sraw         s1, s8, t3
                  ori          s3, s2, 1241
                  mulhsu       a1, t4, s7
                  addiw        t1, a5, -180
                  rem          t1, s4, a4
                  sltiu        a5, a0, -933
                  slliw        a0, s10, 28
                  sraiw        t1, s8, 27
                  srli         s2, s1, 19
                  sltu         t5, t1, a0
                  divw         s2, sp, t3
                  auipc        a1, 559198
                  srli         s7, a5, 56
                  add          ra, sp, a7
                  and          t0, a7, a4
                  rem          t3, sp, s9
                  slt          a5, s2, t1
                  slli         a0, a6, 35
                  srl          s1, ra, s3
                  sub          a0, a7, t3
                  sub          t1, s8, t0
                  addiw        a0, a4, 1730
                  srai         s1, t1, 35
                  divuw        gp, a2, sp
                  addw         t4, a1, t6
                  subw         s4, s5, a0
                  divw         a2, s10, gp
                  rem          s6, sp, t4
                  addw         tp, a3, ra
                  addw         t1, s1, t0
                  sltu         s2, t5, s5
                  srli         s7, t6, 6
                  remu         t6, a0, tp
                  mulw         a3, s10, t3
                  slliw        a5, s8, 24
                  divu         a0, gp, s7
                  divw         s8, tp, a0
                  subw         zero, s7, t0
                  xori         a7, s11, 716
                  divu         s7, sp, a0
                  mul          a2, ra, s10
                  or           s9, a4, tp
                  rem          a6, a6, a1
                  add          a5, t4, a1
                  srl          s6, zero, gp
                  and          s2, t4, a6
                  mulhu        zero, t3, a6
                  div          sp, s6, t5
                  remu         t1, s8, tp
                  sllw         t2, tp, s4
                  ori          t3, s4, 686
                  slti         t3, zero, 1123
                  andi         t1, sp, 1433
                  sll          a7, a5, t6
                  addiw        a2, t2, -14
                  srliw        s8, a6, 2
                  divw         s4, t2, s10
                  divw         t2, a6, t6
                  rem          gp, t6, a2
                  or           s11, s8, s11
                  sll          a2, t6, s3
                  mulh         ra, ra, s4
                  remuw        a1, t2, s7
                  srliw        t1, s10, 15
                  sra          a1, t1, t4
                  sltu         s7, gp, s3
                  srai         t0, a1, 9
                  add          t2, s5, s0
                  remuw        t2, s7, zero
                  addiw        a6, t5, -598
                  xori         s5, s8, -128
                  nop
                  sraw         t6, tp, zero
                  remu         a7, s0, a3
                  andi         s1, s5, -1784
                  srl          t4, a7, s10
                  slt          s1, zero, a5
                  srliw        s5, gp, 20
                  sub          s7, t3, t2
                  xori         a0, gp, -1508
                  mulhsu       s2, a0, a7
                  slli         a0, s3, 5
                  sub          s5, s5, a5
                  xor          tp, s3, t6
                  mul          t3, a2, a6
                  srlw         s1, s11, a4
                  auipc        t5, 884241
                  divuw        t1, gp, tp
                  sltiu        s11, s6, 2020
                  sll          t0, s8, a5
                  remu         s11, t6, a1
                  remw         gp, t3, a3
                  divuw        a7, s4, tp
                  andi         a5, ra, 295
                  remu         s2, s8, tp
                  addw         a1, s3, s11
                  slliw        gp, a7, 29
                  srli         zero, s3, 12
                  divu         s2, a7, s6
                  addiw        t4, a3, 584
                  sltiu        t3, s0, 1081
                  add          a6, a1, s5
                  addiw        ra, s11, 1367
                  slli         s7, a6, 35
                  srlw         sp, t1, t3
                  or           t2, t3, a3
                  remw         zero, a7, t2
                  srli         ra, s7, 14
                  sltu         tp, a4, s6
                  mulh         zero, s0, t4
                  sub          s8, s5, t4
                  srl          a3, a5, s11
                  add          s2, a2, a1
                  slt          s11, a6, t1
                  div          s3, s3, sp
                  remu         t6, t5, t6
                  add          a6, s11, s7
                  sub          zero, t0, t5
                  mulhu        t0, s10, s11
                  auipc        t5, 685270
                  srli         ra, a1, 46
                  divuw        tp, t4, tp
                  divw         tp, s5, t3
                  mulhsu       t5, t5, s9
                  sll          s4, s1, s4
                  sll          t6, s6, a5
                  xori         s8, s4, 1634
                  divuw        s7, s4, a2
                  sraw         s8, s2, a6
                  sub          t2, s10, a2
                  sraw         a2, s2, s10
                  mul          tp, t3, a2
                  srl          a6, t3, s4
                  slt          t6, s5, s10
                  xor          a0, t5, s7
                  sll          s5, ra, s7
                  andi         a5, t0, 1644
                  rem          t2, s6, s9
                  sraw         tp, s7, s5
                  srlw         s1, t5, s0
                  mulw         t5, s9, s0
                  lui          a3, 60120
                  mulhu        s9, s6, tp
                  slli         t0, t4, 39
                  lui          tp, 758798
                  srliw        t1, gp, 20
                  mulhu        t5, zero, s4
                  remuw        s1, t1, a0
                  nop
                  mulhsu       a3, sp, gp
                  divuw        a7, s0, s5
                  xori         s11, s4, 298
                  sll          a0, s0, s3
                  and          s9, tp, a7
                  divuw        gp, t2, s3
                  mulhu        s1, t6, a6
                  sra          s9, a0, s1
                  remuw        a1, s3, sp
                  remuw        gp, s5, s3
                  remw         t3, s6, t0
                  mulhsu       t3, ra, a5
                  srl          tp, a4, gp
                  div          a6, t5, ra
                  sub          gp, s1, t2
                  mulhu        t5, s1, a3
                  divuw        t3, s3, zero
                  srliw        a2, sp, 25
                  addiw        t5, a5, 1591
                  mulh         t2, t6, s11
                  mulhu        s2, a0, s10
                  xori         s11, gp, -570
                  div          s1, tp, s7
                  sub          s4, a5, t5
                  remu         ra, sp, s0
                  sltiu        t0, s4, -2015
                  srli         t0, a0, 62
                  remw         t2, t1, s2
                  addi         s6, t5, 3
                  srai         s3, a6, 63
                  sltu         a2, s8, a7
                  slt          a5, a7, a0
                  sllw         t4, a5, s5
                  and          s9, a7, a1
                  slliw        s3, a2, 18
                  srliw        a6, t6, 1
                  mulh         ra, s2, a5
                  divu         gp, s4, s4
                  mulw         s11, zero, gp
                  divuw        s11, s2, sp
                  mul          a1, t5, a0
                  slti         a0, s8, 771
                  divu         s5, s0, t4
                  srai         a1, s10, 60
                  sltiu        s5, tp, -1579
                  slli         a7, s3, 24
                  addiw        a1, s6, 1524
                  sll          t2, s11, gp
                  add          t1, s5, t3
                  nop
                  nop
                  auipc        t1, 922710
                  rem          a7, t0, s6
                  sub          s3, sp, t6
                  addi         a1, t0, -5
                  slli         s1, s9, 13
                  mulhsu       a0, s1, a1
                  srlw         s1, a3, s10
                  divw         zero, t0, s9
                  sraw         t1, t5, a7
                  divuw        t5, s10, s11
                  sub          s11, a6, s0
                  mul          t6, t0, s4
                  sll          a0, zero, t2
                  srlw         t5, sp, a1
                  sll          a6, s4, s6
                  or           t2, a4, s10
                  srliw        s3, a6, 23
                  slt          t5, s8, tp
                  sraiw        a5, s6, 8
                  sub          zero, s10, tp
                  remw         s11, a5, t3
                  auipc        t2, 27301
                  lui          s7, 762595
                  slti         s4, s10, 718
                  subw         a7, ra, zero
                  slliw        s3, a2, 9
                  slt          s2, a3, s11
                  addiw        s1, s8, -1866
                  mulhsu       a2, a5, t3
                  addiw        a1, a1, 1171
                  srli         gp, s5, 59
                  srl          s6, a5, t5
                  divu         t5, a5, tp
                  addiw        tp, sp, -1260
                  srliw        t2, sp, 7
                  ori          a6, s1, -1193
                  sraw         s7, a0, s3
                  mulh         s4, a5, s6
                  sll          t5, s10, t6
                  slliw        a5, s9, 6
                  sraiw        zero, t0, 14
                  and          gp, s2, a5
                  sraiw        tp, s1, 28
                  srai         a2, ra, 0
                  add          a6, s6, sp
                  andi         zero, t2, -887
                  ori          s2, a7, -472
                  or           s8, s11, s10
                  slti         a7, t4, -902
                  sraiw        tp, gp, 2
                  div          a0, t5, s3
                  slli         a5, s8, 24
                  sllw         t1, a5, t1
                  subw         ra, a2, t4
                  slti         a5, t3, -1493
                  add          s3, s9, a7
                  divw         s8, s4, t0
                  mulhu        s4, s9, s0
                  srli         ra, a2, 59
                  ori          a3, s11, 1096
                  ori          t5, a3, -1623
                  auipc        ra, 872508
                  sraw         s1, s3, t3
                  sraiw        a6, a7, 9
                  srai         s4, t1, 4
                  slti         a5, s4, 710
                  auipc        zero, 506113
                  xori         t5, s10, 1339
                  slli         s4, a3, 6
                  srlw         t0, a4, s5
                  nop
                  or           zero, s7, tp
                  slti         sp, s11, 510
                  sub          a6, t4, s2
                  remuw        t4, a2, a7
                  srlw         s11, a4, gp
                  srli         ra, zero, 23
                  srliw        t4, s6, 16
                  sub          s3, s4, s6
                  mulhsu       t1, a6, t5
                  slli         t6, a6, 20
                  or           s3, gp, s11
                  addi         s6, tp, 1025
                  nop
                  divu         t1, a7, s0
                  nop
                  srl          ra, s11, a6
                  sub          s3, a3, a4
                  srai         s9, a5, 59
                  auipc        s5, 972676
                  mulh         zero, a4, a1
                  divuw        zero, a1, t4
                  or           s7, s2, ra
                  add          ra, gp, t2
                  srli         a1, tp, 46
                  mulh         s3, s8, a0
                  remuw        s7, a6, tp
                  sllw         zero, s8, t1
                  or           tp, a5, t2
                  addiw        gp, a7, -1361
                  auipc        a7, 140873
                  slti         tp, t0, -187
                  mul          a2, a1, a5
                  slli         gp, t2, 6
                  addi         s11, s9, -758
                  slt          s5, s1, s2
                  mulhu        t2, t4, t6
                  nop
                  sltiu        zero, t4, 1379
                  sraiw        s2, s7, 28
                  or           s5, a7, s4
                  nop
                  slt          s6, s3, gp
                  ori          t1, s7, 1150
                  divu         t0, s5, s10
                  sra          a5, tp, a2
                  and          ra, s9, s11
                  srliw        a6, a1, 6
                  nop
                  sub          s6, t5, a5
                  andi         s11, s4, -814
                  mulhu        a5, s0, s9
                  xori         s7, s10, -2047
                  sltu         s1, s1, sp
                  sll          a6, t1, s3
                  sltu         a2, t6, s0
                  slli         a0, s3, 18
                  srai         t3, a7, 50
                  sra          sp, t3, s3
                  addiw        gp, s3, 284
                  slli         t4, s3, 51
                  subw         a3, s1, ra
                  sllw         s2, a3, s0
                  andi         s4, s9, 514
                  divu         s11, t4, a6
                  remw         s4, a7, s2
                  mulw         ra, a4, zero
                  sll          t1, zero, s4
                  xori         a1, a7, -1299
                  srliw        sp, zero, 20
                  rem          s7, zero, tp
                  divw         zero, s1, a3
                  srli         a7, t0, 50
                  andi         s7, t6, 1013
                  sra          t3, s5, sp
                  xor          a7, t6, a4
                  sltiu        zero, s7, 1681
                  mul          t1, s5, a0
                  addw         a6, t4, t4
                  sub          a5, a4, s10
                  mulw         t4, s11, t6
                  remuw        a0, a6, t0
                  sll          sp, s1, s7
                  mulhsu       t3, a3, t5
                  sraw         t4, s6, a5
                  xor          t5, t6, a2
                  mulh         sp, s1, t4
                  srl          s5, t4, t0
                  divw         s4, s8, s5
                  remw         s4, s1, a5
                  and          s1, s4, t6
                  div          s3, sp, s11
                  addw         t2, t6, s7
                  addw         s5, a2, a5
                  slt          t3, s3, a5
                  divuw        a1, s11, s7
                  mul          a2, s5, a1
                  sltiu        sp, a4, -1250
                  auipc        s1, 608798
                  divw         t6, a6, s0
                  sraiw        ra, s3, 21
                  add          ra, t3, a3
                  and          s6, a6, s9
                  srli         a0, ra, 7
                  mulh         a1, s0, gp
                  add          a1, a1, a6
                  remuw        a0, s3, a1
                  slti         s4, s4, 113
                  sub          t4, s7, a6
                  srliw        a5, a4, 5
                  remu         a2, ra, ra
                  div          a1, s0, a4
                  addiw        t0, s1, -1533
                  mulw         s3, s9, t3
                  auipc        a3, 485388
                  sllw         ra, t2, tp
                  mulhu        a6, s6, t2
                  addi         zero, gp, 1603
                  divu         a2, s8, t1
                  add          t4, s7, t6
                  slt          s6, a1, t1
                  add          a7, t6, zero
                  nop
                  ori          a0, a0, -1973
                  slliw        t6, s0, 7
                  slliw        t0, s8, 22
                  and          t0, a5, s1
                  auipc        a0, 1028217
                  sltiu        a5, t5, -1515
                  addw         a3, s3, s2
                  sub          s4, sp, a1
                  slliw        t6, t1, 17
                  andi         t0, s1, -1308
                  sltiu        t3, a7, -564
                  remw         s3, s0, ra
                  addw         sp, a3, a5
                  auipc        s6, 612565
                  slli         t4, s0, 49
                  xori         s2, s7, 947
                  slt          t4, s10, s0
                  divw         a5, ra, t2
                  sltu         ra, s2, t4
                  srai         s1, a1, 9
                  mulhsu       s3, s0, s3
                  slli         s2, a2, 30
                  sraw         gp, a2, a1
                  add          t0, s10, a2
                  srlw         a2, s9, sp
                  divu         t0, t1, s0
                  subw         s8, t5, a1
                  divw         s11, t4, t4
                  srlw         s5, t4, s8
                  sltiu        t6, a6, 1026
                  rem          t3, s8, t5
                  or           s5, s0, s1
                  ori          s2, a1, -1149
                  lui          a3, 209756
                  slliw        s6, s4, 28
                  mulh         a5, a4, ra
                  srli         sp, s0, 58
                  sllw         t1, s0, s2
                  sltu         s3, t0, s10
                  srli         t3, a7, 33
                  remw         a2, a1, s6
                  auipc        a5, 207187
                  srai         t3, s10, 20
                  sra          s3, t5, s3
                  xor          s1, s1, s1
                  divuw        t2, gp, a4
                  sraiw        s2, a0, 8
                  lui          s6, 804070
                  slt          s2, t4, s4
                  mulhu        s5, t1, s1
                  sra          a7, a1, t0
                  slti         a5, s3, 860
                  addi         s1, s9, -628
                  slt          s2, t3, s6
                  xori         t5, s3, 1588
                  mul          a5, a4, sp
                  divw         sp, sp, a3
                  srai         t5, s11, 33
                  divw         t1, ra, s0
                  divu         s5, s4, t2
                  srai         t1, ra, 45
                  srliw        t6, t0, 26
                  srliw        gp, s7, 9
                  mulh         s11, a3, ra
                  xori         s9, s6, 2004
                  srliw        s4, t0, 7
                  mulw         a2, s1, s5
                  slliw        a0, a1, 0
                  nop
                  mulw         tp, gp, a5
                  div          s5, s7, a4
                  sltu         s6, s4, s3
                  ori          a3, a1, 300
                  addiw        s9, gp, -531
                  srli         t2, s6, 16
                  srliw        a0, t0, 10
                  addi         s5, s6, 707
                  sraiw        tp, s10, 7
                  xori         a3, s3, 1484
                  slli         s8, t4, 14
                  slt          s2, t5, s8
                  addw         t3, s4, a1
                  mulhu        sp, s4, zero
                  sltu         s2, a0, s4
                  mulw         s3, a3, s2
                  lui          s7, 905486
                  sraiw        a0, s0, 29
                  srl          s7, s9, s11
                  sltu         t6, s3, gp
                  srl          t5, a6, a3
                  remu         s9, a0, t5
                  remuw        zero, t5, sp
                  xor          s11, s8, s4
                  sltu         s7, gp, t4
                  divu         s1, s6, s10
                  sll          gp, a6, zero
                  srai         t3, t1, 53
                  andi         s2, s6, -1130
                  sltu         t6, s3, t6
                  remuw        t0, zero, s11
                  sllw         tp, ra, a3
                  addiw        s8, s8, 436
                  slli         t1, s1, 42
                  sllw         t0, s8, s0
                  remw         s5, gp, a4
                  divw         t1, s0, a0
                  sub          s7, zero, a4
                  auipc        t0, 574812
                  or           sp, gp, s0
                  nop
                  sll          a1, s1, s7
                  mulw         sp, gp, t2
                  sll          s7, s6, a2
                  sra          t0, s9, a0
                  remw         s8, ra, s7
                  sraw         s6, a5, t3
                  sltu         t5, a6, s1
                  slt          a5, t1, ra
                  mul          t2, a6, t6
                  auipc        s6, 990984
                  div          a5, s2, sp
                  srlw         s2, t4, a1
                  mulh         s7, s0, s7
                  srliw        t2, a5, 28
                  div          a2, a5, s10
                  mulhsu       s1, s10, t4
                  sub          a1, a3, s7
                  mulw         a7, s3, t5
                  slli         s7, s1, 43
                  srlw         t1, s11, gp
                  div          a0, a2, t0
                  andi         t4, s0, 16
                  divuw        t2, t6, tp
                  add          t3, a5, a1
                  srliw        a2, s5, 30
                  sll          a5, s1, t2
                  slt          a7, sp, t6
                  srl          gp, s6, t0
                  addw         s4, s11, t6
                  divw         s9, a1, s11
                  srli         tp, sp, 33
                  mulh         zero, s3, t5
                  addw         s2, sp, a4
                  remu         s3, t4, s9
                  mul          s8, s0, a6
                  nop
                  slt          a3, t5, s10
                  ori          s6, s4, 1108
                  divu         tp, a2, s11
                  sraiw        s5, a7, 23
                  sub          s11, a4, a2
                  addi         a6, a4, 29
                  or           s8, s2, a0
                  div          t1, a7, s6
                  sllw         t6, s7, ra
                  mulw         s2, s10, t1
                  remuw        s1, t6, zero
                  mul          a2, s4, s11
                  xor          a6, gp, s0
                  addiw        s8, s6, -189
                  slli         s2, t2, 6
                  nop
                  srli         gp, zero, 28
                  mul          s6, a4, a5
                  srl          a1, sp, t1
                  mulw         t0, a1, t6
                  rem          tp, a5, a4
                  sraw         t2, s8, s9
                  sltiu        s8, a6, 620
                  remw         s2, a1, a5
                  sltiu        s6, a5, 326
                  xor          a3, a2, t1
                  srl          s3, t0, s1
                  lui          a0, 832084
                  and          sp, s7, s10
                  auipc        t4, 136849
                  srliw        t5, t1, 1
                  lui          t3, 693030
                  lui          t3, 894642
                  ori          s1, t5, 1834
                  divu         s9, s8, t6
                  add          zero, t1, t6
                  ori          tp, s10, 1959
                  ori          s3, t0, -325
                  add          s2, t6, t0
                  mulhu        a0, s3, s5
                  sll          s2, a0, s5
                  lui          t4, 677440
                  and          t5, s2, ra
                  mul          a6, s1, ra
                  rem          a5, a4, t6
                  sltu         a7, zero, s1
                  rem          s7, a1, gp
                  sraw         a3, s6, s4
                  srai         s8, a6, 11
                  mulhsu       s4, s11, t0
                  auipc        t5, 917550
                  addiw        s3, a7, -934
                  remuw        s3, a3, s2
                  and          s6, t6, s7
                  add          t6, tp, tp
                  sub          s2, sp, s7
                  slli         s2, t1, 25
                  auipc        t5, 447103
                  sllw         s1, a7, a1
                  remu         sp, t2, a6
                  srl          s8, a0, s10
                  srli         sp, s7, 61
                  remu         ra, s6, s6
                  mulhu        t5, sp, t3
                  lui          a0, 246925
                  div          tp, a1, zero
                  remw         t2, tp, t2
                  slliw        ra, a1, 29
                  mulh         s4, sp, t1
                  xori         s6, t3, 1932
                  addw         t6, t6, a2
                  sra          t1, a4, s7
                  add          t5, s10, a3
                  srl          s4, a3, s1
                  add          zero, a0, s3
                  addiw        s7, sp, -352
                  mulhu        s7, a3, t6
                  xori         sp, t5, -193
                  sra          s11, s4, s2
                  ori          s11, s8, -2004
                  xori         a2, sp, -223
                  srai         t3, sp, 50
                  lui          t0, 1008540
                  sraw         a0, a5, s1
                  slt          a5, s3, s6
                  sub          tp, sp, s2
                  divu         s6, a4, a1
                  remuw        sp, s6, tp
                  srl          tp, a5, ra
                  sltiu        a0, t3, 372
                  sraw         s2, s4, a7
                  addiw        s1, t5, 1761
                  add          a0, a0, t1
                  andi         s2, zero, -469
                  slti         t0, a0, -1692
                  remuw        a0, a3, s5
                  sraiw        a2, s2, 8
                  sub          s8, t3, t5
                  andi         s8, t5, 1473
                  mulhsu       a1, a0, s1
                  slti         s7, a1, -1398
                  remu         t3, s0, s0
                  mul          s6, a1, a5
                  sltu         zero, t0, t0
                  remu         a5, s2, a5
                  divu         a7, t4, s6
                  sra          s11, t6, s11
                  addi         s8, a1, 244
                  sll          s8, tp, s10
                  nop
                  sraw         t1, s10, a2
                  slt          tp, s5, t1
                  sll          t3, s8, s1
                  nop
                  nop
                  slt          s6, tp, s6
                  addw         a0, t2, t5
                  divu         a5, a1, a1
                  sub          s11, tp, t3
                  remw         a5, a3, s3
                  remu         t0, sp, s3
                  lui          a5, 479050
                  slt          tp, s8, s11
                  xor          t1, t0, s10
                  slt          a5, t1, s10
                  divuw        t0, a6, t2
                  mulhu        t5, s0, tp
                  mulw         a5, a0, t1
                  slli         s2, gp, 57
                  and          a1, t4, s3
                  srlw         zero, s7, a2
                  mul          s11, a7, t2
                  xori         s3, t0, -13
                  sltiu        ra, s6, -1388
                  srlw         s9, gp, a0
                  slli         s7, t0, 17
                  mulh         gp, s9, s8
                  divuw        t5, s6, t6
                  srl          zero, s7, s11
                  slli         a1, t4, 0
                  srliw        a5, t5, 23
                  slt          s5, t5, t4
                  mulw         a1, s9, a7
                  divw         s6, t6, a5
                  div          a2, a2, a7
                  ori          t6, s0, 388
                  sllw         a2, a7, gp
                  xor          a7, s8, ra
                  lui          t4, 160214
                  mulhu        s6, t5, a1
                  sraw         a6, tp, s11
                  addw         a7, s5, gp
                  sltu         s7, a1, s6
                  mulhu        s6, t4, a4
                  andi         s11, sp, 1319
                  ori          s2, s0, 1395
                  ori          tp, s5, -1728
                  auipc        t1, 747430
                  remuw        tp, s7, a0
                  xor          a0, s10, a0
                  addi         s7, zero, -792
                  divuw        t1, a0, s9
                  mul          s8, a7, gp
                  nop
                  divu         s6, s0, gp
                  slt          t3, s5, ra
                  remw         a2, ra, a2
                  addiw        s2, a4, -1415
                  subw         s5, s0, s0
                  sllw         t4, a7, t5
                  and          s2, sp, a5
                  sraw         s9, a3, t1
                  srli         a1, s5, 40
                  mulhsu       a0, a2, a2
                  addw         s9, s6, a3
                  addiw        s5, s10, -292
                  lui          s9, 231105
                  addiw        t1, a1, 1320
                  remw         zero, s0, s1
                  slliw        t6, s8, 18
                  xori         s8, s0, 597
                  xori         sp, t5, -1761
                  sllw         t4, s1, s3
                  or           a3, a2, t3
                  sltu         t3, a0, t2
                  auipc        t2, 569066
                  slliw        t3, s7, 13
                  srlw         a1, t5, a5
                  srl          s8, s9, zero
                  mulhsu       s4, t0, a0
                  sltiu        t5, s7, -1974
                  srl          a5, sp, t0
                  mulhu        s9, t1, t0
                  mul          s11, s11, sp
                  srliw        t2, a6, 25
                  sltu         s6, a4, t4
                  divu         ra, s11, s3
                  srl          s5, s2, zero
                  addw         t6, a0, s6
                  slli         a5, a5, 13
                  divw         s7, s8, zero
                  div          a0, s1, t4
                  sltu         s8, ra, s8
                  auipc        s11, 965847
                  sub          t5, tp, a3
                  addw         t0, a7, s8
                  mul          a1, s0, s11
                  slliw        t5, t3, 15
                  lui          sp, 597534
                  divuw        a0, s8, a6
                  sltu         a1, a5, a1
                  addi         tp, a0, -291
                  add          gp, t4, a6
                  lui          a5, 295203
                  addiw        s6, s6, 1849
                  rem          ra, s11, ra
                  mulhsu       tp, t0, s4
                  slliw        a0, a7, 19
                  srli         s11, sp, 10
                  mulhsu       zero, s7, s0
                  mulhu        s11, a4, s10
                  divw         s8, s5, s11
                  remuw        a1, a4, s0
                  sltu         t0, s7, a4
                  mul          s8, t2, gp
                  slli         a1, s3, 2
                  divuw        gp, a6, t4
                  slli         t6, s4, 39
                  sra          t6, s9, s10
                  sra          t4, s4, s1
                  slti         a2, s8, 1487
                  sub          t2, ra, t5
                  sraiw        s9, a1, 31
                  mulhsu       t1, s6, a6
                  divw         t1, t3, a2
                  srai         a6, s0, 24
                  auipc        a5, 263364
                  div          s8, t3, ra
                  addi         t6, s7, 1436
                  addw         s3, s8, t3
                  srai         zero, a7, 54
                  srlw         a6, s4, a6
                  remw         s5, a1, s5
                  srai         a2, t1, 58
                  srli         t5, a6, 30
                  sllw         s9, a1, a0
                  andi         a7, a3, -1519
                  remw         t6, t4, s9
                  mulh         zero, a1, a0
                  slt          s11, gp, tp
                  nop
                  divu         t5, t1, s8
                  srli         a1, a2, 54
                  sllw         s2, a3, s10
                  mulhsu       a1, sp, t3
                  sra          s1, a3, a6
                  ori          t1, s0, -1111
                  nop
                  sllw         s7, s10, s2
                  divu         zero, s4, t0
                  rem          tp, ra, s3
                  sllw         s2, s9, t1
                  addi         s1, a6, 1836
                  addiw        t3, s0, 607
                  xor          s8, a0, a1
                  divw         s9, s8, a2
                  xor          s6, gp, s10
                  srlw         s1, a0, t6
                  addi         s11, t0, -1283
                  addi         t1, s6, 1086
                  auipc        gp, 154400
                  nop
                  xor          a7, t4, s4
                  srlw         a6, t3, gp
                  divu         t3, s1, a7
                  auipc        s1, 734892
                  addw         s7, zero, s2
                  srliw        s8, a4, 20
                  sraiw        a6, a0, 11
                  remw         zero, t2, sp
                  slliw        a0, a0, 9
                  add          s4, tp, t5
                  and          s1, s2, t4
                  lui          s3, 188746
                  sraw         ra, t6, ra
                  mulhsu       a7, a0, s3
                  ori          s5, sp, 1983
                  srl          a2, t3, zero
                  sltiu        s2, s10, 617
                  mulw         s4, a3, s7
                  remu         t4, s4, sp
                  or           s9, t1, a5
                  slli         t1, s7, 29
                  or           s7, ra, t0
                  divw         tp, a3, a2
                  mulh         a6, s9, s0
                  slliw        t4, s1, 9
                  slliw        sp, ra, 10
                  mulhsu       a5, s9, a7
                  lui          s8, 929070
                  mulh         t1, gp, s5
                  divw         s8, s5, gp
                  slliw        s5, a4, 27
                  sltiu        ra, s9, 310
                  divu         a0, s3, s9
                  divu         s5, t1, tp
                  divuw        a0, a1, t0
                  sllw         a7, t3, s7
                  sub          s3, s1, a3
                  sra          s11, s7, s7
                  slti         t1, s11, -1031
                  mulh         t1, s10, t4
                  sltiu        s5, s5, -1891
                  div          t6, a0, sp
                  srli         sp, s6, 62
                  srlw         s5, s0, sp
                  sll          t4, s11, a6
                  mulhu        t5, s4, s3
                  addi         s11, a0, 1867
                  div          a1, zero, s5
                  ori          a2, s8, 901
                  ori          zero, sp, 1667
                  xori         t6, a5, 20
                  rem          tp, t3, a6
                  divu         s6, t4, sp
                  srli         a2, gp, 16
                  sltiu        a0, t4, 754
                  mulh         a6, a6, t3
                  ori          s1, a7, -1806
                  subw         a6, tp, t2
                  srliw        t5, ra, 11
                  auipc        t5, 443430
                  slli         s11, s10, 56
                  remuw        s9, s10, s0
                  addiw        s1, a6, -942
                  sllw         s2, a2, s4
                  addiw        a0, a7, 1585
                  sll          s1, a3, a7
                  mulh         s2, t5, s10
                  sraiw        s2, s7, 21
                  subw         a3, a3, s5
                  sub          ra, t1, s5
                  addw         a3, s3, s1
                  add          a5, a7, t2
                  nop
                  sraw         t3, s3, a3
                  sra          s8, gp, s10
                  remw         s4, a7, a0
                  andi         t6, t6, 660
                  sllw         t0, a0, s0
                  remw         t5, gp, s7
                  sltiu        a6, s2, -855
                  sll          sp, t0, sp
                  lui          a1, 337753
                  sll          s2, zero, gp
                  add          a7, t1, t4
                  slliw        gp, a5, 23
                  and          s6, s3, ra
                  srli         s1, zero, 1
                  sll          a0, t6, s6
                  addiw        t5, t4, 684
                  xor          s3, s2, t1
                  sub          a6, s6, t0
                  srlw         t0, s10, a6
                  andi         s7, a6, -914
                  remw         s2, s4, gp
                  sltu         s2, s6, s1
                  slli         a0, s8, 16
                  divw         s11, s6, zero
                  sltiu        sp, s8, -1651
                  divw         s4, s11, a5
                  slti         s11, t2, 1698
                  remu         zero, t0, s11
                  mulw         s11, a4, t3
                  and          t2, tp, s8
                  auipc        s6, 78441
                  srlw         a7, ra, gp
                  srli         sp, s4, 36
                  sllw         t0, s3, sp
                  remu         t1, a1, t1
                  sraw         gp, s5, a6
                  div          s3, s2, s3
                  rem          sp, t1, t6
                  and          t1, s4, s1
                  sll          s6, t6, gp
                  mul          s1, a0, s1
                  srl          a0, t3, a7
                  lui          t1, 901971
                  xori         s11, s8, 1813
                  srai         s2, a5, 56
                  srliw        s6, a7, 12
                  sraw         t3, t1, s9
                  slti         t3, t2, 842
                  sub          s1, s0, t0
                  auipc        s9, 249928
                  remw         s5, t2, t5
                  slliw        t2, t5, 6
                  divu         a2, t3, a5
                  and          t2, t2, t4
                  sra          t5, t4, ra
                  srliw        s4, t2, 9
                  auipc        s11, 592203
                  srliw        t0, a3, 26
                  sraiw        s2, t2, 12
                  mulhu        a6, s10, s3
                  ori          a0, s3, -24
                  sraiw        s1, s7, 10
                  divw         t6, sp, t0
                  add          s8, s0, s10
                  andi         a3, t5, -2004
                  sraiw        t2, tp, 2
                  addiw        t3, ra, -2002
                  rem          a1, s2, s11
                  srai         s11, a2, 58
                  addiw        s11, s10, 851
                  slt          s5, s4, a7
                  ori          t3, a7, 728
                  addiw        a5, gp, -560
                  remuw        t0, t6, t5
                  rem          tp, s11, a3
                  addi         s9, s7, 693
                  div          gp, s9, s5
                  srliw        sp, sp, 4
                  auipc        s11, 509414
                  remw         a0, a5, a5
                  sltiu        t4, s1, 1856
                  sltu         s2, a4, zero
                  sltu         a2, a5, s6
                  remu         zero, s10, gp
                  sraiw        t1, s3, 4
                  mulhu        tp, s3, s3
                  add          t4, s0, s10
                  slt          s3, s5, a3
                  div          t3, s9, s3
                  add          tp, a5, t2
                  srliw        a5, a1, 30
                  srli         tp, t1, 63
                  mul          a2, a1, s7
                  sltiu        a7, s2, 537
                  srliw        s8, s2, 28
                  ori          t0, s9, 1506
                  lui          t5, 2410
                  subw         t3, a2, gp
                  remu         t5, s5, s2
                  add          s9, t2, tp
                  add          s5, s5, t5
                  slt          t5, tp, t5
                  divw         s3, a7, a0
                  sltiu        t2, a0, -1817
                  subw         s6, s2, a6
                  srl          s4, a2, s8
                  remw         zero, a3, t1
                  div          s1, s3, t3
                  rem          t1, t5, s1
                  nop
                  srli         a7, s9, 58
                  sub          a2, t1, t6
                  addiw        a0, t5, -793
                  sraw         s11, t0, zero
                  lui          t1, 301434
                  sllw         s11, a3, a6
                  add          tp, s7, t6
                  ori          t2, tp, 716
                  mulh         zero, s0, a2
                  sraw         a5, s0, s6
                  slti         a0, s8, -1656
                  ori          s2, a7, 945
                  sraiw        a1, s9, 17
                  addw         a0, s10, a4
                  srliw        t6, t5, 23
                  srl          t3, t2, a6
                  sraw         s2, a3, t1
                  xor          a1, s10, a3
                  remw         t6, s0, t5
                  sub          a6, a4, gp
                  add          s5, s7, s8
                  remw         zero, s1, s8
                  andi         s11, a0, -1805
                  srl          a7, a3, t4
                  mul          t6, t5, a4
                  andi         s2, a3, 1088
                  sraw         zero, sp, s0
                  xori         t4, t2, -783
                  addi         s5, gp, -702
                  srli         sp, zero, 60
                  or           t3, s0, s1
                  xori         s1, sp, 208
                  xori         sp, sp, 1967
                  mulw         a0, s9, a5
                  div          s11, a6, tp
                  addw         tp, s5, ra
                  add          t5, s5, a5
                  divu         s4, t3, s2
                  remu         t6, t2, s6
                  slt          s6, s9, a6
                  slliw        s7, s5, 29
                  slt          a3, a7, s4
                  sll          t5, s8, s1
                  sub          s3, s8, gp
                  ori          tp, a5, -868
                  slt          s7, s11, s9
                  slliw        t4, sp, 23
                  srli         s1, s10, 19
                  addiw        a1, s6, -560
                  slti         s6, s11, -326
                  andi         t6, s5, -280
                  auipc        a1, 5857
                  sltu         zero, s5, ra
                  sltiu        t2, t3, 1928
                  subw         a1, t3, a7
                  srai         s6, s6, 12
                  andi         zero, a2, 1816
                  mulhu        a0, s6, a1
                  sll          a1, t6, sp
                  div          s5, t1, s7
                  mulhsu       s9, a1, s3
                  divu         tp, s11, s9
                  div          a7, s6, s1
                  subw         t2, s8, s8
                  addi         a2, a3, 28
                  srl          t5, t2, a6
                  subw         a2, s4, s3
                  xor          a2, s4, t4
                  ori          a2, s10, -1304
                  mulh         t3, a4, a3
                  addi         a1, sp, -461
                  slliw        ra, s0, 19
                  sllw         s3, a4, s1
                  addiw        a1, a2, -1457
                  mulw         a0, gp, a1
                  sraw         t0, a6, s2
                  xor          ra, t0, gp
                  sll          a5, a2, a4
                  or           t0, s1, s3
                  xori         s1, s5, -1285
                  xori         tp, s2, -221
                  rem          zero, s0, a2
                  srlw         s4, tp, s11
                  divw         a7, s4, s10
                  srliw        t2, s9, 8
                  srli         t2, a5, 35
                  sraw         a2, s6, a7
                  addw         t3, s6, s10
                  addi         s8, a1, -1493
                  divw         gp, t4, s10
                  srl          t6, zero, s11
                  sub          s4, gp, s1
                  srlw         sp, a6, a2
                  divu         tp, a3, tp
                  xor          t0, s2, a7
                  add          t5, s11, s9
                  slt          s7, a4, t2
                  xori         t2, a7, -1381
                  mulh         s9, s5, t0
                  ori          a6, a6, -1572
                  slti         a6, zero, -1001
                  lui          s2, 858302
                  and          a0, t1, a0
                  rem          t4, s5, a6
                  addi         t4, gp, 1088
                  xori         s4, a6, 1298
                  srlw         sp, ra, a4
                  slti         a2, a3, 259
                  add          a1, s3, tp
                  addi         gp, t2, -31
                  sra          s2, s2, a7
                  andi         a5, a3, -996
                  lui          a5, 908932
                  divu         zero, a5, a2
                  slt          gp, s9, s9
                  sraiw        zero, a2, 3
                  auipc        t6, 95057
                  lui          s11, 848191
                  lui          a6, 433232
                  sra          zero, s9, t4
                  add          t5, s11, s0
                  remu         ra, a2, t2
                  sub          s2, s0, t3
                  subw         t2, s9, s3
                  srl          a3, a0, a3
                  div          tp, t4, t2
                  remw         a3, t6, s10
                  sra          a3, s11, gp
                  mulhu        a6, zero, t3
                  subw         s11, s7, s11
                  sllw         sp, s5, s4
                  divw         s9, a3, s6
                  addw         a0, t5, t5
                  ori          t3, s7, -587
                  mulh         gp, s11, a6
                  mul          gp, t5, a5
                  srlw         a5, a7, gp
                  srl          s8, gp, s10
                  andi         t6, t3, 1643
                  srliw        s2, s8, 3
                  remu         t5, gp, s10
                  or           a3, s8, sp
                  srl          a5, s2, a1
                  auipc        a0, 828577
                  mulhsu       a2, a7, a7
                  xori         ra, ra, 841
                  remuw        s7, a0, t4
                  remw         a0, s7, s4
                  remu         a5, t4, s10
                  add          s3, t6, sp
                  remuw        a1, t1, t3
                  sraw         a0, tp, a2
                  sub          t5, t2, s11
                  nop
                  sll          zero, s8, t1
                  add          a1, a2, s4
                  remuw        s2, t0, s2
                  xor          a6, zero, a6
                  srai         s3, s5, 26
                  slliw        tp, s4, 28
                  srl          s5, a0, t3
                  lui          s2, 427849
                  addi         t2, a2, 235
                  sra          gp, s5, sp
                  slli         t4, s11, 22
                  sraiw        a3, a4, 1
                  sltu         s3, t4, s0
                  srai         s9, s4, 32
                  mulw         s7, gp, s10
                  auipc        tp, 134577
                  auipc        t5, 8032
                  srai         s7, s0, 10
                  srai         s6, s1, 57
                  xori         s6, s9, 1861
                  sub          a1, a1, t0
                  xori         t1, a4, 1368
                  srai         s7, a4, 44
                  mul          t6, s0, s8
                  addw         s4, a0, sp
                  divu         a3, s3, t0
                  ori          a7, t1, 1859
                  mul          sp, tp, a3
                  sraiw        gp, t3, 23
                  sllw         a5, s5, a3
                  andi         a2, t3, -704
                  subw         a7, t5, t3
                  mulhsu       zero, s1, a4
                  srl          s1, s8, s7
                  xor          t6, s6, a1
                  xor          t5, t5, a6
                  div          a6, tp, gp
                  srl          a7, gp, ra
                  remu         s3, a0, a5
                  ori          ra, t1, -1405
                  mulw         a7, a0, t4
                  and          s11, a4, s7
                  sllw         gp, tp, a7
                  srli         s1, a3, 1
                  mul          zero, gp, s2
                  ori          tp, s5, -414
                  sll          s8, s11, a5
                  remuw        s5, s7, s3
                  addw         s11, t3, t1
                  sltiu        s9, s1, -1913
                  rem          zero, t4, t3
                  sra          t2, t5, s10
                  andi         s5, t2, -1081
                  mulhsu       t1, a0, gp
                  auipc        gp, 541314
                  remuw        s8, s0, t3
                  slt          s11, tp, t3
                  srli         t4, s4, 49
                  remw         s2, a3, a0
                  slli         s8, a6, 50
                  addi         zero, s5, 983
                  srl          gp, s9, gp
                  srl          t5, a0, a7
                  sll          tp, t1, s1
                  or           t0, t6, sp
                  sraw         s2, t6, s4
                  addw         ra, a1, ra
                  addw         zero, a6, s5
                  or           s8, s0, a3
                  srliw        a5, gp, 6
                  sra          zero, t6, t2
                  slti         gp, sp, -354
                  div          s6, a7, sp
                  addi         s7, s7, -2018
                  divuw        t0, a4, s2
                  add          a5, t0, s10
                  mulh         a5, a1, a7
                  sll          s11, a1, a3
                  addi         s5, a2, -458
                  sraiw        t6, a2, 8
                  addi         a0, a2, -281
                  div          a2, t2, s11
                  slli         s5, a5, 27
                  andi         a6, s5, -598
                  addiw        a0, t0, 1822
                  sll          s9, a7, t2
                  slti         a5, s2, 854
                  srai         t5, t2, 27
                  slti         a3, a3, -569
                  sllw         a2, s8, a2
                  mulhu        t6, a4, a2
                  slliw        gp, t2, 17
                  div          s1, t0, t0
                  sll          tp, s3, a6
                  mulw         s7, gp, a7
                  nop
                  ori          s8, s5, 30
                  mul          s7, a2, s0
                  remw         ra, gp, a0
                  remw         t1, s10, s10
                  auipc        a7, 817101
                  srl          ra, a3, s2
                  mulh         s5, t2, ra
                  mul          s11, t6, a6
                  sra          a2, s0, ra
                  remw         s3, ra, s2
                  srlw         a0, a3, t0
                  mulw         s1, tp, s0
                  remuw        t1, t5, s8
                  auipc        t5, 395854
                  srli         sp, s7, 50
                  mulhsu       t1, a3, s2
                  add          tp, s10, t5
                  addiw        t0, t4, -1120
                  divuw        tp, s3, s6
                  addiw        t1, s5, 1783
                  remuw        t3, s11, ra
                  xor          s6, s3, t4
                  srl          a7, a6, a7
                  slliw        s3, t4, 29
                  addiw        s11, s2, 1421
                  slti         s6, t0, -1163
                  add          s9, t0, a6
                  sraiw        s8, a0, 10
                  srli         a6, a5, 10
                  nop
                  addw         t2, sp, t1
                  mulh         t1, s4, zero
                  andi         s5, s5, -1152
                  mulh         a3, s7, t1
                  srlw         t5, sp, s10
                  remuw        t3, s3, a3
                  nop
                  srliw        t2, s7, 7
                  addw         a6, s9, a6
                  srlw         a3, s9, a7
                  sra          a0, t4, s7
                  and          t2, sp, gp
                  remw         gp, sp, a3
                  divw         s5, a7, t6
                  divw         t6, s8, t6
                  slt          tp, s9, s5
                  subw         a5, s1, s10
                  andi         gp, a6, 208
                  srliw        s9, s5, 31
                  ori          ra, t2, -253
                  sltiu        t6, s0, -798
                  mulw         t4, t1, s2
                  addiw        s3, ra, 1306
                  divuw        s5, a6, gp
                  div          t6, t3, tp
                  addiw        t0, t3, -426
                  sll          s5, s8, s9
                  ori          s4, s10, -1644
                  srl          tp, s7, s4
                  sltu         s8, a6, s6
                  slli         t4, a2, 1
                  lui          t3, 25344
                  ori          a3, a0, -404
                  remu         t2, s7, sp
                  remw         s2, t1, t6
                  mulhu        s9, t6, ra
                  lui          t1, 788897
                  andi         s8, a3, 275
                  srai         gp, t2, 6
                  sllw         t1, s0, gp
                  remw         zero, s4, s2
                  div          a3, a3, s9
                  xori         t0, t6, -2020
                  xori         t5, tp, -1400
                  mulh         s1, a6, a0
                  addw         t5, s2, s6
                  divu         a0, s5, t5
                  divw         a2, a2, t5
                  sra          s3, ra, t4
                  srlw         s6, s7, a5
                  addi         s5, t4, 406
                  add          tp, s1, t2
                  rem          tp, s10, t0
                  srliw        s4, s6, 23
                  slliw        a3, tp, 25
                  xori         s5, s7, 1907
                  add          t4, t0, t4
                  addw         s7, s3, gp
                  add          s8, s4, t4
                  addi         t2, t1, 1413
                  sraw         t4, t2, gp
                  ori          sp, s6, 878
                  mulhsu       a5, t0, t1
                  srai         ra, t6, 30
                  srlw         s8, s1, a1
                  and          ra, t4, s6
                  sra          t6, a7, s1
                  sltu         s2, s10, a3
                  ori          s2, a2, 830
                  sltu         t4, a0, s11
                  divu         s1, s3, s0
                  divw         t3, t5, s11
                  mul          a5, t0, ra
                  divu         s5, t1, a5
                  slli         s4, a4, 27
                  sltiu        s9, t1, -1872
                  remw         a5, s6, s10
                  divw         ra, s1, s10
                  remu         s2, a7, s8
                  andi         s9, s4, 1363
                  subw         s4, t0, s10
                  sub          s4, s5, a2
                  nop
                  sllw         s4, a2, s10
                  mulh         s5, s3, s11
                  sll          s7, a6, a2
                  remuw        s4, s0, t4
                  srliw        zero, s11, 14
                  sraw         s9, s0, zero
                  add          t0, s5, s6
                  mulhu        t6, s7, s1
                  addiw        s8, s4, -729
                  slliw        s2, a6, 5
                  sraw         t3, s11, s8
                  sraw         ra, t1, s6
                  sll          s5, s1, s10
                  auipc        t4, 133115
                  slliw        a7, s9, 17
                  srl          t1, s1, t3
                  addiw        t3, s11, 529
                  slliw        tp, a6, 23
                  sltu         s4, a1, t2
                  mulhu        s6, tp, s7
                  add          t2, zero, gp
                  mulw         zero, a2, sp
                  xori         s5, s9, 1947
                  auipc        s5, 349231
                  xori         ra, s2, 529
                  auipc        t5, 2393
                  mul          sp, s2, zero
                  xor          a5, s2, sp
                  srlw         a5, s2, a5
                  sllw         zero, t3, s2
                  divu         s1, a5, a4
                  sra          sp, t4, t6
                  divu         a5, t0, gp
                  remuw        s11, gp, gp
                  xor          s1, s10, s4
                  nop
                  lui          sp, 600339
                  add          sp, t0, a2
                  xor          s6, s1, t1
                  srai         s2, a3, 24
                  sltu         t5, s11, s5
                  subw         a2, s0, a3
                  div          a6, t0, a3
                  srai         sp, s5, 12
                  addw         s6, t2, a7
                  sub          gp, s4, t3
                  remuw        sp, t2, s11
                  divw         a0, a0, t4
                  remuw        s6, s7, s6
                  xori         t5, t6, 1474
                  mulw         t4, ra, t1
                  and          zero, s3, tp
                  andi         tp, s4, -1308
                  add          s8, tp, a2
                  or           s5, a1, s5
                  subw         a2, t4, s1
                  mulh         s9, ra, zero
                  sltiu        a2, t3, -1161
                  remuw        t4, a1, s9
                  sraiw        t2, s3, 31
                  div          t4, a7, s4
                  srli         a0, t3, 47
                  addiw        gp, t0, 967
                  auipc        t1, 860783
                  addw         a3, t0, t4
                  subw         s11, a1, a6
                  slt          a2, a2, s0
                  remuw        a0, a5, t0
                  srl          sp, zero, ra
                  sraw         s2, t6, s8
                  addiw        s8, ra, -1505
                  sllw         s11, a1, t3
                  slli         t0, s11, 25
                  or           s3, t0, a6
                  slli         t1, t4, 41
                  mulhu        sp, t5, s9
                  div          a0, a7, a2
                  remuw        tp, t1, s9
                  divuw        t2, s8, t3
                  andi         tp, s3, 719
                  auipc        t1, 563121
                  mulhu        s7, a2, t2
                  div          ra, a3, gp
                  srl          t6, s10, a1
                  srl          tp, t4, a7
                  lui          a7, 423020
                  divuw        a3, gp, a4
                  slliw        sp, s1, 31
                  sltiu        a1, s2, -1992
                  sltu         a3, t0, zero
                  sub          s5, t3, a0
                  nop
                  sub          t1, s11, s9
                  ori          a0, t2, 1900
                  mulw         t1, a5, s6
                  sltiu        a1, s11, 855
                  divw         s5, ra, s5
                  sllw         t5, sp, a6
                  ori          ra, s6, -1734
                  add          zero, sp, a7
                  sraiw        gp, s2, 5
                  sll          s6, s4, a6
                  mulw         sp, t1, gp
                  addw         t4, s11, s7
                  nop
                  sltu         a2, t3, s6
                  addiw        t3, a6, -1003
                  sltiu        s8, s1, -1416
                  or           s2, t4, t4
                  mulw         s3, s8, s0
                  subw         s9, zero, a2
                  slt          a2, s1, s8
                  srliw        a0, s4, 15
                  sraw         s4, a5, t4
                  addi         t1, s9, -464
                  andi         t2, s8, -1799
                  addw         s11, ra, s0
                  div          a3, a5, a4
                  sll          a5, a0, s8
                  subw         zero, s11, a7
                  srli         a0, t2, 14
                  rem          s11, s3, a3
                  slti         s4, s11, 1700
                  srli         a7, a4, 31
                  remu         s3, tp, a2
                  slli         t3, a0, 60
                  div          s6, zero, t6
                  slli         s6, gp, 46
                  sraiw        s1, a6, 25
                  slti         s8, t2, -215
                  remuw        a2, s5, a1
                  div          t5, s5, a0
                  divuw        s2, s8, t2
                  mul          tp, s3, s7
                  auipc        t3, 344526
                  srli         s6, t5, 2
                  remu         s3, s0, s7
                  auipc        t5, 978135
                  sltu         s1, ra, s10
                  addw         s1, s1, s2
                  sub          s5, t5, s9
                  add          s5, t5, t1
                  mulhsu       t3, s2, s8
                  sub          a1, tp, s6
                  srlw         t4, a6, t2
                  auipc        t1, 547747
                  remu         a1, s9, zero
                  slliw        a5, s4, 20
                  or           s2, s3, a7
                  remu         s7, a1, a7
                  auipc        s9, 773250
                  remu         a7, tp, a5
                  auipc        a7, 630675
                  mulhsu       ra, ra, s4
                  srl          s9, a7, t0
                  mulw         t2, s3, t1
                  slt          t1, s7, s7
                  sllw         a7, t1, s8
                  mulhu        tp, a1, t5
                  addiw        a2, gp, -636
                  xori         t3, a6, 305
                  slli         t2, gp, 60
                  xor          a3, s4, s0
                  remuw        t5, s2, s4
                  sll          tp, s1, s10
                  add          t5, a3, s10
                  xor          zero, s11, s0
                  sll          s2, s2, s3
                  subw         s3, t3, tp
                  ori          a0, a0, 161
                  mulw         a6, t6, s0
                  slli         a7, a7, 17
                  mulw         a0, a0, s3
                  sllw         a2, ra, zero
                  andi         s7, a7, -1501
                  divu         s7, s8, s7
                  addw         t4, gp, s11
                  sll          t4, s2, zero
                  remw         a0, a0, gp
                  mulhu        s8, t5, s7
                  slliw        s11, t0, 13
                  mulw         s7, t4, s3
                  remw         t3, a6, a5
                  srl          a3, a5, s6
                  slliw        s9, a2, 16
                  addi         s1, s6, -497
                  srliw        a3, s5, 19
                  mulh         t0, a4, s4
                  nop
                  or           a2, a4, a2
                  srliw        s8, sp, 18
                  addi         t4, sp, -1371
                  srli         s2, a5, 12
                  subw         s11, a5, s0
                  mulhsu       gp, t0, tp
                  addw         a2, a2, t0
                  remuw        s1, s7, t5
                  mul          t5, a5, a5
                  nop
                  mulhu        t4, gp, a2
                  slli         s9, a2, 40
                  sraiw        s8, t3, 8
                  subw         ra, s2, s5
                  ori          a3, s4, -221
                  srliw        a0, s9, 25
                  nop
                  divuw        s5, t2, s3
                  slli         s6, s7, 19
                  sraiw        s5, sp, 18
                  auipc        s3, 1032946
                  slli         a2, a5, 10
                  divuw        a1, a2, ra
                  subw         sp, s8, a1
                  sll          tp, zero, s11
                  remw         s8, s2, s1
                  rem          a0, a7, a6
                  addiw        a7, s6, -1761
                  mulh         a3, a7, t3
                  xori         t6, t5, 1476
                  addw         t4, s10, a7
                  xori         t0, t2, -2038
                  mulhu        a1, t6, a2
                  sltiu        s2, zero, 454
                  sraiw        s1, t6, 16
                  or           a2, t2, a0
                  subw         a5, s2, t3
                  remu         s4, a2, s3
                  xor          s11, s7, gp
                  srlw         t6, s1, zero
                  remw         a6, t6, s2
                  srlw         s8, t4, tp
                  mulhu        zero, t1, s4
                  srl          t2, a1, sp
                  or           t4, s3, s11
                  srl          s11, zero, a0
                  sltiu        t5, t6, 492
                  ori          t6, sp, -383
                  slliw        s1, t3, 26
                  add          t5, t4, t1
                  mulhu        s2, s3, s8
                  mulhsu       s1, s3, s6
                  or           s5, a5, a1
                  or           t1, t4, a5
                  addw         a6, s10, s2
                  div          s5, tp, ra
                  srai         zero, t5, 39
                  sltu         gp, a6, t2
                  divuw        a1, a4, t4
                  slt          s11, a1, tp
                  andi         s8, s7, 447
                  srai         s6, s8, 62
                  div          tp, s11, t1
                  sll          a3, a0, s11
                  divu         a6, t6, tp
                  andi         t1, sp, 437
                  ori          t3, s11, 449
                  rem          t2, s1, t6
                  xori         t0, t4, -1152
                  sllw         sp, t6, a6
                  divuw        zero, a0, t0
                  sltu         s2, sp, a1
                  divw         t4, t0, gp
                  sltiu        a5, zero, -675
                  and          ra, t5, s2
                  remw         s3, t6, s5
                  slli         a3, s8, 42
                  divw         s8, s7, a3
                  sraiw        a3, sp, 8
                  sllw         a3, s4, s10
                  remuw        a3, t5, s7
                  srai         a2, s11, 16
                  addw         a3, s9, sp
                  divuw        t6, s9, t0
                  sltiu        t5, t0, -621
                  mulhu        s4, a4, a2
                  auipc        a5, 653470
                  remw         s1, a3, a7
                  sll          ra, t5, s5
                  mulh         t5, a2, ra
                  ori          s3, a1, 1261
                  remw         s2, a0, a5
                  auipc        s2, 914950
                  mulh         t2, sp, a6
                  addiw        s11, tp, 1915
                  sraw         s8, t4, a4
                  mulh         s11, tp, a6
                  divu         s5, t4, zero
                  xori         a1, a7, 663
                  remu         a6, a3, gp
                  or           t6, s4, t0
                  lui          ra, 335507
                  srai         a3, a7, 48
                  subw         s8, a4, a5
                  auipc        a3, 273912
                  sra          s11, a4, t4
                  sra          a7, s8, t1
                  sra          t0, sp, s10
                  divu         t3, sp, a2
                  andi         s11, s5, 1705
                  sra          t1, gp, s8
                  sraiw        s11, s5, 8
                  sraiw        tp, a5, 12
                  rem          s5, a6, s10
                  remuw        sp, ra, s2
                  srliw        s5, t2, 15
                  sltiu        a0, t5, -172
                  slt          a1, sp, s0
                  sraiw        a5, s4, 4
                  srl          s11, t3, s7
                  sra          t1, t6, s11
                  srai         t1, t4, 4
                  sltu         s6, gp, gp
                  nop
                  sub          gp, tp, s3
                  and          ra, tp, s9
                  srl          s11, s10, tp
                  mul          a1, s5, sp
                  remw         sp, a4, t6
                  nop
                  ori          sp, s9, -967
                  xori         a3, s5, 1697
                  lui          a6, 169234
                  divuw        a2, t0, s6
                  addi         t1, tp, -1504
                  slti         t2, a3, -1977
                  sraiw        s8, a2, 17
                  remuw        a6, gp, t0
                  sraw         a6, a1, s1
                  remuw        s9, s5, t2
                  srai         a0, a7, 42
                  mulw         a6, t1, s2
                  sraiw        sp, s2, 31
                  divu         a0, s9, s2
                  andi         a7, s5, -925
                  lui          s3, 200068
                  addi         t1, t5, -1783
                  xori         ra, a6, 117
                  mulhu        s5, a0, t2
                  sub          t3, tp, s2
                  divuw        a2, s6, s10
                  sllw         s9, ra, zero
                  remuw        s5, s9, t1
                  slli         gp, s0, 13
                  andi         a0, t1, 564
                  div          s8, t3, s5
                  lui          a5, 134151
                  xori         gp, t5, -1712
                  lui          s8, 522037
                  divuw        t4, t4, sp
                  divw         sp, s7, s5
                  mulhu        s1, zero, s10
                  remuw        s2, s8, s2
                  sraw         a2, s7, zero
                  div          s2, t3, a4
                  srai         a2, s11, 52
                  sraiw        s4, t1, 13
                  mul          t3, s2, s11
                  sraw         t1, s4, s1
                  divw         t0, a3, sp
                  sltiu        s11, t0, -1005
                  addi         ra, a6, 1564
                  slt          a1, t1, a5
                  srlw         t5, t0, s1
                  addiw        zero, a7, 1693
                  sra          t1, t3, t5
                  xori         s8, s1, 1145
                  sub          a7, sp, s7
                  xori         a1, a0, 2038
                  mulhsu       s2, a3, ra
                  mul          a2, t0, a7
                  remw         ra, zero, s1
                  srlw         s11, s11, a0
                  sltiu        s5, a4, -1145
                  subw         t4, gp, s11
                  remuw        s6, zero, s9
                  div          a0, s6, a1
                  sra          tp, s5, t4
                  srli         t6, a2, 49
                  andi         t2, a3, -1940
                  subw         t5, a7, a0
                  srai         sp, a5, 22
                  remuw        a7, a4, s9
                  div          zero, s1, a5
                  sub          a2, s1, t5
                  mulhsu       ra, s3, a7
                  lui          t0, 879604
                  sllw         sp, t6, t6
                  mulw         gp, a6, sp
                  addiw        t5, s1, -431
                  slli         a2, t3, 1
                  sra          s7, s5, t2
                  mul          a5, s10, s8
                  and          s11, s3, s0
                  addi         zero, a1, 1490
                  mulhu        ra, s2, s1
                  xor          s4, s4, s9
                  or           s8, s8, a6
                  sraiw        a5, t4, 15
                  divuw        tp, t6, t5
                  lui          t4, 937191
                  remu         ra, s0, a6
                  or           s8, s6, s10
                  ori          s9, a1, -1879
                  slti         a0, a4, 479
                  xori         s3, t0, -1210
                  addw         t4, s8, s10
                  mulw         s9, tp, a6
                  xor          s7, a4, a6
                  srlw         s11, zero, t5
                  addi         s3, ra, -611
                  lui          zero, 3380
                  and          s6, s8, a2
                  or           s1, s10, s11
                  auipc        sp, 125277
                  xor          s4, t6, t6
                  or           t3, t0, s5
                  sll          t6, a4, s9
                  remu         s8, a3, s1
                  addiw        a0, s4, -1281
                  sltiu        zero, s9, 967
                  ori          a0, gp, 1961
                  add          s9, gp, a0
                  mulw         s6, a3, a1
                  remu         t4, s1, a7
                  slt          s11, s4, t2
                  slli         a2, s1, 9
                  mulhu        s6, a0, s11
                  divw         s3, s5, s7
                  xori         t3, t1, -1602
                  sraiw        s11, ra, 29
                  rem          a5, s11, t5
                  srliw        a1, t3, 3
                  remw         t5, a3, s0
                  slliw        t5, a0, 16
                  divu         s7, t4, t5
                  slt          s5, s11, s5
                  subw         s11, s8, s6
                  divw         a2, a6, a7
                  mulhsu       a2, t0, a4
                  lui          s3, 128516
                  remu         s8, s11, t6
                  divw         s3, s1, a5
                  remuw        s2, s3, s4
                  or           s7, s10, ra
                  addi         t0, sp, 1343
                  andi         s2, a4, 509
                  remu         s3, s11, s7
                  addi         t5, a7, -538
                  sra          s5, zero, t3
                  remu         t0, a3, t3
                  srl          a1, s9, t3
                  sltu         t3, s5, tp
                  lui          t1, 893057
                  addiw        s3, a0, -177
                  divu         ra, ra, a4
                  and          a3, s0, a7
                  slti         s3, gp, -1912
                  rem          a0, a0, a3
                  andi         ra, t2, 1387
                  slti         tp, a0, -1616
                  andi         t0, a4, -436
                  and          s3, s2, tp
                  srlw         a2, tp, tp
                  or           s4, a2, s8
                  addiw        s3, tp, 1807
                  andi         gp, t3, -658
                  divuw        sp, t6, a3
                  srl          s8, zero, s1
                  mulhsu       s2, s6, s2
                  andi         t5, ra, 98
                  sra          t1, s8, s1
                  xor          t6, gp, a1
                  remuw        s4, zero, t1
                  srl          ra, a6, t2
                  srliw        t5, s7, 25
                  subw         t2, t0, a2
                  remuw        a2, t2, a6
                  mulw         s6, s7, s11
                  mul          zero, s6, a1
                  srli         gp, ra, 62
                  and          t0, s10, gp
                  addw         s7, gp, s6
                  andi         a0, a2, -306
                  xori         a5, t4, -1254
                  srlw         ra, s8, s9
                  srai         a0, s0, 23
                  remw         s7, ra, s7
                  mulhsu       s11, s9, s11
                  sltu         a2, t1, t1
                  auipc        a3, 277412
                  mulhu        gp, s8, s7
                  mulhu        s7, t3, s3
                  sll          s11, a1, a4
                  nop
                  divu         t0, a4, t2
                  sltu         a7, s6, a0
                  xor          sp, s7, s11
                  addiw        gp, a5, 1305
                  ori          a7, ra, 915
                  lui          t5, 948797
                  srai         gp, ra, 34
                  srlw         a3, ra, s6
                  remw         tp, a3, ra
                  sraiw        zero, a5, 24
                  slti         t4, s2, 481
                  addiw        s2, s1, -734
                  srl          s4, a4, a6
                  mulhu        t4, a4, a1
                  auipc        a0, 402412
                  slt          a3, s10, sp
                  addw         t0, tp, a6
                  lui          t0, 201935
                  srli         zero, a3, 23
                  addiw        s5, t6, 825
                  lui          a2, 157390
                  ori          a0, s3, 444
                  addi         s3, s6, 116
                  addw         ra, s6, t4
                  or           t5, a2, s3
                  slt          zero, t3, s3
                  sra          a0, a3, tp
                  sraw         a1, s10, a4
                  and          s5, s4, a4
                  slti         ra, a0, -494
                  divw         zero, a4, t2
                  ori          s5, a3, 1479
                  slti         gp, a5, 1570
                  sra          s5, s4, t5
                  divuw        a2, t3, a4
                  xor          s5, a2, s4
                  remu         ra, s11, tp
                  sltiu        t3, t3, -469
                  srliw        zero, s8, 27
                  sraw         a2, s4, a6
                  sraw         gp, s2, a7
                  rem          a0, s11, s0
                  nop
                  sll          t5, s4, s10
                  mul          s5, s11, gp
                  xor          ra, s2, t4
                  rem          a3, s11, zero
                  srlw         t6, s8, a6
                  remw         a3, s1, s8
                  mulw         gp, t4, s9
                  nop
                  nop
                  addiw        t2, s2, 1315
                  or           t1, t3, s9
                  subw         s8, a7, a0
                  divuw        t5, s0, tp
                  sraiw        t5, a2, 9
                  subw         zero, t5, a1
                  slliw        s7, a1, 12
                  srlw         t6, a1, t4
                  and          ra, t0, s0
                  addiw        a2, a2, 1162
                  divuw        s9, s7, s9
                  slliw        gp, s7, 1
                  divu         s3, s7, tp
                  srl          s8, s8, t4
                  xor          s8, s9, s7
                  mulhu        zero, t2, gp
                  mulhu        t1, s3, a5
                  ori          s5, t3, -1228
                  sll          sp, s6, a5
                  subw         t0, s9, s11
                  add          s6, s8, t6
                  andi         zero, s4, -1881
                  sll          a0, s5, s1
                  mulw         t5, t0, s1
                  nop
                  mulhu        s4, t1, t2
                  or           t1, t2, s1
                  subw         t6, a4, t4
                  slti         a0, s10, 21
                  rem          s5, s6, s8
                  sraiw        t4, t6, 11
                  slt          s1, a7, s5
                  nop
                  slliw        a3, s8, 3
                  auipc        t1, 441082
                  sraiw        s2, t0, 27
                  or           s8, t5, s10
                  addiw        a1, s1, -1011
                  divw         gp, t2, a3
                  addiw        s11, a0, 971
                  subw         gp, s4, s2
                  srliw        s4, s6, 9
                  addi         s4, s0, 1335
                  div          a2, t5, s10
                  srlw         t5, s2, s3
                  xori         s11, s10, -196
                  mulw         s6, a2, s9
                  slliw        a7, zero, 9
                  sltiu        s9, t2, -1547
                  slt          ra, s0, s8
                  div          sp, a6, t4
                  sra          t5, zero, sp
                  mulhsu       a1, t2, ra
                  mulh         s9, zero, a1
                  remw         s3, s2, t1
                  mul          t4, a3, t4
                  subw         a5, t4, s7
                  and          s3, a7, s0
                  remuw        s4, a2, s9
                  andi         a5, s1, -933
                  slti         a7, s7, 819
                  ori          zero, ra, 303
                  slti         a0, s11, -1081
                  addw         s9, t2, t4
                  mulhsu       s6, s6, gp
                  slliw        t6, s8, 16
                  sllw         t4, s1, a0
                  srliw        s9, s2, 11
                  addi         s6, s9, -1056
                  nop
                  sltiu        a6, tp, 1060
                  slti         t2, a5, 817
                  slliw        s2, t0, 18
                  mulhsu       s8, s7, s3
                  and          t3, s9, s3
                  sltiu        t5, s1, 1798
                  div          a3, t5, ra
                  srliw        a6, s7, 24
                  srlw         t3, s0, t6
                  rem          tp, a7, gp
                  addi         t1, s4, -1726
                  or           a5, ra, t0
                  andi         t2, sp, -990
                  srliw        a2, zero, 19
                  addi         s3, t6, 69
                  divu         s2, t2, a1
                  remuw        s4, t4, sp
                  nop
                  remw         t4, t0, a3
                  mulh         gp, t5, s2
                  remu         s1, s6, ra
                  remuw        s11, s9, s6
                  addw         t4, s4, s8
                  sraiw        s7, a5, 13
                  sub          s7, a2, a2
                  add          tp, a7, zero
                  slt          a0, a6, a7
                  xori         s5, ra, -1240
                  add          s6, s1, s1
                  slt          t4, a1, gp
                  sll          gp, a6, t0
                  and          a3, a1, a0
                  sraw         a1, t5, a2
                  or           a2, zero, s3
                  sraiw        a2, a5, 15
                  divuw        s9, a2, a5
                  remuw        s2, s6, s8
                  mul          tp, s2, a0
                  divu         s9, s1, s6
                  add          s9, a4, a5
                  div          a3, t2, t2
                  remuw        a0, a3, s8
                  and          t2, s10, s10
                  sub          tp, t3, s7
                  or           ra, s5, a2
                  sraw         ra, s7, a2
                  or           t4, a2, s4
                  xori         s1, s0, -459
                  divu         s4, s0, s5
                  srl          a2, sp, a5
                  remuw        s7, ra, s2
                  add          s5, tp, s9
                  sll          a3, tp, s4
                  divuw        a2, sp, a2
                  srliw        ra, s0, 16
                  mulw         a2, s7, tp
                  divuw        zero, t0, t0
                  divuw        sp, s0, s6
                  or           a6, t5, a7
                  auipc        s7, 817561
                  sra          t1, a2, s4
                  nop
                  and          a5, s9, s4
                  srli         a2, s11, 63
                  remu         a5, a0, t1
                  sraw         a0, s8, t6
                  nop
                  divw         a2, t2, t1
                  slli         s4, a3, 49
                  sltu         zero, a3, s7
                  srliw        s11, s5, 4
                  rem          t4, s8, a3
                  add          t0, gp, t6
                  subw         a2, t2, ra
                  xor          a7, s9, zero
                  divuw        a2, t1, a5
                  sll          s11, a2, sp
                  srliw        t6, a4, 4
                  srliw        t6, gp, 31
                  mulhsu       s2, a1, a4
                  srlw         s4, zero, tp
                  or           s11, t1, a2
                  xori         gp, ra, -1091
                  remuw        gp, sp, a5
                  ori          s9, zero, 1263
                  slti         a7, t1, -1529
                  mulw         sp, a5, gp
                  srli         a0, zero, 18
                  sra          t6, t3, s5
                  remuw        s11, t1, s0
                  sra          t2, t6, t6
                  auipc        ra, 122715
                  mulhsu       a2, t0, s5
                  addw         ra, s2, t2
                  remuw        t2, a6, s6
                  srl          tp, a0, s0
                  divuw        a1, tp, t4
                  divu         s9, a1, s11
                  addiw        t1, s6, 953
                  srliw        a6, t1, 12
                  lui          s5, 50850
                  divw         t3, t6, a5
                  sltiu        s7, a1, -1333
                  sra          a6, tp, zero
                  sll          s6, s3, a2
                  sraiw        gp, a0, 11
                  auipc        s5, 78366
                  sllw         s7, s10, s0
                  sub          s5, t3, s4
                  srlw         t3, a2, zero
                  mulh         zero, zero, a7
                  mulhu        s7, t4, t1
                  xori         s3, t1, -328
                  xori         s11, t3, 1701
                  nop
                  mul          s4, a6, s1
                  mul          sp, s10, s11
                  addw         s7, s4, s10
                  sraiw        a3, tp, 0
                  divuw        a3, s5, a6
                  mulhsu       t3, s8, a0
                  ori          s6, t4, 1274
                  div          a5, s9, s1
                  subw         t5, a3, s8
                  andi         s1, s0, 486
                  ori          t6, a3, -262
                  divu         t1, s1, s2
                  sll          a0, s0, t1
                  srai         a0, ra, 58
                  or           a0, ra, s2
                  rem          sp, s8, gp
                  and          a5, s2, s4
                  and          s8, a4, t2
                  lui          s3, 902397
                  slli         a5, t0, 44
                  mulh         s4, t3, gp
                  sraw         t2, s8, zero
                  remuw        a0, t1, sp
                  addi         s8, s1, 1039
                  sltu         a2, a4, s4
                  auipc        s7, 323340
                  srlw         a1, a5, s3
                  slliw        s4, s2, 8
                  mul          a7, t0, zero
                  or           a3, t5, a2
                  divw         a2, a7, t0
                  add          t4, zero, tp
                  addi         s11, sp, -914
                  divw         s11, s5, a3
                  add          zero, s6, t0
                  remw         s7, t2, sp
                  remw         s2, a1, s10
                  remw         zero, ra, s11
                  div          a3, s6, gp
                  andi         a2, s3, -1397
                  sltu         t2, ra, a5
                  lui          s4, 1020985
                  or           a3, gp, a1
                  remuw        zero, a1, a5
                  rem          tp, s4, s3
                  srliw        a6, a5, 10
                  sraiw        t0, gp, 28
                  remw         a2, t4, a1
                  sraw         a0, s3, t2
                  add          t5, s2, s9
                  slt          zero, s8, sp
                  srlw         s11, t2, a1
                  sll          sp, a6, t1
                  xori         s8, sp, -1068
                  srliw        s7, s0, 10
                  andi         a5, t2, 176
                  sllw         ra, s7, t5
                  and          t2, a2, t5
                  mul          s5, s0, a3
                  xor          s7, a4, t2
                  add          s8, t4, s7
                  slli         t6, a2, 41
                  slti         t5, a6, -1492
                  and          ra, a2, gp
                  srl          s11, a7, t4
                  sraiw        s11, s4, 25
                  slti         s2, gp, 1667
                  divu         s1, t2, a7
                  mul          s11, t5, s3
                  slli         s8, s6, 34
                  divw         a6, ra, a5
                  addw         tp, s10, s1
                  remuw        t0, t4, t6
                  nop
                  addiw        sp, s2, -1068
                  divw         t6, a5, s2
                  addw         a2, ra, tp
                  sra          zero, s1, s7
                  slliw        ra, s11, 16
                  lui          s11, 521817
                  divw         s2, a3, s5
                  srliw        t2, t2, 26
                  mulw         s9, a0, gp
                  sraiw        s9, ra, 23
                  remw         s6, a1, s8
                  ori          t3, s11, 1995
                  addw         s3, t5, a6
                  addw         a3, sp, s4
                  div          a0, s8, a7
                  subw         s11, t5, s10
                  rem          a5, a5, a2
                  add          s9, t3, s11
                  srli         a1, s8, 21
                  mulhu        s6, t5, s1
                  slt          a0, a0, s5
                  addiw        s4, s11, -450
                  sllw         a0, s5, s0
                  and          t2, gp, t3
                  remw         s11, a7, s3
                  xor          t5, gp, zero
                  nop
                  srai         s6, s8, 23
                  srl          s3, t0, a2
                  ori          a7, a1, 288
                  slti         t0, a1, -450
                  lui          gp, 163248
                  divu         a6, a6, a2
                  or           s5, a0, a1
                  sub          a0, a2, t0
                  and          ra, s3, s10
                  srl          s5, a4, t3
                  srli         s7, t1, 15
                  srliw        a0, a2, 0
                  sltiu        a1, sp, 18
                  srl          t1, s7, t1
                  srai         s2, a5, 38
                  sltu         s1, t0, gp
                  ori          a0, t4, -36
                  ori          a2, gp, 1939
                  andi         s1, a0, -537
                  xor          s1, s7, a5
                  srai         t0, gp, 35
                  or           s9, t3, s11
                  rem          a2, t6, a6
                  andi         s8, zero, -564
                  mulhsu       s7, s7, s1
                  addiw        t2, a4, -1149
                  slti         s6, t4, -1678
                  srai         a6, a6, 5
                  mulw         s9, a7, s10
                  subw         s6, s0, a6
                  mulh         s7, s3, a7
                  sra          sp, t4, s1
                  remw         a0, gp, s11
                  srlw         s1, ra, t1
                  remu         a3, t2, t3
                  sll          a1, s5, a5
                  divw         s5, t3, a0
                  srl          a6, s5, s7
                  sraw         a0, t5, a3
                  and          s4, a1, t0
                  srlw         gp, a1, a5
                  sraiw        t3, a5, 23
                  slli         a0, t1, 1
                  sltu         t6, a7, a5
                  lui          a7, 705236
                  sub          a0, s11, s7
                  addiw        s6, s10, -1487
                  slti         s8, s9, -1613
                  divu         s6, t5, a5
                  slt          t3, a0, t6
                  xor          t1, s9, s0
                  remu         t1, a1, s3
                  mulhsu       t2, t4, a6
                  sll          a3, s1, a0
                  rem          zero, t1, t4
                  remw         t1, t0, gp
                  ori          sp, s7, -138
                  sltiu        a0, s7, 898
                  sltu         t4, a0, zero
                  and          ra, a0, s10
                  sraiw        t3, a4, 9
                  addi         zero, s1, 475
                  subw         t6, s1, sp
                  auipc        zero, 584724
                  srli         a5, tp, 35
                  mulhu        s2, s1, a3
                  mulhu        zero, a6, s10
                  and          t6, t3, a0
                  divuw        s3, gp, a5
                  divw         s4, t2, a5
                  remuw        s9, s5, a3
                  auipc        t0, 188616
                  addiw        t1, s4, 1087
                  sraw         s2, a3, a0
                  divuw        a5, sp, a1
                  slt          ra, t1, a7
                  xor          t1, t2, a6
                  add          gp, s10, t0
                  addiw        t5, tp, 1669
                  nop
                  srl          a6, t4, t1
                  sll          t0, s4, s6
                  mulh         t1, s11, ra
                  nop
                  srlw         s9, t3, a3
                  mul          t4, a4, sp
                  remw         s6, s2, t2
                  slliw        s6, a0, 3
                  sllw         a7, s2, a7
                  srl          a6, gp, sp
                  and          s7, t6, s5
                  ori          a6, a5, 1229
                  divuw        a3, s6, a6
                  div          a0, a7, s7
                  sltiu        a7, s11, 862
                  addiw        a0, s2, -1628
                  mulw         a0, s6, t4
                  remu         a6, s0, s2
                  or           t5, s7, t0
                  rem          s11, a4, s6
                  sll          t3, s3, t2
                  xori         a0, t2, -26
                  addi         a0, s6, 1816
                  srlw         a3, s0, a5
                  remw         s1, t4, s10
                  and          s5, s1, s2
                  or           t1, a1, a6
                  and          t2, t1, zero
                  sub          a0, t2, s1
                  and          tp, sp, a6
                  sraw         s9, s6, s6
                  divu         t1, tp, a3
                  andi         t5, sp, 1745
                  sllw         a0, t5, sp
                  srliw        tp, tp, 17
                  addi         t2, ra, -335
                  srliw        s11, t6, 15
                  rem          s9, s2, a7
                  add          s9, s11, a3
                  mulh         t1, t1, s5
                  sraiw        a7, t1, 0
                  nop
                  slli         t5, a7, 23
                  subw         t5, s2, zero
                  and          zero, a5, s10
                  mulhsu       t4, a5, s1
                  andi         gp, s8, 188
                  sllw         t4, a4, s8
                  sra          t2, s9, gp
                  mulh         a0, s5, s10
                  srai         t4, s3, 0
                  mulhu        s9, s10, s3
                  lui          s11, 854043
                  xori         s1, a2, 1283
                  mul          sp, s10, a1
                  and          ra, t5, ra
                  srlw         zero, s0, s11
                  mul          s6, s3, s6
                  srli         s4, t2, 5
                  nop
                  mulw         gp, s4, s7
                  or           s11, s10, ra
                  lui          a3, 797043
                  div          a1, a5, s6
                  sub          a0, s0, t3
                  addiw        t5, s0, 312
                  rem          t5, a0, zero
                  andi         a3, a2, -102
                  remu         s4, t4, s8
                  divuw        a5, s0, t0
                  sraiw        t2, a1, 10
                  auipc        s5, 819879
                  srai         a1, ra, 45
                  subw         a0, t4, sp
                  srl          t1, t1, t0
                  divu         s2, s2, s8
                  slli         s1, gp, 39
                  sraw         s9, s3, t4
                  xor          a2, gp, s6
                  xor          s5, s9, t2
                  remw         t6, s1, s7
                  auipc        gp, 949767
                  sraiw        s8, a1, 1
                  remu         t1, a4, s5
                  sll          s5, s11, t1
                  sraw         a0, a3, s2
                  mulh         t6, t6, a3
                  srliw        s8, s3, 12
                  sub          s4, s5, gp
                  and          tp, t5, t6
                  andi         t1, t2, 711
                  sltu         a7, s6, tp
                  add          zero, tp, a3
                  sra          t5, gp, a1
                  addi         s7, ra, -682
                  remw         a2, a0, ra
                  addiw        s1, s3, -1260
                  srl          t6, t4, s0
                  sltu         a5, ra, s5
                  divuw        zero, tp, a4
                  add          s9, t1, t6
                  nop
                  slli         s7, t6, 51
                  srliw        a6, a6, 27
                  or           t4, tp, t2
                  or           s5, a4, t1
                  sub          s2, t1, s0
                  xor          s4, s8, t1
                  srai         a2, s2, 31
                  srli         t5, a5, 32
                  sraiw        t3, t4, 13
                  addiw        a3, a6, -981
                  remu         ra, t2, s6
                  divu         t0, s4, t2
                  mulhsu       t0, a2, a4
                  sltu         a2, t2, s7
                  slti         a0, a7, 1767
                  sub          a7, a2, s3
                  slli         zero, s5, 15
                  mulhsu       t0, tp, t0
                  ori          t3, a4, -1229
                  srl          t6, s6, t5
                  mulhsu       t3, a2, s5
                  slli         a2, gp, 23
                  mulhsu       t0, a1, s5
                  mulhu        tp, s0, a1
                  divw         a6, s0, a2
                  nop
                  srl          gp, a6, a4
                  sraiw        s2, t3, 13
                  ori          t1, sp, -1184
                  slti         t0, s0, -1988
                  slti         a2, s10, 764
                  and          a2, s11, t4
                  subw         s4, t4, s4
                  srli         t0, s2, 20
                  divu         a1, ra, s4
                  slliw        s9, s1, 19
                  mulhu        a5, a0, tp
                  srlw         s6, a2, s3
                  sraiw        ra, a6, 3
                  ori          t1, a7, -1287
                  divuw        s5, t1, a2
                  srli         s11, a4, 43
                  divu         s11, a2, t6
                  ori          t5, a1, -642
                  or           t6, ra, t2
                  addi         ra, a7, -239
                  remuw        s2, a4, t2
                  xori         zero, t0, -1155
                  sltiu        a1, t0, 1197
                  or           a3, a6, t4
                  srl          s2, a5, a0
                  remu         s3, t3, sp
                  divu         a3, ra, s9
                  remw         s9, s10, a6
                  xor          a6, t6, sp
                  ori          t4, a1, -1294
                  srl          s11, a7, s2
                  srlw         s11, s9, s3
                  srai         ra, gp, 3
                  sltu         sp, s4, t3
                  sraw         t2, t2, t4
                  sra          gp, t0, t1
                  sraw         s8, a0, t0
                  andi         s9, t1, -891
                  mulw         ra, tp, s11
                  mulhu        t5, s6, s4
                  addw         t2, s10, t2
                  addw         sp, a1, zero
                  mulhsu       a7, s6, t0
                  srai         s4, s9, 51
                  rem          s9, s11, a2
                  remuw        a3, t6, zero
                  addw         t5, s11, a6
                  sra          s1, t0, t3
                  mulh         s2, a7, t2
                  srli         a7, tp, 28
                  nop
                  mulhsu       s4, a1, s8
                  slt          a1, a5, a1
                  remu         s5, t4, s6
                  srlw         a2, s2, s11
                  srai         s11, s1, 49
                  rem          s4, a1, t5
                  rem          a3, a0, zero
                  slli         t5, s10, 43
                  srai         t1, t4, 28
                  mulhu        s11, gp, a4
                  xor          t0, zero, a6
                  auipc        t0, 946866
                  xori         gp, a0, 1239
                  mulhsu       a2, a5, a3
                  addw         s5, t2, t4
                  rem          s6, t5, s4
                  sra          s6, a5, t6
                  slti         a2, s7, -1976
                  sraw         s11, t0, ra
                  andi         t5, s8, 1250
                  xori         gp, s8, -259
                  slt          tp, sp, a0
                  mulhsu       t3, t4, a0
                  xori         t6, s10, -346
                  remu         t1, a7, zero
                  nop
                  remuw        s7, s10, s3
                  divw         t4, s2, s11
                  mulh         s7, t4, s1
                  remu         t4, zero, s0
                  lui          sp, 125799
                  slt          t0, t1, t5
                  addw         s4, t3, a1
                  addw         a2, ra, sp
                  nop
                  slli         a6, a6, 41
                  sraw         a5, gp, a3
                  addi         s7, t0, -1781
                  srai         t6, a5, 30
                  sub          t2, sp, t4
                  srl          s2, a7, a1
                  addi         t3, a5, 1797
                  mulh         t6, tp, a0
                  divu         a2, s1, a0
                  andi         t0, s1, -74
                  mul          s2, t2, a2
                  sltiu        s6, s1, -444
                  ori          a6, zero, 401
                  slliw        s1, a7, 3
                  sltiu        s1, a5, 1979
                  ori          s2, s4, -632
                  sltiu        t6, a1, -1899
                  addw         s5, t6, t6
                  mulhu        s4, a3, s5
                  sltu         t2, s9, a0
                  add          t0, s1, a3
                  sltiu        tp, s1, -19
                  sltu         t1, a5, s4
                  or           t5, a2, a7
                  slliw        t0, a3, 20
                  div          s2, s2, a2
                  mulhsu       s7, ra, t1
                  slt          t6, a4, s10
                  add          s3, t4, t3
                  addw         t6, s5, s8
                  mulw         t6, t1, a1
                  auipc        t3, 818005
                  remu         a0, t0, s4
                  mul          a2, t6, s6
                  addi         t4, a2, -1921
                  xori         tp, s0, -276
                  mulh         sp, a4, tp
                  mulw         a2, s3, s1
                  mulh         sp, ra, a6
                  auipc        a2, 747513
                  remuw        a0, t2, t0
                  sraiw        s7, s6, 30
                  mul          s1, zero, a5
                  addi         zero, s8, 401
                  sltu         s3, t1, a7
                  addw         s6, s4, s2
                  sltiu        s2, t1, -440
                  divu         tp, s1, t2
                  remu         a0, s6, t0
                  ori          ra, t3, 596
                  sub          s7, t0, s1
                  divuw        s8, s5, zero
                  mulhu        s3, t4, s10
                  sll          s8, gp, a1
                  divw         s1, s5, t6
                  srlw         s2, t3, a7
                  ori          a0, a4, 946
                  slli         t0, t1, 53
                  sltiu        t2, t2, -1432
                  divw         t2, s1, s11
                  lui          t0, 122665
                  div          t3, s4, zero
                  addw         a5, s10, a0
                  or           s2, s5, t5
                  mulh         t2, zero, s9
                  slli         s7, a0, 54
                  auipc        a0, 141429
                  sllw         sp, t4, s0
                  div          s2, s8, zero
                  sraiw        t5, zero, 15
                  and          a0, s0, a2
                  srlw         gp, a4, s5
                  sub          s9, a3, a6
                  or           a0, t3, ra
                  slliw        t0, s6, 11
                  xor          gp, ra, t2
                  sll          sp, t0, s9
                  xor          tp, zero, s8
                  srl          ra, a7, s1
                  srli         t2, a6, 38
                  remu         s6, s1, s4
                  srli         a0, a1, 50
                  div          s3, s10, s9
                  mulhu        t0, t3, s7
                  and          s6, a7, a6
                  xor          tp, s0, a7
                  remw         t4, a7, s9
                  xori         a3, a3, -1106
                  xori         s2, s7, -1537
                  addiw        t4, s7, -965
                  slliw        a7, a2, 21
                  sra          a5, a5, a7
                  mulhsu       s2, t1, s0
                  add          t4, a5, a5
                  ori          a2, s4, 1211
                  slliw        sp, a6, 6
                  lui          s3, 643564
                  slliw        s2, s8, 0
                  addw         s11, a3, t1
                  divu         t5, s0, t6
                  auipc        sp, 536143
                  nop
                  xor          tp, s9, sp
                  slt          s4, s3, t1
                  xor          a1, a0, s3
                  and          s1, s10, t5
                  remw         s8, tp, s1
                  remw         s1, s5, a4
                  sltiu        t5, tp, 1878
                  addw         sp, a6, s3
                  srl          a0, ra, a3
                  add          a2, s4, s1
                  slti         s4, s9, 740
                  srl          t0, a0, t0
                  remu         s3, a1, tp
                  sub          a6, t1, gp
                  xori         t2, s5, 344
                  slti         ra, t6, 393
                  divu         sp, a7, a6
                  mulhsu       a1, a5, t6
                  sltiu        s6, tp, -165
                  mulhu        s2, s1, a2
                  divu         tp, a0, s3
                  div          s4, s4, s2
                  mul          s5, ra, sp
                  srai         s8, a6, 40
                  srai         sp, t2, 53
                  addiw        t3, s10, -1411
                  slti         t4, s11, 458
                  divu         s2, t5, t2
                  sltu         s4, s9, s9
                  remuw        t1, t2, s9
                  slti         t4, a4, 141
                  remu         s6, tp, sp
                  mulhu        a6, t2, t0
                  sllw         s8, a4, ra
                  srai         s7, a7, 27
                  mulhu        s8, s5, s11
                  auipc        sp, 590638
                  sraw         s2, s11, s5
                  add          tp, t1, a5
                  sll          t5, s0, s8
                  srlw         s8, s4, t3
                  sltu         t0, s6, a5
                  ori          s8, t4, -201
                  srlw         a5, gp, a6
                  slli         s4, t1, 7
                  ori          t5, s4, -1153
                  addiw        t1, s8, -1181
                  or           s5, t6, a1
                  remuw        a3, s3, t0
                  auipc        a0, 363960
                  andi         a0, s11, 696
                  auipc        t3, 951012
                  ori          t0, s0, -1569
                  srai         s11, t1, 7
                  remuw        t0, a3, s7
                  divw         s1, sp, s7
                  sraw         t6, s9, s0
                  rem          a7, s8, s2
                  add          t4, tp, s1
                  div          s9, ra, sp
                  slliw        t1, sp, 9
                  addi         ra, sp, -1581
                  and          s1, a1, s7
                  slt          s7, s5, s7
                  srli         a7, a3, 26
                  remuw        a3, s11, s3
                  divw         s1, s4, gp
                  and          s1, tp, s11
                  remw         t4, t2, sp
                  sraw         a0, a3, a5
                  srai         a6, ra, 26
                  or           a2, a5, a0
                  auipc        a2, 875191
                  slli         a2, s2, 44
                  rem          s5, s0, sp
                  sub          tp, tp, s7
                  srl          s7, s6, s9
                  sll          s11, a6, a4
                  addiw        s3, s7, 525
                  sll          sp, a1, gp
                  divuw        t5, s10, ra
                  sraiw        t2, s11, 31
                  mulw         gp, t4, s1
                  sraw         t2, sp, tp
                  sltu         s8, s5, t4
                  addi         t3, tp, -1536
                  remuw        s7, ra, t2
                  rem          t0, t1, a3
                  addw         a0, a3, s0
                  sraiw        t0, a2, 22
                  subw         ra, t4, t5
                  sltu         a3, s2, t3
                  slliw        a2, a6, 18
                  xor          a6, s5, ra
                  sraiw        s11, tp, 22
                  remw         s4, tp, t0
                  addw         ra, t2, a3
                  srl          t1, s3, tp
                  ori          a7, s10, -1925
                  rem          a5, a1, tp
                  addiw        s9, s11, -288
                  rem          a3, t2, a5
                  remw         a3, a3, sp
                  mulhsu       s5, zero, a0
                  divw         t3, a0, t3
                  or           a3, tp, t5
                  remuw        t2, s7, ra
                  slt          s6, tp, gp
                  and          s4, a6, a3
                  srlw         s8, ra, a6
                  srliw        a1, a4, 16
                  xor          a7, gp, s1
                  sltiu        t6, t3, 717
                  sra          t3, s0, s2
                  srliw        t0, t0, 8
                  remu         ra, t4, s5
                  nop
                  srli         t3, s9, 54
                  xori         t0, s0, 149
                  divw         s11, a7, a2
                  sub          s11, s9, ra
                  divw         s11, a4, ra
                  div          s2, t4, s6
                  rem          sp, a5, s3
                  remw         a7, sp, s0
                  mul          t2, a3, s7
                  srlw         a5, s7, t5
                  divw         t1, s4, t2
                  slt          s3, t0, zero
                  sra          t5, tp, s4
                  remu         t2, a3, sp
                  slt          s6, a2, s4
                  divuw        t0, tp, s0
                  auipc        a0, 452440
                  addw         s3, s11, s0
                  divw         tp, a2, s1
                  slliw        s5, t6, 19
                  mulw         s8, s3, a2
                  and          s3, s11, t5
                  srl          s11, a7, a7
                  srlw         s2, a7, s1
                  sltu         s9, tp, s5
                  sltiu        sp, a6, -1360
                  lui          s8, 469129
                  srliw        s2, t1, 22
                  sltu         s7, tp, s7
                  srli         s7, t3, 57
                  remu         s3, a4, a7
                  remw         t4, s3, t3
                  srlw         s7, s0, t6
                  srliw        a6, s8, 10
                  slt          t4, a1, s1
                  remu         gp, t5, sp
                  addi         a0, s9, -657
                  sra          a2, a5, a3
                  addi         sp, s9, 191
                  sraw         s6, t0, s1
                  xor          s1, sp, zero
                  ori          s11, a7, 648
                  divw         a2, s3, s0
                  sll          t3, t6, a5
                  nop
                  remu         t4, t0, a7
                  addw         a0, a1, a3
                  slt          s5, s8, sp
                  xor          a7, t3, s4
                  addw         t2, a5, t0
                  nop
                  lui          t5, 195257
                  divuw        s1, a5, a3
                  srli         s3, a4, 51
                  divu         s1, t6, t0
                  andi         s7, zero, 1765
                  xor          t6, t5, t5
                  addi         s9, t4, -1248
                  sub          t6, a1, s8
                  sltu         a0, tp, s2
                  remuw        t3, a4, t4
                  mulh         a0, s0, t2
                  divuw        t1, s6, a2
                  addw         a5, gp, s11
                  sra          a3, a7, zero
                  srl          t5, t5, s4
                  sra          a6, s11, s3
                  add          s8, s7, s0
                  lui          s6, 475381
                  sraw         t1, tp, sp
                  sll          a0, t4, tp
                  srliw        ra, t5, 4
                  xori         t2, a4, -229
                  sra          t0, t6, s9
                  add          s3, t5, s8
                  mulhu        s6, s4, t4
                  mulw         s3, ra, t6
                  sll          s2, t6, t6
                  mulw         a0, a5, a3
                  div          s11, s10, s4
                  xori         t1, s4, 1077
                  srl          s1, a5, a4
                  sraw         t4, a7, t2
                  slli         tp, a7, 56
                  sltiu        t0, s11, 70
                  slliw        s3, gp, 28
                  rem          s1, s0, s5
                  sll          s6, zero, t4
                  srli         tp, t6, 59
                  sltu         s8, s8, a0
                  slt          t5, a3, t0
                  sll          s9, t4, a7
                  sra          s2, zero, t3
                  sraw         s3, a3, s8
                  add          s2, s9, s11
                  subw         a5, sp, a4
                  slliw        a6, a3, 0
                  remw         gp, t5, s2
                  slt          a6, ra, t4
                  srliw        a1, a1, 13
                  slti         tp, t1, -406
                  andi         s9, t5, 1883
                  srliw        tp, s0, 20
                  divu         s9, s11, s6
                  divu         t4, a7, t4
                  or           a7, t5, t3
                  add          s9, s6, s1
                  remw         sp, t1, s9
                  addi         s9, t5, -2007
                  sll          s1, a1, a3
                  nop
                  nop
                  sltiu        t4, a1, -295
                  srl          t1, tp, s5
                  sltu         a7, s1, s4
                  slti         a5, a1, 704
                  sltu         tp, a2, s8
                  nop
                  sll          t5, t5, tp
                  srlw         s11, t6, a5
                  mulhu        s6, t2, a7
                  srai         s3, t4, 26
                  xori         a6, zero, 524
                  srliw        a3, sp, 2
                  srliw        t2, t0, 30
                  srai         s9, a1, 31
                  addi         t1, a1, -1478
                  auipc        t3, 238352
                  srai         t5, a3, 53
                  slti         a0, t2, -1720
                  addw         zero, s9, t6
                  sra          a5, s1, a3
                  srliw        gp, s6, 3
                  xor          s11, t0, gp
                  divw         t0, t1, a7
                  srlw         s11, s10, a1
                  sraiw        t3, s4, 23
                  srl          a6, t3, s2
                  slt          a1, s4, t1
                  srl          a7, t6, a2
                  srlw         s4, a3, ra
                  sraiw        s9, t6, 7
                  sll          t1, s2, tp
                  slli         tp, t6, 40
                  mul          zero, a7, s2
                  srli         tp, s1, 0
                  subw         s11, t4, tp
                  srli         t6, s6, 33
                  divuw        zero, s1, t2
                  sllw         s9, t3, s3
                  remw         s5, a5, s6
                  sub          a5, t2, s1
                  and          zero, a2, s4
                  srai         s3, tp, 30
                  sub          a1, s3, s5
                  sll          s8, t4, s4
                  remw         t1, t2, s4
                  srai         s7, a1, 43
                  addi         t3, t0, 1587
                  slliw        gp, t1, 24
                  subw         s3, a0, a2
                  xori         a7, a4, -474
                  sltu         s5, a2, a0
                  ori          zero, tp, 274
                  mulhsu       t0, s0, s11
                  divu         s7, a1, t5
                  sltu         zero, s5, t1
                  sltu         s8, s10, a4
                  rem          t6, s6, s0
                  addi         a0, s11, 1142
                  mulhu        ra, sp, t2
                  sub          s6, sp, a0
                  and          ra, s10, s1
                  xori         t5, a2, -1974
                  remuw        a0, ra, t2
                  srai         s11, gp, 35
                  mulhsu       a7, t2, t4
                  slli         zero, sp, 45
                  srl          a2, ra, s3
                  srai         s8, s5, 54
                  sub          s7, a1, t3
                  srl          a6, a2, zero
                  mulhsu       a6, a2, s1
                  addi         s4, a7, 1786
                  remuw        t0, s11, s3
                  slt          gp, t0, t3
                  srliw        a0, t0, 14
                  mulw         s5, s2, t6
                  mulhsu       s6, s8, t4
                  srliw        s9, s10, 20
                  sraiw        t3, s0, 8
                  nop
                  mul          t5, s1, s6
                  sra          s2, sp, s2
                  addiw        tp, t0, 1131
                  nop
                  remuw        s3, sp, zero
                  lui          s9, 694485
                  mulhu        t5, s11, a7
                  sraw         a2, s7, s8
                  srliw        a0, s6, 14
                  mulhsu       ra, a2, s10
                  sltu         t3, gp, s10
                  srl          t6, s8, sp
                  and          s5, a4, s2
                  xori         s6, s11, -1120
                  mul          t0, sp, a2
                  remu         t3, s9, a2
                  remw         s5, s9, s1
                  srliw        a3, a6, 9
                  or           s4, s8, s3
                  srl          s1, zero, a3
                  srai         s3, s3, 56
                  xori         gp, a0, -1269
                  sllw         t5, s3, a1
                  addiw        zero, s11, 1770
                  srli         gp, ra, 23
                  sra          a6, s8, s9
                  mulhsu       a0, a2, a2
                  divw         gp, t3, s3
                  mul          t1, s7, s5
                  slt          s8, s10, zero
                  slti         t5, a6, 596
                  mulh         t1, a4, s2
                  mulh         a3, t5, s9
                  xori         t1, s9, 1912
                  sllw         a7, t2, sp
                  rem          s6, t1, s4
                  srlw         s1, zero, a2
                  mulw         t0, a4, a5
                  slti         t5, t6, 1166
                  addi         a1, zero, -729
                  auipc        sp, 45393
                  or           zero, gp, a0
                  mulh         sp, a6, t3
                  and          t5, t6, t5
                  andi         t3, s10, 1509
                  or           s2, s9, a5
                  mulhu        s6, a7, s0
                  ori          s8, sp, -445
                  xori         a7, a5, -2039
                  mulhsu       a0, t2, t4
                  add          a5, s6, gp
                  slti         t6, ra, 1261
                  srli         a7, t0, 35
                  srliw        a0, a2, 19
                  lui          s4, 630521
                  sltu         a2, s0, s3
                  xori         s2, t5, -1253
                  nop
                  sub          s11, a2, a0
                  srl          t5, a0, s8
                  auipc        t1, 951469
                  remw         a0, a2, s11
                  rem          t1, a6, a6
                  slli         s8, s3, 50
                  mulhsu       s4, t5, a2
                  mulhsu       a5, t6, t0
                  srliw        a5, a5, 11
                  remu         t6, sp, a6
                  slt          s3, a1, a0
                  sraw         t5, t4, s7
                  remuw        a0, a6, ra
                  auipc        s2, 368756
                  sltiu        s7, a4, 63
                  sraw         sp, t0, tp
                  remw         sp, gp, s0
                  mulhu        s5, s11, s4
                  sllw         s4, s4, t2
                  mul          t0, a5, zero
                  add          s6, tp, t1
                  nop
                  xori         a2, t4, 1575
                  or           s4, a1, a1
                  sra          sp, s2, tp
                  ori          a7, s4, -904
                  sraiw        s8, s1, 19
                  lui          t3, 863680
                  divuw        s8, a2, s4
                  add          t3, a0, t0
                  divw         a6, zero, s6
                  sltiu        s11, a1, 871
                  sltiu        a2, s2, 1256
                  sltu         s4, a7, s0
                  slti         s4, s6, -527
                  srlw         zero, gp, t4
                  addi         s8, t1, -549
                  srai         t1, s9, 35
                  sub          a3, a6, t4
                  xori         a6, s10, 1936
                  mulw         t2, s10, a2
                  sraw         s2, s3, s7
                  sraw         s7, t0, ra
                  slliw        s8, s8, 2
                  or           a0, a4, s2
                  sll          a7, s3, s4
                  or           s2, sp, s5
                  xor          t5, t6, s7
                  sub          s4, t6, a0
                  divw         zero, a1, t2
                  mulw         s7, s6, t4
                  add          t5, t1, a6
                  mulh         a3, s6, s11
                  sllw         s1, s8, s7
                  sltiu        a0, t2, -1558
                  srlw         s7, s6, s4
                  slliw        t6, a1, 27
                  rem          s6, a6, a2
                  and          s2, a3, a3
                  mul          gp, gp, tp
                  or           a1, s8, gp
                  or           t1, t2, tp
                  xor          s9, tp, a7
                  mulh         s6, s8, t1
                  slli         a3, t0, 58
                  lui          s11, 166712
                  srai         a5, s7, 37
                  sllw         t0, s7, t3
                  div          zero, gp, s4
                  slti         a0, s10, 851
                  srlw         sp, s0, a1
                  add          t2, a6, gp
                  or           a2, tp, a7
                  and          ra, s8, s9
                  slti         s7, s0, 780
                  addi         a0, s0, 353
                  sll          a7, t5, a0
                  lui          s6, 808020
                  divu         t4, s10, sp
                  sraw         a5, a6, t2
                  sll          zero, s5, a5
                  srl          s11, s5, s3
                  divu         s3, s0, t6
                  mul          tp, a3, s3
                  mul          s7, s0, a2
                  mulhsu       a0, a3, a0
                  addw         a2, s5, sp
                  addi         s4, s1, 1423
                  addw         sp, a5, s0
                  rem          a5, gp, s9
                  sltiu        a2, a5, 808
                  slti         a3, gp, -1596
                  sraiw        s8, t4, 6
                  sub          a0, ra, gp
                  mulw         s11, sp, s5
                  slt          t2, s9, s4
                  lui          s3, 102664
                  sll          tp, s0, t6
                  mulhu        a5, s2, zero
                  and          s4, s5, tp
                  div          t4, tp, t3
                  slliw        a0, a2, 15
                  mulh         t2, a6, a6
                  mulw         s6, s0, t6
                  xori         a1, t5, 1972
                  mul          tp, a7, s2
                  lui          t3, 694338
                  srli         gp, t4, 45
                  rem          t6, zero, s7
                  mulh         s4, t0, s4
                  srliw        t0, s3, 19
                  mulhu        a2, a6, tp
                  srliw        tp, s11, 11
                  addiw        t3, t6, 527
                  mulhu        zero, s9, s4
                  slti         s7, gp, 1700
                  sltiu        s11, t3, -1641
                  divw         s5, s2, ra
                  xor          a6, s4, a2
                  andi         s1, s7, 1285
                  remu         s11, a0, s1
                  remuw        t2, s2, ra
                  remuw        ra, s2, s6
                  nop
                  sub          t0, s5, t6
                  mulhsu       s7, t4, s4
                  remuw        t5, t5, tp
                  slli         t0, t1, 36
                  sub          a6, t3, a7
                  mulhu        t6, s2, t6
                  sltiu        a3, a1, -1331
                  sraiw        ra, s6, 14
                  or           a5, t5, a3
                  divw         tp, a7, zero
                  rem          s2, s0, t4
                  sltu         zero, t5, t5
                  mul          t0, a2, s6
                  sraw         s11, t3, a2
                  srliw        a6, a2, 1
                  remuw        a6, s3, a5
                  slliw        sp, t4, 15
                  xori         s7, a0, -1155
                  remuw        zero, a6, s9
                  slli         s9, s11, 0
                  slt          s8, a6, gp
                  mul          zero, t6, s4
                  slt          s4, s7, a6
                  and          s9, a2, t4
                  or           s2, s11, ra
                  mulhsu       s9, a3, a0
                  sllw         s7, s7, t6
                  sub          sp, a7, tp
                  remuw        tp, t0, s4
                  mulh         s11, s3, zero
                  and          t6, s1, a7
                  mulw         gp, s10, t0
                  xor          a6, t0, sp
                  rem          s2, gp, a6
                  remw         a2, a1, s1
                  mulh         ra, t6, sp
                  addiw        s9, a5, -375
                  remw         a7, s4, a0
                  srliw        s8, t4, 20
                  addw         s1, t5, a2
                  sraiw        a0, s3, 17
                  rem          tp, a3, s5
                  add          s5, t4, t4
                  ori          s6, a7, -576
                  srlw         s4, tp, a1
                  mul          a2, s5, s10
                  xor          s11, a7, s7
                  or           s6, s3, gp
                  add          zero, s1, s10
                  nop
                  andi         tp, t5, -1398
                  remuw        a5, s3, t4
                  div          t5, s11, t0
                  sll          s7, a7, t3
                  mulh         t5, t5, t5
                  srli         t1, t0, 40
                  srl          t1, s10, s9
                  sll          a1, zero, s11
                  srai         s1, s6, 29
                  div          t4, zero, t4
                  div          s2, a7, t3
                  andi         t1, t5, -1860
                  xor          a0, a6, s6
                  mulh         s9, s9, t3
                  divw         s5, a7, s8
                  and          s11, s10, a7
                  or           t6, tp, t1
                  divw         s11, sp, t1
                  mulw         a1, a4, s3
                  ori          s5, s7, 872
                  or           ra, a0, s10
                  xori         a2, zero, -243
                  sllw         s6, tp, s6
                  mul          s6, ra, t3
                  and          t0, a6, a4
                  auipc        ra, 503182
                  sll          a2, s11, a7
                  sub          a6, t5, s8
                  sra          t4, a1, s6
                  sub          s1, s6, s8
                  sllw         t1, t4, s9
                  srliw        s4, a5, 12
                  sltiu        t5, t2, 334
                  ori          sp, t0, 710
                  xor          t4, s7, s8
                  addw         t2, s10, s9
                  nop
                  remuw        a7, a6, s4
                  addiw        s6, s7, 1395
                  xor          a2, t4, s6
                  addw         a2, a6, s5
                  remw         s6, gp, s6
                  xori         s8, s0, 1585
                  sub          s5, t3, t2
                  addi         t2, t4, 68
                  slli         gp, gp, 10
                  add          t2, a5, t5
                  mulhsu       t6, t0, t1
                  lui          s9, 184546
                  addi         tp, zero, -1404
                  srliw        s5, s7, 3
                  sraiw        s11, ra, 16
                  subw         t6, a2, a5
                  sraw         gp, a0, a7
                  xori         a5, t6, 1175
                  sltu         gp, a0, t3
                  mulhu        s7, a2, zero
                  remuw        s4, t6, s4
                  sra          a2, t3, s9
                  sraw         s11, a4, a2
                  srlw         s4, t2, a6
                  srai         s5, s5, 13
                  mulh         s1, s6, zero
                  addiw        s6, a7, -1152
                  sraiw        ra, a3, 12
                  sll          gp, s9, t4
                  xori         a2, zero, -1382
                  nop
                  srlw         zero, t6, s2
                  and          s5, t4, a2
                  xor          ra, s6, a6
                  mul          t2, a4, s10
                  sltiu        a2, t2, 1067
                  sraw         zero, a6, s9
                  mulw         s2, s1, s6
                  sllw         a7, s5, a2
                  mulw         zero, s11, a3
                  remu         s3, zero, a6
                  srlw         a3, t0, t4
                  sll          a1, s7, s8
                  addiw        s2, zero, 1804
                  addiw        s1, t4, 1547
                  mulhu        t6, s0, a3
                  sll          t5, t2, a7
                  div          tp, s8, t5
                  andi         s11, a0, 1504
                  or           s11, a6, a3
                  auipc        s1, 328418
                  mulw         t0, s7, t5
                  srli         t1, a3, 9
                  sltiu        ra, s0, -125
                  remw         a2, s11, a1
                  sltiu        s11, s3, 1179
                  sll          s8, t0, ra
                  auipc        a7, 522497
                  divu         s11, sp, t5
                  mulhu        zero, a0, s4
                  remw         tp, a5, a3
                  srli         s6, s2, 62
                  srl          a2, a2, t1
                  mul          a1, s10, t0
                  add          t3, a5, a7
                  addw         tp, zero, gp
                  ori          s8, s8, -1596
                  div          a6, s0, a0
                  remu         s7, a0, sp
                  mulhsu       a1, a5, sp
                  slt          s3, t5, t0
                  sub          tp, s0, gp
                  remu         t4, t5, s8
                  srliw        s7, gp, 27
                  sub          s11, s6, zero
                  divw         tp, a2, gp
                  add          s4, s1, s10
                  nop
                  or           sp, sp, a4
                  ori          a0, s4, 1167
                  xori         s7, gp, 1074
                  div          t2, s7, s2
                  xori         t4, s7, -1742
                  slli         t1, ra, 45
                  sub          a5, s4, s7
                  nop
                  xori         t2, s7, 317
                  mulh         t1, a1, a6
                  remuw        tp, s1, s3
                  addw         s6, s2, t3
                  xor          s9, sp, a1
                  mulh         s11, a5, s3
                  sra          s11, s11, a1
                  slliw        a3, zero, 20
                  slli         zero, gp, 3
                  add          a5, a5, s0
                  mulhsu       a5, t4, a0
                  xori         s7, t4, -471
                  sraw         s7, t1, ra
                  remu         s1, a0, s6
                  or           gp, a5, a1
                  sraiw        sp, gp, 15
                  xor          a1, s6, s4
                  and          s5, a6, t5
                  divw         a5, a2, t3
                  remu         sp, t4, a1
                  addiw        s11, s5, 893
                  lui          t2, 135547
                  addi         a6, gp, -1632
                  remw         t3, t6, s2
                  slti         s11, a3, -732
                  auipc        s5, 626239
                  srli         a2, s11, 37
                  slti         t0, a6, 1113
                  srai         a6, a4, 25
                  remw         a1, a3, s7
                  mulw         t3, s4, s8
                  ori          zero, t4, -1299
                  addi         a0, a7, -1910
                  mulhu        a3, s11, s11
                  addi         s2, s2, 57
                  srlw         tp, t4, t6
                  subw         s9, s9, s6
                  nop
                  mul          t4, t4, t6
                  divu         t2, s8, t0
                  auipc        t0, 796083
                  mul          t6, a5, s8
                  lui          s3, 367588
                  mulh         a0, s11, t6
                  addi         a6, s6, -935
                  mulhu        a7, s7, tp
                  sraw         zero, ra, gp
                  slli         t0, s2, 55
                  remu         s11, a3, s9
                  xor          t2, s11, s9
                  mulhu        gp, s11, s9
                  divu         s3, s6, t1
                  add          s1, s9, a1
                  divuw        a5, a4, s2
                  slli         a7, tp, 38
                  xor          s3, ra, zero
                  remuw        t6, a1, s8
                  divuw        a6, s6, t1
                  sraw         t1, a0, gp
                  addi         ra, a7, -537
                  srl          t1, ra, t1
                  andi         s9, tp, -1176
                  divw         t4, a0, a2
                  addw         tp, s4, a5
                  remu         zero, t5, a5
                  sraw         s9, s11, s2
                  divw         s9, t0, t4
                  slti         s6, s8, 1872
                  srai         t5, t1, 17
                  mul          t6, s4, s6
                  slt          sp, t5, s6
                  mulhu        t1, a3, t5
                  slliw        a7, a7, 30
                  slli         s8, t5, 21
                  mulhu        s5, t5, t1
                  auipc        s4, 24401
                  or           a5, a0, s8
                  andi         t2, a5, -270
                  andi         s1, a3, -2026
                  mul          a2, t6, t0
                  mulhu        s11, s5, s2
                  mulh         s5, s8, t1
                  sra          s8, ra, s1
                  addw         t1, s4, a3
                  sllw         s7, zero, t4
                  mul          s9, s3, t1
                  addi         t6, s4, -629
                  mulh         s8, a1, a3
                  remw         a0, s4, gp
                  mul          s7, gp, s6
                  xori         t4, t3, 1699
                  slliw        t0, s8, 30
                  srliw        zero, s6, 25
                  and          sp, a0, s8
                  sllw         s8, t0, ra
                  sllw         a0, gp, s0
                  auipc        s9, 161852
                  mulh         a0, a0, t4
                  add          a6, zero, s8
                  divu         s1, t6, s6
                  mulh         tp, tp, t3
                  sub          t5, t4, t4
                  rem          t2, t6, s5
                  slliw        gp, t4, 0
                  andi         a2, a0, -217
                  mulhu        s2, s10, s0
                  div          t3, s10, tp
                  sll          a3, ra, t2
                  sll          zero, t5, s10
                  mul          ra, a7, a6
                  rem          s8, a1, a4
                  sub          s5, t1, a2
                  sub          t0, s0, t5
                  add          a6, gp, t3
                  remw         s5, s7, a2
                  mulh         a2, a5, zero
                  srliw        a3, s3, 14
                  slli         a6, s1, 34
                  divu         gp, t6, a0
                  subw         a1, s1, s0
                  sub          t3, a3, t6
                  lui          t2, 667761
                  divu         s11, sp, a1
                  slti         t3, ra, 1184
                  xor          zero, s6, t3
                  mulw         s8, tp, s4
                  srai         t5, a6, 1
                  remu         a6, t1, ra
                  slti         s9, sp, -1203
                  sraiw        a2, t5, 3
                  mulhu        a3, t0, a7
                  mul          gp, s10, gp
                  auipc        s4, 777410
                  xori         zero, s5, -276
                  div          s4, s1, a6
                  mulhu        s8, s2, a7
                  remw         tp, tp, zero
                  sllw         a2, a2, t2
                  nop
                  rem          gp, t2, t1
                  nop
                  auipc        a2, 93053
                  nop
                  slliw        s8, s0, 5
                  divw         t2, s0, a7
                  addiw        s7, gp, 11
                  nop
                  rem          a5, s11, a2
                  subw         a3, a1, s9
                  divuw        ra, a5, zero
                  addi         s6, s6, 1529
                  sltiu        s8, a6, -1468
                  nop
                  ori          tp, gp, 408
                  sllw         s9, a4, a5
                  sraiw        a2, s8, 17
                  sltiu        zero, t0, -615
                  xor          t2, s4, t0
                  ori          t5, a5, 1880
                  div          a0, t1, s3
                  lui          s4, 470539
                  srliw        s5, a1, 10
                  srliw        s1, a1, 12
                  div          s9, s7, t2
                  sltiu        s4, s1, -1926
                  sltiu        zero, s4, -1384
                  mul          t6, s11, tp
                  sub          zero, t3, t3
                  slli         a5, t1, 58
                  div          s1, s4, a4
                  or           a7, a2, s4
                  divuw        a6, a4, sp
                  rem          a5, s9, a2
                  xori         a0, t0, -255
                  slliw        t0, s11, 5
                  sub          s2, tp, s9
                  sraiw        t6, s3, 27
                  sraiw        s5, s0, 31
                  ori          a5, a0, -1417
                  mulw         t6, t0, ra
                  nop
                  sraiw        sp, ra, 8
                  xor          t1, s5, s5
                  srai         a7, a5, 10
                  sub          a5, s2, t6
                  rem          s6, s9, t6
                  srl          gp, t1, s8
                  addiw        t0, ra, 3
                  divuw        s9, a0, s0
                  subw         s8, a4, t0
                  sltu         a1, a3, ra
                  srl          a6, s9, s11
                  or           a2, a4, t2
                  div          gp, s6, s10
                  remw         s3, a5, a5
                  sub          a1, s3, s6
                  add          t3, s6, zero
                  and          t1, s11, t3
                  mul          s4, zero, a7
                  divu         a6, zero, s10
                  sraw         s6, s7, t3
                  remuw        a6, s2, a1
                  nop
                  mul          s11, s4, a4
                  divw         t2, a3, tp
                  add          t3, s0, a6
                  mulw         a1, a6, a0
                  slli         a3, a6, 62
                  divu         s7, t1, tp
                  and          tp, a1, s8
                  div          t4, tp, zero
                  remuw        s4, s2, s6
                  sraw         s5, gp, s4
                  auipc        zero, 645991
                  remw         gp, t6, t0
                  sltu         a6, t5, s3
                  slt          t2, zero, s9
                  srl          s4, t1, s8
                  sllw         s3, s1, t6
                  addi         a6, t1, -307
                  sub          t5, s8, s11
                  subw         s6, a4, ra
                  sll          s5, a4, s3
                  addw         t2, s4, ra
                  remuw        t5, s8, tp
                  andi         gp, s4, -613
                  mulhu        tp, s4, t6
                  srliw        a1, a1, 8
                  nop
                  sub          s9, s3, sp
                  slli         a6, s5, 37
                  div          a1, t6, t0
                  or           a6, s7, s8
                  sll          s7, s2, s3
                  slli         a1, sp, 35
                  slt          a2, sp, a7
                  slti         a6, t5, 1769
                  xori         s1, t4, 763
                  nop
                  mulh         s7, t1, t3
                  remuw        s11, t5, s9
                  mulh         tp, zero, s8
                  addi         s7, t6, 1003
                  div          a2, a3, a5
                  addi         s9, sp, -1492
                  sub          t5, ra, a0
                  subw         tp, s11, a2
                  mulhsu       t1, tp, a3
                  slti         gp, s5, -1725
                  sltu         s8, s1, t3
                  srlw         sp, s0, s0
                  slt          a0, s1, t5
                  and          zero, t2, s0
                  mulhsu       zero, zero, tp
                  mulhsu       t1, a3, t1
                  sllw         s2, t0, s5
                  lui          sp, 188296
                  srlw         s11, sp, s3
                  sraw         tp, a6, zero
                  addiw        s6, ra, 1248
                  remw         t6, t3, t3
                  or           t6, s2, t2
                  slliw        a5, gp, 5
                  subw         s9, tp, s10
                  addi         a3, a2, -425
                  sltiu        s4, a6, -668
                  mulhsu       ra, s5, a7
                  divu         s9, zero, s8
                  sra          s11, a4, s4
                  srli         t1, s1, 28
                  srliw        t1, a5, 19
                  sub          t6, s1, s10
                  sraiw        a0, ra, 6
                  sltiu        t5, a4, -930
                  srlw         t5, a3, s0
                  mulh         s5, a0, s5
                  nop
                  mulhu        s3, t1, a3
                  mulhu        s5, zero, t3
                  slliw        s4, s7, 4
                  sltu         a6, s6, t1
                  addw         s8, s10, s4
                  mulhsu       tp, t1, tp
                  remw         s3, a7, a2
                  srlw         tp, a7, a2
                  addiw        s11, zero, 626
                  mulhsu       s7, a4, t1
                  remuw        s7, a3, t3
                  addiw        s4, s5, -1973
                  addi         a0, t0, -86
                  andi         t1, a1, 708
                  add          a7, s8, t4
                  divw         a1, t2, t2
                  divuw        a6, t2, s5
                  slliw        a1, t4, 15
                  remu         t0, s10, a4
                  srliw        tp, a2, 12
                  remu         a2, a0, a1
                  sllw         s2, t3, s2
                  mulhu        s7, s10, a5
                  slliw        a1, t1, 5
                  sub          t5, gp, a4
                  mulh         sp, s7, t6
                  xor          s6, s6, a5
                  sllw         s7, t6, s11
                  sltu         s8, s6, s8
                  nop
                  nop
                  srli         a2, s2, 56
                  mulhu        t6, t6, t4
                  remw         a0, a2, s2
                  mulhu        s8, a0, t3
                  sltu         s3, t3, a7
                  and          a2, a4, gp
                  sltiu        a7, sp, 233
                  remu         gp, s8, s8
                  addw         a7, s7, a6
                  mulw         a6, zero, s7
                  addi         a6, s1, -1629
                  divuw        a3, s0, s1
                  remw         s11, s5, s7
                  srliw        s9, t4, 10
                  slliw        sp, t3, 19
                  sra          ra, s5, a3
                  mulhu        s5, a7, t3
                  divw         gp, s7, t4
                  ori          a7, s1, 2011
                  srl          s1, s5, zero
                  sltu         s1, a4, t6
                  sllw         t0, s7, sp
                  addi         t4, s3, 1542
                  lui          t2, 410576
                  sraw         s8, a1, t1
                  sraw         s9, s3, s11
                  divuw        t1, ra, t6
                  add          t3, t1, a1
                  sub          a0, ra, ra
                  mulw         a1, t3, zero
                  slliw        s2, a5, 3
                  slt          ra, tp, s4
                  mulw         t5, s10, t2
                  slt          t2, t2, a7
                  remu         s3, a2, s0
                  ori          t3, a5, -1362
                  xori         s8, sp, -161
                  slti         zero, t6, -65
                  add          t5, a1, t6
                  sltu         t4, t0, a2
                  srli         a5, a6, 60
                  mulhsu       s3, t1, a5
                  sraiw        t2, s9, 15
                  slt          t1, s6, t0
                  auipc        s8, 493724
                  auipc        s11, 151962
                  mul          t0, s10, t1
                  mulw         gp, s9, gp
                  sraw         gp, a5, a3
                  div          t0, s8, ra
                  add          zero, s0, t5
                  add          a0, s6, s9
                  mulh         s6, s7, s0
                  srl          t0, s2, s11
                  remu         t1, s7, a1
                  div          s1, s10, zero
                  slt          a3, s9, t4
                  addi         a2, s7, -1205
                  slliw        tp, t3, 1
                  divw         t1, a7, s1
                  and          s4, ra, s10
                  add          t0, s7, sp
                  sltu         s11, tp, s2
                  sraw         tp, s10, gp
                  sraw         s8, s4, a2
                  srlw         s6, a6, a7
                  xor          t1, sp, t2
                  auipc        t1, 932820
                  lui          s8, 415317
                  addi         a3, t4, 493
                  srli         a6, t1, 28
                  lui          a6, 397627
                  srai         t0, s4, 3
                  xor          a6, t0, a6
                  sra          s2, a5, t4
                  andi         t6, s8, -1676
                  nop
                  xori         s4, sp, 777
                  sltiu        a6, gp, 184
                  slli         a2, s10, 34
                  xori         s3, s7, 450
                  subw         a3, t3, t6
                  add          t0, a5, s3
                  sllw         a0, s7, t3
                  sraiw        t1, s5, 16
                  mulhu        t6, t0, ra
                  mul          s6, t1, s4
                  andi         t1, t2, -333
                  sll          a5, sp, a5
                  rem          s1, s4, t0
                  sraw         t4, t3, s2
                  ori          s1, s0, 470
                  rem          s8, t5, ra
                  lui          s2, 1043031
                  rem          a3, tp, a7
                  sll          a2, s2, t5
                  slli         a6, a4, 41
                  addi         t5, t2, -1806
                  mulw         t0, s6, s9
                  srli         t0, t4, 47
                  mulh         sp, s4, s4
                  remu         t1, s0, a5
                  srli         t4, s3, 61
                  slti         zero, s2, 36
                  srli         t1, s4, 52
                  rem          s6, t6, s6
                  srliw        a7, a0, 6
                  andi         s6, t2, -119
                  srliw        t0, ra, 27
                  sra          a2, s3, s10
                  sraw         t6, a0, s7
                  srliw        s1, s8, 10
                  remw         s5, t4, t5
                  div          s7, a0, a4
                  and          s11, t4, s6
                  sub          t5, s7, tp
                  sltu         a3, tp, t4
                  divu         s11, s8, a7
                  sltiu        t0, t2, -1122
                  srli         tp, t3, 39
                  subw         a0, s5, s1
                  srl          sp, s9, a2
                  srliw        s7, t3, 3
                  mulhsu       tp, zero, t0
                  divw         s2, t1, s3
                  and          s9, a4, s5
                  addw         s1, t4, t6
                  xori         a5, gp, -992
                  mulw         s3, a3, a1
                  srai         sp, t6, 54
                  lui          a1, 137824
                  and          s2, s1, tp
                  sraw         a2, a3, a4
                  srl          sp, t2, gp
                  slli         sp, gp, 50
                  div          t2, s4, ra
                  div          a2, t3, a4
                  mulw         a5, sp, t4
                  sllw         t1, s2, ra
                  slti         t6, s11, 206
                  mulhsu       s11, zero, a3
                  sub          a1, a5, a1
                  slli         a1, t0, 48
                  divu         t4, gp, gp
                  addi         t3, ra, 708
                  remw         a6, s10, tp
                  mulh         t4, s6, s5
                  mulhsu       s6, t4, s9
                  mulw         ra, tp, s0
                  mulhu        t6, a7, s8
                  sltiu        tp, a0, 281
                  slli         a5, t6, 42
                  mulh         tp, s1, s0
                  addi         zero, t4, 51
                  srli         t4, a4, 53
                  nop
                  sltu         t3, a2, s10
                  sllw         t3, s10, t3
                  div          a7, s2, a2
                  nop
                  remu         s7, a2, a0
                  and          s4, a6, s7
                  xor          s1, t0, s10
                  divuw        a3, s8, gp
                  andi         s1, tp, 1831
                  add          t2, t0, s11
                  sub          t4, a2, s5
                  subw         s11, s5, ra
                  lui          s7, 111332
                  sraw         t0, t0, s7
                  sra          a1, s0, ra
                  sub          s4, s2, tp
                  remuw        s6, ra, s10
                  sltu         s6, t6, t3
                  sll          s3, s10, a6
                  sra          s5, gp, s10
                  sltiu        s1, s1, 1881
                  or           s11, a3, t6
                  or           a0, s9, t3
                  slti         t4, zero, -157
                  andi         s1, s6, -1346
                  mulhu        a5, s8, t6
                  and          a5, a7, s2
                  ori          s2, s3, 1653
                  ori          zero, s6, 1272
                  and          s2, sp, a5
                  or           s11, sp, t3
                  or           a0, a2, t2
                  slli         a2, t0, 4
                  addiw        t3, sp, -1554
                  sll          s3, tp, s8
                  div          sp, t3, a2
                  addi         s3, s9, -868
                  sra          t6, t5, s3
                  remw         a6, s4, ra
                  slt          ra, a1, s0
                  sraiw        a5, zero, 13
                  addw         t6, gp, s11
                  slliw        gp, tp, 16
                  mulhsu       t3, s5, a4
                  mulhsu       a7, s10, tp
                  srli         t6, s5, 6
                  divuw        s2, a3, t5
                  xor          a5, s2, t1
                  subw         a3, a2, a2
                  sltiu        s7, s3, 1630
                  mulhsu       t4, a3, s5
                  divw         s7, t0, a7
                  rem          a2, a5, t2
                  mulhsu       s3, t3, s7
                  mulhu        sp, t0, a2
                  srli         zero, a5, 40
                  remu         t1, zero, s9
                  addiw        a6, t3, 1212
                  and          t5, a1, s3
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 12
user_stack_start:
.rept 4999
.8byte 0x0
.endr
user_stack_end:
.8byte 0x0
.align 12
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x3f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

.align 12
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x14, x14, -4
                  sd  x8, (x14)
                  add x8, x14, zero
                  addi x8, x8, -256
                  sd  x1, 8(x8)
                  sd  x2, 16(x8)
                  sd  x3, 24(x8)
                  sd  x4, 32(x8)
                  sd  x5, 40(x8)
                  sd  x6, 48(x8)
                  sd  x7, 56(x8)
                  sd  x8, 64(x8)
                  sd  x9, 72(x8)
                  sd  x10, 80(x8)
                  sd  x11, 88(x8)
                  sd  x12, 96(x8)
                  sd  x13, 104(x8)
                  sd  x14, 112(x8)
                  sd  x15, 120(x8)
                  sd  x16, 128(x8)
                  sd  x17, 136(x8)
                  sd  x18, 144(x8)
                  sd  x19, 152(x8)
                  sd  x20, 160(x8)
                  sd  x21, 168(x8)
                  sd  x22, 176(x8)
                  sd  x23, 184(x8)
                  sd  x24, 192(x8)
                  sd  x25, 200(x8)
                  sd  x26, 208(x8)
                  sd  x27, 216(x8)
                  sd  x28, 224(x8)
                  sd  x29, 232(x8)
                  sd  x30, 240(x8)
                  sd  x31, 248(x8)
                  add x14, x8, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x15, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x15, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x15, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x15, x5, ecall_handler
                  li x5, 0x1
                  beq x15, x5, instr_fault_handler
                  li x5, 0x5
                  beq x15, x5, load_fault_handler
                  li x5, 0x7
                  beq x15, x5, store_fault_handler
                  li x5, 0xc
                  beq x15, x5, pt_fault_handler
                  li x5, 0xd
                  beq x15, x5, pt_fault_handler
                  li x5, 0xf
                  beq x15, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x15, _start
                  sd x0, 0(x15)
                  sd x1, 8(x15)
                  sd x2, 16(x15)
                  sd x3, 24(x15)
                  sd x4, 32(x15)
                  sd x5, 40(x15)
                  sd x6, 48(x15)
                  sd x7, 56(x15)
                  sd x8, 64(x15)
                  sd x9, 72(x15)
                  sd x10, 80(x15)
                  sd x11, 88(x15)
                  sd x12, 96(x15)
                  sd x13, 104(x15)
                  sd x14, 112(x15)
                  sd x15, 120(x15)
                  sd x16, 128(x15)
                  sd x17, 136(x15)
                  sd x18, 144(x15)
                  sd x19, 152(x15)
                  sd x20, 160(x15)
                  sd x21, 168(x15)
                  sd x22, 176(x15)
                  sd x23, 184(x15)
                  sd x24, 192(x15)
                  sd x25, 200(x15)
                  sd x26, 208(x15)
                  sd x27, 216(x15)
                  sd x28, 224(x15)
                  sd x29, 232(x15)
                  sd x30, 240(x15)
                  sd x31, 248(x15)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret

load_fault_handler:
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret

store_fault_handler:
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x8, x14, zero
                  ld  x1, 8(x8)
                  ld  x2, 16(x8)
                  ld  x3, 24(x8)
                  ld  x4, 32(x8)
                  ld  x5, 40(x8)
                  ld  x6, 48(x8)
                  ld  x7, 56(x8)
                  ld  x8, 64(x8)
                  ld  x9, 72(x8)
                  ld  x10, 80(x8)
                  ld  x11, 88(x8)
                  ld  x12, 96(x8)
                  ld  x13, 104(x8)
                  ld  x14, 112(x8)
                  ld  x15, 120(x8)
                  ld  x16, 128(x8)
                  ld  x17, 136(x8)
                  ld  x18, 144(x8)
                  ld  x19, 152(x8)
                  ld  x20, 160(x8)
                  ld  x21, 168(x8)
                  ld  x22, 176(x8)
                  ld  x23, 184(x8)
                  ld  x24, 192(x8)
                  ld  x25, 200(x8)
                  ld  x26, 208(x8)
                  ld  x27, 216(x8)
                  ld  x28, 224(x8)
                  ld  x29, 232(x8)
                  ld  x30, 240(x8)
                  ld  x31, 248(x8)
                  addi x8, x8, 256
                  add x14, x8, zero
                  ld  x8, (x14)
                  addi x14, x14, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 12
kernel_stack_start:
.rept 3999
.8byte 0x0
.endr
kernel_stack_end:
.8byte 0x0
