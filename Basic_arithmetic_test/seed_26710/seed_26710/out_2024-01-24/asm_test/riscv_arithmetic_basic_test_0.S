.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x8, 0x8000000000001105
                  csrw 0x301, x8
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x181800
                  csrw 0x300, x8 # MSTATUS
                  li x8, 0x0
                  csrw 0x304, x8 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf9c7eb13
                  li x2, 0x6ed673ed
                  li x3, 0x626db0c
                  li x4, 0x7
                  li x5, 0xf7f74caf
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xe
                  li x9, 0x8d113e2a
                  li x10, 0x80000000
                  li x11, 0xf29cb585
                  li x12, 0xfe7a59bc
                  li x13, 0x0
                  li x15, 0x0
                  li x16, 0xa
                  li x17, 0xae4c986c
                  li x18, 0xf1bf1703
                  li x19, 0x2
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xf1d43b43
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf1c133a3
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xf6757dac
                  li x30, 0x80000000
                  li x31, 0x0
                  la x14, user_stack_end
main:             addi         s6, s8, -161
                  div          a1, s6, t2
                  mulw         s8, a5, a4
                  srai         s0, s3, 6
                  sltu         t1, t3, tp
                  slli         a7, s4, 40
                  auipc        a1, 444929
                  slt          a3, s9, a6
                  add          a1, a6, a5
                  sll          sp, s0, t3
                  xori         s0, s6, 461
                  sltu         t6, a0, t3
                  sra          s9, a6, s2
                  divw         s3, s5, ra
                  sub          s11, s9, s8
                  divw         t5, t2, s4
                  add          sp, t2, t4
                  nop
                  mulhsu       tp, t2, ra
                  andi         a1, s10, -1635
                  slti         t5, s0, -837
                  subw         zero, s5, gp
                  add          t4, tp, s2
                  remu         a5, gp, a3
                  srli         s0, t1, 31
                  srliw        s0, t4, 11
                  addiw        t1, a6, 2011
                  srlw         gp, s8, a1
                  mulh         t5, s5, gp
                  mulhu        s1, s2, a3
                  srliw        a2, a4, 5
                  andi         s5, s5, 1045
                  addw         sp, a6, s6
                  remu         a0, s7, tp
                  slli         a1, t4, 23
                  ori          s11, a3, -1784
                  slti         tp, s0, -39
                  andi         ra, s7, -1041
                  mulhsu       a0, t3, a4
                  mulhsu       zero, zero, t5
                  srai         gp, a3, 14
                  and          s10, s3, t2
                  and          a7, s5, s4
                  add          t5, s4, a6
                  remw         sp, s10, a1
                  srlw         s10, s4, a0
                  remw         a0, s10, s2
                  sraiw        t1, t4, 22
                  addi         s0, a5, -973
                  divuw        a5, a6, s11
                  sltiu        s5, a6, 304
                  srlw         t4, s8, s0
                  divu         t4, s11, s3
                  xori         tp, t4, -1039
                  srlw         s0, s8, s4
                  sltiu        s2, s10, -1054
                  remuw        a7, t4, s6
                  srliw        s2, a5, 23
                  xori         s2, a2, 1753
                  remu         s4, a7, a4
                  srai         a6, a7, 53
                  mulw         s3, gp, sp
                  slt          a1, s7, s8
                  srliw        zero, s5, 1
                  subw         gp, a0, t6
                  divu         s10, t5, s0
                  auipc        s4, 273545
                  mulhsu       zero, s3, a7
                  addi         zero, s10, 382
                  sltu         a5, s5, s2
                  addiw        a3, s4, -1207
                  nop
                  srlw         s11, t4, s7
                  srl          s5, tp, zero
                  sraiw        s3, a1, 31
                  sltu         t1, a2, s11
                  mulw         t5, a7, a4
                  mulw         s3, s7, a0
                  srl          a5, a4, s1
                  mulh         t4, s8, ra
                  slti         s1, s7, -1716
                  sraw         a5, t6, s10
                  mulhsu       t6, a2, s1
                  auipc        ra, 393840
                  mulh         s11, a5, a0
                  div          s9, a2, s7
                  mulh         t1, t4, t1
                  divuw        s10, a1, s0
                  divw         a3, a0, a4
                  ori          t1, s1, 1916
                  addi         t5, t4, -406
                  divuw        a5, t2, a1
                  remuw        s1, ra, t0
                  auipc        s10, 203065
                  srai         a3, s4, 30
                  sraiw        t2, a1, 0
                  remu         a5, s6, sp
                  addw         a2, s1, t4
                  srliw        t0, tp, 4
                  sraw         t5, a5, s10
                  sra          t2, s1, s11
                  slti         s3, s0, -1736
                  mulh         s2, sp, gp
                  slliw        s3, t4, 11
                  xor          s0, zero, tp
                  sraw         s4, s10, tp
                  xori         a3, zero, -592
                  sra          t1, t5, t2
                  divuw        a1, a5, t4
                  addw         s10, t5, s3
                  slt          t5, s2, zero
                  divu         zero, s9, s5
                  sltiu        a1, s10, 718
                  divuw        a2, t3, t3
                  remw         t0, t3, t1
                  and          s0, s2, a6
                  addi         s6, ra, -310
                  slliw        s9, s9, 0
                  mul          a2, a2, s2
                  nop
                  remw         a5, s0, t3
                  srai         t2, s0, 14
                  remw         zero, a6, s11
                  mulw         a0, zero, s5
                  srliw        a0, a0, 16
                  mulw         s10, a4, s6
                  sll          a6, zero, gp
                  remuw        s8, s4, ra
                  srliw        t6, zero, 7
                  sraiw        a3, s9, 31
                  remuw        t6, a4, sp
                  sraiw        s10, a6, 1
                  lui          a1, 63501
                  slliw        ra, s10, 3
                  remw         t4, t3, s11
                  sraiw        s3, t6, 5
                  sll          t5, t2, s3
                  sraiw        s6, a2, 19
                  divuw        s8, zero, a0
                  addi         a2, s11, 1713
                  sll          t5, a5, s7
                  srliw        a7, s9, 28
                  ori          t1, s3, -1040
                  add          s0, s10, s9
                  slli         t1, s7, 51
                  slt          s11, s9, s5
                  remu         gp, zero, sp
                  subw         s8, t4, tp
                  slt          t2, s3, tp
                  and          s8, a2, s2
                  lui          s9, 185037
                  slt          a2, t2, t4
                  sltiu        tp, t4, -421
                  srli         a7, t3, 2
                  sltu         t4, t6, s2
                  and          tp, s5, a0
                  subw         a5, s10, a6
                  srli         t0, zero, 10
                  or           a7, t4, s2
                  slli         t6, s2, 22
                  lui          a1, 419381
                  addiw        t0, s4, 121
                  addi         s10, ra, 1854
                  sllw         s9, s8, a1
                  xori         a6, t6, -1101
                  srl          a5, s6, sp
                  sll          tp, gp, gp
                  sra          a6, s3, t5
                  div          tp, a3, a1
                  slti         s4, t0, 979
                  remuw        a6, tp, s6
                  rem          a2, t5, t4
                  addw         s9, s4, s1
                  sltiu        a3, s2, 169
                  lui          t5, 605681
                  lui          t0, 543966
                  divu         a0, s1, t4
                  slliw        s4, ra, 3
                  remw         a1, a1, s9
                  mulhu        s5, t0, s9
                  sll          a2, s5, tp
                  sltu         s0, a5, s0
                  ori          gp, ra, 1858
                  lui          s4, 257103
                  slti         a1, s3, 1213
                  slliw        s9, gp, 15
                  mulh         t0, s3, ra
                  mulhsu       s4, s10, s8
                  auipc        s9, 538629
                  mulw         s9, a4, a6
                  mulhsu       a2, t1, a3
                  srliw        s0, sp, 12
                  mulhu        a3, a0, s7
                  ori          t0, t0, 653
                  srai         zero, zero, 63
                  sll          zero, a2, s4
                  remuw        s1, a4, s11
                  sraiw        a3, s5, 4
                  srai         t5, t2, 34
                  divuw        s5, a4, s9
                  and          s6, s0, sp
                  remuw        s10, s11, tp
                  xori         s2, s8, -789
                  srl          s9, gp, sp
                  sltu         gp, s8, s5
                  divu         s8, t5, a3
                  sraw         s3, ra, gp
                  nop
                  addiw        t1, a3, -1473
                  ori          s9, a6, -920
                  andi         t5, a5, -1292
                  mulhu        t5, a1, ra
                  divu         s4, t4, s11
                  rem          a3, a5, s11
                  mulhsu       zero, gp, t6
                  auipc        s4, 930831
                  sraw         a5, a7, s4
                  srli         s1, t6, 7
                  srl          sp, t0, t2
                  mulhu        t5, s0, gp
                  sllw         a0, a6, a6
                  xori         t6, s10, 1275
                  srli         zero, a1, 23
                  addw         ra, gp, s1
                  slliw        t1, s2, 4
                  addiw        s4, a6, 998
                  sllw         s2, s10, a4
                  mul          a6, t0, s4
                  sra          s5, sp, s2
                  and          t2, sp, s5
                  divuw        a2, s8, a0
                  remu         s6, sp, a6
                  mul          t6, t3, s9
                  slli         s9, t1, 40
                  remuw        a3, a2, s6
                  mulw         sp, t0, a6
                  xori         s10, a1, -626
                  and          s1, s1, s3
                  addw         s2, gp, t5
                  addi         s10, s0, -1893
                  remu         s6, t5, s4
                  addi         t6, s6, -469
                  sub          s10, s6, s0
                  sra          t2, sp, a1
                  srliw        s3, s8, 0
                  ori          s1, s0, -1640
                  add          ra, s3, s1
                  sllw         s5, s1, s10
                  srli         sp, a0, 62
                  rem          gp, s11, s4
                  slti         t5, s8, 1091
                  remu         t6, t5, zero
                  mulh         a2, t0, a7
                  rem          t2, a6, t6
                  sltiu        sp, a3, 767
                  slt          s2, s1, zero
                  sub          a0, sp, s7
                  mulh         t5, a7, t4
                  rem          t5, t0, s4
                  addiw        a6, t6, 1748
                  sraiw        t0, s10, 5
                  rem          t0, a5, a4
                  divu         s6, s2, s3
                  andi         s3, gp, 1356
                  mulhsu       tp, t0, a0
                  remu         s3, gp, s7
                  srl          s8, a2, a1
                  sll          a3, a1, t3
                  rem          a2, a4, t0
                  divu         s2, a1, a2
                  sltiu        t5, t1, 1413
                  sub          a2, a6, a4
                  slti         s1, zero, -527
                  xori         a1, t2, -50
                  srli         zero, a2, 48
                  div          t2, s8, t3
                  sltiu        t2, t1, -1465
                  xor          a1, s6, a6
                  auipc        a2, 1039015
                  srliw        t4, gp, 31
                  div          t6, t3, s8
                  ori          s10, s5, 1287
                  xori         ra, s9, -1098
                  divuw        t6, s8, ra
                  mulhu        a6, s0, a2
                  nop
                  addw         t1, s9, s4
                  divw         s4, s9, tp
                  srliw        s4, a0, 31
                  remuw        s8, t1, s7
                  lui          t2, 76482
                  addi         zero, a7, 788
                  srl          s2, a7, a1
                  divw         s9, s0, gp
                  sra          ra, t6, a3
                  mulh         a2, t6, a3
                  subw         t2, s7, gp
                  mul          zero, a7, s8
                  divw         s0, s0, t6
                  slti         s5, a0, 1436
                  addi         a5, t3, -723
                  sub          a1, s0, s4
                  sllw         gp, s6, s6
                  sub          t5, tp, gp
                  addi         t5, s7, 1406
                  slli         s11, s9, 15
                  slt          s5, a4, s4
                  addiw        s10, a0, 1246
                  xori         s6, t5, 917
                  xor          s9, t6, s10
                  xori         s1, s9, 1149
                  remu         s10, a7, sp
                  addi         sp, s11, 445
                  srl          a2, sp, t4
                  divu         s0, s4, t0
                  srli         t6, s0, 33
                  add          s11, s2, s4
                  sraiw        a2, s11, 9
                  srl          a0, s6, a6
                  srliw        t0, zero, 11
                  lui          s0, 218495
                  slti         s9, gp, -1628
                  slli         s5, a0, 24
                  mulh         a7, s3, s5
                  sll          a6, t3, tp
                  mul          t6, s7, t5
                  mulhu        t5, s9, sp
                  remu         a7, t5, s0
                  auipc        s5, 494577
                  remuw        s9, t5, s4
                  xori         s5, s7, 1121
                  or           s10, t0, t0
                  remw         t2, s11, s2
                  xor          t0, ra, s11
                  srl          a1, t0, s3
                  andi         s8, ra, 1896
                  sllw         s0, a1, a7
                  divw         a3, t6, t5
                  addiw        ra, s1, 1417
                  divw         a2, s9, a1
                  remuw        sp, s1, s4
                  and          s6, s5, s10
                  slti         t5, s0, -1543
                  andi         s4, a1, -1856
                  sub          s10, s2, s4
                  srli         zero, a2, 20
                  slti         zero, s8, -491
                  nop
                  remw         t6, s1, a2
                  nop
                  slti         a7, t0, 100
                  divuw        t1, gp, s11
                  sllw         s5, a6, zero
                  auipc        a2, 127844
                  subw         ra, s10, ra
                  slliw        s9, s5, 15
                  mulh         zero, tp, s5
                  addi         a5, a1, -489
                  addi         a5, t6, -1541
                  mulhsu       t2, zero, s11
                  nop
                  xor          t0, t4, s2
                  srli         zero, s2, 61
                  sltu         t4, t3, a1
                  remuw        s8, s0, t4
                  or           s3, t6, s2
                  auipc        a1, 455652
                  ori          s10, t1, -92
                  subw         s1, zero, zero
                  or           s10, a1, a2
                  auipc        s9, 199994
                  sltiu        s6, a1, 398
                  xori         t1, a5, 626
                  srl          s6, a6, s4
                  rem          s5, a5, t0
                  divu         t4, s7, a5
                  or           gp, s1, t5
                  mul          s1, a2, a2
                  mulw         t6, a1, s6
                  addw         s9, s3, t6
                  divu         t0, t6, ra
                  sltiu        t6, a0, 388
                  sllw         gp, ra, s1
                  remw         a6, s2, a0
                  addi         s9, s4, -24
                  xori         sp, s10, 701
                  srli         s1, a0, 63
                  add          sp, t2, tp
                  mulhu        s1, ra, s3
                  remuw        s11, a1, a1
                  sll          s1, a4, a3
                  mulhsu       s6, s2, s8
                  divuw        a3, s4, tp
                  divu         t0, t1, t3
                  subw         s10, a2, t6
                  addw         a6, s6, s10
                  srli         t5, sp, 40
                  xor          s6, s4, s0
                  addw         s11, a7, a4
                  srli         t5, a1, 16
                  slt          t0, s11, s5
                  andi         t6, t1, 659
                  srliw        t1, a0, 3
                  addi         gp, a7, 328
                  srl          s6, t5, a0
                  divu         a2, s7, tp
                  slliw        a6, s7, 23
                  auipc        s3, 959058
                  addi         s1, s5, -811
                  srlw         s2, s11, a6
                  srliw        a5, s1, 15
                  mulh         s0, t4, gp
                  divw         s5, a7, a5
                  sraiw        a3, s8, 21
                  srlw         a7, s9, s1
                  div          s11, s5, a7
                  xori         s0, sp, 1866
                  slli         s3, t3, 48
                  divuw        s9, a1, a6
                  xor          s3, a7, s11
                  mulw         s2, t4, t6
                  andi         t5, t3, -62
                  xori         t1, s3, 668
                  srli         a2, a3, 7
                  slt          s11, s0, gp
                  remw         gp, t4, a7
                  srlw         s0, s5, t5
                  sltiu        t4, t3, -1724
                  slti         s10, s0, -190
                  remw         a6, sp, t1
                  mul          t6, s8, a2
                  andi         gp, s11, -159
                  mulw         a2, a6, a6
                  sraw         a7, a7, a7
                  sra          t5, ra, a3
                  sraiw        s8, zero, 22
                  xor          a6, t6, s3
                  lui          t4, 534939
                  or           s6, tp, s1
                  sltiu        s0, t3, -1657
                  divu         s3, a1, sp
                  andi         s4, tp, 1813
                  sra          a3, a1, s6
                  lui          s2, 589952
                  sllw         s3, a4, t1
                  srli         t4, t6, 54
                  add          t2, s9, a5
                  srai         s1, s5, 6
                  mulhu        a5, s2, a3
                  sub          a1, a1, t3
                  slt          a6, s0, s1
                  lui          s3, 515742
                  srlw         s0, gp, sp
                  srai         s11, s8, 2
                  sraiw        tp, t4, 12
                  ori          s9, s8, -146
                  divu         s10, sp, a7
                  nop
                  addw         a0, s8, a0
                  xori         ra, t5, -588
                  srl          s2, s11, t2
                  addiw        a0, s6, 1936
                  remu         s3, a4, ra
                  sll          t4, zero, tp
                  lui          t0, 1010598
                  remuw        a0, s1, s0
                  mulh         a1, ra, a0
                  slti         s3, tp, -861
                  sraiw        t5, a2, 7
                  nop
                  divu         a5, gp, a7
                  addi         a6, s9, -1765
                  remu         t5, s8, s9
                  divw         s2, s7, zero
                  and          t0, t3, a6
                  addi         s8, a2, -1967
                  srli         s4, t3, 0
                  ori          s8, a4, 157
                  sra          gp, zero, zero
                  subw         t1, s5, s7
                  sraiw        ra, a5, 30
                  slli         t4, s8, 8
                  remw         a7, a4, s8
                  slliw        s4, t4, 29
                  andi         a6, t3, 463
                  divuw        t1, s8, zero
                  addw         s1, s10, s5
                  mul          s1, t6, t3
                  or           sp, t1, s7
                  sll          t4, s7, a7
                  add          s2, s8, t5
                  subw         tp, s5, s3
                  xor          gp, sp, t2
                  ori          s8, s5, -81
                  divw         t0, s5, t2
                  addi         s11, a1, -1208
                  add          s1, t3, a3
                  addi         t4, t6, -474
                  xori         s6, a5, 1964
                  divw         t4, t6, t3
                  nop
                  slti         s5, t5, 1094
                  remuw        s3, a5, s11
                  mulhsu       a6, sp, s5
                  xor          s6, t0, a2
                  mul          s10, t1, s7
                  andi         t0, sp, 650
                  srai         s11, a3, 0
                  mul          a3, t4, t1
                  nop
                  auipc        zero, 164975
                  remuw        a6, t2, s6
                  nop
                  subw         s2, a3, s1
                  slti         s11, t0, -692
                  andi         t1, s9, -472
                  slti         a2, t3, 764
                  slti         t6, a7, 1814
                  mulhu        a5, s9, zero
                  remw         s6, t3, a6
                  addw         tp, s9, s9
                  addi         s11, t3, 392
                  slliw        gp, s1, 5
                  xori         t5, a3, -952
                  srai         a3, s6, 39
                  auipc        t5, 704019
                  sra          t1, ra, a0
                  addiw        s6, a6, -147
                  slli         s4, a4, 13
                  sraiw        a3, a0, 10
                  auipc        zero, 610499
                  nop
                  addw         s6, ra, sp
                  xor          t1, a3, a6
                  mulhsu       t5, s1, a3
                  mulh         t4, t0, sp
                  sll          s0, t3, t2
                  srliw        t6, t4, 18
                  sllw         t2, a6, t6
                  lui          gp, 820305
                  sllw         s9, ra, s1
                  sra          s2, a7, t3
                  xori         a0, t1, -547
                  rem          t5, s9, a0
                  mulhsu       a2, ra, a2
                  sllw         a1, gp, s11
                  lui          t1, 793411
                  divu         s0, a5, sp
                  sll          ra, s7, t6
                  sra          t4, a3, tp
                  srlw         s3, t4, s6
                  div          s9, s11, s6
                  sraw         a3, s4, s3
                  slt          s11, a5, a7
                  slliw        s11, a7, 24
                  srl          s3, a0, s9
                  srai         s10, a6, 40
                  srli         s10, t5, 28
                  andi         a1, s1, -559
                  sltu         ra, t2, s10
                  srlw         s0, s7, t2
                  sltiu        ra, s9, -1860
                  mulhu        t1, t0, t1
                  slliw        s4, s11, 23
                  remu         a2, t5, s8
                  sllw         t6, s10, ra
                  addw         a2, s5, s10
                  mulhsu       s9, zero, s4
                  sraiw        t4, ra, 25
                  sll          sp, a3, sp
                  sraw         a2, t6, a2
                  sraiw        zero, t5, 30
                  or           s2, t6, t1
                  xori         s8, a0, 1133
                  divuw        s6, s2, a0
                  remw         t2, a3, a4
                  div          a6, t5, zero
                  addw         a2, t0, sp
                  subw         a0, a4, s4
                  addi         tp, a3, 519
                  and          ra, t2, a3
                  div          s9, gp, s11
                  sub          s11, t1, tp
                  slti         zero, t5, 586
                  xori         t6, t1, 542
                  srl          t2, s8, t1
                  sllw         s5, gp, s4
                  auipc        sp, 886781
                  ori          a0, a0, 209
                  auipc        s11, 321609
                  divw         s2, a7, s11
                  div          ra, s4, s10
                  ori          s0, s6, -1319
                  sll          s8, a7, a6
                  auipc        s0, 59108
                  remu         s10, t5, s0
                  lui          sp, 620558
                  slli         s4, s9, 19
                  slli         t2, t5, 25
                  or           s3, t1, ra
                  div          s11, s1, s0
                  mulw         s8, ra, t0
                  srai         s6, s1, 56
                  auipc        a1, 646078
                  addi         t0, s11, -1831
                  remw         t5, sp, t5
                  slliw        sp, sp, 23
                  slti         a7, a6, -1980
                  mulh         a3, t5, sp
                  add          s4, t5, a5
                  addw         t5, s2, s5
                  srliw        s0, tp, 10
                  srai         s11, a7, 24
                  lui          s11, 322920
                  srli         s5, t4, 21
                  srli         s5, s10, 50
                  sltu         t2, a3, a4
                  slli         s11, a0, 61
                  sllw         t0, tp, gp
                  nop
                  ori          t5, a6, -650
                  and          a3, a1, s1
                  divw         a3, s6, a1
                  sllw         a0, a0, s5
                  sraw         t6, t0, t4
                  addw         s6, a6, s9
                  sra          t1, s3, t2
                  sub          s1, a0, a1
                  lui          t2, 649421
                  sraiw        s6, ra, 12
                  mulhsu       s3, a3, t5
                  srl          s1, s2, s3
                  mulw         tp, t3, a5
                  nop
                  divuw        sp, a1, s7
                  divu         t6, a5, t3
                  srl          tp, s1, s10
                  mulw         t0, a6, s3
                  remw         t2, a7, s7
                  xor          ra, a3, s11
                  sltu         t6, s2, s4
                  and          sp, gp, a1
                  sll          t4, t0, s1
                  or           s3, t3, s11
                  sraw         a7, s5, s0
                  remuw        s9, a0, s1
                  sltu         sp, s7, s9
                  srl          s4, a1, s4
                  and          t2, s0, t3
                  sraw         a6, s1, a7
                  or           a7, s0, tp
                  remw         a1, s5, t1
                  srl          s3, zero, t0
                  sll          a6, s10, t5
                  sll          a6, s2, t2
                  addw         s8, s9, s5
                  slt          a2, ra, tp
                  or           a3, a7, zero
                  addw         sp, gp, t4
                  sltu         sp, t4, s9
                  sll          a7, s4, t5
                  addw         s8, t6, s8
                  sltu         t6, s10, s6
                  remw         s6, tp, s1
                  add          gp, ra, sp
                  sub          a2, a7, t0
                  slli         s4, s8, 58
                  sra          sp, s11, a3
                  srlw         a3, s7, t4
                  andi         sp, t6, 1875
                  xor          t0, a1, a5
                  remu         a2, t5, t4
                  divuw        s8, s7, gp
                  or           s6, t1, s11
                  slli         s5, t4, 41
                  sll          s6, s2, s2
                  sraw         gp, s4, s8
                  sltiu        zero, s8, 162
                  remw         t5, a2, s3
                  mulh         tp, s4, tp
                  subw         s3, s0, zero
                  mulw         a2, a0, s1
                  or           t5, ra, s10
                  andi         a1, s0, -1283
                  sllw         a7, s1, zero
                  divw         s9, t4, s4
                  nop
                  sllw         a5, a3, s1
                  sra          a6, t6, a4
                  srl          t0, s8, t4
                  sub          s2, zero, gp
                  subw         a3, t0, s2
                  sraiw        t4, s6, 3
                  rem          ra, t3, s7
                  srl          t1, a7, s2
                  sraw         a1, s0, s2
                  slti         t2, gp, -171
                  remuw        s5, a5, s5
                  slli         s9, s8, 9
                  addiw        a7, s3, -253
                  add          ra, a7, a0
                  srl          s11, s6, a6
                  mulh         s8, s2, ra
                  xor          s1, gp, a6
                  addw         a7, t0, t4
                  divu         s9, s5, a7
                  sllw         s5, a2, t0
                  auipc        a6, 240627
                  xor          s6, s6, a2
                  sraiw        s2, a0, 9
                  sllw         s3, t0, s10
                  divu         a2, a4, a5
                  sra          a2, s2, s5
                  sll          s2, t5, a0
                  ori          gp, t2, -409
                  sltiu        s3, s2, 699
                  auipc        s8, 525068
                  subw         t5, a1, t5
                  sraiw        s4, s11, 4
                  mulhsu       s6, s4, a3
                  divuw        a5, s8, s6
                  ori          t0, a0, 209
                  remw         t0, t6, gp
                  or           s2, s2, a5
                  sraiw        a3, s0, 27
                  divw         s2, a5, a3
                  slli         t5, a0, 54
                  mulw         s10, gp, a4
                  xori         gp, gp, 682
                  addiw        a3, tp, 818
                  mulhsu       s6, a3, t1
                  sraw         s11, s8, s9
                  remu         s0, sp, s4
                  remw         t5, s1, a6
                  sub          t5, s4, s11
                  slli         t4, s9, 46
                  sub          ra, s8, a3
                  slti         gp, s9, 1237
                  ori          ra, s7, -1516
                  sltiu        a2, a6, 2011
                  or           t0, a2, s6
                  divuw        gp, a1, s6
                  mul          t0, a3, s2
                  sltiu        s4, s10, -166
                  and          a5, s8, a7
                  slti         t6, s0, 939
                  sraiw        t1, a7, 19
                  sub          a1, a1, s9
                  srai         s10, sp, 34
                  sraw         a3, s10, s8
                  sraw         t6, t6, s10
                  or           tp, s10, a2
                  addi         t2, a1, -1442
                  slliw        tp, a2, 20
                  divuw        s8, zero, s2
                  mul          tp, a6, t2
                  addiw        a6, s10, -498
                  andi         a5, a5, -1841
                  remu         a6, gp, t5
                  remu         s10, a4, t3
                  addiw        a2, s0, 1507
                  sll          s4, s4, s6
                  sra          s6, t4, t4
                  srl          a7, s6, s9
                  divw         s0, s3, a6
                  srlw         a5, s11, s6
                  subw         gp, a2, s9
                  srli         t1, s3, 38
                  mulhsu       s8, a2, a3
                  subw         t0, t2, a6
                  lui          s8, 204417
                  sllw         s5, s4, sp
                  sraw         s6, s4, s8
                  mul          s11, s9, s6
                  addw         s9, s9, s7
                  addi         s6, t5, 1548
                  srlw         t6, t3, s0
                  mulw         a0, gp, a6
                  mulhsu       t4, a5, t6
                  and          gp, s0, s8
                  remw         a0, a7, s7
                  lui          a0, 206817
                  div          t6, a4, a1
                  mulhsu       t1, s3, gp
                  addiw        t6, a4, 611
                  slti         s4, s11, -1904
                  andi         s3, sp, -249
                  auipc        a2, 930774
                  nop
                  srai         s8, s0, 37
                  nop
                  slliw        t1, s11, 6
                  xori         s5, a7, -423
                  divw         s2, s9, s3
                  mulw         s0, s6, s6
                  sltiu        gp, s8, -66
                  addiw        a7, a4, -1748
                  slli         s6, t6, 22
                  or           t6, t6, a3
                  mulh         s11, ra, t5
                  remuw        a2, t0, a3
                  mulhu        s3, s4, s11
                  mulw         s3, s0, zero
                  sllw         t5, ra, s8
                  and          s2, s7, a1
                  remw         t2, a7, t5
                  auipc        s6, 210623
                  mulhsu       ra, s0, t6
                  mulw         s3, a6, s6
                  xor          a6, t0, a7
                  slli         a0, t4, 9
                  divuw        a5, s1, sp
                  slti         tp, s6, 533
                  remu         s3, t5, s3
                  srai         t6, gp, 11
                  xor          sp, s1, a7
                  sra          ra, sp, gp
                  subw         t6, t5, s6
                  srl          ra, a2, zero
                  lui          s3, 633695
                  sltu         gp, gp, a3
                  sllw         s5, t4, s0
                  divuw        a3, t5, t3
                  mul          s10, s2, s8
                  add          s1, s9, s8
                  mul          s0, s0, s4
                  mulhsu       s11, s8, t2
                  xor          s2, s9, gp
                  remw         s10, a6, t5
                  remuw        t0, t6, s3
                  srliw        s11, t0, 29
                  mulhsu       t5, s9, t2
                  rem          t5, gp, a0
                  addi         s6, s0, 363
                  sra          s3, s3, a7
                  slti         s3, a5, 875
                  andi         s6, t6, 389
                  divu         a0, s2, s8
                  sltiu        a7, s11, 545
                  sraw         a6, a6, s10
                  addw         s0, s10, s5
                  divw         gp, s11, a6
                  sll          a0, s11, t4
                  sra          a0, a1, t2
                  sra          a0, a4, s4
                  lui          t2, 1031190
                  srlw         a5, s10, s5
                  lui          tp, 482390
                  addw         a0, a7, t1
                  sltiu        t4, a2, -585
                  ori          t2, t5, -1418
                  slli         a5, s3, 53
                  sllw         s6, s11, s3
                  srliw        t1, s3, 10
                  srlw         t2, s2, s0
                  remu         s10, ra, zero
                  srai         gp, a0, 24
                  ori          s1, sp, 1739
                  srlw         tp, t3, s1
                  sraiw        ra, tp, 7
                  xori         s6, sp, -1616
                  mulh         ra, s3, a7
                  lui          tp, 128633
                  or           s1, t1, a7
                  add          a2, t2, t3
                  srlw         a1, s4, s7
                  divuw        t5, a2, zero
                  slliw        t2, t4, 6
                  srai         t0, a5, 54
                  sra          s11, zero, s6
                  sra          s5, s0, gp
                  addiw        gp, s3, 935
                  addiw        t0, a4, -243
                  sll          s5, s3, t2
                  or           t5, s0, s9
                  slliw        ra, s6, 18
                  srl          zero, s4, a2
                  srl          gp, s6, t4
                  mulhsu       zero, sp, a7
                  mulw         s9, t3, s11
                  mulhu        s9, s4, s3
                  rem          t4, a6, s9
                  remw         s1, s3, tp
                  sltu         s4, tp, sp
                  slti         a3, s6, 50
                  addw         s6, t6, a6
                  addw         a5, a2, a4
                  slt          a7, zero, s0
                  or           s8, s5, a0
                  auipc        t4, 303242
                  addi         s8, gp, -226
                  xori         s2, s11, 624
                  slt          s5, t3, a3
                  slti         a3, a5, 437
                  slli         s6, a6, 7
                  srai         t1, t4, 34
                  sraiw        ra, t3, 30
                  xor          t4, t6, t5
                  sub          a2, s11, a0
                  rem          t6, t1, a0
                  remw         s4, s6, a2
                  mulhu        a7, a6, a6
                  slt          s8, s1, s0
                  sltiu        a7, tp, 1024
                  and          s5, zero, a3
                  remw         zero, a3, s6
                  divu         s8, t1, s2
                  slti         s6, t3, -1881
                  auipc        a2, 862077
                  slliw        a5, s2, 7
                  sub          sp, a6, t2
                  srlw         s9, t3, tp
                  srl          s11, tp, gp
                  nop
                  or           s2, t5, a7
                  rem          t1, t2, t2
                  sltiu        a1, t4, -729
                  xori         t0, a6, 732
                  sub          s1, s5, t3
                  sltiu        ra, s6, 884
                  srli         sp, s4, 1
                  addiw        a6, sp, -252
                  srai         tp, a2, 12
                  addw         gp, s9, a6
                  divuw        s8, t5, t3
                  lui          t6, 75740
                  lui          a1, 463321
                  slli         a6, a0, 1
                  slt          sp, t2, t4
                  divw         s0, s9, a4
                  slti         ra, s9, 559
                  remuw        s8, a6, tp
                  xori         a6, s8, -1079
                  subw         a0, zero, s10
                  add          s3, t1, tp
                  slliw        sp, t2, 12
                  slti         t5, s3, -85
                  srli         s0, a1, 56
                  sra          t0, t0, t0
                  srli         s6, sp, 59
                  remuw        a3, a3, s8
                  sll          t4, tp, s8
                  xori         t4, t3, -1458
                  lui          a0, 692722
                  slliw        t0, a0, 9
                  slt          gp, s2, s9
                  slli         a2, ra, 62
                  sltiu        t6, s3, 1738
                  sraiw        t2, a5, 2
                  sra          s9, a2, a5
                  sll          zero, s4, s10
                  srai         a2, s11, 10
                  sra          s6, a4, a2
                  srai         gp, t4, 10
                  remuw        sp, t2, s8
                  rem          s3, t4, s5
                  ori          ra, s9, 2008
                  srliw        tp, zero, 9
                  lui          a1, 884015
                  sub          a5, tp, s7
                  addi         s0, s9, 1439
                  divuw        s4, s6, s1
                  add          tp, s0, s11
                  sltiu        s6, sp, -2004
                  mulw         s3, a7, t4
                  sltiu        t0, s11, 136
                  addiw        sp, s11, 1223
                  remuw        t6, s3, s5
                  addw         s11, t6, tp
                  srli         s6, t2, 12
                  remu         a2, s11, s5
                  sub          a1, a2, a7
                  addiw        t6, a2, -456
                  slli         a7, s3, 52
                  remw         t0, s0, s7
                  add          s1, a7, a6
                  sltiu        s6, s5, -1835
                  div          t4, t3, t0
                  sll          ra, t1, a6
                  sllw         a2, s0, t5
                  mulw         s11, zero, s10
                  divu         t1, t4, sp
                  nop
                  sltiu        zero, t2, -886
                  sltiu        ra, s10, 1559
                  mulw         tp, sp, a1
                  mul          s5, sp, zero
                  sll          a2, s5, t2
                  sltiu        a3, s0, -181
                  divuw        tp, a6, t4
                  addi         t4, a7, -271
                  add          a6, tp, t3
                  xori         s9, a5, -1260
                  andi         t5, zero, -636
                  slliw        t1, t4, 24
                  rem          s4, sp, t0
                  addi         s9, s10, -901
                  slliw        t2, a6, 23
                  lui          s8, 136217
                  slt          t1, s9, s10
                  remu         s6, t1, s5
                  andi         a0, zero, 840
                  ori          a6, a7, 1349
                  sllw         s6, s11, t1
                  mulhsu       t2, a5, a4
                  rem          a7, s7, gp
                  sraiw        t4, tp, 4
                  xori         s0, a0, -1119
                  mulw         ra, a0, t4
                  srai         s2, s4, 44
                  div          t4, s6, s0
                  auipc        t2, 783436
                  srliw        a3, s7, 5
                  andi         t4, a2, 1529
                  divw         ra, sp, s1
                  add          t0, a6, t4
                  remw         a1, t1, s5
                  andi         t2, s9, -369
                  add          s9, t2, t1
                  divu         a3, a3, t0
                  slliw        s10, tp, 23
                  add          a2, gp, t1
                  xor          tp, s9, s0
                  xori         s6, t4, 818
                  mulw         s6, zero, s5
                  subw         s3, tp, tp
                  srliw        t0, a0, 12
                  remw         a6, s7, tp
                  srlw         s2, t5, t5
                  add          a2, ra, ra
                  xor          s2, s1, s7
                  rem          s8, t2, t0
                  slli         t0, t0, 30
                  addw         ra, s6, s11
                  divuw        t5, s10, s10
                  srlw         s1, s2, t4
                  div          s9, s11, s3
                  xori         s4, t0, 231
                  divw         ra, a5, a4
                  mulh         s4, t1, a2
                  srai         s4, a3, 43
                  auipc        a6, 287470
                  sraiw        s11, s6, 1
                  slli         a5, t3, 59
                  slt          t1, s11, t6
                  xori         s2, a5, -1959
                  divuw        t0, a1, s7
                  slliw        s8, sp, 12
                  addw         s4, s6, t5
                  mulh         a6, t5, t1
                  mulhsu       a2, a7, tp
                  mulhsu       t5, t3, t3
                  srai         t5, s11, 31
                  add          zero, ra, a7
                  rem          a5, gp, a0
                  sra          sp, t2, s4
                  or           ra, t0, zero
                  xori         a3, sp, 1367
                  xori         t4, s8, -870
                  sllw         s4, t4, s5
                  divuw        t4, a6, s8
                  remu         t4, s2, a1
                  slt          t4, t6, t4
                  sra          t5, t4, t0
                  xor          ra, a5, t0
                  nop
                  xori         a1, s4, -1430
                  mul          s9, s0, gp
                  sltu         s9, s1, s0
                  lui          s4, 249184
                  div          a1, t3, a0
                  ori          a6, sp, -923
                  srai         t5, s0, 48
                  addw         sp, t0, s8
                  sub          a5, t0, s7
                  sltu         s0, a5, s10
                  srai         t5, a0, 8
                  slliw        a7, sp, 20
                  sll          tp, s9, s11
                  sraw         ra, a3, a5
                  xor          tp, a7, s11
                  mul          tp, t4, s2
                  subw         s1, s0, a3
                  andi         a6, sp, -139
                  xori         a7, zero, -654
                  sllw         s10, s3, a3
                  srlw         a6, a1, s9
                  nop
                  mulh         s3, a4, t3
                  slli         zero, a0, 37
                  remuw        t6, tp, t5
                  sll          s10, zero, a5
                  sltiu        t6, gp, 1462
                  xor          s5, t0, s3
                  subw         t0, a5, s0
                  nop
                  srlw         s10, s2, s1
                  remu         gp, s6, a1
                  slti         t2, t3, 1911
                  sra          s8, a2, a2
                  divw         a7, t4, s3
                  srl          t6, s8, t1
                  mulhsu       t4, s11, s3
                  slli         s3, tp, 46
                  srl          s1, s3, a2
                  rem          a1, s11, a2
                  xori         zero, a1, -669
                  addiw        s11, s0, -169
                  mulw         s8, a5, t5
                  remw         t4, t3, a3
                  sraiw        t5, tp, 16
                  xori         zero, s3, 1543
                  srl          a0, a0, s9
                  sltiu        t1, t4, -1908
                  sll          s0, a6, a7
                  and          s10, t5, s2
                  sll          a7, zero, s4
                  sltu         s3, a6, t3
                  slti         a3, gp, -768
                  auipc        s9, 1047124
                  slli         s0, s8, 10
                  sllw         t4, s3, gp
                  sll          a6, s9, s0
                  and          sp, s8, s5
                  mulhu        t0, a6, gp
                  sra          s6, a2, t3
                  sra          gp, tp, a7
                  auipc        s10, 1023586
                  divw         t0, s8, t6
                  nop
                  mulw         ra, a3, a1
                  srai         s8, t3, 28
                  divw         a5, a3, s5
                  ori          zero, a4, -94
                  sub          t4, t3, s11
                  subw         t2, a5, ra
                  divu         s2, ra, s11
                  divuw        a7, t6, s0
                  div          s0, t1, t6
                  mulw         a2, t2, zero
                  addw         a5, a3, t5
                  srli         t1, t5, 50
                  slti         t0, a4, -1508
                  and          s10, t6, t2
                  subw         sp, s11, a5
                  mulh         sp, t6, s4
                  srlw         t6, zero, s6
                  auipc        s4, 391631
                  sraiw        s2, a0, 12
                  sraiw        a0, gp, 15
                  subw         s4, s2, a1
                  sll          s5, sp, t6
                  srli         s6, sp, 32
                  sltu         a1, s10, t4
                  div          sp, a5, t2
                  srlw         gp, s4, a7
                  subw         t6, sp, t3
                  sub          ra, a7, s8
                  mulw         s3, a3, t1
                  xori         t0, s4, 766
                  addiw        t0, s1, -1078
                  srl          s0, s1, s8
                  addi         zero, s4, -999
                  addi         t6, tp, 1672
                  subw         t0, s9, s1
                  sub          t6, sp, t3
                  sllw         s11, a7, t5
                  sub          s4, t2, s9
                  mulh         s11, a4, s5
                  addiw        a2, a7, 1145
                  srl          zero, s5, a4
                  or           s3, a7, a6
                  addw         a2, t0, gp
                  slli         s1, t1, 11
                  and          s6, t6, s11
                  or           sp, t3, t2
                  mulhu        s5, s4, a0
                  mulw         a3, s6, s7
                  and          s6, s11, a2
                  srl          t4, t6, a0
                  slti         t0, a4, 1491
                  or           s0, a7, ra
                  srl          a5, s1, s6
                  divw         tp, a5, s6
                  xori         s4, s0, 1307
                  rem          s10, ra, sp
                  sltu         s3, a6, a6
                  divu         s11, t1, gp
                  lui          s5, 38192
                  remu         s10, s0, s6
                  add          t2, s9, t5
                  slt          t6, a4, s0
                  divu         a6, s0, s4
                  srlw         s6, ra, a7
                  rem          a5, s1, ra
                  addi         ra, a3, 1030
                  sub          a6, a5, a6
                  sub          a3, t4, s11
                  srliw        s9, a3, 27
                  ori          s11, s0, 1545
                  addw         t1, t1, t1
                  srliw        sp, t0, 29
                  rem          s0, s3, s3
                  mulw         a2, s1, t4
                  or           s10, t0, ra
                  sraw         a7, s8, gp
                  sub          a3, a0, a3
                  slliw        gp, a4, 28
                  sllw         s8, s2, s7
                  sraw         s9, s10, t2
                  addw         zero, s0, t6
                  divw         ra, s1, t0
                  divw         t4, gp, tp
                  div          t4, a3, s11
                  mulhsu       a1, s6, a6
                  mul          a3, sp, a0
                  auipc        s5, 784665
                  sltu         sp, a6, gp
                  slt          gp, s6, s0
                  srli         s5, t1, 23
                  remu         zero, a6, a0
                  divw         a7, a0, a1
                  sraw         t1, s1, s9
                  srli         s4, a3, 23
                  mul          ra, s0, ra
                  remu         tp, s4, s2
                  divw         a2, t2, s2
                  and          ra, s1, sp
                  add          s6, a5, a2
                  addw         sp, s1, zero
                  remu         sp, s11, a2
                  mulw         s0, a1, s3
                  srliw        s2, gp, 4
                  srl          sp, t3, t3
                  srlw         gp, a5, a1
                  addw         a3, a0, s11
                  mulhsu       s0, s10, t1
                  mulh         s8, ra, a5
                  auipc        s3, 147855
                  sraiw        a2, s3, 24
                  sra          s9, a3, s0
                  mulw         zero, s4, ra
                  auipc        s4, 420989
                  mulw         s6, a1, gp
                  sraiw        s8, s2, 11
                  srl          t2, s1, s11
                  divu         s3, s0, s6
                  rem          s8, a7, s10
                  mulh         s4, s8, t3
                  sltu         gp, t5, zero
                  lui          a3, 83301
                  or           s1, s2, s0
                  sraw         a3, t4, a7
                  mulhu        t1, t1, a0
                  or           s10, s6, s9
                  auipc        t1, 520682
                  slt          a5, s7, a7
                  srl          s10, a2, ra
                  xori         a5, s9, -1475
                  slliw        s3, s2, 17
                  srl          gp, s4, sp
                  slli         a5, t2, 46
                  sltu         ra, tp, s5
                  and          s3, s5, sp
                  sraiw        s9, s2, 17
                  nop
                  slt          s11, s9, ra
                  srl          a3, zero, a3
                  or           t5, s5, s1
                  sraw         s9, sp, a7
                  add          s5, t2, s0
                  divuw        s8, t4, t6
                  xori         a2, t5, -1445
                  slt          s5, s4, s8
                  srai         s11, s2, 5
                  sra          s3, s6, s0
                  sll          s2, t3, gp
                  srl          t1, t0, ra
                  srliw        t0, s3, 14
                  xori         s4, s10, -1847
                  and          s1, s5, s1
                  sll          tp, t5, a2
                  srliw        t5, s9, 25
                  srli         t2, s1, 36
                  slt          t0, a6, a0
                  slli         s3, s8, 3
                  nop
                  sllw         s5, sp, a5
                  sra          t4, s5, sp
                  srai         s10, a3, 29
                  sllw         t6, a4, s5
                  divuw        a0, t5, t6
                  mulw         a0, t6, t4
                  srl          a6, ra, sp
                  srai         s5, s2, 36
                  mulh         s11, t4, a2
                  sra          zero, s1, s7
                  remw         a2, s4, s0
                  sltiu        a0, ra, 1097
                  add          a5, a7, s2
                  div          s2, a1, t2
                  add          s6, s3, t4
                  ori          a5, t1, 826
                  srlw         t1, t2, tp
                  slt          s9, t3, a3
                  slt          s3, s11, s2
                  mul          s10, s9, s1
                  divw         s6, t3, gp
                  sraw         s0, t0, s6
                  mulhu        t5, s4, a6
                  nop
                  sub          s8, a6, zero
                  sll          s9, gp, ra
                  mulhsu       s6, t3, a5
                  sub          s1, s9, s4
                  add          a7, a1, s7
                  nop
                  slliw        t4, s6, 11
                  addiw        s8, a2, -1768
                  lui          a6, 661751
                  sll          a2, a0, s9
                  or           sp, s11, s1
                  srli         tp, a1, 60
                  sllw         sp, t0, a3
                  add          s10, s11, s2
                  mulhu        s6, s0, s2
                  remuw        s4, t3, ra
                  divuw        t2, a7, a2
                  srl          t1, s11, t4
                  srlw         a3, sp, a7
                  xor          a0, a3, a6
                  srli         gp, a5, 39
                  or           a2, t6, t2
                  addi         a2, s0, -439
                  mulw         s11, t6, t1
                  xori         s1, zero, -1678
                  xori         a1, a1, -326
                  nop
                  remuw        zero, a1, t0
                  sltiu        s1, zero, -967
                  auipc        s4, 291769
                  remuw        t0, a4, t0
                  mul          a2, a2, a6
                  sraw         zero, s1, s3
                  sraw         a7, zero, s6
                  sll          s10, a4, s2
                  sltu         s2, t1, sp
                  rem          s5, a1, s1
                  lui          a1, 898954
                  addiw        s8, s11, -1799
                  nop
                  srliw        a6, s9, 28
                  sub          a2, t3, t3
                  auipc        a2, 490018
                  lui          a7, 908668
                  sra          tp, a2, a4
                  mul          ra, a2, s6
                  sll          s6, s3, s0
                  slti         a5, s6, 603
                  mulhsu       tp, s10, t4
                  slt          s11, a0, s10
                  sraiw        s0, ra, 15
                  xori         s9, s3, 1757
                  div          s3, s1, s10
                  mulhsu       a0, zero, t1
                  andi         s5, s7, -458
                  mulh         s5, t2, a1
                  sraw         s9, s0, zero
                  remuw        ra, s4, t0
                  sub          s0, s8, s4
                  sra          s3, a5, s10
                  sraiw        s6, a6, 17
                  lui          t5, 532562
                  divuw        s11, t3, gp
                  mulw         t1, a0, a3
                  slli         s11, s5, 39
                  mulhsu       s11, s11, s8
                  divuw        s5, a3, s10
                  rem          tp, a4, t6
                  sllw         t1, a5, gp
                  mul          s6, a7, s4
                  divw         a1, sp, tp
                  remw         a7, t5, sp
                  mulw         zero, s9, s11
                  subw         tp, s8, s11
                  srlw         a7, s3, t6
                  slti         sp, s11, -434
                  slt          t1, ra, s1
                  mul          zero, t5, t5
                  addi         t1, ra, -751
                  sltiu        t1, t3, 419
                  div          s0, a6, s8
                  mulh         s3, t0, t6
                  auipc        a1, 146223
                  sraiw        sp, a4, 5
                  srli         a7, a2, 42
                  ori          a1, a2, -1782
                  mul          s11, zero, zero
                  mulw         t6, a2, a1
                  addiw        s11, tp, 750
                  add          s9, tp, s2
                  srliw        ra, t3, 16
                  and          t5, s8, a5
                  sltiu        a2, s10, -1881
                  ori          t4, a3, 1569
                  addw         s5, s6, s9
                  div          t1, t2, s3
                  addw         t6, a3, s6
                  rem          a5, ra, t5
                  remu         t5, a6, t1
                  srli         s1, sp, 11
                  addw         a7, s4, ra
                  divw         t5, ra, s7
                  remw         s8, s3, t4
                  mul          t0, t2, a1
                  mulhsu       t5, tp, a1
                  nop
                  xor          s10, t6, t4
                  andi         tp, s8, -352
                  remw         t6, s9, s3
                  div          sp, s8, s10
                  srl          a3, s9, t2
                  slliw        t4, s8, 9
                  slt          s9, t3, a3
                  slli         tp, zero, 10
                  srliw        t2, a3, 8
                  slli         t2, a7, 8
                  addiw        s2, t6, -1528
                  rem          a1, a3, s11
                  addw         s3, a2, a5
                  srai         s1, t3, 61
                  auipc        t4, 269371
                  subw         s9, a2, t1
                  auipc        t2, 408512
                  sll          t1, s1, s1
                  srli         zero, a3, 35
                  srl          s10, a1, s5
                  and          t0, s10, ra
                  xor          s0, gp, s11
                  sllw         s6, a7, s4
                  srliw        s2, s4, 21
                  slli         s8, ra, 47
                  subw         a3, t6, s2
                  nop
                  xori         t4, s2, -1459
                  addiw        t2, s10, 187
                  srlw         s11, t2, t2
                  remuw        sp, s5, s5
                  divuw        gp, tp, t3
                  remu         t5, s9, a4
                  subw         a6, a0, tp
                  rem          a2, a1, s7
                  sub          s0, a5, s9
                  xori         a5, a4, 1733
                  srai         ra, t6, 7
                  divuw        s6, s11, t4
                  sltu         s11, s10, s10
                  slli         s6, s10, 29
                  mulw         zero, a0, t2
                  div          t5, t5, ra
                  addi         zero, s3, 1476
                  auipc        a2, 185825
                  div          a2, s11, t3
                  addi         s10, s7, -209
                  srlw         s8, s10, zero
                  mulw         s9, gp, sp
                  remuw        a7, s7, s8
                  addw         s3, s3, a5
                  xor          sp, t0, a1
                  mulh         t0, s1, t4
                  divu         s10, a5, a6
                  ori          a5, t3, 1873
                  addiw        t5, s0, 415
                  or           t5, t4, a1
                  mulw         s3, ra, t0
                  sub          s3, t2, sp
                  ori          s1, a0, 1787
                  divu         ra, zero, s10
                  sub          tp, sp, a0
                  mul          s2, t0, t1
                  srlw         s4, s3, t1
                  srli         t4, a5, 33
                  mulhu        s5, s11, t0
                  auipc        a6, 285316
                  auipc        s3, 473775
                  lui          gp, 739143
                  mulhsu       a5, sp, a7
                  sltu         a6, a3, s0
                  nop
                  or           t2, s4, s8
                  addiw        t2, a0, 962
                  sraw         tp, s3, s2
                  xor          t5, t1, s3
                  remuw        s1, t5, s6
                  lui          t2, 99305
                  sra          s4, s11, t2
                  nop
                  srli         sp, t2, 24
                  remw         s0, s3, t1
                  divuw        s5, s7, s11
                  add          s11, s8, s8
                  auipc        ra, 926370
                  remu         t5, a1, s5
                  mulhu        s3, a7, a3
                  mulhsu       s11, s9, s5
                  addw         s10, a5, s9
                  subw         s10, s9, s9
                  divuw        a3, a0, zero
                  addiw        a1, t6, 232
                  slt          gp, s7, a0
                  addw         zero, s4, t3
                  xori         t2, t2, 676
                  slliw        t1, gp, 1
                  sll          t4, s0, ra
                  divw         sp, sp, a5
                  slt          t1, s9, s3
                  srai         t6, s11, 8
                  slti         s8, s11, 1136
                  sraiw        ra, s11, 0
                  sltu         a1, s4, a2
                  sraiw        a6, a1, 15
                  mulhsu       a0, t5, gp
                  divu         ra, t5, s7
                  divw         s5, s7, s5
                  xor          s9, s7, a1
                  mul          gp, t5, zero
                  add          s0, t4, s0
                  sllw         a3, s2, t4
                  srl          t0, s8, t4
                  andi         tp, a4, 1988
                  andi         a0, a6, -1872
                  addiw        s11, s9, 233
                  mul          s9, a0, t1
                  xori         s6, a1, -84
                  sraw         zero, a1, a4
                  andi         s6, ra, -1462
                  nop
                  srli         ra, t2, 43
                  xor          a6, a3, t6
                  sll          tp, s0, a7
                  mulhsu       t2, s5, s6
                  subw         zero, s3, ra
                  and          s10, a0, t4
                  srl          a2, s1, t0
                  divuw        a2, s10, a4
                  andi         s0, s5, -443
                  addw         a6, t6, s10
                  and          ra, s9, a2
                  sltu         t1, t0, a3
                  divu         t5, t1, t5
                  sub          a7, s0, a3
                  auipc        a6, 968674
                  sltu         s5, zero, gp
                  lui          ra, 24603
                  divuw        s11, s8, a4
                  slliw        a1, s1, 15
                  sra          zero, t4, a1
                  srai         t6, a0, 14
                  nop
                  sllw         s6, s3, s7
                  divu         a2, zero, a1
                  mulhsu       gp, t5, gp
                  sltu         s8, s11, tp
                  lui          s6, 763430
                  mul          a2, t6, t6
                  addiw        s10, s2, -511
                  sltiu        t5, a1, 810
                  slli         a5, a1, 31
                  nop
                  xori         s11, s1, 165
                  slt          a2, t1, a3
                  mul          ra, a2, s10
                  srliw        a6, a5, 3
                  remuw        ra, a0, t3
                  slliw        a2, t0, 14
                  ori          t1, zero, -720
                  sub          t5, ra, gp
                  divuw        s11, s3, a6
                  addi         a2, a3, 1378
                  xor          ra, s10, sp
                  slli         t6, s9, 4
                  mulhsu       s5, s1, a3
                  sllw         s6, s3, a5
                  srliw        t6, sp, 11
                  lui          a2, 932520
                  divu         s2, s10, t6
                  srl          t0, s2, s1
                  sraw         a5, s3, s10
                  mulhu        tp, s11, s0
                  srai         s2, s10, 59
                  xori         a1, sp, 1100
                  andi         ra, a1, -1267
                  sllw         s4, t2, s3
                  remw         s6, a6, ra
                  ori          a7, a4, 751
                  sltu         t4, a6, t6
                  lui          s10, 913502
                  mulh         s10, zero, a3
                  sraw         tp, t4, a1
                  or           t0, t4, a6
                  srai         a1, ra, 0
                  xor          zero, s0, t6
                  mulw         zero, s11, s8
                  sllw         s4, t6, gp
                  slti         s8, s0, -215
                  mulhu        a7, t4, gp
                  nop
                  sub          a5, tp, s9
                  slliw        s8, gp, 17
                  srai         t6, sp, 4
                  xori         s11, t1, 1057
                  sltiu        t2, s11, -1943
                  divu         t2, sp, a0
                  div          s2, zero, s0
                  sra          t6, a0, s1
                  mulhsu       t4, t5, s1
                  sub          s10, s3, t5
                  srliw        s0, s3, 4
                  sub          s0, a0, zero
                  sraiw        t0, a1, 23
                  or           a3, a3, a6
                  slt          ra, a5, s7
                  div          s6, a5, tp
                  xor          t5, s11, t1
                  and          t6, s11, t1
                  sub          gp, a3, a6
                  sltiu        sp, s0, -197
                  slti         t0, a0, 1303
                  mulh         a6, zero, t0
                  addiw        a5, s8, 304
                  and          s11, tp, s2
                  andi         ra, s8, 1080
                  xori         a0, s9, 1161
                  andi         gp, gp, -1873
                  remw         sp, s5, t0
                  slti         s5, a3, 423
                  and          t0, t2, t0
                  slti         a0, t6, -462
                  sraw         a2, s2, zero
                  mulh         a5, a0, s10
                  sllw         s5, zero, a7
                  slti         s10, s5, 1783
                  mulh         sp, sp, t2
                  divuw        a3, t0, a2
                  rem          a5, a4, s3
                  slt          t4, s8, sp
                  addiw        s4, a2, 1195
                  divuw        a7, a2, t5
                  lui          t2, 566940
                  or           a6, s1, a5
                  lui          a2, 705249
                  sll          s9, zero, t5
                  sllw         s6, t4, s8
                  sraiw        a5, s9, 30
                  auipc        sp, 26639
                  sraw         s4, s10, ra
                  remw         s1, s0, zero
                  addw         s5, a4, t5
                  slti         s1, t2, 1557
                  mulh         a1, s0, a3
                  slti         s6, s11, 1251
                  or           zero, ra, a5
                  andi         ra, s3, 1359
                  xor          t2, s0, s8
                  andi         tp, a2, -201
                  slt          a2, a3, zero
                  mulhu        a0, sp, a6
                  andi         t4, gp, -470
                  lui          t6, 413402
                  remuw        s5, sp, s0
                  slli         tp, s3, 14
                  subw         s9, a4, t0
                  srli         t6, a1, 52
                  sraw         a0, s5, tp
                  rem          a0, s11, s10
                  xori         a5, a6, -675
                  mulw         t6, sp, s2
                  mulw         t1, s7, s0
                  addiw        t0, a1, 528
                  ori          t1, a2, -1759
                  slti         s11, s1, -570
                  srai         s2, t3, 19
                  srliw        a2, s9, 21
                  and          zero, a6, t4
                  mulh         t4, sp, a5
                  srlw         s4, a6, s1
                  mulhu        a5, s3, s9
                  srai         s1, s7, 20
                  slti         a7, t5, -734
                  sraiw        s1, s1, 24
                  srliw        s8, a5, 11
                  addi         s4, s8, -660
                  sraw         a7, sp, s6
                  divuw        sp, t1, s2
                  sra          tp, s5, zero
                  divw         gp, gp, s8
                  srliw        s4, a5, 24
                  auipc        s11, 411317
                  andi         a3, s2, 1968
                  srl          s6, a1, s3
                  add          ra, a2, t6
                  mulhu        zero, ra, t4
                  mulw         a7, t2, gp
                  srliw        a0, a1, 17
                  add          s8, s10, a1
                  add          a3, s3, t4
                  lui          a2, 475674
                  divu         a5, t0, ra
                  addw         s6, s11, s1
                  remw         s9, t6, s3
                  sll          s0, a6, a6
                  remu         t4, s7, s3
                  slti         zero, s5, -1995
                  xor          s4, s1, ra
                  addiw        t5, a4, 1891
                  div          a0, t4, sp
                  divw         a5, sp, s4
                  rem          tp, s9, t5
                  srl          s6, gp, s3
                  mul          a7, t0, s5
                  auipc        s2, 464642
                  sub          s4, s7, t1
                  sra          t0, s10, s5
                  remuw        ra, s8, a5
                  remu         s4, a2, s0
                  auipc        s9, 252028
                  srli         a7, t4, 46
                  add          a1, t1, a3
                  divuw        s0, t6, a4
                  divw         a2, s10, a1
                  andi         sp, s9, -1686
                  xori         a7, a5, -1762
                  nop
                  slli         s4, s1, 62
                  divuw        ra, a6, s9
                  divw         zero, sp, t3
                  sraw         s5, s7, a4
                  remuw        t4, sp, sp
                  addw         zero, a1, ra
                  mulhsu       s11, sp, s7
                  divw         t2, s1, a6
                  sltiu        a3, s11, 239
                  or           a2, s2, s5
                  auipc        s2, 719129
                  addw         a3, s8, zero
                  slliw        tp, a0, 9
                  srai         t2, t6, 56
                  remu         s2, t2, s3
                  andi         t5, s3, 899
                  rem          a1, a7, a3
                  or           a7, s4, tp
                  remu         a5, s11, s3
                  ori          a7, s2, 878
                  srliw        s4, s9, 23
                  sll          tp, s4, a3
                  slli         t0, ra, 17
                  divu         ra, t4, a1
                  remu         t5, a7, a6
                  slli         s8, t5, 51
                  and          t2, t1, ra
                  xor          a6, sp, gp
                  nop
                  slliw        tp, s7, 9
                  addiw        zero, s10, -880
                  subw         s6, s11, s3
                  slti         a3, s2, -1128
                  mulh         zero, s5, s4
                  sraiw        ra, a2, 25
                  slliw        a1, a6, 8
                  srai         t4, a5, 49
                  sltiu        t2, a1, 887
                  mulhsu       sp, s6, s7
                  nop
                  divw         t6, t1, s11
                  mul          t2, s4, a7
                  or           s11, zero, s7
                  divuw        s8, s2, sp
                  remu         s8, ra, t3
                  xori         a1, zero, -98
                  remw         s5, tp, a5
                  srliw        a5, s4, 1
                  divw         s2, gp, s11
                  slliw        a2, s10, 21
                  slti         ra, a5, 747
                  remuw        t2, s9, gp
                  remuw        a2, a4, s0
                  sllw         t4, s8, zero
                  sra          t6, s4, gp
                  lui          s5, 599629
                  remuw        s11, s1, t6
                  remuw        a1, s8, t5
                  addiw        gp, t1, -1135
                  sraiw        s5, s6, 4
                  slti         zero, a4, -1316
                  subw         t4, zero, t4
                  remw         a5, a6, a3
                  andi         a0, s7, -139
                  or           s10, s8, a1
                  sltiu        zero, sp, 7
                  srli         sp, s4, 42
                  divuw        a0, a5, s2
                  mul          s8, ra, a4
                  ori          a1, s8, 1961
                  ori          zero, a7, -155
                  xori         s11, s9, 278
                  mulh         a6, t6, a1
                  sra          t1, t0, gp
                  ori          s9, a4, 549
                  remuw        t1, a2, s10
                  mulhu        a0, t5, s10
                  or           s6, t6, a4
                  sraiw        s0, a4, 23
                  ori          a6, s8, 1590
                  sllw         s8, t2, t3
                  slli         t6, a0, 4
                  slti         a0, s4, -1120
                  div          t5, a7, s9
                  lui          t4, 371455
                  addw         s9, a1, s4
                  sraiw        zero, s5, 24
                  mulw         a2, a4, sp
                  add          s9, a1, s9
                  ori          a0, t1, -2039
                  or           s3, s10, t6
                  or           t5, a2, s5
                  srl          a5, s0, t4
                  sra          sp, s5, s6
                  sllw         a3, s7, s10
                  srai         t5, tp, 19
                  div          a7, a7, ra
                  ori          t1, s11, -1853
                  mulh         a0, t4, zero
                  addw         s2, a4, a3
                  sltu         ra, t2, a5
                  sllw         t4, s1, s5
                  sra          t4, t5, t2
                  sll          ra, a7, t5
                  remu         sp, s10, s1
                  mulw         a7, s10, s6
                  sllw         t2, s11, s11
                  addiw        t2, gp, 1343
                  slt          t0, gp, s7
                  remuw        t0, a0, zero
                  mulhsu       a0, s1, a0
                  sltu         t5, s7, a0
                  remw         a7, s0, t2
                  srliw        s0, ra, 31
                  srliw        t1, a2, 17
                  srliw        t2, t5, 13
                  divu         s1, s4, s9
                  remuw        s3, s11, a3
                  andi         a1, t0, 56
                  subw         tp, s8, s10
                  addw         s4, s1, s6
                  addi         ra, zero, 54
                  srai         s5, s9, 12
                  and          a2, a3, t6
                  remw         ra, a2, t1
                  srl          sp, s9, t4
                  andi         gp, s10, 1032
                  sltiu        s2, a1, -483
                  mulhsu       t1, s4, t4
                  addi         s3, a7, -439
                  ori          zero, t0, 634
                  remuw        s6, t3, t2
                  sllw         t4, s7, a3
                  sltiu        a2, s8, -1060
                  sub          t6, a7, sp
                  srai         tp, a1, 51
                  addw         a2, s10, s3
                  remw         a1, t4, t4
                  xor          gp, s1, sp
                  sub          s1, t3, a2
                  andi         sp, s1, -1750
                  sra          sp, s8, t4
                  mulw         s1, s0, s0
                  slti         t0, t5, -122
                  sub          gp, s3, a0
                  slli         a5, t4, 36
                  sub          s11, s10, s11
                  subw         a7, s8, a5
                  sraw         s4, s0, t1
                  srl          a2, s10, s9
                  and          s10, s10, a0
                  divw         s4, s5, s7
                  divu         gp, s3, a2
                  sub          a1, t2, zero
                  rem          s9, t3, ra
                  srli         s2, gp, 48
                  srai         s3, t4, 22
                  sltu         zero, t2, t5
                  ori          t5, s2, 515
                  slli         s9, s8, 9
                  add          s8, a7, s11
                  mulhu        t5, a2, s6
                  divw         t5, s7, gp
                  srli         t4, a3, 61
                  xori         tp, s8, -766
                  remuw        s0, s10, a2
                  slti         s0, s5, 404
                  srl          a3, s9, a2
                  srai         t5, s0, 6
                  sraw         s3, ra, s6
                  slli         a2, s8, 37
                  sra          a3, a3, tp
                  divw         a7, s4, a3
                  add          t0, s1, s11
                  remu         s1, a7, a7
                  slt          t4, t4, t2
                  remw         zero, t3, a1
                  mulw         s6, s11, a2
                  auipc        s3, 392569
                  ori          a0, s6, -795
                  mulhu        s2, s6, t1
                  andi         t4, s11, -301
                  remuw        a6, t6, s11
                  rem          s1, a2, s6
                  and          a2, s9, t0
                  sraw         s1, zero, a6
                  srlw         a5, s5, a0
                  and          a5, a6, t6
                  mul          s8, t6, a7
                  mulhsu       s5, a7, t5
                  add          ra, s5, a2
                  xor          t5, s4, a4
                  addw         s10, zero, t3
                  slti         s9, s9, 1450
                  div          gp, tp, a7
                  divuw        t4, s8, s0
                  mulw         zero, t6, s11
                  srl          a7, sp, s5
                  mulhsu       t1, s2, t6
                  srl          a2, sp, t6
                  sllw         s3, s10, s4
                  div          tp, gp, a7
                  remuw        s5, s8, s10
                  sraiw        sp, s6, 18
                  remw         a5, sp, s1
                  srl          s6, s6, s0
                  sraw         ra, t4, s5
                  mulhsu       s2, a1, t5
                  or           t5, sp, t4
                  remuw        s6, sp, s3
                  slti         s10, a1, -214
                  slli         s6, s1, 12
                  rem          tp, s0, t0
                  addw         a2, a2, a1
                  andi         s9, sp, -697
                  mulhsu       gp, a5, a6
                  mulhu        gp, a4, a4
                  mulh         s11, gp, a2
                  divuw        a0, a1, s0
                  and          s2, sp, s11
                  addiw        zero, a3, 733
                  remuw        gp, t6, t4
                  mulhsu       s6, s5, a7
                  sll          s9, s5, t2
                  sraiw        a7, t4, 30
                  slt          sp, s4, t3
                  sraiw        s8, s1, 23
                  remw         s3, t2, s5
                  xor          sp, s7, s10
                  remuw        zero, s11, a6
                  srai         t6, s5, 0
                  div          a0, s1, s0
                  addi         s3, t6, 870
                  addw         t5, gp, s0
                  mulh         s6, s6, a7
                  mulw         s9, a0, s10
                  sltiu        t4, a0, 720
                  mul          t5, a6, a7
                  sub          tp, tp, zero
                  ori          s1, t2, -697
                  add          a7, a7, a0
                  remw         t0, a2, t2
                  sllw         s2, s6, a7
                  mul          s4, t1, s3
                  slti         s8, s6, 1454
                  mulw         tp, s1, s10
                  addi         a1, a5, 825
                  xor          sp, s5, a6
                  nop
                  rem          sp, s0, s4
                  or           a7, t1, a4
                  srliw        s0, s5, 28
                  divu         s3, a6, t3
                  sllw         a5, zero, s3
                  sll          s2, a4, a1
                  add          t6, a1, s3
                  addi         a2, tp, 251
                  divw         t0, t3, t0
                  mulhu        s2, t5, s7
                  rem          s8, s10, s5
                  and          t1, a4, a7
                  slt          a5, s2, s4
                  slliw        t0, t4, 20
                  add          s11, s0, a0
                  srli         s9, gp, 29
                  mul          t2, s2, t4
                  mul          t2, s0, s0
                  sraiw        a5, t2, 25
                  sraw         s2, a1, t5
                  xor          s4, t2, s2
                  div          s5, s5, s11
                  mulhsu       a0, a4, a0
                  add          a0, zero, s5
                  divuw        s0, s10, s0
                  add          s6, s1, a7
                  mul          s0, s4, s0
                  sub          s2, t4, a1
                  sll          t1, gp, s2
                  divu         a5, ra, s10
                  subw         a2, t2, a5
                  sraw         s6, a6, s4
                  mul          sp, s11, a0
                  divw         t6, t0, t5
                  addiw        a1, t5, 1922
                  lui          ra, 98998
                  slli         t5, a1, 11
                  and          s0, a1, s1
                  mulh         sp, s6, s10
                  divuw        t2, a1, zero
                  remu         t5, s10, s6
                  add          s5, t4, tp
                  srli         s11, s0, 12
                  add          s10, a6, t0
                  lui          t4, 821652
                  mulhsu       s6, ra, s0
                  srliw        gp, a7, 6
                  mul          a6, s6, t5
                  sraiw        gp, t3, 23
                  nop
                  divw         s5, s2, s2
                  srai         s4, a3, 61
                  auipc        s8, 645278
                  srai         s1, sp, 62
                  and          a3, s7, s4
                  sraiw        s2, a2, 19
                  add          a2, a3, tp
                  divu         s10, s11, t0
                  divw         t0, s0, a2
                  slti         s6, t2, 614
                  ori          s4, s6, 1085
                  sra          sp, s8, a1
                  addiw        s6, a3, -1365
                  srliw        a3, ra, 24
                  slli         t6, s7, 61
                  lui          s5, 563552
                  addi         a5, t3, 1365
                  srai         s11, a5, 49
                  mulh         s4, t4, s6
                  remu         a7, t6, s11
                  srl          a5, a6, a3
                  remw         t5, s1, t2
                  sra          t4, s1, t3
                  ori          a3, t1, -1413
                  srliw        t1, a5, 25
                  srl          a3, a2, s6
                  slt          tp, s5, t4
                  sllw         s0, s2, a6
                  srli         s10, t5, 17
                  srl          s11, s7, a1
                  or           s0, s0, t4
                  ori          s4, t5, 542
                  auipc        s11, 661271
                  mulw         s2, gp, a2
                  srliw        s0, t1, 16
                  addi         a0, a6, -1520
                  remw         t5, a6, a3
                  slliw        s6, s5, 2
                  sllw         s0, s3, s10
                  srliw        ra, a2, 12
                  sltu         t0, a4, t6
                  addw         a6, s0, t0
                  sraw         s0, s4, a0
                  sllw         s9, s6, s4
                  xor          s10, a7, a5
                  remuw        s0, s6, s1
                  mulhu        tp, s2, t5
                  subw         t2, s5, t6
                  remu         t0, s11, gp
                  remuw        s11, zero, a2
                  sub          a3, t0, s0
                  remu         s8, a5, a1
                  sra          s5, s11, s2
                  sltiu        s5, s2, -1445
                  lui          s10, 339664
                  srli         a2, tp, 14
                  lui          s11, 163595
                  sllw         a5, t5, t0
                  lui          t2, 353482
                  xor          s5, a4, s10
                  remu         a2, ra, t1
                  srl          s2, t2, sp
                  mulh         a3, t4, a7
                  remu         s1, ra, t2
                  mulh         s10, s4, zero
                  andi         gp, s1, -443
                  sraiw        ra, a1, 18
                  mulhsu       s3, s3, t1
                  sub          a0, t5, t6
                  mulhsu       s9, a1, s10
                  addi         t2, a7, 1557
                  remw         gp, t1, s10
                  addiw        s1, a7, -1268
                  addi         t5, t5, -1609
                  slti         s6, t6, -693
                  sllw         s8, t1, s5
                  xor          t1, t6, s2
                  slti         a0, a6, -391
                  sraiw        a5, a2, 7
                  mulw         a2, s10, t4
                  xor          a5, a6, s1
                  xori         s11, t6, 722
                  slli         s5, s11, 15
                  srlw         t5, a4, s10
                  nop
                  slt          s8, ra, s10
                  subw         t6, a2, a2
                  auipc        a1, 6374
                  slli         s6, s1, 52
                  srli         s0, s7, 13
                  add          s3, a7, a2
                  srlw         a6, a4, s0
                  srli         s10, s6, 52
                  srli         t5, s11, 48
                  srl          a2, a1, t2
                  sub          t0, sp, s11
                  sll          s9, t3, s3
                  mulhsu       t4, a6, t0
                  remu         t5, s3, gp
                  div          a6, ra, s7
                  remw         t0, t1, a2
                  nop
                  mulhsu       a6, a7, a4
                  divw         t4, t6, s7
                  nop
                  add          t6, t4, t1
                  sra          t5, a1, a1
                  and          a0, a2, s9
                  and          a2, sp, tp
                  nop
                  remu         a3, s2, s10
                  slli         ra, s8, 8
                  lui          s4, 862671
                  divuw        tp, s2, a7
                  srli         gp, gp, 52
                  addiw        s0, a1, 1814
                  ori          t2, a5, 870
                  sraiw        s8, s8, 30
                  and          s1, s11, a6
                  slt          gp, a3, a0
                  lui          s4, 325966
                  srl          a3, t2, ra
                  sraw         s5, s11, a1
                  mulw         s5, s8, s2
                  srl          tp, zero, gp
                  and          t1, s6, t2
                  slliw        s0, s9, 10
                  nop
                  slli         t4, s11, 30
                  and          a1, sp, t6
                  slt          s5, s0, a3
                  auipc        gp, 690037
                  sraiw        s11, t6, 16
                  slliw        s4, s1, 21
                  sll          t2, a2, ra
                  addiw        gp, t3, -1157
                  ori          a3, t4, 1461
                  addw         s1, s11, gp
                  sraiw        a5, gp, 18
                  mulh         a2, tp, t0
                  xori         zero, s4, 89
                  slliw        t6, s7, 30
                  sub          s0, s0, t0
                  remuw        a1, gp, a5
                  xor          s5, t1, zero
                  auipc        gp, 679661
                  div          s5, t3, t3
                  srl          zero, s1, a6
                  add          a6, tp, ra
                  sra          a1, t0, t2
                  addiw        a0, tp, -1974
                  divu         a2, t1, s6
                  addi         s5, a6, 454
                  sllw         a5, tp, t0
                  slli         a1, s7, 3
                  divu         s0, t4, t4
                  sll          s5, s2, a3
                  srlw         sp, s5, ra
                  srl          a2, gp, s6
                  mulhsu       t2, s8, gp
                  and          t1, a0, s1
                  addi         s10, a2, 885
                  nop
                  mulw         a2, a2, s10
                  remuw        s6, a4, a4
                  sltiu        a0, s7, 915
                  sraw         s4, a1, t6
                  addw         a7, a3, s1
                  srl          t4, t5, s3
                  remw         t4, a5, a6
                  add          s11, t0, a5
                  addi         s5, a4, -907
                  xori         s0, s0, -1919
                  remw         a5, s11, s4
                  nop
                  sll          t0, t6, s0
                  add          a1, a2, s7
                  remu         a1, a2, t5
                  slt          a0, t5, a1
                  lui          t5, 584867
                  sltu         a7, s5, a4
                  srliw        a1, a4, 13
                  sltiu        gp, s1, 985
                  remu         ra, tp, ra
                  remuw        s5, a6, ra
                  nop
                  divu         s10, t2, s1
                  sltiu        t5, sp, 530
                  xori         a5, s1, -1925
                  sll          a0, tp, tp
                  divuw        s4, s6, gp
                  slli         s11, s8, 44
                  srl          s1, a2, gp
                  divuw        t1, s1, s10
                  addi         s11, a6, -1667
                  slt          s3, t3, zero
                  sltiu        a6, a5, 634
                  slt          sp, t4, a5
                  ori          t5, s2, 676
                  remu         s2, a7, s5
                  remuw        a1, a6, t4
                  divu         s4, s0, s7
                  remuw        a3, a7, sp
                  mulh         t5, s3, s8
                  subw         t2, s0, a6
                  slli         a1, t5, 21
                  divuw        a2, s5, t5
                  slliw        sp, t4, 14
                  auipc        a3, 24725
                  sltiu        t4, sp, -774
                  auipc        t1, 692661
                  srai         ra, t0, 44
                  ori          t4, zero, 1470
                  ori          s6, s7, 1359
                  and          s11, sp, t2
                  andi         zero, t2, 935
                  srliw        ra, s10, 13
                  slti         a3, a0, -1107
                  remw         s3, s9, a3
                  slliw        t2, t4, 24
                  mulw         s10, s0, s6
                  or           tp, tp, a3
                  divw         s4, s5, t5
                  srl          ra, s5, s7
                  or           t1, t3, t0
                  mulhu        a1, zero, s9
                  divuw        a5, t1, s10
                  or           t1, s7, s1
                  ori          s3, sp, 1628
                  mul          t6, t4, zero
                  srliw        ra, s6, 21
                  sraw         s8, a4, t0
                  auipc        s6, 987349
                  sltiu        ra, s1, -1210
                  lui          t6, 857797
                  sltu         s5, ra, s8
                  srl          t0, t5, s2
                  divw         t6, sp, s11
                  addi         t1, sp, -1171
                  div          t1, a3, zero
                  srl          a1, tp, a1
                  remuw        a7, a4, s11
                  and          s1, t5, s6
                  slli         s2, s4, 6
                  or           s11, s7, sp
                  mulh         s4, zero, t4
                  remw         t5, zero, t0
                  sll          sp, t1, a1
                  and          a1, t3, a7
                  lui          sp, 271468
                  sraiw        s2, t0, 13
                  ori          s6, zero, -1738
                  mulh         s4, a1, a0
                  divuw        t2, s9, s2
                  sll          tp, a2, a4
                  add          s9, a7, t0
                  sraiw        s4, s2, 31
                  sllw         a7, sp, s5
                  divuw        a5, s4, t1
                  mulw         sp, s0, s8
                  srl          t0, s2, a6
                  mul          t1, s10, s0
                  mulhu        s2, a2, t4
                  and          a0, a1, t5
                  slt          s3, a4, t2
                  xori         zero, s9, 982
                  sra          ra, a7, s11
                  remu         t0, s2, a7
                  subw         s4, s9, a7
                  mulhu        zero, tp, s0
                  ori          s5, s0, 64
                  addi         s10, a2, 1821
                  or           zero, gp, s11
                  subw         tp, a6, t1
                  div          a0, a4, s9
                  divuw        gp, a2, a1
                  add          a0, ra, a6
                  mulhu        a6, a4, s2
                  sltiu        s2, zero, -575
                  sraw         t2, a6, s3
                  lui          t1, 785537
                  sllw         t5, gp, a7
                  xori         s11, ra, -2044
                  and          s5, a0, s2
                  xori         gp, s5, 1338
                  andi         a1, a0, 805
                  srliw        tp, t5, 6
                  srai         s11, a2, 19
                  or           ra, s4, gp
                  slti         s1, ra, 1598
                  srl          sp, s8, a7
                  addi         t6, t3, 327
                  subw         s4, a5, ra
                  srliw        gp, a3, 8
                  rem          a7, s6, t5
                  addw         t4, ra, s10
                  slt          t2, t6, a6
                  sra          s6, s3, a1
                  sll          sp, t2, a5
                  slliw        a0, t5, 16
                  srlw         s2, t0, a3
                  sll          s9, s3, s11
                  mulw         a2, s3, ra
                  mulhsu       s3, s4, a2
                  remu         sp, s2, t6
                  and          s8, s0, s7
                  auipc        a5, 592971
                  addi         t5, a5, -981
                  mul          s11, s0, s2
                  auipc        s0, 703936
                  sra          a6, s4, s11
                  nop
                  srli         zero, s6, 27
                  remw         t4, t5, t5
                  srai         a5, a7, 28
                  xor          a1, gp, s5
                  divw         t0, gp, s1
                  sub          s4, a1, tp
                  lui          s10, 196588
                  sll          tp, t6, a7
                  div          s11, t3, s11
                  mulh         ra, s7, s10
                  slliw        ra, t6, 13
                  srl          s9, t5, a2
                  xori         s5, a3, -500
                  subw         t5, a5, a5
                  andi         a3, s3, 533
                  sll          ra, a0, s8
                  sltiu        t6, a2, -1934
                  addi         tp, t6, 1740
                  slli         gp, t1, 28
                  sltu         a3, a3, a7
                  remu         t6, gp, a2
                  auipc        a1, 586316
                  nop
                  add          s11, t4, t4
                  slt          s11, sp, s9
                  rem          s11, t4, s2
                  sltiu        s5, s6, -1281
                  srlw         t5, gp, a1
                  addi         a1, a2, 467
                  lui          a2, 553322
                  sraw         t4, s9, t4
                  remw         s5, s9, s6
                  sraiw        s9, s10, 12
                  xor          s11, a6, ra
                  divu         t5, s0, t6
                  add          tp, a4, t3
                  rem          a6, sp, s4
                  addw         s2, gp, s6
                  slt          s8, a4, ra
                  slti         ra, t3, -854
                  mulhu        a5, s11, s6
                  sub          t5, s2, a5
                  addi         a3, t4, -770
                  subw         s4, t5, s5
                  sra          ra, a4, s3
                  addi         a7, t2, -792
                  mulhsu       a1, a6, s7
                  nop
                  ori          s3, zero, 695
                  slt          s10, zero, ra
                  divw         s11, s3, s5
                  xori         a7, t6, -964
                  addi         tp, s5, 500
                  mulw         s6, a4, s3
                  srl          t2, s3, t4
                  sltu         gp, s0, a6
                  remu         s9, a5, s0
                  slti         s2, s7, -634
                  mul          s8, s1, a7
                  mulhsu       a0, a1, t3
                  add          s5, a7, s10
                  xori         s1, tp, 1175
                  sll          s8, s3, t1
                  lui          tp, 584679
                  slli         t2, s8, 1
                  sllw         a2, t1, t0
                  remw         tp, t2, s9
                  divu         s1, s11, s9
                  divuw        t6, s0, s7
                  ori          a1, a2, -396
                  slti         a2, t6, -1309
                  divw         t0, zero, s8
                  srli         s6, ra, 21
                  slli         a1, sp, 49
                  remuw        s8, s4, a5
                  sra          a7, t5, a6
                  and          a3, a0, ra
                  sltiu        a7, gp, -2039
                  lui          s1, 322329
                  srlw         a7, a1, s4
                  addw         s3, s9, s3
                  ori          s0, s0, -1805
                  mulw         a1, s0, a3
                  divu         s1, t6, s8
                  remw         t2, s8, a7
                  and          s10, tp, s1
                  addw         s3, a7, s0
                  srai         s0, s6, 51
                  addw         s2, a7, a2
                  slti         a7, t6, 520
                  sllw         s11, a6, t2
                  slti         s10, gp, -997
                  xor          a1, a7, s6
                  srliw        a2, zero, 8
                  slt          t6, s2, s1
                  mulw         s9, a5, s4
                  slliw        s11, t1, 16
                  nop
                  or           t2, tp, ra
                  ori          ra, ra, -428
                  mulw         gp, t4, s2
                  slli         s0, s8, 53
                  srli         a6, t2, 23
                  sltiu        s8, s7, -1196
                  srl          sp, s9, a1
                  sub          ra, a7, a4
                  divw         t1, s3, a7
                  addiw        sp, a3, 1208
                  srliw        s3, ra, 28
                  addw         a5, s7, s5
                  subw         a7, t6, tp
                  lui          s8, 146700
                  sraw         a1, t1, a5
                  and          t1, a2, s7
                  divu         s6, t2, zero
                  divuw        t5, t6, gp
                  sraw         sp, t3, t5
                  rem          s11, s8, s1
                  divu         a0, a3, a7
                  xori         s2, s2, -1034
                  divw         s6, s3, s5
                  sllw         t4, a5, a0
                  sraiw        sp, a7, 6
                  nop
                  srliw        s3, a0, 7
                  addiw        t1, s3, 1531
                  srli         s8, s1, 55
                  sra          a7, a1, a7
                  mulhsu       s3, zero, a0
                  addi         s1, s0, 1154
                  nop
                  slli         t1, ra, 46
                  mulw         zero, t6, s1
                  sraiw        s6, gp, 30
                  addi         s9, a1, 269
                  slliw        t2, a7, 2
                  div          gp, a3, t3
                  sraw         s4, t6, t6
                  slt          t2, t1, gp
                  sll          t1, s7, a1
                  srl          t0, sp, t4
                  addw         a6, a6, a5
                  srai         a1, s6, 54
                  lui          t4, 98450
                  slliw        s3, s0, 27
                  divu         s8, zero, a7
                  slti         s9, s9, -917
                  xor          s3, s9, a3
                  addi         s3, a4, 172
                  mulhu        a7, a7, a0
                  or           s6, a3, s4
                  srli         s8, t3, 61
                  srliw        a2, gp, 11
                  srliw        s6, t2, 24
                  remuw        s5, s10, s4
                  divu         a6, s3, t2
                  subw         a2, a4, a3
                  xori         a1, a2, -1889
                  slli         t4, s5, 24
                  mul          s9, a3, a3
                  srliw        a6, s8, 12
                  sra          t6, a0, t5
                  mulhsu       a2, t5, s11
                  addi         t5, s5, -10
                  nop
                  subw         s1, t6, s6
                  sll          s6, s10, t0
                  srliw        s9, a7, 29
                  ori          a2, s8, -295
                  srliw        a1, t1, 19
                  sltu         s9, s11, s1
                  mulhsu       a7, a2, a5
                  slti         a7, sp, 1519
                  srli         tp, t5, 43
                  srli         t0, s2, 17
                  sra          gp, t2, a7
                  div          s6, a5, s8
                  sraiw        s2, tp, 13
                  sllw         s5, tp, s10
                  srlw         a3, a6, t5
                  divw         s8, t5, t1
                  slli         t5, s5, 63
                  addi         t6, a3, -1921
                  auipc        s6, 913613
                  srai         a6, t2, 58
                  slti         sp, t2, 97
                  nop
                  andi         s10, t4, -1035
                  srai         s0, t6, 15
                  divuw        s2, a0, s3
                  auipc        s0, 384449
                  srliw        t5, s10, 28
                  xori         t1, sp, 80
                  srliw        sp, s4, 26
                  sraw         a6, t2, s3
                  sraw         s10, sp, s7
                  sraw         a6, a6, s0
                  remu         a7, s10, t6
                  divuw        t4, t2, sp
                  rem          s8, t0, a5
                  mul          s10, a3, s7
                  addi         s9, t4, -2041
                  sub          ra, s5, a0
                  srl          s6, a6, a6
                  andi         a2, s10, 783
                  divw         t2, t5, gp
                  slliw        gp, s10, 15
                  andi         t2, a5, -1819
                  subw         s3, a0, s9
                  mulw         s11, s9, a5
                  addw         t5, a6, s7
                  lui          a2, 27251
                  div          s3, t5, zero
                  slli         s6, tp, 30
                  divw         a2, a3, t5
                  remuw        a7, t2, a0
                  or           s3, a3, s9
                  add          a2, s10, t6
                  mulhsu       a1, gp, a0
                  divuw        a2, zero, t0
                  divw         s8, gp, s10
                  mulw         s4, a5, t4
                  slli         a7, s6, 19
                  srliw        t5, a5, 7
                  srai         s11, a4, 47
                  srai         gp, a7, 10
                  ori          s5, s2, 674
                  addiw        a6, tp, -949
                  sll          a7, sp, a4
                  sltiu        s10, s7, -1821
                  mulw         ra, s2, a0
                  mulh         t6, s8, gp
                  mulhu        s5, t6, s6
                  subw         gp, zero, s6
                  sraw         s1, s2, a3
                  srli         t2, sp, 28
                  slliw        s2, a5, 12
                  remu         s5, s7, s3
                  mulw         t6, a5, a2
                  mulhsu       s6, s1, a7
                  rem          s1, s7, a3
                  xori         s4, s9, -250
                  xori         s9, tp, -2037
                  ori          s0, s1, 1426
                  andi         t6, a5, -1511
                  ori          tp, s11, -354
                  remw         s10, s6, s5
                  andi         s5, a6, -692
                  slti         s8, s4, 301
                  srli         s11, a0, 47
                  mulhu        gp, a6, s9
                  srlw         s8, t6, zero
                  slli         a1, s1, 42
                  or           t6, t0, a1
                  or           s0, a5, s4
                  add          t4, s1, t1
                  srl          s11, a5, a2
                  divuw        s10, s4, s3
                  sra          gp, sp, a4
                  sltiu        s11, s4, -747
                  srlw         tp, a1, s0
                  remuw        s6, gp, s3
                  addiw        t5, s6, 1627
                  divu         t6, t4, s2
                  sltu         a3, s10, a1
                  sra          t4, s2, a7
                  sra          s1, s8, a3
                  sra          a6, a7, t2
                  sllw         sp, a0, s9
                  xor          zero, s2, t6
                  sllw         t4, a6, a0
                  sraw         s3, a7, a0
                  slti         t4, s5, 1582
                  and          t1, s5, a2
                  divu         a5, s9, a7
                  slt          s6, gp, t2
                  slli         s10, s10, 45
                  sraiw        zero, a6, 29
                  divu         s0, s9, s9
                  sll          t5, s5, a7
                  auipc        s6, 83003
                  lui          a6, 855964
                  nop
                  divuw        s8, a1, a7
                  andi         t6, a2, 38
                  addw         a1, t4, t2
                  sub          t2, t4, a7
                  remuw        s3, s6, a6
                  lui          s11, 953505
                  sltu         s0, s1, s3
                  sll          zero, s10, a2
                  divu         a6, s4, gp
                  divuw        a7, t2, sp
                  slliw        s2, a7, 7
                  or           t2, s2, t1
                  srlw         ra, sp, s1
                  addiw        sp, s10, 1886
                  and          a0, s11, gp
                  slti         tp, a2, 416
                  srliw        s4, s6, 18
                  mul          t0, t3, s7
                  mulhsu       s6, t1, a1
                  rem          a5, a6, a0
                  divu         gp, tp, s0
                  sll          sp, t1, a2
                  nop
                  sra          s8, a0, t4
                  addi         a1, a1, -1826
                  sltu         ra, a0, s7
                  mulhu        a7, a1, a1
                  mulhsu       a1, s9, s0
                  addi         s3, t5, -2010
                  slt          s4, t2, a1
                  sllw         s11, s0, a5
                  remw         s6, t5, a0
                  andi         t6, a4, -227
                  addiw        a6, a5, -1666
                  mulh         s3, s5, gp
                  rem          t4, t5, a7
                  add          s8, zero, a7
                  auipc        ra, 34128
                  mul          t1, s2, zero
                  divu         t1, s8, s8
                  mulhsu       a5, s5, s5
                  xori         s4, a3, 976
                  srl          gp, t3, a1
                  srliw        a1, s4, 29
                  div          s2, sp, s0
                  srlw         a6, s8, a5
                  srlw         a3, zero, a6
                  sll          t0, zero, s0
                  xori         s9, s1, -1219
                  srliw        a0, t0, 15
                  nop
                  subw         s0, s5, s7
                  addw         s5, a4, gp
                  remw         sp, t0, s8
                  sltu         s9, zero, zero
                  mulw         t5, s7, zero
                  xori         s6, a5, 1677
                  lui          t5, 70287
                  mulhu        t6, a7, t0
                  and          s11, s6, t6
                  srl          t6, a3, ra
                  divw         a3, s6, a1
                  rem          tp, a5, s6
                  srl          t5, t6, s5
                  mulw         s11, t4, a6
                  mul          s5, s10, a7
                  srliw        s2, t4, 0
                  srlw         t4, a2, ra
                  remu         a5, s1, s5
                  slliw        s10, s4, 28
                  mulhsu       a7, t6, t2
                  sllw         s1, tp, s4
                  srl          a1, gp, s3
                  addw         s11, t5, a7
                  ori          s5, ra, -1643
                  xor          s0, s5, a6
                  and          t1, t4, s0
                  or           s5, s2, ra
                  srl          t5, t6, s3
                  addi         s4, a4, 124
                  mulh         gp, a0, gp
                  slt          t6, t2, s2
                  remu         s6, zero, t3
                  addw         s6, a6, t6
                  nop
                  divu         t2, t6, s8
                  divu         t4, a2, t3
                  and          s4, a1, tp
                  remu         s0, s8, sp
                  slt          t6, s9, a0
                  mulh         sp, s0, s7
                  mul          t5, t2, t6
                  div          s6, t3, gp
                  ori          sp, a6, 1865
                  and          t6, a0, gp
                  sltiu        t1, s1, -1832
                  remu         tp, a0, s0
                  remuw        t4, a7, s4
                  slliw        t1, t5, 21
                  xor          a3, s6, s8
                  remw         t5, t6, t3
                  srai         s2, a6, 23
                  slti         a2, a0, -446
                  ori          a5, zero, 356
                  sll          sp, s2, s9
                  srli         s6, s11, 53
                  srli         t1, a4, 61
                  sub          tp, zero, t6
                  divw         t0, s7, a3
                  xor          a3, a1, s1
                  sll          s8, a4, a6
                  slti         s5, s9, -68
                  mulhu        s3, s4, zero
                  add          a2, zero, s6
                  sltu         s11, t3, s1
                  sltu         s4, t2, t3
                  slliw        a7, s10, 13
                  or           a7, s8, a7
                  sllw         zero, a2, a6
                  and          s6, a5, a0
                  add          s8, t1, a4
                  divw         s11, ra, t1
                  srl          s5, s0, a1
                  ori          s4, t2, -1589
                  addi         a3, t6, -251
                  xori         s8, a4, -1980
                  mulhu        s3, a7, a2
                  and          s0, s3, s3
                  addi         a0, t2, 1437
                  lui          s1, 955209
                  rem          a7, a6, t0
                  div          t5, s4, s10
                  srl          a5, s8, t4
                  divuw        a5, s9, a5
                  xori         s1, sp, 1118
                  slti         a7, sp, -1635
                  mulhsu       s10, a7, a4
                  ori          t0, s1, -562
                  srli         t1, gp, 27
                  auipc        t2, 209843
                  mulhsu       a6, a6, gp
                  sll          t1, t4, s4
                  mulw         tp, a1, s8
                  mulhsu       a5, gp, zero
                  sra          s6, t1, t0
                  or           a7, a4, s1
                  divu         s5, s0, a4
                  addw         tp, a1, s10
                  subw         t1, s11, s1
                  sra          s8, s2, a3
                  mul          gp, t0, zero
                  mulh         s9, s4, s6
                  srai         a6, gp, 34
                  mul          s6, a7, s5
                  addw         s10, s3, a3
                  slt          a7, zero, a1
                  or           t1, s11, a2
                  remw         a0, s9, s2
                  auipc        a6, 776675
                  srai         tp, t2, 25
                  sraiw        s8, s5, 16
                  srl          s9, sp, s6
                  remu         s6, t0, t2
                  srli         t6, s5, 34
                  mulhsu       s11, t3, a3
                  addw         t6, s8, a5
                  lui          t5, 587843
                  srli         ra, t2, 33
                  divuw        s9, s2, t0
                  addw         a7, s1, a3
                  divu         a3, s6, t4
                  mulh         s9, a5, a5
                  andi         t4, t4, -907
                  add          t4, a4, s1
                  subw         s3, zero, t4
                  srai         t2, a6, 1
                  nop
                  srliw        t1, s10, 8
                  slliw        t5, a1, 8
                  or           ra, a4, a1
                  srl          t0, t5, s8
                  sll          s4, sp, zero
                  addiw        s2, t6, 617
                  srlw         t5, s4, gp
                  srli         a0, t6, 27
                  slli         s3, t4, 41
                  slli         a3, a0, 51
                  srli         t2, a7, 11
                  slliw        s5, s10, 14
                  nop
                  sra          a7, a2, gp
                  slti         s2, t5, -1463
                  mulh         s3, ra, a3
                  slli         a5, ra, 35
                  addi         gp, s4, 1816
                  or           s10, tp, s3
                  nop
                  divu         s0, a6, t0
                  sltiu        ra, t5, -1882
                  divw         a5, a2, t2
                  mulh         zero, s5, s7
                  srli         ra, sp, 39
                  addw         t0, s0, sp
                  addiw        s4, a4, 594
                  addiw        a5, t0, 71
                  sraiw        s5, a3, 9
                  mul          a5, zero, a6
                  srliw        a7, s8, 13
                  srlw         t0, s10, t5
                  and          t5, s9, t2
                  remuw        a0, s11, s2
                  and          zero, a6, s7
                  slliw        a7, a2, 15
                  ori          s3, s3, -21
                  sltu         t0, s0, a0
                  slti         a5, t4, -808
                  sltu         s5, s5, t6
                  remuw        zero, gp, s6
                  srliw        s9, gp, 1
                  lui          sp, 454688
                  remw         tp, s3, s9
                  remw         t0, ra, a2
                  sub          s3, a1, a3
                  mulh         s6, s0, a4
                  slliw        s2, a4, 23
                  sltiu        a6, a6, 1702
                  sltu         ra, s8, t1
                  slliw        a3, zero, 22
                  remuw        s1, t6, s0
                  mulhu        t1, s6, t0
                  mulh         t0, a3, t4
                  srli         s1, a4, 61
                  slti         t1, a5, 1883
                  mulhu        zero, sp, s9
                  sub          s6, a3, s11
                  sraw         s0, zero, s4
                  subw         t0, s9, s1
                  slt          s4, t4, s6
                  srliw        s0, t4, 31
                  remw         tp, ra, zero
                  nop
                  subw         a7, s4, t3
                  sll          a3, s3, s9
                  sll          s2, t3, t2
                  slli         zero, s3, 16
                  remw         t2, tp, a2
                  auipc        a0, 822914
                  srl          t0, s0, s1
                  sltiu        a6, s6, 733
                  sraiw        a1, a6, 9
                  and          s10, t2, s9
                  slliw        s5, s11, 4
                  divw         s8, a0, t4
                  sltiu        s8, a0, 2039
                  lui          gp, 874596
                  slli         s11, zero, 26
                  lui          sp, 777434
                  slti         s11, a5, 1615
                  remw         t5, a3, a4
                  remw         a3, ra, a2
                  srlw         a1, ra, a6
                  sub          a1, a4, a7
                  subw         a5, zero, s6
                  rem          s3, a4, t5
                  remu         a2, s7, a0
                  sub          t2, s10, a3
                  remu         s0, sp, a0
                  add          ra, a5, s9
                  sraiw        t4, a2, 4
                  ori          s9, a5, -1849
                  addi         s11, s8, -2015
                  slti         s6, a3, 123
                  divu         a6, s6, t5
                  rem          t6, a4, t0
                  slliw        a3, t0, 4
                  auipc        a3, 985111
                  xor          t1, t2, s6
                  lui          s8, 700082
                  sltu         s0, s3, s6
                  sllw         a2, t4, s9
                  sub          a1, a5, s8
                  slti         s1, s9, -991
                  sub          t2, s9, s0
                  sraw         t5, t3, s7
                  andi         ra, s3, -765
                  rem          a2, s0, s3
                  xori         sp, t1, -1147
                  sub          t5, s0, a7
                  divuw        gp, a3, s11
                  slt          a3, gp, a6
                  mulhsu       sp, sp, a3
                  slti         a0, tp, -1978
                  srai         zero, sp, 32
                  sllw         gp, a6, a5
                  srai         s2, t4, 29
                  sub          t2, tp, a4
                  lui          s6, 152727
                  mulw         t1, t2, zero
                  srai         a3, a3, 2
                  mul          s2, t4, s5
                  xor          a2, s5, s4
                  remw         gp, a5, s6
                  sltiu        a1, s10, -2005
                  remw         s0, s0, s7
                  slliw        t2, sp, 12
                  sll          t1, a0, t0
                  xori         a5, s3, 1492
                  sra          a7, a7, s9
                  slli         s6, s8, 12
                  divuw        s9, a5, t4
                  mulw         a6, s10, a7
                  addw         t5, sp, s5
                  sltu         sp, t1, tp
                  remuw        a6, a6, t2
                  srlw         t5, a1, s3
                  mulh         a0, s0, a1
                  remw         a0, tp, t3
                  remu         s10, a1, a0
                  rem          s2, a5, t5
                  subw         t0, s9, a2
                  sltiu        t1, s10, 914
                  sra          ra, sp, a4
                  mulhsu       t5, s0, tp
                  sll          s3, t1, a4
                  srlw         s6, s11, s7
                  nop
                  addw         t2, t2, a1
                  divw         s8, s3, s8
                  sllw         s0, s0, a4
                  div          s2, s4, ra
                  sltiu        s6, s4, 899
                  slliw        a6, s4, 16
                  sraiw        s8, a3, 2
                  lui          t4, 149977
                  ori          ra, a7, -11
                  sll          s4, a2, a5
                  mulw         s2, s10, ra
                  srliw        s4, s10, 20
                  ori          a2, a5, -1816
                  subw         a3, t3, s2
                  or           s0, t6, a1
                  slli         s6, s7, 56
                  and          s3, s4, a0
                  slt          gp, s6, a0
                  slt          zero, s11, tp
                  slt          t4, t6, a4
                  divuw        a6, s7, s11
                  divuw        s5, t1, a3
                  sra          t2, zero, a2
                  and          s4, s1, t0
                  sltu         s0, s0, a7
                  xori         t5, tp, 1061
                  remw         a6, s3, a7
                  remu         s0, s3, a7
                  xori         s9, s9, -2012
                  sltiu        a0, s3, -1911
                  slli         a3, a2, 14
                  divu         sp, a3, s7
                  div          t2, t4, s2
                  add          a1, a2, s5
                  sltiu        s5, s3, 323
                  sra          s3, tp, a7
                  or           a5, s10, a1
                  addi         s0, ra, -921
                  sraw         gp, gp, tp
                  sraiw        a6, t1, 12
                  mulh         a0, a2, a2
                  addiw        s3, a1, -1140
                  srai         s6, t2, 48
                  addw         t5, a6, t0
                  slli         t2, a2, 41
                  srliw        t5, s9, 3
                  slt          s5, s10, t6
                  slti         s3, a2, 1842
                  slti         s1, s1, -1704
                  srliw        s2, t6, 22
                  subw         a2, s2, s5
                  addw         s0, a5, s11
                  sllw         s2, a3, a1
                  sltu         a6, a7, ra
                  andi         gp, a0, -227
                  sllw         t1, s6, s7
                  srlw         t6, t2, ra
                  div          zero, a4, s5
                  sraw         a0, a5, s10
                  mulhu        gp, s8, s8
                  mulh         a0, t3, a6
                  sltu         t2, t2, ra
                  remuw        t1, tp, gp
                  divw         a7, s9, s10
                  sllw         s8, a3, s4
                  rem          t5, s0, a1
                  sub          a5, a3, a6
                  and          t2, s5, a6
                  sltu         s5, s10, zero
                  and          s4, a2, s11
                  subw         s11, s9, a1
                  subw         s1, ra, a0
                  srl          s4, s2, gp
                  divw         s2, a6, sp
                  divuw        t2, a0, t1
                  addw         t0, s4, t3
                  srlw         a0, tp, t6
                  and          a3, s9, a1
                  sltiu        a1, gp, -755
                  sraiw        sp, t3, 24
                  sltiu        s11, t1, -1456
                  divu         s5, s11, t2
                  sraw         s8, s7, s11
                  mulhu        tp, s1, a0
                  sll          s0, ra, t5
                  ori          sp, s11, 415
                  srli         a0, s11, 6
                  sltu         t4, a3, s7
                  srliw        t5, s9, 13
                  mul          t2, a7, a4
                  slti         a3, s4, -1943
                  srai         s6, a4, 12
                  div          s2, t2, s10
                  mulh         a1, s2, zero
                  addw         s0, s10, s4
                  xor          s1, ra, t5
                  sltu         t6, a5, s10
                  sll          s8, t1, gp
                  ori          sp, t1, -974
                  or           s6, t3, s6
                  xor          t1, t6, zero
                  srai         t6, t4, 41
                  sltiu        t6, t5, -1032
                  srai         t4, a7, 2
                  ori          t5, s10, 780
                  srlw         ra, a7, zero
                  lui          a0, 991998
                  slliw        t5, s5, 1
                  srlw         s10, t6, t4
                  sllw         sp, s5, t6
                  rem          s0, t6, s1
                  slli         sp, s7, 39
                  nop
                  srliw        s11, s10, 6
                  divuw        s2, zero, t0
                  addi         t0, t0, -382
                  ori          a5, gp, -433
                  mulw         s9, a7, s0
                  div          s4, a0, t1
                  divu         a2, s11, a5
                  nop
                  mul          t4, s9, s5
                  ori          s5, s0, -74
                  rem          s1, t3, tp
                  slli         t2, s7, 10
                  sll          s3, t0, a4
                  remuw        a0, s7, a2
                  ori          s4, a6, -378
                  sraiw        s11, tp, 17
                  xori         a0, s4, -359
                  and          a5, s1, s3
                  remuw        t6, t3, zero
                  remu         s10, t5, s4
                  srl          a2, tp, t2
                  remuw        t5, t3, s2
                  srai         s11, a6, 40
                  sraw         s1, a2, sp
                  nop
                  subw         zero, s9, t3
                  srai         s10, s3, 47
                  andi         a6, a2, -723
                  srli         gp, s7, 59
                  divw         s3, a3, s0
                  xori         sp, s6, -769
                  sll          s8, tp, s0
                  sll          s4, s0, t3
                  div          a3, t0, s6
                  xor          tp, s11, tp
                  div          t4, a6, s2
                  sltu         s1, a3, sp
                  subw         s8, s10, t5
                  and          a2, s0, sp
                  lui          a2, 656973
                  xori         a0, a2, 539
                  or           a6, t0, s10
                  addi         a7, s1, 1646
                  slt          s5, t5, t1
                  mulh         tp, s10, a4
                  sllw         tp, s1, a2
                  auipc        t4, 617611
                  nop
                  add          t2, s9, t6
                  mulw         t0, s11, a4
                  mulh         t6, sp, gp
                  addiw        a0, t1, -829
                  div          t5, t0, a7
                  divu         s11, t3, s7
                  mulhsu       a0, gp, t3
                  slti         a6, s6, -1387
                  sub          t5, a7, sp
                  addiw        a0, t0, -426
                  mulhu        s3, s4, a3
                  addw         a5, s8, s4
                  slt          t5, s2, t5
                  sra          s0, s6, s5
                  sraw         t1, s2, s0
                  or           a6, s1, t0
                  sllw         a5, gp, tp
                  subw         s0, t4, s5
                  srlw         s5, s8, gp
                  addw         a7, t3, a0
                  ori          t1, a6, 812
                  ori          t2, gp, -1656
                  sltiu        s1, sp, 905
                  or           s10, s1, a0
                  lui          s1, 106770
                  slt          a6, sp, s7
                  addiw        s8, a1, -614
                  add          t2, a3, gp
                  addiw        sp, a5, 1372
                  sll          t2, t1, t1
                  div          a2, s11, s3
                  mulh         a7, s10, s3
                  mulhu        t5, a5, s6
                  auipc        t4, 401839
                  andi         s0, tp, 409
                  sub          s5, a4, s9
                  sltiu        a3, a3, 596
                  rem          a0, t4, s0
                  ori          ra, s9, -1365
                  sltu         s9, s4, t5
                  and          a7, a5, t3
                  remuw        t5, zero, s10
                  divuw        s3, gp, sp
                  remuw        t5, ra, a3
                  sraw         a2, t2, t5
                  slliw        t0, a6, 6
                  mulhu        s11, s5, ra
                  srli         t4, a5, 19
                  mulhsu       a1, t0, a1
                  remuw        s11, s9, t5
                  srliw        s3, a1, 23
                  divu         a0, s0, s7
                  srai         a7, gp, 16
                  auipc        s4, 272650
                  sub          ra, a1, t2
                  sltu         sp, s4, a1
                  srai         gp, t3, 63
                  addw         zero, a4, s7
                  sra          a3, t5, tp
                  slliw        t5, a3, 10
                  addw         s2, t1, t5
                  slliw        t5, ra, 17
                  ori          t0, s7, 512
                  nop
                  subw         a2, s9, a3
                  addw         gp, s7, s6
                  srl          t6, s11, a0
                  srli         s6, t2, 39
                  lui          s1, 651385
                  mulhsu       s10, s4, a0
                  mul          s1, t0, s8
                  nop
                  sll          s0, a3, s3
                  slli         t6, s10, 10
                  remw         t4, zero, a2
                  mulh         zero, s8, ra
                  or           t2, s7, a0
                  xor          a0, t2, s0
                  subw         t4, s8, t3
                  sltiu        s8, s2, -374
                  remu         s2, a5, zero
                  slt          s2, s1, a1
                  sltiu        s0, t6, 826
                  mulh         zero, a5, s3
                  slti         s9, t2, 1779
                  rem          ra, s4, s3
                  divuw        s6, t5, s10
                  sllw         a0, s6, zero
                  addiw        s10, a1, 1354
                  xori         a3, s8, 542
                  srli         s6, s2, 49
                  sub          s2, a7, a7
                  srai         s8, a1, 14
                  nop
                  sltiu        sp, s10, -1026
                  divu         tp, s4, s8
                  divuw        a0, sp, s9
                  slt          t4, a1, t1
                  srli         s0, t5, 27
                  subw         s3, s7, s1
                  mulhu        t6, a1, s8
                  mulw         t0, a6, a7
                  sub          a0, sp, a2
                  ori          ra, a6, 1595
                  mulh         s9, a7, a3
                  slt          s5, a4, zero
                  ori          tp, a0, 1065
                  remuw        t2, t5, a1
                  mul          a1, sp, a2
                  divu         s8, s3, ra
                  addw         sp, a0, sp
                  lui          s2, 1044524
                  addi         s4, a1, 2015
                  mulw         s1, t3, s4
                  addi         a1, s5, -1132
                  mulhsu       s11, s7, t2
                  addw         tp, a4, s3
                  mul          tp, a7, s11
                  slli         t2, t3, 55
                  xori         sp, s10, -1000
                  sraw         s6, s11, s8
                  mulhu        gp, sp, a6
                  sltiu        a0, a5, -1366
                  slti         s3, t5, -520
                  xor          t4, gp, a0
                  sltiu        s2, a0, 647
                  slt          sp, ra, s1
                  nop
                  mulw         a7, s0, s9
                  mul          s10, s5, a3
                  sltiu        s8, a5, 487
                  srai         s6, t2, 16
                  addw         s9, a2, a4
                  and          s6, sp, tp
                  divw         t1, t3, s9
                  divuw        a7, s3, t5
                  slt          s2, s11, s11
                  remu         a6, a4, s2
                  addi         s6, gp, 88
                  sra          t2, s2, s1
                  slliw        t4, s1, 28
                  mulw         a6, s3, t5
                  add          tp, a0, t6
                  sltiu        t6, t5, -1719
                  lui          sp, 22144
                  slti         t2, s10, -1166
                  addiw        t4, s0, 499
                  sra          tp, s0, t0
                  slli         t4, s6, 33
                  sub          s4, a6, s3
                  divu         s11, tp, s10
                  addw         t6, s0, a2
                  srl          s0, s2, zero
                  sra          s6, t0, a1
                  sub          t2, a5, s1
                  subw         t2, s11, s11
                  slli         t1, s11, 19
                  sltu         t6, s5, t0
                  srliw        a6, t4, 29
                  addw         a0, t5, s2
                  slt          a7, t4, a6
                  or           s9, t1, s2
                  addiw        s2, t5, -812
                  slti         tp, ra, 1275
                  mul          tp, s1, a7
                  and          s1, s6, t2
                  or           t1, a4, t0
                  sltu         a5, s1, a0
                  srai         zero, tp, 28
                  xor          t4, a3, s0
                  rem          s2, a7, a6
                  mulh         zero, t0, a3
                  sll          sp, t5, s4
                  divu         t1, s8, a4
                  xori         ra, s2, 1583
                  srai         s5, s10, 10
                  srai         s5, a1, 51
                  remw         t5, s8, s4
                  slt          t2, sp, t3
                  sub          s2, s6, s5
                  mulh         s2, t2, a4
                  rem          a6, s5, tp
                  sll          s4, t1, s10
                  ori          sp, s10, -1363
                  srl          a6, s2, s5
                  andi         a6, s11, 1555
                  slt          a3, s3, t0
                  ori          t5, t1, 646
                  srai         t1, s7, 11
                  xor          s6, t6, t6
                  sraiw        t5, ra, 9
                  rem          t2, zero, t4
                  slt          sp, s6, s10
                  divu         a1, a4, s3
                  xori         s8, sp, 556
                  ori          a2, s1, -115
                  srli         tp, a0, 32
                  subw         t1, s6, s11
                  mulw         t1, s4, t6
                  subw         s9, t6, s9
                  mulhu        t4, s9, s7
                  remu         a7, a7, t6
                  or           s2, s6, s11
                  lui          s0, 309965
                  xori         s3, t4, -1115
                  sltu         t5, t1, s6
                  remu         ra, t3, t3
                  sltu         a0, ra, t6
                  sll          s6, s4, t2
                  sltiu        a2, a1, 1136
                  divu         a2, s4, a7
                  addw         t1, s6, s9
                  or           s4, s10, a0
                  divw         tp, s9, t4
                  auipc        s11, 968984
                  div          tp, s0, a0
                  div          t1, t1, s7
                  remu         s0, t6, s11
                  addi         gp, a2, 161
                  sltiu        a2, a2, -476
                  sllw         ra, s7, sp
                  slti         s0, ra, 1881
                  slti         a3, a6, 1577
                  srl          t2, s2, a7
                  andi         t1, t3, -140
                  and          a5, a3, s7
                  sll          sp, tp, a4
                  addiw        s11, a1, 1855
                  sraw         s5, a3, s11
                  srlw         s0, t3, a6
                  slliw        t6, a5, 19
                  divu         t5, ra, zero
                  divu         s5, s3, a7
                  mul          a2, s4, a6
                  remuw        a5, ra, t4
                  auipc        t4, 152759
                  remu         gp, s10, t6
                  remuw        s5, ra, s4
                  divu         s10, t1, zero
                  addi         s2, s5, -759
                  xori         gp, t3, 1155
                  sraiw        a0, a2, 16
                  mul          t5, t2, s5
                  slliw        s1, t4, 7
                  add          s6, t1, s6
                  sltiu        s1, a0, -508
                  divuw        a5, s7, s7
                  srli         t1, sp, 9
                  srli         a7, a2, 32
                  sllw         s3, a1, s2
                  srliw        t5, a6, 4
                  sll          s0, t5, s11
                  sub          s2, s7, s7
                  xori         t5, s4, -921
                  mulw         gp, t3, t1
                  ori          s8, a3, -173
                  remw         a1, s8, a5
                  andi         t5, a2, 742
                  srliw        ra, t2, 0
                  srai         a5, a7, 2
                  slli         t1, s2, 3
                  addiw        s9, a4, 160
                  remu         tp, s4, s6
                  divuw        t1, zero, s7
                  ori          a1, s1, 1567
                  and          t6, a7, ra
                  mulhsu       a2, s10, a0
                  sra          s3, s4, a2
                  mulh         a2, s7, t0
                  mulh         t6, a6, t6
                  xori         s5, tp, -1044
                  slti         s0, s5, 262
                  mulhsu       s0, t4, s8
                  sraiw        t5, s2, 1
                  srliw        zero, sp, 29
                  slli         a1, a7, 0
                  srai         s4, s6, 22
                  mul          a2, sp, t1
                  sub          a2, zero, s2
                  add          s6, s3, s4
                  ori          a2, t6, -977
                  mulhsu       t1, gp, s11
                  srlw         s8, s7, t6
                  srl          gp, a3, a0
                  sll          t6, s9, a0
                  srli         s9, a7, 10
                  addw         t2, t6, s6
                  sub          t4, ra, t0
                  mulhu        sp, a6, a2
                  rem          ra, a6, s4
                  srai         t4, s9, 4
                  ori          t5, a1, 239
                  sraw         t1, gp, a6
                  slliw        gp, a3, 3
                  ori          s3, t0, 1514
                  srliw        t6, sp, 12
                  nop
                  mul          t5, a5, s3
                  addiw        ra, a0, -1958
                  sub          t1, sp, t6
                  slli         ra, gp, 21
                  srlw         a3, s6, a6
                  addw         a7, s8, s7
                  andi         t0, t0, 225
                  nop
                  slliw        s8, t6, 17
                  xor          a0, t5, s9
                  auipc        s10, 219683
                  nop
                  remu         s5, t4, t4
                  div          a6, s11, ra
                  slliw        t2, s7, 27
                  addi         s9, s1, -778
                  and          s5, t6, a5
                  auipc        s4, 948776
                  xor          s4, sp, a0
                  rem          s6, s4, a6
                  mulh         s3, s1, s4
                  sra          t2, s7, a0
                  xori         a7, s10, 1991
                  sraw         s9, a3, sp
                  remuw        t5, t0, t5
                  nop
                  addi         a3, t5, -789
                  lui          t5, 378037
                  srliw        t5, a3, 20
                  divu         s11, zero, t6
                  sltiu        s10, s10, -1537
                  andi         t0, a3, -1053
                  sraiw        s0, gp, 30
                  slli         s9, s5, 50
                  remw         s9, t2, s7
                  mulw         a1, s9, tp
                  srl          s4, t0, sp
                  srai         a7, a5, 44
                  add          s3, a7, a5
                  addiw        s2, s11, 155
                  rem          s6, a3, s8
                  srl          zero, s4, sp
                  nop
                  and          s8, s9, t2
                  remu         sp, sp, s4
                  and          zero, s1, t1
                  andi         a5, t0, 1077
                  remu         sp, a0, s1
                  slti         s8, t0, 911
                  sraiw        t1, a1, 26
                  srliw        t4, a2, 29
                  addw         s9, t6, s11
                  and          t5, a5, s11
                  or           s2, t6, s10
                  slliw        t6, ra, 7
                  or           t5, tp, a1
                  srliw        sp, s1, 15
                  add          a3, s11, t5
                  rem          s8, zero, zero
                  nop
                  slt          sp, a2, s1
                  sllw         tp, s0, zero
                  mulh         a3, t5, a5
                  slt          a7, s8, a6
                  add          s2, sp, t5
                  sltiu        t0, a0, 649
                  rem          a1, tp, s11
                  sllw         s4, t6, s9
                  sraiw        s8, gp, 2
                  ori          a3, t3, 1656
                  slli         zero, t3, 1
                  divu         a7, s3, tp
                  lui          zero, 259851
                  sra          s5, tp, s1
                  sllw         a6, tp, s5
                  sraw         ra, s9, a1
                  sraiw        s11, s11, 13
                  sraiw        s3, a5, 17
                  remu         t1, a2, a6
                  sltiu        t4, a7, -458
                  andi         sp, s1, 1772
                  ori          a6, t6, -1884
                  or           s11, a2, a4
                  srliw        t4, s7, 21
                  auipc        s4, 240141
                  nop
                  and          a0, s10, s4
                  srl          s0, s4, s11
                  auipc        s3, 776503
                  remu         s10, tp, s1
                  and          sp, s3, sp
                  sllw         t4, a3, t6
                  auipc        t5, 375028
                  sraiw        s4, tp, 28
                  sltu         s5, s10, ra
                  sllw         s5, t5, ra
                  or           t1, t4, s6
                  srliw        t6, t0, 0
                  divuw        gp, tp, a1
                  div          t0, tp, t4
                  ori          t0, tp, -2009
                  srlw         t6, t1, a3
                  mulw         s11, s3, t5
                  andi         a5, t4, -506
                  mulw         s8, s9, a3
                  mulw         t2, a7, s6
                  srl          s0, s9, sp
                  nop
                  subw         tp, s0, a4
                  andi         a7, zero, 1451
                  sraw         t6, t6, a3
                  sllw         s4, t2, a7
                  addw         zero, a0, gp
                  srli         s6, a6, 17
                  ori          s8, s10, 1803
                  srl          s4, s10, sp
                  ori          s0, s7, -595
                  sub          zero, a0, tp
                  remw         a2, t4, s9
                  remuw        t4, t2, s3
                  ori          s9, t1, 146
                  sub          s6, s11, s6
                  srliw        tp, s6, 29
                  mul          t4, t6, s6
                  remw         a3, a5, a0
                  div          a1, s8, a2
                  remu         s11, t0, sp
                  lui          s2, 542630
                  rem          ra, a3, s10
                  nop
                  mulh         t4, s0, sp
                  xori         t6, s2, -1179
                  addi         a6, s0, -280
                  sltiu        a6, s1, -85
                  sra          s1, s3, t5
                  rem          s2, t2, a1
                  srl          t4, s11, s10
                  xor          s8, t1, s2
                  sltiu        a5, s6, -970
                  sub          s8, gp, t4
                  sraw         t5, gp, zero
                  slli         s5, tp, 58
                  divu         t0, ra, s4
                  mulw         t0, a3, gp
                  remuw        ra, s7, gp
                  and          t6, sp, a1
                  addiw        a1, gp, -1085
                  mulhsu       t2, a2, s3
                  remu         s8, t2, gp
                  xori         s4, s11, -1108
                  addi         s8, a3, 1640
                  srlw         s4, s7, s4
                  divuw        a5, a2, t3
                  mulhu        s9, a1, t0
                  subw         s11, t4, s7
                  sltiu        t5, a5, -913
                  srai         t4, a5, 2
                  srai         sp, s7, 44
                  sltiu        s11, s2, -1210
                  sub          a6, a5, t5
                  srl          t6, a1, a0
                  sub          a6, s7, t2
                  divu         t4, ra, s4
                  sll          t0, a2, t6
                  srlw         ra, s7, t1
                  xor          s5, a2, s9
                  ori          s1, s2, 184
                  rem          sp, s4, t4
                  addw         s5, a7, ra
                  remw         s10, a6, s0
                  sll          s8, t2, a0
                  mul          a0, t5, a4
                  lui          t2, 492918
                  ori          t2, s9, 1202
                  addiw        a0, a2, -1696
                  xori         tp, s4, -303
                  divu         a2, a3, a0
                  sub          a0, s7, a0
                  mulh         tp, s6, s0
                  andi         tp, a1, 817
                  or           s10, t0, s11
                  sltiu        tp, t5, 1486
                  sltu         s3, s0, a7
                  add          a2, s0, a6
                  sraw         a0, s1, s6
                  auipc        t5, 939065
                  mulhu        a5, s4, a2
                  andi         sp, s2, 2031
                  srl          t1, s0, a2
                  div          t1, s7, s7
                  remu         t4, s2, s9
                  srl          s11, t5, s3
                  slli         t5, ra, 20
                  xor          ra, a4, s8
                  mul          a7, ra, zero
                  srai         tp, s8, 1
                  slliw        s10, t0, 17
                  slliw        s2, s7, 29
                  srl          a3, s5, a0
                  divw         a6, sp, s1
                  xor          gp, a0, s2
                  mulh         tp, s5, t0
                  add          s8, a1, s3
                  slti         t1, a7, -1228
                  slli         s8, s8, 53
                  slli         s2, t6, 21
                  sltiu        s9, t0, 1839
                  xori         a0, t4, -1927
                  slli         t5, t6, 54
                  remu         t1, s8, s3
                  remuw        t6, s3, a5
                  mulhsu       s6, t6, t1
                  srliw        s5, a7, 17
                  mulh         ra, a7, s11
                  sltu         t1, a4, t5
                  div          s8, s4, a5
                  sub          a3, s7, tp
                  addiw        t0, a4, 1518
                  remuw        t5, a0, s5
                  addi         s10, a0, -1713
                  sll          t4, s2, s9
                  add          a6, tp, tp
                  remuw        s4, t5, s7
                  mulhu        s0, s4, s6
                  addw         t5, a7, t0
                  addw         a5, s8, s5
                  remu         a5, s0, t1
                  srai         zero, a6, 2
                  xori         t1, a7, -628
                  lui          t4, 258325
                  subw         s4, s5, s7
                  mul          t2, t5, t0
                  srl          t4, t3, t1
                  srai         sp, s7, 24
                  srai         a2, s4, 57
                  mulhu        s9, a6, zero
                  sraw         a0, a1, gp
                  lui          t4, 267196
                  srli         s1, s6, 16
                  slliw        t0, s0, 9
                  divuw        gp, t6, s4
                  rem          zero, a1, s11
                  sraw         t5, s4, s2
                  auipc        s0, 880853
                  slti         a7, sp, -1716
                  slliw        t1, tp, 22
                  or           s10, t1, t1
                  srl          zero, s6, a7
                  srl          t1, a0, a6
                  sra          a5, s10, s6
                  sraiw        s4, s3, 14
                  xor          t0, t1, s8
                  ori          a7, ra, 1327
                  xor          s8, a2, s4
                  srlw         s3, sp, s10
                  sltu         s8, t6, a3
                  divu         s3, a0, a4
                  xor          gp, a6, t2
                  rem          s5, s4, t1
                  srl          gp, t3, s0
                  slti         s0, a6, 1973
                  sll          t5, t3, t5
                  addiw        t2, s7, 399
                  mulw         t4, s8, a7
                  div          s0, t0, a7
                  sltu         s4, s0, s11
                  sltu         gp, a0, s9
                  andi         s5, a2, 847
                  mulh         t4, s2, a3
                  sltu         t4, s5, t5
                  divu         tp, tp, a4
                  addw         s8, s6, a7
                  sltiu        t5, zero, -703
                  divu         s11, s7, t3
                  xor          ra, s8, a7
                  sltiu        gp, a7, -1455
                  ori          s1, s5, 450
                  sraw         a5, tp, s1
                  div          s4, a2, s9
                  mulhsu       s3, s0, s5
                  and          s11, ra, s9
                  rem          gp, t1, t4
                  sraw         s9, s6, a0
                  sltu         t4, s0, t1
                  xori         t6, t1, 955
                  sll          t0, t5, t5
                  xor          s6, s8, s11
                  mulhu        gp, s5, t4
                  mulhu        s1, t1, t3
                  srliw        a0, t3, 23
                  xori         t4, gp, 1046
                  and          s5, zero, tp
                  rem          s1, tp, a2
                  mulw         a6, s7, s4
                  sra          s5, t5, t1
                  remuw        a5, a7, s7
                  div          s10, s2, s10
                  srlw         s1, zero, tp
                  mulhsu       s3, s8, t2
                  slti         a1, s8, 1743
                  remu         a3, gp, t3
                  nop
                  addw         a7, s11, s10
                  and          t1, tp, a5
                  srliw        s1, s9, 5
                  remw         s9, t4, t2
                  srliw        s0, a6, 23
                  remw         s6, gp, s8
                  div          zero, tp, gp
                  sraw         s1, sp, s9
                  and          a3, s5, a2
                  xor          s4, a1, s2
                  divw         a7, s3, a2
                  div          a0, s1, t1
                  divuw        t4, t5, s7
                  mulhu        t4, a6, s6
                  srai         t6, a6, 45
                  or           a2, a7, s6
                  slli         s0, a6, 19
                  srlw         gp, t4, a7
                  divw         a7, s3, a2
                  remw         s2, t1, ra
                  addw         s9, s2, a6
                  subw         s5, sp, s2
                  remw         s9, a4, s9
                  sllw         a0, a1, t4
                  mul          t6, zero, s10
                  sra          t4, s4, s9
                  xor          gp, s2, s1
                  sub          a2, t2, t5
                  sllw         a7, s11, s9
                  xori         gp, s4, 230
                  lui          a1, 913691
                  div          a3, t4, t1
                  remuw        zero, gp, s1
                  nop
                  mulhu        tp, a1, s3
                  srlw         t2, s5, t2
                  slt          gp, a7, tp
                  mulh         a5, t1, a5
                  slti         s8, s4, -478
                  and          s9, s3, s4
                  addi         zero, a7, -1162
                  mul          s0, s3, s4
                  mulhsu       t6, t3, s11
                  sll          s6, a6, s6
                  remw         tp, t3, a6
                  lui          a5, 931417
                  addi         a0, zero, -538
                  sltiu        a6, s5, -1429
                  ori          a0, s6, -1725
                  sltu         tp, a0, s11
                  addw         s10, ra, t0
                  sub          t2, s11, tp
                  or           s6, s9, s0
                  xori         a7, t2, 1772
                  mulh         t4, ra, t5
                  divw         t4, s2, a7
                  sllw         s6, a7, a6
                  add          s4, a5, s11
                  divuw        s2, a2, s4
                  mulhu        gp, a2, t3
                  div          a7, s11, a2
                  subw         t5, s11, s3
                  xori         a2, s11, -973
                  srl          a1, t4, t5
                  srliw        s6, s0, 0
                  mul          ra, s7, t4
                  sltiu        s0, s3, 1798
                  rem          s6, s1, t6
                  or           tp, a2, s2
                  xor          s11, t6, s9
                  slt          t0, a6, s3
                  sraw         s1, s6, s10
                  auipc        t4, 850822
                  auipc        ra, 482245
                  slti         s6, sp, 1456
                  or           t1, s0, s2
                  srli         s2, s4, 50
                  mulhsu       t5, a7, a5
                  and          a2, s1, a6
                  addiw        s8, t0, -412
                  srliw        s6, a4, 8
                  or           s9, a0, t2
                  rem          t5, t3, s7
                  addi         t6, a7, 526
                  mulw         a2, zero, tp
                  divuw        a2, s10, a4
                  sra          s6, s9, a3
                  subw         tp, a7, ra
                  mul          a7, t4, t3
                  mulw         a6, t0, s8
                  sub          s5, t3, t2
                  srlw         a5, t3, s6
                  srl          s8, s9, t2
                  sllw         a0, t3, gp
                  sltu         a2, s5, t1
                  andi         t1, s1, 1958
                  divuw        s11, t6, t4
                  divu         a0, ra, s3
                  sub          s5, t5, t4
                  sltiu        a5, t2, 577
                  divw         t1, t0, s6
                  sllw         a5, a4, a3
                  addw         s6, tp, s6
                  addiw        a2, s7, -394
                  mulw         a3, t6, t2
                  mulhu        a2, t6, s11
                  sltiu        s1, t5, 796
                  sll          t0, a1, a2
                  sltu         a1, s1, s10
                  addi         ra, s3, 39
                  remw         t0, a0, tp
                  mulhsu       s3, t5, t4
                  remuw        t0, a7, t5
                  mulhsu       t1, a2, a6
                  divw         a5, s6, sp
                  addiw        ra, a1, 507
                  addi         t1, s1, 1150
                  addiw        s8, s7, 160
                  srl          s0, sp, s11
                  slti         t2, s8, -850
                  sra          tp, s4, t5
                  slliw        t6, t5, 21
                  xor          tp, s1, s5
                  andi         s3, a6, 96
                  srliw        t5, a3, 20
                  ori          s3, s11, -1598
                  auipc        t1, 342817
                  sll          t1, s10, s8
                  nop
                  xori         t2, s10, 1172
                  divu         a5, s9, a2
                  xori         s0, t4, 1812
                  ori          s11, tp, 262
                  mulhu        ra, t6, a4
                  sub          s3, a3, t6
                  sltiu        a2, t5, 1553
                  srliw        s11, s0, 10
                  slti         s6, sp, 804
                  xori         a2, s2, 219
                  mul          a5, a3, s6
                  sllw         t1, a3, t0
                  auipc        gp, 363925
                  slliw        a0, t0, 14
                  sllw         gp, s5, s1
                  addw         s6, a6, s6
                  remuw        a7, t3, s5
                  sub          t1, s0, t0
                  divuw        t2, s0, a2
                  mulhu        a1, s11, s3
                  srai         t6, a5, 57
                  andi         s8, s3, -978
                  remw         s11, a7, s1
                  remuw        s0, s3, a4
                  slliw        ra, s10, 19
                  lui          a3, 238889
                  slt          s5, s11, s8
                  mulhsu       ra, s1, a7
                  auipc        a6, 957234
                  ori          s5, s2, -493
                  srli         s8, s1, 25
                  add          a7, gp, a7
                  mulw         a0, t6, s1
                  srli         a5, t4, 29
                  remu         t4, t4, t4
                  srl          t6, a0, s4
                  auipc        a7, 415489
                  sraiw        t1, t3, 16
                  or           a3, s1, s10
                  srlw         s10, tp, t1
                  mulh         a5, s1, a6
                  srai         s3, a2, 3
                  slliw        t4, s8, 26
                  sltiu        a3, s10, -1670
                  srli         s0, s2, 52
                  mulhsu       sp, zero, s11
                  xor          sp, tp, t1
                  sub          a5, t6, s3
                  srli         s5, t2, 48
                  sll          tp, a3, s6
                  add          t1, s11, sp
                  mul          s11, ra, a6
                  nop
                  slti         t1, gp, -622
                  andi         t2, s0, -278
                  addiw        zero, s4, 2033
                  divuw        s11, a3, a7
                  srlw         sp, t3, t6
                  slt          a5, a0, t3
                  slliw        s3, t2, 24
                  divuw        zero, t6, s11
                  sraiw        s8, t0, 21
                  addiw        a2, t1, -1377
                  sllw         zero, zero, a4
                  xor          a2, s7, t0
                  auipc        ra, 1042336
                  subw         s4, zero, t4
                  srl          t2, a3, s10
                  slt          gp, a5, t3
                  rem          ra, t1, s4
                  ori          s3, tp, -1058
                  sraw         ra, s2, a5
                  or           zero, zero, s2
                  subw         s4, s7, s3
                  srl          t1, t2, s6
                  xor          s3, a6, s0
                  sraw         sp, t1, zero
                  addi         ra, a0, -1233
                  sltu         t0, a2, s11
                  mulh         a0, a3, s10
                  srlw         t4, ra, sp
                  or           s10, ra, s11
                  srl          a2, gp, gp
                  div          t6, s4, a4
                  srl          s6, ra, zero
                  srli         t5, t4, 44
                  divw         s9, a1, s0
                  sltu         t2, t2, s2
                  divuw        s1, t1, gp
                  divw         a2, ra, a0
                  divuw        s6, s9, t4
                  slti         a5, a5, -678
                  slt          ra, a6, t5
                  addiw        s4, sp, 1792
                  slti         s0, a1, 579
                  mulhsu       gp, t6, a7
                  andi         a5, a1, -272
                  remuw        s2, s1, s10
                  or           ra, t0, gp
                  mulhsu       s5, a7, a3
                  mulhsu       a2, s7, a6
                  sltu         s3, s4, s5
                  sraw         a0, t0, ra
                  and          s9, s9, s3
                  and          t5, t1, s10
                  srlw         t5, t1, t2
                  mulw         a5, ra, s0
                  srl          sp, gp, a3
                  slt          sp, zero, t3
                  srl          t2, a6, s11
                  srl          s6, a7, tp
                  mulhu        a1, s6, a7
                  divw         a1, zero, t1
                  addw         a7, s7, t5
                  sllw         s9, a3, a6
                  srl          s1, a1, s3
                  sraw         t4, a6, a6
                  slli         a0, s5, 28
                  mulh         s4, s11, a7
                  remu         a0, a1, t5
                  srai         s6, s1, 1
                  addiw        a7, s5, 1769
                  mul          tp, t3, s6
                  slti         a6, a3, -118
                  rem          zero, s6, s3
                  addi         t0, s4, -202
                  sllw         a7, s6, a1
                  srlw         a1, a5, t6
                  sllw         ra, a4, a3
                  add          gp, s9, a1
                  divu         tp, ra, s1
                  addiw        s1, a0, -1937
                  mulh         s5, a5, tp
                  sll          zero, a6, zero
                  sra          s6, a0, t3
                  srl          s10, tp, gp
                  sra          t0, sp, tp
                  srliw        s2, sp, 27
                  remu         sp, t6, s9
                  add          s1, s1, a1
                  lui          s10, 46461
                  addw         a7, s6, t0
                  mul          s4, s1, t0
                  ori          s10, a7, 1285
                  ori          a3, s9, 698
                  divu         s2, s5, gp
                  srli         s4, a5, 37
                  divu         s3, tp, s2
                  divw         s1, sp, t3
                  subw         s2, t6, t3
                  srl          s2, a2, t1
                  subw         s2, s2, s5
                  addiw        s5, a2, -1554
                  sra          s4, ra, tp
                  sraiw        gp, a3, 2
                  xori         a2, s11, 1107
                  and          t2, tp, t2
                  mulhsu       a0, a4, s0
                  slli         s9, s8, 14
                  mulh         sp, s0, s3
                  sraiw        t2, a2, 27
                  addi         a5, t2, -672
                  addi         a0, tp, 289
                  mulhu        s10, a4, s2
                  srlw         s3, a4, t1
                  remu         sp, s8, a7
                  divu         a3, s4, a4
                  slli         s8, t4, 54
                  sra          a7, zero, sp
                  divuw        a2, a4, s9
                  mulhu        t2, a1, t3
                  addiw        s5, a6, -1661
                  div          s4, s3, a3
                  xori         t1, t3, 1006
                  slt          t5, a4, a1
                  mul          s10, s9, a1
                  and          t0, a7, t5
                  sltu         t0, s9, t6
                  sltiu        s11, sp, -123
                  sra          s4, s11, t0
                  rem          t0, t5, t0
                  auipc        s0, 429777
                  remu         t1, a5, t5
                  sll          s6, a2, s3
                  nop
                  xor          sp, a1, s5
                  mulh         t4, t4, t3
                  divuw        a7, s4, a6
                  mulw         t2, zero, a4
                  auipc        s10, 76522
                  mulhu        t5, sp, s6
                  addw         t1, a4, a6
                  sraw         t6, t3, a1
                  mulhu        s5, t1, t1
                  sltiu        a3, sp, 517
                  addi         s5, gp, -983
                  andi         s2, a1, 1528
                  lui          a0, 964129
                  slti         s11, t4, 1346
                  sltu         a3, a3, s9
                  sub          s5, t0, t0
                  sll          s0, s6, s4
                  auipc        tp, 723829
                  andi         a1, t5, 126
                  sra          t6, s0, sp
                  mul          a5, s11, a1
                  remu         s4, t5, ra
                  sll          tp, t1, t1
                  mul          a2, sp, s10
                  remw         t2, s8, a7
                  mul          a3, s5, a3
                  sraiw        a2, s8, 27
                  sraiw        ra, t2, 0
                  subw         s6, t2, gp
                  lui          s3, 562286
                  sraw         a0, s4, a1
                  subw         t0, t1, s4
                  sraw         t4, s7, a5
                  sraiw        s4, s4, 13
                  sra          s11, s6, s1
                  div          a3, t1, s9
                  divu         t4, t0, s1
                  divw         a3, gp, s5
                  mulhu        ra, a3, s0
                  mul          s1, gp, s8
                  divuw        a2, s11, s4
                  sra          a5, a3, s8
                  xori         s1, s9, 1367
                  or           s0, s3, t2
                  slliw        t0, s3, 20
                  srai         gp, gp, 53
                  remuw        s6, s11, zero
                  srlw         t1, t4, t2
                  srlw         a2, s11, s11
                  mulw         s3, t2, t1
                  ori          s4, a3, 274
                  xori         s0, t3, -1983
                  nop
                  and          t1, t5, a1
                  lui          a0, 119128
                  lui          s4, 327690
                  srli         s5, a2, 55
                  slt          s5, t5, s5
                  sltu         s10, a5, a7
                  srlw         a2, s7, s11
                  nop
                  andi         t4, s5, 370
                  lui          a5, 208077
                  mulh         s4, s10, s11
                  sll          s3, a0, sp
                  srli         sp, t3, 32
                  addi         a7, a6, 239
                  mulw         s11, a2, s4
                  mulhu        a2, s0, t2
                  sraiw        t5, t6, 13
                  ori          a7, s6, -929
                  srai         s8, s11, 10
                  add          gp, s10, tp
                  divw         t2, a6, t2
                  add          s2, a6, s7
                  addw         t6, a6, t4
                  srlw         s5, s2, s6
                  slt          a3, t4, zero
                  slt          t5, t4, s0
                  srai         s4, t6, 29
                  lui          s3, 758535
                  mulhu        t1, a1, tp
                  sllw         t0, s8, tp
                  auipc        s4, 157722
                  slliw        t6, s7, 31
                  add          s10, gp, a0
                  sraw         s11, a7, s6
                  or           t6, s7, s0
                  auipc        t4, 610442
                  sll          ra, t4, a2
                  andi         s6, s5, 2033
                  slliw        t4, a3, 26
                  rem          tp, s10, s7
                  slliw        s1, sp, 2
                  mul          s8, s2, a1
                  slti         s5, s7, -494
                  addi         a7, a7, 397
                  srai         a1, t0, 17
                  ori          a1, t0, 1466
                  slli         gp, s9, 52
                  sra          a5, s5, a7
                  xori         gp, t3, -618
                  divu         gp, t1, s1
                  slli         s10, a7, 4
                  srl          s9, s3, s8
                  srlw         t4, s9, s3
                  mulw         t6, t2, t0
                  mulh         a3, tp, t6
                  remw         s5, s6, a7
                  sltu         a0, a2, s11
                  and          ra, a7, s10
                  srai         a7, t1, 0
                  addiw        s5, s9, 1760
                  rem          s5, gp, t4
                  sra          a7, a3, s11
                  remw         a5, s6, t2
                  divuw        t0, zero, a3
                  slliw        a7, a6, 4
                  sltu         s6, s10, t3
                  sltiu        ra, s9, 1726
                  addiw        t5, a6, -821
                  nop
                  sltiu        a1, s0, -1233
                  sltu         t6, s2, sp
                  remuw        ra, s1, s1
                  mulhu        zero, t2, s6
                  sll          a7, a4, s9
                  remw         s1, a7, s8
                  mulhsu       a2, a5, tp
                  sltiu        s3, s10, -336
                  divuw        s10, s5, s6
                  srl          zero, a6, ra
                  sltu         a5, s9, s3
                  xori         a2, s7, -901
                  sraw         t5, a2, t5
                  mulhu        t2, ra, gp
                  srlw         a7, s8, zero
                  or           a3, tp, s7
                  sltu         a6, t1, a3
                  divw         t4, a5, a6
                  addw         s5, t4, a4
                  addw         a1, t5, t3
                  ori          t2, t5, -1224
                  sub          t1, ra, a7
                  sub          s9, a6, s7
                  slli         tp, s9, 45
                  sra          zero, s11, t1
                  srai         t4, s3, 59
                  div          t5, s3, ra
                  addi         t0, s1, 1609
                  sra          a2, a6, ra
                  addiw        sp, a6, -1654
                  sllw         t4, s3, s5
                  rem          s2, a2, s2
                  rem          a3, t5, t6
                  remu         a2, t5, ra
                  sub          a0, s3, ra
                  nop
                  slt          t5, a1, s4
                  srai         a3, a3, 60
                  lui          sp, 944529
                  and          gp, s7, tp
                  nop
                  addi         a0, s2, 305
                  srlw         sp, t2, s9
                  addi         a3, s2, -1887
                  lui          ra, 229437
                  srliw        a5, t1, 29
                  sltiu        s6, a7, -1824
                  mul          t1, a7, a4
                  sltu         s6, s3, gp
                  remw         s9, t1, s7
                  andi         a6, s3, 1631
                  sraiw        t1, a6, 24
                  sraw         t1, t5, s3
                  sra          a2, a6, t6
                  mulhsu       zero, s0, a7
                  divw         s9, a2, t0
                  sllw         t0, gp, s11
                  xori         s6, s11, 686
                  sltiu        t0, t2, 1256
                  remuw        s8, a1, ra
                  sra          zero, s9, t4
                  ori          s4, s6, -851
                  addiw        a6, t2, -1742
                  sraiw        sp, t0, 14
                  slti         s10, t4, 907
                  auipc        sp, 816083
                  addi         s5, a6, 1723
                  remw         ra, sp, s11
                  srli         s9, gp, 57
                  sub          s1, s6, s3
                  slti         a6, gp, -726
                  remuw        t5, s0, s7
                  sll          s4, a4, s1
                  sub          t5, s3, a6
                  divuw        a0, s7, a6
                  nop
                  divuw        s1, a5, s4
                  sra          t4, s1, a5
                  sraw         sp, s0, s6
                  andi         s6, s0, -1689
                  sra          a5, a2, s3
                  mulw         t2, tp, t2
                  mul          a5, t3, s2
                  rem          t5, t3, s3
                  srai         a5, t5, 39
                  lui          t6, 654325
                  mulw         a6, t2, s2
                  divw         t0, a7, s10
                  slt          a0, a2, s4
                  add          t0, sp, ra
                  xori         s9, a0, 2007
                  and          a7, a6, s7
                  srliw        t4, tp, 10
                  srlw         tp, a7, t3
                  sltiu        t0, a6, 871
                  sll          s0, a0, a0
                  sraw         t1, a5, t5
                  addi         s9, a0, 418
                  lui          s5, 80880
                  mulhsu       s4, a3, s5
                  mul          tp, ra, a5
                  andi         a3, a2, 85
                  or           s5, a6, t3
                  mulw         t1, s0, a0
                  sllw         a0, ra, s11
                  sra          a7, t2, a0
                  mulw         t4, a2, s4
                  subw         t6, a2, s1
                  slliw        a2, a2, 0
                  or           s2, s2, s10
                  srl          t2, a6, tp
                  srl          t1, s5, a2
                  xori         a0, t3, -1244
                  srl          s3, s5, t5
                  sll          a2, zero, t3
                  add          a5, t2, t4
                  sllw         s2, zero, a1
                  subw         a2, a1, a4
                  addiw        a7, s4, -140
                  or           a7, a1, t3
                  add          t0, s10, tp
                  mulhsu       a1, t5, t0
                  mulh         a6, t3, s11
                  auipc        s0, 298639
                  srl          zero, a5, a1
                  mulhu        t1, t4, a3
                  mulhsu       s2, ra, a7
                  sltu         t6, t6, zero
                  addw         ra, a5, ra
                  nop
                  sraiw        a5, s2, 2
                  sraiw        t5, a6, 2
                  div          t4, s10, s10
                  rem          zero, s10, a2
                  srli         s10, s3, 2
                  mulhu        a2, gp, sp
                  ori          sp, t0, 1758
                  divu         s11, t1, t4
                  sll          tp, zero, a6
                  sltu         s3, t0, s0
                  auipc        s9, 44702
                  addi         a7, s11, 655
                  sraw         s8, s5, t0
                  auipc        a0, 952226
                  mulhsu       t2, s9, t3
                  rem          t1, s5, a3
                  rem          zero, t0, t6
                  mul          a7, a4, s0
                  slli         s0, s1, 57
                  mulh         tp, s6, a0
                  sll          tp, t4, sp
                  addw         s6, zero, sp
                  or           s3, s4, ra
                  slt          a3, a4, s9
                  sltu         s6, t2, s7
                  slliw        s11, t5, 31
                  divw         a2, s5, s3
                  mulhsu       a3, s4, s0
                  addw         a5, s4, t3
                  addw         t5, a2, s0
                  divu         s10, a3, a2
                  slt          s10, a1, a5
                  srli         tp, a0, 39
                  remu         t1, s11, a6
                  sltiu        a1, a3, -153
                  mulw         s0, t4, t3
                  divw         a2, s10, sp
                  subw         t1, t5, s9
                  sub          s11, t0, a2
                  andi         t4, t5, -1785
                  remuw        s2, s0, t4
                  mul          tp, t6, a6
                  add          s11, s3, tp
                  xor          zero, s4, a2
                  addi         s11, t6, 1768
                  divu         t0, t0, s2
                  divu         s3, s1, s0
                  slli         a2, s0, 41
                  divw         ra, s6, s9
                  xor          tp, t1, t1
                  slti         t5, s9, 1455
                  sll          gp, t1, s10
                  sub          s10, s8, s2
                  slliw        s11, t6, 2
                  divu         s2, t2, s7
                  xor          t1, s6, s10
                  sll          s11, gp, sp
                  mul          tp, a4, a1
                  srai         a0, s1, 16
                  mulh         a2, a4, a5
                  srai         a6, s9, 11
                  sraiw        s1, gp, 15
                  andi         t5, s4, 367
                  sraiw        t5, tp, 14
                  slti         ra, zero, 1049
                  divw         s5, a6, a0
                  mulw         sp, a1, s11
                  slt          t1, a3, t1
                  sllw         ra, a1, t6
                  sub          s1, s6, s0
                  andi         t1, ra, -235
                  add          s8, sp, s9
                  divuw        tp, s6, sp
                  sllw         sp, t2, t6
                  auipc        s10, 957524
                  sllw         a7, s7, s2
                  ori          s3, s10, 1165
                  slti         gp, tp, -56
                  mul          s5, t1, t0
                  srliw        t0, s1, 5
                  srlw         a1, a3, s10
                  sll          s4, gp, a0
                  remw         sp, a3, a3
                  add          s2, gp, a1
                  mulw         s3, s0, a2
                  divu         s8, gp, a4
                  subw         a2, zero, s2
                  add          a6, a5, s0
                  sltiu        a7, s0, -485
                  sltiu        zero, s8, 1516
                  div          zero, s7, a2
                  sraiw        s5, a2, 3
                  divw         s0, s4, s4
                  sraw         s0, a2, a2
                  addw         ra, zero, s9
                  or           t6, s4, s7
                  srl          zero, a2, s7
                  remw         zero, gp, a3
                  rem          t6, t2, s5
                  div          s1, s8, a3
                  subw         s8, t2, a2
                  ori          t2, a0, -721
                  remw         a1, s7, t1
                  divuw        a7, s9, t2
                  subw         gp, a0, t6
                  addi         a2, t5, -172
                  andi         s8, t3, 1523
                  mulw         s3, s6, tp
                  srai         s1, t3, 49
                  divuw        zero, ra, t6
                  div          t1, s0, ra
                  mulh         s8, t0, t2
                  mul          a1, a3, a7
                  ori          t4, a0, -478
                  sraw         a3, s5, s10
                  or           t1, a1, a6
                  sra          t1, s10, a4
                  slt          s4, s10, t4
                  divu         a1, a2, s8
                  andi         a0, gp, 1916
                  mulhu        s4, s7, t4
                  lui          zero, 297226
                  xor          a1, s0, a0
                  xor          t1, t1, s8
                  mulh         a6, a5, s2
                  sltiu        s11, t2, 263
                  mulh         t1, s6, t5
                  mulh         tp, s11, s11
                  and          a2, s8, t3
                  auipc        s3, 326545
                  srliw        s4, a0, 29
                  srl          t5, s6, a2
                  remu         a3, a6, zero
                  sll          a2, t3, s10
                  andi         a7, s1, -1377
                  nop
                  mulhsu       t2, t0, t1
                  mulhu        a2, s10, t3
                  mulh         t5, a5, a6
                  divw         s11, s0, s8
                  lui          ra, 880800
                  sltu         a1, s7, s11
                  srliw        a0, t3, 0
                  xor          tp, t6, zero
                  auipc        s3, 611580
                  srai         gp, t6, 18
                  or           s0, t4, t3
                  srliw        a5, tp, 30
                  addiw        t6, s10, -2
                  slt          t4, s10, gp
                  lui          sp, 518478
                  ori          s3, t2, -1719
                  sraiw        s9, t0, 10
                  and          s1, a5, a1
                  mulw         gp, s5, s4
                  slt          s3, s9, s6
                  mul          a6, t4, s2
                  srlw         s6, s1, ra
                  slli         a3, t1, 31
                  sll          t2, zero, s7
                  xori         s4, t1, -1464
                  mulhsu       s2, a1, tp
                  slt          t0, s10, s0
                  mulh         s5, t4, s1
                  lui          a2, 727395
                  ori          tp, a4, 1559
                  addiw        a2, ra, -493
                  mulhu        zero, s3, a1
                  xori         s9, a3, -1419
                  lui          t6, 846136
                  lui          t6, 332256
                  addi         a6, t2, -1881
                  divu         t0, tp, s7
                  sllw         a6, s6, zero
                  xori         t5, t1, 1607
                  sra          s9, s3, a3
                  slliw        tp, a4, 28
                  sra          gp, s3, a7
                  slti         s11, s5, 1045
                  addiw        s5, gp, -1852
                  mulh         t2, gp, s9
                  remw         t1, tp, a6
                  and          ra, a5, t4
                  sltu         a5, s2, s7
                  sra          t2, s8, s1
                  slti         t2, t1, -1275
                  srl          a7, s3, tp
                  remu         s0, t0, a3
                  lui          a1, 693232
                  srliw        t1, a3, 31
                  remu         s4, s5, t3
                  remu         zero, a0, s3
                  lui          t6, 166495
                  addi         s4, s0, 1327
                  xori         s9, s5, 316
                  srlw         sp, s0, s0
                  slt          s4, ra, t4
                  srl          s3, s9, s4
                  sraw         a5, s0, a7
                  slt          s5, t0, s5
                  add          a7, s2, t5
                  slli         a6, t6, 17
                  lui          t5, 229231
                  slliw        s3, s2, 25
                  addw         ra, t5, a6
                  divw         s2, a6, a0
                  remw         a0, tp, ra
                  remuw        a6, tp, s6
                  auipc        s1, 638739
                  divw         a2, a5, tp
                  srl          s4, t1, s8
                  xor          s9, zero, t4
                  addw         s4, tp, a4
                  addiw        a2, a5, 614
                  ori          s6, tp, -1670
                  sraw         s10, a0, s7
                  slli         s2, t0, 16
                  add          t0, t3, a6
                  sub          a2, t0, a3
                  sll          t2, a3, a4
                  divw         s3, a5, a5
                  and          a6, s8, a0
                  sllw         a5, a6, gp
                  mulhsu       s8, a0, s8
                  srai         a0, t1, 43
                  nop
                  divuw        s0, s4, s4
                  srli         a7, sp, 42
                  slt          s4, sp, s8
                  remw         s10, gp, s8
                  andi         a3, t5, -1414
                  srli         s8, a4, 4
                  mulhsu       sp, s4, s6
                  xor          a1, a5, a5
                  sra          s9, a2, s2
                  slli         a3, t3, 24
                  remw         t4, s7, s7
                  divuw        zero, a5, a2
                  slliw        s3, s7, 28
                  divw         a7, t1, t5
                  sraw         s6, s10, s7
                  mulh         s1, t0, a0
                  auipc        t1, 736380
                  slti         s10, zero, 39
                  mulh         t6, s6, s9
                  addi         a5, t5, 1926
                  or           s2, s0, s10
                  remuw        s6, s2, a1
                  slliw        ra, s4, 2
                  slli         s10, s1, 54
                  sllw         s4, zero, t0
                  addi         t5, t1, -1327
                  sltiu        s8, t0, -1772
                  divu         s2, s1, zero
                  sltu         t0, a0, s4
                  xor          a7, a5, zero
                  slti         a3, t2, -1276
                  mulhu        a3, a2, ra
                  andi         t6, s3, 1487
                  sub          s11, s2, s4
                  slli         tp, t3, 20
                  addiw        sp, a7, 1846
                  addi         t1, s3, 1436
                  srl          a2, a1, a6
                  slt          s1, gp, a6
                  remuw        s11, a7, s6
                  srliw        s3, t0, 2
                  srliw        s2, a1, 16
                  slli         s8, a1, 49
                  remuw        s6, t1, t1
                  rem          t2, a7, s2
                  divuw        s8, a1, t0
                  mulw         t6, a0, ra
                  xori         t6, a3, -517
                  remw         s10, s0, a1
                  srl          a7, a5, a1
                  addw         s2, s2, sp
                  sllw         t4, a7, s4
                  mulhsu       s6, s0, s9
                  div          s9, t2, a3
                  mulhsu       a5, s11, gp
                  mulhsu       t2, a3, t6
                  srl          s10, s2, s0
                  rem          s4, t2, t2
                  div          gp, s5, s6
                  auipc        t4, 861459
                  sltiu        s0, s4, -740
                  remu         t2, a3, a5
                  addw         a7, a3, s7
                  remuw        a0, a7, t3
                  andi         s2, s5, 225
                  remw         a5, s10, s8
                  sraw         a2, a7, tp
                  srli         s11, t0, 19
                  sra          t6, sp, tp
                  addw         a1, s7, s5
                  auipc        sp, 777191
                  auipc        a5, 632476
                  rem          t1, gp, s2
                  sub          s5, a5, a0
                  sraw         a2, gp, ra
                  sllw         a5, t6, a3
                  srliw        a6, a7, 24
                  sraiw        s8, a3, 11
                  sltu         s2, s9, s8
                  srliw        t6, t1, 3
                  remu         a0, s9, ra
                  remu         s10, a2, a5
                  sra          a0, tp, s3
                  addw         a2, t3, gp
                  mulhu        a6, a1, s2
                  srl          s11, a7, a4
                  mulhu        a5, gp, a1
                  sll          t6, a4, t4
                  auipc        tp, 31247
                  mulhu        sp, t6, t5
                  remu         s9, t1, s0
                  mulh         zero, s0, s5
                  sra          a1, zero, t0
                  srliw        t2, tp, 0
                  mulhu        s5, a4, t0
                  nop
                  sub          s1, a3, s0
                  lui          s11, 860354
                  sra          t4, a4, a4
                  and          s3, s0, a3
                  slli         a1, s4, 7
                  divuw        s0, t6, s11
                  divw         zero, tp, a5
                  sraiw        s8, s6, 27
                  slliw        a3, s10, 23
                  xori         s10, a3, -790
                  addw         a5, s7, s1
                  addw         s4, s1, sp
                  lui          t5, 47695
                  add          s10, t4, s10
                  srlw         s1, s5, s9
                  addi         a5, sp, -909
                  divw         t5, t0, s4
                  sub          t4, a6, t3
                  div          s1, s9, t0
                  remw         zero, s1, ra
                  sllw         s5, ra, s1
                  srli         s5, a5, 30
                  addi         s9, s2, -783
                  srai         tp, s5, 51
                  xori         t6, s10, -889
                  sllw         s3, t3, s11
                  slliw        t2, a5, 14
                  srlw         s5, s4, a2
                  rem          t4, s9, s9
                  xori         t1, a3, 488
                  auipc        t0, 96758
                  lui          t4, 668723
                  mulhsu       s4, a5, sp
                  mulhu        s9, s1, a7
                  mul          s11, s3, t6
                  srlw         ra, gp, a7
                  sub          zero, t6, a3
                  addw         s8, ra, s3
                  rem          a2, a1, t2
                  addiw        sp, s1, -81
                  rem          s3, s5, ra
                  slti         t4, sp, 1490
                  remuw        s0, s2, a4
                  xor          s8, t4, s1
                  slliw        gp, s8, 17
                  or           s0, s10, a7
                  srlw         a0, s11, t2
                  mul          zero, s5, sp
                  divuw        gp, ra, a3
                  mulhu        a2, t4, s1
                  slliw        t1, s7, 18
                  mulhsu       s8, s7, zero
                  mulhu        a5, t6, a3
                  srai         t5, a2, 48
                  xori         s9, t0, 1686
                  add          s4, s5, a7
                  sraw         t2, s2, s10
                  sraw         a0, s0, t6
                  sra          s10, s4, s5
                  srli         a1, t1, 50
                  sraw         zero, s9, s0
                  lui          s2, 145136
                  sub          zero, a3, s0
                  add          t2, t0, ra
                  auipc        s8, 235366
                  mulhsu       a7, a3, s2
                  sub          zero, s3, a1
                  mul          s1, s11, tp
                  slli         s3, zero, 20
                  sra          a0, sp, s11
                  mulh         s2, a7, s10
                  sltiu        t5, ra, 390
                  srai         s9, tp, 23
                  ori          t1, gp, 92
                  sllw         a6, s4, sp
                  slliw        tp, t5, 15
                  slli         s8, ra, 32
                  sraiw        a6, s0, 23
                  srli         s11, a6, 42
                  xori         s3, s5, 5
                  addw         t5, a5, t0
                  andi         s10, gp, 1955
                  divw         s6, s8, t4
                  slli         a7, t0, 2
                  divuw        t5, a3, t0
                  srai         s11, gp, 60
                  srliw        a2, t6, 17
                  addw         t2, t4, s6
                  srliw        a2, a6, 23
                  rem          a0, s5, s3
                  sraw         a5, s4, tp
                  sllw         gp, a5, a7
                  sllw         s5, s7, s1
                  srliw        s6, s7, 6
                  slli         a0, tp, 9
                  and          tp, gp, s5
                  auipc        s5, 648216
                  add          s11, s2, t5
                  mulhu        a1, s0, t0
                  mul          a0, a1, zero
                  sllw         s2, t1, t1
                  slli         a3, t2, 29
                  srliw        s3, a7, 26
                  xor          a3, s6, s5
                  subw         s6, s7, a5
                  xor          t6, t4, a5
                  srlw         t0, t4, gp
                  auipc        sp, 374002
                  sra          s3, a6, tp
                  mul          t6, t2, a2
                  addw         tp, s3, t1
                  srl          a2, a2, s3
                  srliw        a5, t2, 28
                  srlw         s9, t1, s8
                  slti         s10, t4, -30
                  ori          s8, a6, -978
                  mulh         t5, t6, s2
                  slliw        s2, a2, 10
                  mulhsu       s5, a4, s3
                  ori          a2, tp, 256
                  addiw        t1, a6, 1488
                  div          a7, a3, a4
                  sraiw        s1, s11, 26
                  sllw         s8, s9, s7
                  sub          a6, t6, s7
                  divuw        a5, s9, gp
                  remw         t2, t5, ra
                  mulhsu       a3, t0, s9
                  srliw        t0, a4, 19
                  sraiw        s6, a3, 1
                  remw         a6, s9, a6
                  subw         t4, s0, t2
                  xori         s0, a7, -982
                  andi         s11, s4, -1674
                  lui          tp, 459717
                  sra          s8, s5, s8
                  mulhsu       s2, s7, s4
                  and          zero, s6, s11
                  rem          a5, a4, ra
                  slli         t4, s9, 56
                  remuw        s0, a6, a4
                  auipc        s8, 826775
                  mulw         a2, t5, s2
                  sub          s4, s0, t5
                  divu         a0, s1, ra
                  mulh         a0, t0, s7
                  nop
                  slti         s1, s11, 893
                  srliw        a0, sp, 23
                  mulw         tp, t0, t0
                  sraw         zero, a7, s1
                  and          zero, t3, a0
                  xori         a1, s3, 1120
                  slti         s5, s10, 1984
                  mul          t4, s9, a0
                  divu         a2, s2, s5
                  addiw        gp, a2, -1665
                  remu         a1, ra, s3
                  and          ra, a0, s4
                  slt          zero, t2, s9
                  ori          t0, s1, 1732
                  slti         s10, zero, -1065
                  srliw        t5, sp, 6
                  mulhu        a0, s5, t5
                  slt          s6, t5, t4
                  sllw         t1, s8, a4
                  and          a5, a2, a1
                  auipc        s2, 230760
                  remw         a7, t2, s7
                  srliw        tp, s8, 18
                  andi         t6, t5, 417
                  srli         s4, t2, 6
                  and          a7, a0, t1
                  add          gp, t4, s9
                  sltiu        gp, a0, 825
                  xor          a1, a5, a0
                  remu         t2, a6, t0
                  slliw        a5, gp, 29
                  remw         a6, a2, s5
                  or           tp, a0, a3
                  mulw         t2, s9, a2
                  ori          t5, t6, 1782
                  addiw        s3, a3, -8
                  sraiw        s8, a7, 5
                  srli         s1, t3, 5
                  slt          t1, ra, s6
                  srlw         a1, a5, s7
                  remw         s4, s3, s11
                  sraiw        ra, s5, 23
                  mulhsu       t0, ra, tp
                  addi         s9, t1, 386
                  rem          tp, a6, s10
                  add          s1, a1, a2
                  mulh         s6, s11, a1
                  mulw         a5, a3, zero
                  sraiw        a3, sp, 9
                  div          t2, s7, t6
                  or           s2, t5, s10
                  addw         s10, t5, s1
                  remw         tp, ra, s11
                  divuw        s2, s0, t3
                  add          a0, s9, s10
                  mulw         s3, s5, a2
                  slliw        t1, zero, 26
                  slt          t2, zero, a6
                  divuw        s5, a2, ra
                  srlw         tp, a7, tp
                  sra          s8, s7, s5
                  auipc        t0, 207832
                  slti         a0, s4, 180
                  xor          t0, ra, a1
                  andi         zero, a3, 1185
                  sltiu        t2, s0, -1771
                  sub          tp, t6, t1
                  divuw        a5, s3, ra
                  divw         a0, t3, t4
                  xor          s4, s11, t5
                  lui          s2, 462519
                  or           sp, s10, s11
                  sllw         s5, s10, s6
                  addw         s11, gp, s8
                  rem          tp, t4, t1
                  addiw        a6, s11, 1348
                  addiw        a6, gp, 1755
                  sraiw        s4, gp, 6
                  rem          t4, a7, s10
                  slt          a5, t2, zero
                  srli         t2, t1, 21
                  remuw        gp, a5, s4
                  subw         t0, a0, tp
                  sraiw        t5, sp, 11
                  addi         gp, s2, 91
                  mul          gp, a3, a0
                  remu         a0, s7, s0
                  sllw         s2, t1, s1
                  srlw         a2, a7, s8
                  srli         t4, s10, 14
                  slt          s6, s1, t2
                  srli         ra, ra, 47
                  srai         s3, a0, 8
                  slli         a6, gp, 21
                  lui          a7, 447949
                  addi         s2, s9, -1193
                  mulh         t4, gp, a0
                  slt          a3, t2, ra
                  sll          s1, s7, s8
                  mulh         s1, a3, sp
                  slt          t6, sp, t5
                  add          zero, s9, s11
                  sltu         s8, s11, a5
                  sub          t0, a2, a1
                  xori         s2, s10, 589
                  srlw         s10, sp, s8
                  addiw        s6, s7, -1581
                  sltiu        s0, s5, -152
                  sraiw        t5, s9, 28
                  sltiu        s6, s7, -79
                  sltu         a3, a5, a1
                  remu         a2, ra, s5
                  remuw        s2, a7, s11
                  sraiw        zero, a1, 5
                  slli         tp, s6, 40
                  sraiw        a3, a0, 12
                  sllw         a6, t5, a6
                  addiw        a6, t2, 779
                  addi         tp, a2, 1785
                  slti         s2, a5, -133
                  sraiw        zero, a6, 7
                  lui          sp, 623393
                  ori          s1, a2, -113
                  slli         s0, a6, 63
                  andi         ra, a6, -1674
                  sra          s3, s6, s6
                  remw         s11, zero, s4
                  xor          a5, s3, a2
                  sltiu        a5, s2, 929
                  xor          a5, a5, s8
                  and          s6, s6, ra
                  sra          a0, s7, a0
                  xori         t2, a4, 1821
                  nop
                  mulhu        s5, s7, t5
                  remw         a2, s2, s11
                  srai         a7, t6, 28
                  mulw         a5, s2, t2
                  mulhu        a1, a3, a3
                  slt          s0, t5, a5
                  srai         t5, a1, 0
                  mulh         s8, t1, a3
                  nop
                  sra          a7, s6, t6
                  mulh         s2, t5, a4
                  srlw         t2, a1, s0
                  or           s2, a0, s4
                  auipc        zero, 640603
                  slli         a1, t0, 51
                  sltu         sp, a7, t0
                  rem          t5, s10, s1
                  andi         s3, a3, 485
                  slti         t1, s4, 663
                  andi         s10, s2, 164
                  lui          gp, 615463
                  slt          s3, s10, s9
                  or           tp, t2, s3
                  sub          tp, s5, s7
                  mulh         t1, a1, s6
                  rem          t6, t1, t4
                  sll          s6, s9, t2
                  addi         ra, t2, -843
                  and          t6, s11, a7
                  addi         a3, s4, 1812
                  nop
                  rem          zero, s7, s5
                  subw         a5, s3, t2
                  div          gp, a6, s5
                  addw         s0, s1, zero
                  addiw        a2, s3, 1435
                  srl          gp, a3, t4
                  and          s3, s6, s8
                  remuw        t5, s11, a7
                  xori         t6, zero, 1179
                  add          t0, t3, a6
                  remuw        s4, s4, s9
                  srli         s4, s5, 41
                  div          s0, a4, s11
                  ori          s8, a4, -1595
                  addiw        s4, a2, 1585
                  sraiw        a3, ra, 13
                  mulhsu       s1, t3, s4
                  divw         a7, t3, a7
                  and          s5, a2, s0
                  mulh         t1, s7, s11
                  ori          s11, ra, -1900
                  sllw         a3, s6, gp
                  subw         a5, s1, t0
                  sltu         t4, s7, s11
                  addiw        t2, s9, -1011
                  slti         gp, s0, -129
                  slti         s1, a3, 185
                  sraiw        s8, tp, 11
                  divu         s4, t3, s0
                  nop
                  sraw         t2, a4, t4
                  slt          s2, a7, gp
                  srliw        gp, s10, 18
                  srai         t1, a0, 49
                  rem          s10, a6, zero
                  remu         ra, a4, t6
                  mul          t6, t6, a7
                  mul          t6, a5, gp
                  slti         a1, s6, 706
                  subw         a2, a4, t6
                  lui          t5, 118091
                  addi         s10, s0, 811
                  remw         a5, s2, t6
                  andi         s9, s9, -1083
                  sraiw        t2, t0, 16
                  mulhsu       s4, s11, s4
                  sllw         t0, a2, t4
                  srl          a5, a3, a0
                  srai         a0, s0, 54
                  addi         t0, a6, 1134
                  and          s6, zero, s2
                  xori         s10, t0, 1226
                  addi         a1, t6, -1596
                  sll          a3, s5, a6
                  mulh         t6, ra, t3
                  sraiw        t6, a1, 11
                  add          t2, t4, s2
                  sraw         s8, s8, a3
                  xori         a6, a0, 1889
                  sra          gp, a5, s1
                  sraiw        t5, t0, 2
                  xor          t6, s5, s6
                  subw         t0, s1, s0
                  mulh         t0, a7, a5
                  lui          a0, 69459
                  sraiw        s5, t5, 14
                  auipc        t1, 560494
                  nop
                  mulw         t2, t4, t6
                  srai         a3, s7, 23
                  add          t6, tp, s3
                  srliw        s2, s5, 3
                  mulhsu       s8, s0, a5
                  xori         s2, sp, -1099
                  andi         zero, t1, 2028
                  addiw        a3, t0, -1919
                  sltiu        a5, a5, 1046
                  mulw         sp, ra, sp
                  sllw         t4, t0, a6
                  ori          t4, t6, 413
                  mulhsu       t6, s8, s2
                  and          a0, s6, a0
                  rem          a7, a4, ra
                  slli         a2, s7, 42
                  mulhu        a2, a7, s9
                  slli         tp, s8, 27
                  sll          s8, t0, a4
                  xor          s0, t1, s3
                  remw         t5, s5, gp
                  mulw         s3, a3, t3
                  add          s10, s5, t4
                  sraw         zero, a6, s11
                  mul          s11, s5, s7
                  or           s4, a4, t1
                  auipc        s10, 369433
                  rem          s11, a5, a3
                  remw         t5, a2, gp
                  lui          zero, 72008
                  sra          a6, t4, s1
                  srai         s4, a0, 37
                  srl          s2, t3, t0
                  srlw         s6, s5, a4
                  mulw         s9, s3, t3
                  sllw         t6, tp, s2
                  srliw        s0, t0, 17
                  slli         s6, s4, 0
                  auipc        sp, 943985
                  srl          sp, s4, tp
                  and          s9, tp, t5
                  sraiw        s5, s6, 21
                  remw         a1, s0, a0
                  sraiw        s4, a3, 17
                  sll          a5, t2, s7
                  and          sp, a2, s10
                  nop
                  lui          t5, 1043629
                  add          a7, t0, a4
                  xor          s11, zero, zero
                  slti         a6, a7, -1982
                  divuw        tp, a6, a4
                  addi         t1, s1, -500
                  sltu         s8, a3, a5
                  sllw         s3, s5, s4
                  mulw         s1, s8, t1
                  andi         s6, s6, 796
                  auipc        s4, 1032570
                  sltiu        t6, s8, 288
                  or           s0, s7, t2
                  or           s11, s8, s7
                  slt          tp, s6, a1
                  srliw        s6, a7, 19
                  mulh         s8, s3, s2
                  remuw        t0, t4, t1
                  xor          s4, ra, t3
                  sraiw        t5, s9, 1
                  mulh         s0, s1, t2
                  sub          a2, a0, t0
                  lui          s9, 772245
                  mulw         s2, s4, s6
                  slt          sp, t1, t6
                  remw         s5, s11, t6
                  nop
                  srlw         s10, a7, s4
                  slt          s8, a4, a0
                  srai         a0, s8, 10
                  mulh         s8, t6, a3
                  ori          s2, a7, 1588
                  subw         t5, s4, a6
                  slt          a3, t1, a7
                  srl          t5, a0, t2
                  sraw         a6, a2, a7
                  mulhsu       tp, s5, t6
                  srlw         s0, a0, t1
                  mul          t5, sp, t3
                  sraw         s2, a3, a6
                  mulw         t2, sp, s1
                  mulw         t1, t5, t4
                  sll          ra, s11, a0
                  add          a0, s4, s5
                  remw         t1, sp, sp
                  srliw        t0, s3, 11
                  sllw         t6, t0, s1
                  remu         s5, a3, a1
                  divu         a7, s7, gp
                  sllw         a2, t1, s5
                  mulhu        s11, ra, t0
                  subw         s8, s7, s4
                  remw         t4, a3, s11
                  add          t1, t5, s9
                  xori         t0, t5, 779
                  rem          s2, sp, s2
                  xor          t1, s2, a6
                  nop
                  div          a5, s1, s1
                  sra          t0, a2, s5
                  remu         t2, s6, ra
                  srlw         t1, s1, s6
                  sltu         a1, s7, s5
                  srli         t1, s0, 43
                  remw         t4, a1, ra
                  mul          a5, a5, gp
                  and          s10, t4, s4
                  remu         zero, s1, sp
                  divw         t2, t1, s0
                  mulhu        t6, a5, s1
                  addw         s1, s10, sp
                  xori         s10, s1, 1013
                  add          t0, s0, s7
                  lui          a1, 453030
                  sub          a0, s0, ra
                  xori         s10, t0, 1439
                  sra          tp, sp, a1
                  div          a2, s9, a1
                  mulhsu       a3, s3, gp
                  sraw         a0, sp, s8
                  auipc        t0, 934390
                  mulh         t2, t3, s0
                  nop
                  srai         s3, a2, 25
                  sll          s6, s5, s5
                  remu         s10, s2, t2
                  divw         tp, s10, s8
                  nop
                  ori          t0, t0, -1931
                  remw         zero, s6, t0
                  srli         sp, t4, 32
                  sraiw        ra, s11, 28
                  auipc        ra, 750357
                  sraw         a3, s2, s1
                  mul          a0, a6, t2
                  sraiw        t6, a7, 23
                  lui          t4, 492910
                  addiw        s10, t5, -1179
                  sra          s3, s0, a6
                  nop
                  mulw         sp, t2, gp
                  mulhsu       a2, t5, a1
                  ori          a2, s7, 44
                  mul          s9, a0, s4
                  nop
                  slli         a2, s3, 36
                  div          s5, tp, a2
                  slliw        s3, a3, 12
                  slliw        zero, a0, 0
                  divuw        s8, a2, sp
                  mulw         t0, a4, t0
                  sltu         s3, s10, s9
                  ori          a0, s0, 1947
                  slliw        sp, t6, 10
                  div          s8, gp, t2
                  slti         t2, s6, 1663
                  sll          t4, t0, s7
                  xori         t2, s1, -1452
                  ori          t5, s3, -1744
                  remw         a5, s5, a6
                  mulhsu       t0, s8, s8
                  remu         s10, s8, s1
                  mulw         sp, a5, s7
                  andi         t6, zero, 502
                  sraw         t6, s10, a2
                  mulhu        gp, a0, t0
                  srai         s9, s2, 43
                  lui          s0, 1003394
                  and          t2, s10, a0
                  xor          a6, a2, t3
                  sraw         t2, s9, t0
                  sub          s9, t6, a1
                  sraw         s8, t0, s2
                  addw         t4, a0, t0
                  addi         a0, t6, 721
                  slliw        a1, s5, 8
                  slti         s2, s1, 1499
                  auipc        tp, 685306
                  sltiu        s11, s1, -1026
                  sltiu        s8, s6, 72
                  mulhsu       s0, t3, a0
                  srli         t1, gp, 1
                  and          s6, s9, s5
                  mulhsu       s3, a7, s7
                  srl          t2, a2, s11
                  sll          s1, t0, t4
                  mul          tp, a5, s11
                  auipc        t2, 695505
                  nop
                  slti         s5, s6, 1865
                  auipc        a2, 824321
                  addi         ra, s0, -904
                  sltu         s4, a2, a4
                  divuw        t5, t0, t6
                  srai         s3, sp, 23
                  slliw        a1, t6, 4
                  auipc        s4, 566935
                  sltiu        a1, a2, -91
                  divw         a7, a1, s3
                  sll          s5, s3, s10
                  and          t6, gp, a3
                  or           a1, a3, t3
                  mulhu        a7, sp, a6
                  auipc        s8, 205338
                  addw         t1, a0, s7
                  slliw        ra, s8, 26
                  slt          t0, t1, s11
                  sub          t2, a5, a5
                  mulw         a3, s1, t0
                  lui          s6, 377911
                  sub          t5, a2, t6
                  lui          t4, 11877
                  divw         tp, gp, t3
                  or           a2, s3, t4
                  srli         t1, a1, 48
                  slliw        s8, s9, 19
                  sub          a5, tp, a7
                  sltu         a7, s1, a7
                  nop
                  addi         a5, t4, 97
                  srl          ra, s1, s8
                  sraiw        t2, a3, 26
                  slt          t0, s3, s9
                  divw         zero, t5, s0
                  sll          gp, zero, a3
                  slt          t4, s0, s9
                  nop
                  subw         t5, ra, gp
                  srl          s5, t3, zero
                  mulhu        s6, t3, s2
                  addi         s1, s9, -312
                  addi         s5, sp, -1480
                  remuw        t5, s9, t4
                  addiw        s1, s10, -1558
                  remw         t4, s10, ra
                  srli         a7, zero, 9
                  mulhsu       sp, sp, s5
                  addw         s6, s2, s2
                  addi         s0, a0, -1987
                  xori         s0, a4, 640
                  divuw        ra, s0, s8
                  mulh         s10, zero, sp
                  divw         s11, s5, gp
                  xor          s0, t4, s7
                  and          a1, a7, t2
                  srl          t6, a4, ra
                  slliw        sp, s3, 30
                  mul          s4, s5, s11
                  subw         s6, a3, s1
                  divw         s1, s5, sp
                  nop
                  sra          t0, a7, a0
                  div          a2, s1, ra
                  srli         t2, s9, 0
                  remu         t2, t6, a4
                  sraw         a6, s8, s8
                  sltu         s11, a2, t6
                  srai         a7, a4, 18
                  xori         s3, s8, -1571
                  slt          a7, a2, gp
                  srl          s1, gp, s5
                  divuw        zero, a5, s7
                  addiw        s8, ra, -1349
                  rem          ra, gp, a2
                  addiw        a5, s7, 129
                  sub          t6, t6, a6
                  addi         s0, s5, -1753
                  rem          t1, s6, s3
                  srliw        t5, s5, 30
                  ori          zero, t3, -786
                  or           s10, ra, t1
                  mulhsu       a2, a4, t0
                  xor          t0, a3, t3
                  ori          s2, s9, -70
                  addiw        t6, s9, -833
                  slli         a6, a4, 51
                  mul          a6, s11, s2
                  sub          s9, a3, a4
                  xori         t6, sp, 1457
                  divu         s4, s10, zero
                  divu         t2, s3, s4
                  divuw        s0, sp, s4
                  slli         s6, zero, 61
                  sltu         s2, s1, s7
                  srlw         s2, s1, t2
                  srai         gp, a1, 33
                  or           t6, s3, s2
                  sraiw        a5, t3, 20
                  rem          t4, s9, gp
                  sltiu        a0, s2, -1781
                  rem          s9, a0, a2
                  divuw        s0, a1, a2
                  mulw         s9, t4, ra
                  addiw        gp, s2, -1060
                  xori         gp, t1, -1739
                  srliw        s6, a0, 29
                  div          t4, t6, s8
                  ori          a3, s10, 700
                  remuw        a5, t1, s6
                  sltu         s11, t2, s9
                  or           gp, tp, t3
                  or           s5, s1, s1
                  srli         t2, s1, 23
                  xor          s11, a3, s7
                  rem          a2, s11, s6
                  slti         s9, s11, -796
                  xori         gp, s6, 363
                  remw         s6, t6, s3
                  sra          s9, a2, a2
                  sll          s6, s5, t5
                  and          s11, sp, s1
                  remu         s1, ra, a6
                  sltiu        gp, t2, 617
                  xori         s1, a2, -976
                  divu         a6, t4, s1
                  add          t6, s6, a7
                  sllw         zero, s7, s11
                  sllw         t5, s11, s4
                  mulhu        a6, a7, a6
                  andi         t0, a5, -1676
                  srl          t4, s2, ra
                  sra          s0, sp, s1
                  srlw         t1, s7, s2
                  sraw         s5, a2, s10
                  divuw        ra, s4, t5
                  remuw        t0, s11, a1
                  sltu         zero, s8, s10
                  mulhsu       s2, s8, zero
                  mulw         s9, s10, t5
                  slti         s6, t6, -299
                  remu         s0, s8, s1
                  div          tp, s8, a0
                  and          a5, a3, s9
                  addw         t0, tp, t6
                  srliw        s5, a1, 21
                  addw         t2, a1, a5
                  divuw        ra, s0, a0
                  addw         s11, t1, a2
                  sllw         a1, t3, s3
                  sub          a7, a0, t1
                  remw         t0, t3, t6
                  sub          s6, s11, t0
                  or           a1, a2, sp
                  mulhsu       s1, a0, a2
                  auipc        s3, 255903
                  remuw        s4, sp, t2
                  and          a3, t1, t0
                  addiw        s6, a2, 1051
                  remw         t5, s9, t1
                  divw         a2, gp, tp
                  sltiu        s1, a2, 425
                  xor          t4, a5, t2
                  divu         s8, s11, s3
                  remu         s1, a3, s9
                  divu         t0, s5, t4
                  slt          a5, s2, s8
                  sll          s8, gp, ra
                  addi         zero, t4, 458
                  srliw        s2, t3, 16
                  divu         a1, sp, s4
                  remu         sp, ra, s6
                  divuw        tp, a7, s6
                  rem          s11, t0, s2
                  mulh         a7, t3, s2
                  or           t0, a2, s10
                  add          s6, s3, s0
                  rem          a1, t3, s7
                  auipc        s6, 445142
                  div          tp, s9, t6
                  xori         t4, s4, -817
                  divu         a6, s7, a2
                  auipc        zero, 472427
                  divw         s10, t3, tp
                  srl          a7, a1, s5
                  divu         s4, s8, s4
                  srai         t0, s4, 27
                  srli         a3, s1, 7
                  srai         a0, s0, 8
                  subw         s2, s11, s9
                  remw         s6, s11, s5
                  srl          s3, a2, a3
                  divw         s3, s9, a3
                  addw         t0, t1, t2
                  nop
                  lui          a6, 117527
                  xori         s0, s3, -1028
                  sraw         gp, s11, tp
                  mul          a7, s6, s7
                  remu         s8, t4, a2
                  slliw        s4, t4, 4
                  mulw         a6, a4, t6
                  sub          a5, s10, s8
                  srl          a2, zero, t3
                  and          a6, s7, s11
                  xor          s4, s8, s0
                  sraiw        a3, t2, 20
                  addiw        t5, t0, 1237
                  sltu         sp, s0, s11
                  add          t5, a7, s5
                  slli         t0, t5, 10
                  sra          gp, s11, a5
                  sltu         zero, zero, t3
                  mul          s10, t4, s7
                  sllw         t5, a2, ra
                  sraw         t0, a5, a1
                  or           a1, s2, ra
                  sra          a3, s0, gp
                  slt          a5, t2, t4
                  div          s5, t0, s8
                  div          a6, s6, gp
                  mul          t6, a5, a0
                  slt          t0, t4, sp
                  add          a0, s10, t4
                  ori          s5, t4, -1813
                  lui          t6, 469759
                  or           s5, s4, a2
                  sub          a1, tp, t5
                  remuw        s2, t0, a4
                  mulhu        a5, s7, a3
                  sltiu        zero, a3, -858
                  remu         t5, s9, s3
                  addi         s11, a1, 1796
                  slt          gp, s5, gp
                  andi         a3, s5, 993
                  or           t5, zero, t3
                  rem          a2, t1, s5
                  add          a1, t5, a1
                  addi         a1, t6, 998
                  divw         a6, zero, s8
                  srai         s6, t6, 24
                  remw         a2, gp, t6
                  xori         t2, a4, -230
                  srli         t6, s1, 31
                  ori          a0, a0, 2010
                  subw         tp, sp, a3
                  mulh         ra, s7, s10
                  remw         a0, t5, a1
                  srli         a2, s4, 17
                  sraw         a2, gp, s10
                  subw         a2, a5, s5
                  sllw         a3, s6, t1
                  remuw        sp, s4, s0
                  xor          a1, a4, s4
                  mul          a3, a7, zero
                  div          t2, s7, s3
                  srai         ra, a3, 44
                  and          a2, a6, a7
                  srl          s10, t5, t1
                  addi         a3, a2, -1015
                  addw         s3, s0, t1
                  nop
                  mulhu        s3, s7, a1
                  addi         t2, s10, 1148
                  andi         t6, a5, 1213
                  sub          sp, gp, t1
                  divuw        s6, s1, a1
                  mulw         s9, t0, t6
                  div          sp, a5, a7
                  remu         t4, t5, a5
                  mulhsu       ra, s1, a0
                  srl          t1, s8, s8
                  auipc        zero, 829982
                  remu         a2, t3, s2
                  xor          a6, t5, t1
                  sraw         a0, s3, s3
                  srliw        t1, s7, 16
                  rem          a2, s2, a5
                  srli         t4, s7, 57
                  addw         t2, s1, s10
                  divuw        a5, t2, s0
                  srli         t6, s0, 57
                  ori          s1, s11, 548
                  divuw        t4, s8, t6
                  sllw         s5, a6, t3
                  remw         sp, a5, a7
                  slli         a0, a3, 45
                  slli         zero, s10, 5
                  nop
                  xori         a2, t4, 756
                  sllw         a6, s2, a5
                  sllw         zero, s0, s5
                  xor          a2, s6, sp
                  sub          s6, s3, a2
                  remu         s2, s5, a1
                  and          s4, sp, t2
                  addi         a7, tp, -1882
                  sub          sp, a0, s6
                  addi         s3, t3, -1239
                  srl          t0, s9, t5
                  mulw         tp, a5, a7
                  xori         s3, s4, 1906
                  add          s11, gp, zero
                  sltu         s11, a1, t4
                  divuw        sp, s0, s0
                  slli         a2, a5, 27
                  xori         s3, sp, -145
                  mulh         t1, s7, s1
                  mulhu        zero, s10, ra
                  srai         s6, s2, 14
                  div          a5, t2, t6
                  sllw         gp, a0, s8
                  div          s2, s2, gp
                  slt          a1, tp, s10
                  add          a1, a0, t2
                  sub          s3, gp, t2
                  remuw        gp, s3, s9
                  sllw         a3, gp, a2
                  xori         s9, a4, 1376
                  div          t2, sp, t2
                  sra          a1, gp, a3
                  srliw        s11, s10, 22
                  xori         zero, zero, 906
                  remuw        t6, s9, a6
                  mulhsu       s11, t6, a1
                  slt          a3, s6, a6
                  sub          a5, s5, t3
                  srl          s11, a1, zero
                  auipc        ra, 92580
                  slti         s4, a6, -277
                  add          s9, s8, a2
                  sraiw        a5, tp, 28
                  remw         a7, s11, s6
                  or           t0, tp, t5
                  or           t6, s10, a7
                  add          s8, s7, t2
                  lui          t6, 236131
                  andi         zero, a0, -259
                  divu         s9, t1, a3
                  addw         a3, a7, a7
                  remuw        a2, a7, a5
                  divw         s11, ra, s6
                  sra          gp, sp, s3
                  divu         t6, t5, s11
                  sraiw        s11, a0, 15
                  sltiu        a6, s1, 24
                  div          s1, a1, gp
                  slli         s9, a7, 38
                  remw         s2, t5, a2
                  mulh         t1, gp, t6
                  and          t2, sp, a5
                  srai         t1, a0, 43
                  ori          s1, t5, -1256
                  srl          t4, s4, s8
                  remw         a2, a3, t3
                  slti         t6, gp, 1635
                  mulh         s10, s1, t4
                  xor          t5, a4, t2
                  mulw         a2, gp, t5
                  remu         s8, t4, t5
                  xor          a0, a4, s4
                  sub          t0, a4, a1
                  sltu         tp, t3, t3
                  addw         a3, s2, s3
                  rem          s3, sp, a7
                  mul          s2, t6, s3
                  sltu         s6, a1, zero
                  divw         ra, a2, gp
                  rem          t6, s11, a4
                  andi         a0, s5, -1141
                  mulh         s2, t1, t2
                  andi         a7, a0, 768
                  sra          s11, t6, gp
                  ori          t6, s4, 624
                  remw         ra, s6, a7
                  sltu         a0, t4, t2
                  slti         a3, s3, 1629
                  auipc        a7, 386367
                  srlw         s11, s1, s6
                  sraiw        s0, tp, 10
                  subw         s3, a0, a2
                  sll          t4, a1, a1
                  divw         a5, a4, a0
                  sltiu        a2, ra, -971
                  sraiw        a2, s0, 3
                  mulw         t5, gp, s7
                  srl          t5, s4, s7
                  divuw        s6, t0, s11
                  srliw        t4, s1, 17
                  sltu         t4, a1, t2
                  divuw        a5, s10, tp
                  xori         s2, s9, -532
                  or           a6, t0, a0
                  remu         zero, a3, s8
                  add          t5, t4, t4
                  remuw        a2, a1, s3
                  sll          a1, s1, t1
                  divuw        s0, zero, a4
                  subw         a2, a0, s6
                  mulhsu       t4, zero, a7
                  slliw        a3, t0, 1
                  subw         t1, t6, ra
                  slliw        s1, t4, 23
                  slt          t4, gp, s7
                  remuw        a5, t3, t6
                  add          a7, s0, sp
                  rem          s9, s9, s7
                  remuw        sp, a7, t6
                  subw         t6, gp, gp
                  xor          s9, t6, s0
                  add          s11, s7, a6
                  divw         t4, a5, s11
                  mulhu        a1, s5, s5
                  sub          s4, sp, a2
                  add          s0, t3, a4
                  addw         t6, t0, s1
                  auipc        s3, 790775
                  remu         s1, s0, sp
                  remuw        a5, a7, t3
                  slliw        a5, s4, 19
                  div          t0, a5, s6
                  sub          t2, s7, a4
                  mulhu        a1, s2, s10
                  slti         t1, s6, -1551
                  srli         sp, gp, 0
                  addiw        t6, s7, 1438
                  mulhu        s9, s4, s0
                  slli         tp, s3, 31
                  slli         t1, s6, 54
                  div          s8, s7, zero
                  mul          zero, t1, a5
                  slti         s8, s7, -103
                  slti         t4, a7, -1439
                  srlw         t2, t2, gp
                  remuw        t6, a7, zero
                  slt          a6, s5, a4
                  addw         zero, s11, a7
                  sra          zero, zero, t4
                  andi         gp, a6, -1087
                  div          s9, a6, a1
                  nop
                  addw         s5, t5, t2
                  rem          a6, ra, t0
                  srai         t5, a5, 62
                  mul          ra, s10, t5
                  nop
                  remu         sp, s4, s11
                  add          a7, a3, t1
                  sub          s11, a6, gp
                  slti         s6, a2, 240
                  nop
                  sllw         a3, t4, gp
                  ori          zero, t3, 1080
                  lui          s5, 513930
                  remuw        t0, a2, zero
                  srai         a5, s11, 3
                  divuw        zero, t1, sp
                  mulhsu       s8, s2, a5
                  srlw         a3, s7, s9
                  addiw        gp, s3, -38
                  slliw        tp, a1, 2
                  remu         a0, t3, s0
                  sllw         s0, a7, t1
                  sllw         s4, a7, s4
                  slt          s6, a1, s4
                  xor          s5, zero, ra
                  mulhu        s10, ra, s1
                  srliw        t4, a4, 6
                  srl          a3, a1, s4
                  sllw         a7, sp, t3
                  srl          a2, t6, s6
                  sra          ra, a0, a7
                  add          t2, ra, t2
                  remu         s1, s6, a6
                  sub          t5, a4, s5
                  lui          t1, 311531
                  srli         s3, s11, 54
                  xori         a3, a0, 1027
                  and          t6, t3, s1
                  sltu         s1, t6, t0
                  xor          t2, tp, gp
                  nop
                  divu         t2, a6, s6
                  srlw         a6, t4, a6
                  or           s11, s7, t6
                  srl          s4, sp, t0
                  mulh         s1, s4, zero
                  sltu         ra, t4, sp
                  andi         tp, t1, -1770
                  or           a0, s10, s5
                  addi         a6, gp, -821
                  or           s2, gp, s0
                  srlw         t5, t6, t3
                  srl          s10, s0, s3
                  remu         s9, s6, s2
                  slli         t4, zero, 23
                  divuw        t2, t2, t4
                  srai         zero, s11, 12
                  sraw         zero, a5, s0
                  mulhsu       zero, s7, s1
                  sll          sp, sp, t6
                  or           a1, s7, tp
                  divuw        s2, a1, gp
                  slli         s1, s8, 29
                  andi         a1, s0, -304
                  nop
                  srlw         tp, a1, a0
                  sra          sp, a7, s3
                  or           a0, s9, a6
                  and          s3, s0, s2
                  srli         s2, s11, 4
                  srl          a2, ra, t1
                  mulhsu       zero, a3, t4
                  remw         t6, t4, a6
                  ori          a3, a6, -578
                  sra          a2, a3, tp
                  sll          a2, t3, s5
                  mul          s10, a2, a0
                  remu         a5, t1, s6
                  add          a2, zero, t5
                  nop
                  mul          t4, s4, a6
                  add          a1, a6, gp
                  mulw         tp, zero, t5
                  srli         s8, a0, 51
                  srli         s9, gp, 6
                  srli         a5, t3, 55
                  slliw        s6, a6, 3
                  divu         s11, sp, s8
                  lui          ra, 273582
                  sra          t6, a0, s9
                  sraw         s8, gp, a6
                  div          s3, s10, a0
                  div          tp, s6, s11
                  addi         s0, t0, -881
                  mul          s2, s1, s6
                  addw         gp, a5, s10
                  divuw        t1, s0, s7
                  sub          t4, s9, t6
                  mulhu        a3, t6, s0
                  mul          a3, a7, a7
                  subw         a7, a4, a0
                  ori          t5, a4, -2004
                  div          s5, zero, s7
                  srliw        a6, s9, 26
                  nop
                  srlw         a6, s1, t4
                  addi         s8, a1, 255
                  srliw        a2, t0, 8
                  slt          t4, s7, a6
                  div          t4, t5, s3
                  rem          s4, a6, a7
                  sltiu        zero, s10, 770
                  srai         tp, tp, 43
                  addiw        a2, a7, 391
                  sll          t0, s0, s10
                  lui          s1, 699799
                  slt          s8, s11, a5
                  sllw         tp, t0, t3
                  ori          s10, a4, -791
                  mulh         s5, t6, s10
                  xor          a3, t1, a3
                  rem          ra, t2, t3
                  mulw         tp, t0, s1
                  remuw        s1, s1, s4
                  remuw        ra, t2, s10
                  remu         s9, a2, s9
                  mulh         s3, s4, a3
                  ori          s2, a6, -1987
                  sraiw        t1, s0, 5
                  and          tp, s8, tp
                  auipc        t2, 82056
                  slliw        t1, a2, 0
                  srai         t5, a3, 54
                  slliw        t5, a0, 17
                  sraw         s11, t0, tp
                  srl          s6, a6, a5
                  sll          t0, a3, a5
                  sllw         s5, s9, s11
                  or           a7, s11, tp
                  mulh         tp, t6, s1
                  remuw        a5, a1, a1
                  sllw         t6, a2, gp
                  andi         zero, a6, -411
                  addw         s10, tp, gp
                  sll          s1, t1, t2
                  subw         s6, s2, t3
                  mulhsu       s4, a6, s10
                  remuw        s1, s7, a6
                  srliw        a7, ra, 27
                  andi         a6, s4, -985
                  mulhsu       s4, t5, s6
                  sub          t4, a0, s9
                  srli         s0, t6, 38
                  add          zero, s10, s0
                  slt          t1, zero, s0
                  add          t4, s5, t0
                  sraiw        a6, a2, 29
                  div          t2, a2, a4
                  sltiu        a1, a4, -1177
                  mul          tp, s5, s11
                  addi         s5, t4, -1445
                  andi         t6, gp, 370
                  rem          s8, s7, s5
                  div          tp, s7, s9
                  slliw        zero, sp, 21
                  sll          sp, s9, gp
                  subw         s4, s10, s9
                  addiw        s4, s4, 1310
                  srlw         t4, a7, s3
                  mulhu        t2, sp, a4
                  lui          s11, 151289
                  remw         a0, s10, t1
                  remw         s9, t6, a0
                  add          t6, a1, s6
                  sraiw        s4, zero, 10
                  ori          a1, t3, 288
                  srlw         a5, s2, t6
                  divw         a6, tp, t5
                  srai         a5, t3, 62
                  slt          s1, a3, a3
                  mulw         s4, s0, sp
                  addiw        s8, a6, -1562
                  slti         a2, a4, -722
                  divuw        s5, a6, t6
                  sltiu        t2, a3, 955
                  addw         s10, a7, s3
                  mulh         t1, s10, s4
                  ori          a3, a5, 982
                  slti         tp, s5, -1544
                  xori         sp, t0, -220
                  remu         t5, sp, t2
                  addw         a7, s2, a7
                  ori          ra, s6, -202
                  slt          t4, s3, s3
                  lui          t4, 996211
                  slt          t5, s2, t1
                  srai         gp, zero, 21
                  xori         ra, a5, -890
                  remw         s5, tp, s5
                  divw         s4, s5, sp
                  sraiw        s5, a0, 0
                  sllw         t5, t5, a0
                  addiw        s11, s6, -815
                  sra          tp, t5, ra
                  srliw        s6, s6, 6
                  srliw        a5, tp, 6
                  mul          gp, a1, s10
                  sltiu        s11, s10, 521
                  addw         s11, a7, sp
                  addi         a2, a6, -1833
                  sra          a2, a5, s0
                  ori          s5, s6, -1148
                  or           t5, t4, a4
                  or           a7, t4, s2
                  srlw         a2, t3, t6
                  xori         s1, s11, -1632
                  addw         ra, sp, a4
                  sraw         t0, ra, a7
                  remw         s5, s7, gp
                  xori         s1, t2, -288
                  slli         s2, t1, 30
                  remuw        s11, s6, s5
                  ori          a7, a2, -557
                  divuw        t1, s8, s2
                  addiw        tp, t5, -332
                  srai         a6, t3, 11
                  div          ra, t1, t3
                  slti         s9, gp, 472
                  mulhu        s5, a6, s9
                  mulhu        t5, a6, s8
                  slt          s10, t4, ra
                  addw         a7, s3, s11
                  lui          a7, 225381
                  andi         t4, t0, -160
                  subw         s11, s7, a0
                  div          s6, s3, a1
                  divw         s10, t4, s10
                  div          s0, t6, s5
                  srliw        a5, s8, 11
                  divw         t5, s0, a6
                  srliw        s11, s0, 26
                  subw         a7, a1, s4
                  srli         s8, s10, 21
                  xor          a0, t5, s10
                  auipc        s2, 976444
                  addi         t0, s2, 1804
                  xori         t2, a7, -613
                  mulhu        s9, ra, t6
                  mul          s11, s1, s3
                  ori          s9, s6, 808
                  ori          gp, s11, -381
                  mulhu        s11, t2, tp
                  addiw        t2, t3, 789
                  slliw        t4, a4, 2
                  or           t5, s10, s2
                  subw         a3, s2, s8
                  divw         s0, s8, s5
                  mulw         t4, gp, a6
                  mul          t2, s3, s1
                  ori          tp, s5, 998
                  xor          ra, ra, t0
                  mulw         s2, a5, s5
                  and          gp, ra, s3
                  slliw        t2, zero, 29
                  addw         t5, a4, a7
                  sraiw        a2, s8, 25
                  divuw        s9, t2, s4
                  srai         zero, a0, 38
                  divw         s3, s10, s10
                  ori          ra, a3, -324
                  ori          s3, s1, -190
                  sll          s2, a1, a5
                  rem          a7, gp, a6
                  divuw        s11, s0, t5
                  srliw        s9, t1, 5
                  subw         s0, a4, zero
                  andi         gp, s4, 306
                  lui          t4, 717720
                  sllw         s5, ra, a4
                  subw         a7, zero, s3
                  and          a5, s3, t1
                  divw         t1, s2, s10
                  mulw         s3, s1, t3
                  divuw        a0, a2, t4
                  mulhsu       s2, s8, ra
                  remw         a6, s4, s10
                  xor          a2, gp, s0
                  mul          s5, t0, ra
                  rem          a5, gp, a2
                  srai         t0, a3, 20
                  slliw        t0, s0, 0
                  srli         t0, t3, 40
                  srliw        gp, a3, 11
                  rem          a0, s5, s11
                  srli         a3, s4, 56
                  sraiw        t2, s4, 20
                  remuw        t6, s11, s6
                  mulhu        t6, t4, s5
                  srl          sp, gp, s5
                  mulhu        t0, s11, s10
                  sltu         s1, s7, a0
                  srliw        s0, a3, 12
                  rem          s1, s10, s9
                  auipc        s0, 59863
                  addi         t5, gp, 1750
                  remu         s9, s8, gp
                  sltu         t0, tp, t3
                  sraiw        s2, s4, 23
                  srl          t0, s10, s0
                  sltu         s0, s9, s2
                  div          s10, a5, t1
                  andi         gp, a6, 34
                  srai         t2, a2, 25
                  sub          ra, a6, s10
                  lui          a0, 384355
                  mulhsu       a0, s6, tp
                  and          s8, a6, a7
                  sub          a1, ra, s6
                  remu         a5, a2, tp
                  addw         s5, a2, a3
                  xor          s0, a6, a3
                  remuw        s1, t6, a2
                  and          s1, t6, s5
                  sltiu        t0, s11, 1150
                  sraiw        s9, zero, 13
                  slt          s1, a6, s7
                  srlw         gp, a3, s10
                  mulhu        sp, s1, a7
                  sllw         s1, sp, s10
                  lui          a1, 156526
                  mulh         a7, s9, a3
                  sltu         s5, s6, s9
                  remw         s3, zero, t1
                  srlw         s0, s4, a0
                  nop
                  slli         t1, s2, 53
                  add          tp, s4, t0
                  srli         a1, s6, 53
                  sltu         s1, s6, t4
                  subw         s9, t4, t6
                  mul          s4, a2, s10
                  or           s1, sp, sp
                  and          t0, s7, t3
                  slliw        t5, s0, 28
                  remw         s4, s6, t6
                  srli         a5, s7, 24
                  remw         a6, sp, s11
                  divuw        a3, t1, s1
                  xori         s5, tp, 230
                  sltu         t6, s6, sp
                  addiw        gp, s2, 80
                  div          tp, t3, gp
                  nop
                  divuw        t5, t4, s1
                  slt          gp, t2, a0
                  slti         a7, a0, 1546
                  lui          a5, 649785
                  div          t2, t1, t3
                  remuw        a0, t5, sp
                  andi         s8, a7, -1782
                  addi         t1, t6, 188
                  mulhsu       s2, s9, a6
                  mulhsu       s3, s10, t1
                  sraiw        s6, a0, 10
                  addw         t0, a4, t0
                  addi         s10, zero, 1408
                  slliw        t5, s11, 4
                  mulw         s11, sp, s4
                  slti         t5, a0, -1858
                  auipc        t0, 576056
                  remw         s4, s6, a1
                  sll          t6, t3, zero
                  subw         t0, s4, sp
                  nop
                  sltu         s10, tp, t0
                  sub          t2, s0, a4
                  mulhsu       ra, sp, a1
                  slti         s11, gp, -1022
                  slliw        t0, a5, 21
                  auipc        s10, 952332
                  srl          a5, t4, t5
                  or           s6, a4, a1
                  remuw        t0, s10, s10
                  auipc        a6, 246905
                  nop
                  and          sp, a0, s4
                  divw         sp, s1, s10
                  auipc        a1, 602458
                  div          a2, zero, tp
                  srli         a5, t3, 43
                  andi         s2, a1, -439
                  sraw         s8, s1, zero
                  slti         t2, a6, -1076
                  add          s4, a1, t0
                  remu         gp, a7, a0
                  addi         zero, tp, 698
                  rem          s6, a4, t1
                  addi         a3, zero, 2045
                  sub          s2, t5, s3
                  sraw         a6, s2, s9
                  addw         s8, s4, t3
                  mulw         zero, a4, zero
                  divw         t0, s2, a5
                  addw         s6, s10, a4
                  xori         s0, a3, 984
                  sllw         sp, s11, s11
                  remu         s1, t4, zero
                  mulh         s9, t4, a4
                  srli         tp, s0, 15
                  subw         a1, a5, t3
                  mulw         s4, tp, s11
                  sra          s11, a0, t3
                  sltu         a7, a2, s7
                  sltiu        s2, s0, 1735
                  addw         s9, gp, s6
                  mul          t6, s5, s4
                  divu         s10, a5, a2
                  auipc        t6, 195402
                  sraw         s3, tp, t3
                  mulhsu       a6, s7, s11
                  divw         a6, s3, a0
                  nop
                  mul          s3, t3, tp
                  sll          t5, s11, zero
                  andi         a5, tp, -490
                  div          s2, a3, gp
                  remuw        s6, s1, a0
                  sltu         ra, t2, a7
                  divu         s0, sp, a5
                  addw         s5, a1, s5
                  mulhu        s3, s9, a6
                  and          s3, s3, t6
                  sltiu        s6, t0, 13
                  slti         s3, s7, 1177
                  mulhu        t0, s5, s1
                  addi         s6, s4, 292
                  ori          ra, s6, 624
                  slli         ra, sp, 8
                  or           t6, a2, sp
                  mulhu        s2, a5, t0
                  sltiu        a2, s9, -252
                  divw         a1, a5, s6
                  mulhu        s10, a7, s6
                  sraw         t5, s4, ra
                  addiw        s4, t5, -1783
                  ori          s8, a4, 938
                  slti         a3, a2, 117
                  xor          s11, s1, a6
                  and          a2, t2, a1
                  mulw         s9, t4, sp
                  sraw         s5, s4, a0
                  remuw        s8, s2, a6
                  slli         s6, ra, 26
                  remw         a5, gp, s0
                  mulhu        a2, s7, t0
                  andi         a3, t1, 1449
                  andi         t6, t6, -573
                  sltu         s9, t6, t0
                  auipc        s10, 903794
                  auipc        s2, 703483
                  add          s11, s9, s7
                  remw         s11, a6, s11
                  divuw        t0, s4, a2
                  srliw        gp, s3, 30
                  sll          t2, t6, tp
                  srliw        t1, t3, 22
                  sltiu        a2, s4, 1174
                  sub          t6, t4, s4
                  andi         a1, a2, -1893
                  divw         s2, a5, s4
                  lui          s4, 8909
                  slti         a0, tp, 2036
                  remw         s2, t4, a6
                  and          s10, a7, t1
                  ori          a5, a3, 409
                  lui          a0, 31245
                  xori         sp, s0, -1469
                  remu         tp, t5, t6
                  srai         s4, s8, 52
                  sub          t2, zero, a7
                  sltu         a0, a7, t6
                  add          s10, a0, s6
                  srai         t6, t6, 7
                  auipc        t6, 733031
                  xori         tp, s6, -443
                  slt          a7, t1, s3
                  sub          a0, s2, gp
                  sllw         s8, s7, s7
                  remu         t1, gp, a2
                  sra          s5, a6, s11
                  mulh         a5, a5, s5
                  and          s11, s9, s4
                  ori          zero, ra, -113
                  xor          s11, t6, t4
                  or           s3, s7, t1
                  mul          s11, a7, t4
                  srl          t1, a4, gp
                  sra          t1, t1, t2
                  addiw        a7, a2, -1650
                  mulh         t6, gp, t3
                  div          s4, t0, s10
                  slli         s5, tp, 39
                  rem          a3, s7, zero
                  sub          a3, t3, sp
                  mulw         a5, s9, s7
                  nop
                  srl          zero, a6, s6
                  addi         s6, t3, 1006
                  andi         s2, s1, -1157
                  srl          s10, s9, s7
                  subw         zero, gp, gp
                  mulhu        t4, ra, gp
                  xori         zero, t1, 1546
                  sltu         s5, zero, t1
                  sraiw        s4, t1, 3
                  remu         a5, tp, t6
                  remuw        tp, t6, ra
                  rem          gp, tp, s9
                  subw         s10, a2, tp
                  sraw         s4, sp, s8
                  addiw        gp, a0, -1551
                  divw         s0, s2, tp
                  divuw        t0, s10, ra
                  or           s11, s6, s1
                  and          t6, a4, gp
                  divw         t6, a6, sp
                  and          ra, t2, a0
                  xori         s3, s11, -452
                  mulh         s9, a1, t4
                  add          s3, sp, a4
                  rem          gp, t0, t4
                  sll          s3, a5, a6
                  sllw         s8, t1, s4
                  sraiw        a5, sp, 10
                  addw         a5, t5, a5
                  remw         s1, ra, zero
                  srli         s8, s10, 33
                  srlw         ra, s1, a1
                  mulhsu       t4, t2, a1
                  slt          s11, a2, s8
                  remuw        ra, s1, gp
                  remuw        s2, s10, t6
                  mulhu        a5, a6, a5
                  nop
                  mulw         s6, ra, a2
                  ori          a2, s6, -1478
                  srliw        t4, s2, 6
                  xori         s2, t6, -1184
                  slliw        s6, a1, 21
                  addw         s8, s9, s3
                  rem          t6, s0, zero
                  srliw        a6, a7, 16
                  addw         a2, s4, s3
                  rem          t0, s8, t2
                  srai         gp, tp, 22
                  ori          a3, gp, 62
                  addw         a5, s3, a2
                  and          s2, t1, t1
                  add          ra, s4, s3
                  srl          t4, tp, s4
                  and          a3, t0, s4
                  sub          t6, s2, s1
                  lui          a2, 561801
                  subw         t5, a6, s1
                  and          s8, s7, ra
                  add          a7, a3, tp
                  srliw        t2, zero, 3
                  slti         s0, s9, 1853
                  sllw         t4, t1, s11
                  sltiu        a7, tp, -304
                  rem          s1, a2, s7
                  auipc        a1, 821839
                  add          s1, t2, a7
                  mul          a5, t0, s10
                  mulhsu       t2, t4, s5
                  srl          s3, s5, a3
                  sllw         s6, a7, a7
                  sltiu        t4, t4, 1662
                  mulw         s9, s11, a2
                  srliw        zero, s3, 3
                  srlw         t1, s2, a2
                  srli         ra, s0, 2
                  sltu         s9, ra, s10
                  mul          t5, s0, a1
                  sll          t1, s0, a2
                  addi         s0, s2, -551
                  addi         zero, a1, 1867
                  subw         t2, a7, a1
                  remuw        s4, s0, zero
                  lui          s9, 799594
                  rem          a0, a1, t4
                  sltiu        t6, s2, -471
                  addiw        gp, a7, 588
                  mulhu        a3, a5, zero
                  xori         gp, s4, -1540
                  slli         s4, a4, 12
                  auipc        a2, 654925
                  subw         sp, ra, a6
                  mulhsu       ra, t1, a7
                  mul          a7, s4, a2
                  lui          a6, 669397
                  add          a2, a7, a4
                  rem          s0, t0, t2
                  xor          s3, t2, t6
                  sltiu        a7, a6, -1474
                  andi         s4, t0, 2037
                  remuw        s5, a6, a6
                  sraw         a2, a3, zero
                  xor          ra, a0, s8
                  mulh         zero, t2, a6
                  srl          a5, a0, gp
                  slli         a6, s5, 49
                  subw         s2, s5, s2
                  slt          s9, zero, t3
                  divw         a7, s8, a4
                  remuw        s3, s7, s11
                  slliw        s1, s10, 3
                  subw         s5, s6, a3
                  remuw        a5, t6, t2
                  lui          s9, 127218
                  sraw         a0, gp, t5
                  and          s2, s3, a4
                  addiw        a3, t5, -597
                  divw         s6, a2, t0
                  rem          a5, tp, t3
                  slti         zero, s11, 358
                  sltiu        t1, s10, -519
                  addi         sp, s4, -859
                  subw         t4, a1, t5
                  subw         a5, t2, t4
                  mulw         sp, gp, a1
                  xori         t6, s3, 712
                  sub          s10, t2, zero
                  remuw        t0, s1, a5
                  srliw        tp, a5, 27
                  remuw        tp, s5, t4
                  xor          s9, s3, s1
                  srliw        s2, s2, 27
                  sltu         t1, zero, a3
                  addi         ra, a6, -1869
                  sra          sp, gp, s2
                  sra          s4, s10, s11
                  sub          ra, s4, tp
                  mulhu        t4, a3, s4
                  sra          s4, tp, a7
                  srlw         a0, s5, t5
                  sraw         a5, gp, a4
                  slti         tp, s2, 334
                  sraiw        t1, s6, 31
                  slli         s6, s1, 57
                  or           s3, a3, s5
                  mul          a5, a3, s7
                  srl          s9, t6, a4
                  div          s9, s0, t0
                  xori         a6, s5, -1562
                  sraiw        a2, zero, 0
                  mulhu        t5, zero, sp
                  remw         s2, t6, s11
                  addw         t2, a7, s7
                  slliw        gp, t3, 19
                  lui          s3, 33002
                  xor          s3, s1, a4
                  subw         a5, a7, s0
                  subw         a6, sp, a0
                  mul          a5, s11, a0
                  rem          s5, a6, a2
                  addiw        s0, ra, 1615
                  addi         t2, s1, 148
                  rem          s8, a4, s7
                  sraw         t4, a2, s5
                  sltu         a7, s2, a3
                  mulh         s8, t0, zero
                  sll          s11, t0, gp
                  subw         t0, a4, t5
                  slliw        t6, gp, 16
                  xor          t6, a2, tp
                  mulhsu       gp, s3, a4
                  remw         t5, t3, s7
                  srai         s10, s2, 47
                  srlw         s5, a0, tp
                  mulhsu       s4, a3, ra
                  rem          zero, t6, s8
                  sllw         gp, ra, t4
                  divuw        gp, s8, a5
                  srli         s5, ra, 6
                  divu         a2, a2, zero
                  divu         s6, a7, t3
                  mulh         s6, sp, t4
                  srli         a2, t4, 12
                  remw         tp, a1, t0
                  slliw        s9, s11, 21
                  slti         a3, a0, 1099
                  mulw         t6, a4, a4
                  divuw        a0, zero, sp
                  div          s1, ra, a3
                  sub          gp, s1, a1
                  nop
                  xor          s6, a6, t4
                  slli         s0, s9, 53
                  xori         t2, t2, -1141
                  addiw        s4, t6, -89
                  rem          t5, zero, sp
                  sll          a5, sp, gp
                  divu         s6, t1, s2
                  srliw        ra, t3, 16
                  sltiu        a7, t3, -1984
                  sraiw        zero, t3, 14
                  sraw         tp, s9, a3
                  rem          a5, s8, tp
                  srl          a6, ra, gp
                  mul          s2, a7, ra
                  sll          a2, a2, tp
                  srai         tp, gp, 51
                  sraw         a2, a3, ra
                  divu         a1, t5, sp
                  srli         t1, tp, 56
                  sra          a0, s9, a3
                  sltiu        t4, s7, 783
                  div          s0, a2, s3
                  or           t0, s9, a6
                  srl          t0, gp, a5
                  addiw        tp, s11, 1070
                  srlw         t2, a2, s10
                  sra          a3, t5, s11
                  srai         s10, a2, 22
                  xor          a7, s5, a5
                  divuw        s2, a5, s8
                  slti         a5, ra, 690
                  sra          tp, s7, s10
                  or           a0, t6, a1
                  mul          sp, a0, s11
                  divu         s5, a1, a0
                  srlw         t5, s11, t0
                  srai         t0, tp, 31
                  div          a2, ra, t4
                  sllw         s5, t0, s2
                  lui          s11, 979825
                  srl          tp, s2, a5
                  addi         t4, s8, 771
                  slti         s11, s6, 9
                  xor          zero, s8, t5
                  remu         s0, t4, t2
                  sll          s1, sp, sp
                  srai         sp, s2, 27
                  srai         gp, zero, 14
                  sub          t2, t1, s4
                  srlw         a5, s2, ra
                  slli         s8, s0, 5
                  divu         s5, a6, s0
                  addi         sp, tp, 2012
                  sll          t6, t6, s7
                  addw         s9, t2, a7
                  sll          s3, t6, a1
                  nop
                  srl          s5, s5, t1
                  slliw        s0, a0, 4
                  remuw        t1, zero, s5
                  srlw         s0, s0, s4
                  lui          a0, 902466
                  or           t1, a0, s2
                  add          a0, t5, s2
                  auipc        a7, 183049
                  or           t1, s4, s1
                  remu         s4, s0, t3
                  sll          tp, s7, t4
                  mulhsu       a2, s1, s4
                  srlw         a2, s0, s3
                  or           t2, s11, a3
                  subw         a7, a5, tp
                  divu         tp, a0, s11
                  mulh         t2, sp, a0
                  sltu         a3, t4, t2
                  mulhu        gp, t0, t2
                  srlw         t1, s4, t5
                  srli         a1, a5, 9
                  slli         s11, s8, 1
                  mulh         s4, s4, t3
                  mulhu        t2, s10, s9
                  lui          a7, 894353
                  rem          a3, s5, s7
                  mulw         s10, tp, s1
                  and          a0, s5, s0
                  nop
                  srli         ra, s1, 23
                  remuw        zero, a5, s9
                  srlw         a7, t6, a0
                  and          s8, s0, s11
                  sub          a2, a2, s10
                  srlw         ra, s8, gp
                  xori         s10, t3, 1556
                  xor          t1, a7, gp
                  sltu         s10, a2, t1
                  ori          ra, t1, -867
                  srliw        s9, s11, 18
                  xor          ra, sp, s9
                  add          t0, s3, a6
                  mulhu        a3, t0, s8
                  slli         s0, s3, 2
                  srl          t6, t5, tp
                  remu         t6, s2, t5
                  lui          t2, 673927
                  mulh         a7, s3, t3
                  mul          t0, zero, ra
                  mulw         t5, gp, ra
                  sraw         tp, a0, s10
                  sraw         s6, a4, a1
                  mulw         s6, t2, a3
                  sll          s2, s2, s6
                  sll          t1, s7, t5
                  div          a3, t3, zero
                  slliw        s4, s11, 3
                  srliw        t5, sp, 19
                  and          s5, s4, s2
                  mulhu        s3, a7, s8
                  mul          a1, s6, s10
                  mulhu        t2, s6, s1
                  slliw        ra, zero, 29
                  rem          a3, s7, tp
                  ori          t5, a3, -1400
                  srlw         a5, ra, t0
                  sll          s5, s1, a0
                  mulhu        zero, a3, t5
                  srai         s5, ra, 10
                  sraiw        a0, s6, 17
                  sll          s9, s2, a0
                  xori         t5, a5, 374
                  add          s10, t0, t1
                  xor          s2, zero, a7
                  ori          a1, a7, -957
                  remu         s2, a1, sp
                  remw         s3, a6, gp
                  sraiw        s11, s3, 25
                  srai         s4, s3, 19
                  ori          s11, s1, 206
                  lui          s0, 757896
                  and          s1, sp, s5
                  divw         tp, s5, s8
                  srli         a1, t4, 26
                  nop
                  remu         tp, s5, a6
                  andi         s3, s11, -1209
                  subw         a6, a6, zero
                  or           t1, s3, s4
                  addw         sp, s11, s6
                  sll          s2, a6, s11
                  div          a7, a7, a0
                  and          zero, a3, s3
                  div          t6, t4, t4
                  sll          gp, a6, s8
                  rem          s9, s7, a5
                  sll          t5, s11, tp
                  srl          s11, t6, s4
                  sraw         s10, s5, s6
                  div          s6, s5, a6
                  and          s9, s8, sp
                  addiw        s1, s3, -1020
                  addiw        s4, zero, 1959
                  sltiu        s2, a2, -1580
                  sltiu        s0, a2, -296
                  mulhsu       a3, t3, t6
                  rem          s6, a4, s11
                  divuw        t1, t6, a4
                  sub          t1, t0, a4
                  lui          s10, 203816
                  divw         t5, s2, s3
                  rem          s5, s6, sp
                  sltu         s0, s3, a7
                  slli         t1, s5, 48
                  subw         s0, ra, s9
                  sltiu        s3, s1, -82
                  add          gp, s5, a1
                  sll          t2, ra, t6
                  mul          gp, t6, s2
                  slti         s3, a4, -1731
                  sll          a5, t0, s4
                  addiw        s4, s3, -196
                  sll          s1, a7, ra
                  sltu         s10, s10, a6
                  add          a2, t3, s7
                  addi         a2, ra, -264
                  mulhu        s10, gp, t3
                  addi         s0, s7, 144
                  slt          t0, s3, sp
                  auipc        t2, 594983
                  div          zero, tp, a2
                  sll          tp, a3, t0
                  addiw        t5, t3, -1636
                  slt          a7, s10, t6
                  sra          a3, s7, s1
                  addiw        t2, a6, -1389
                  addw         a7, t5, t6
                  sra          sp, s9, s8
                  mulhu        t4, s9, sp
                  addi         a2, s6, 1295
                  nop
                  srliw        sp, s0, 20
                  slt          a7, t4, s10
                  mul          s3, a7, a3
                  divw         s10, s5, a0
                  sltu         s1, ra, a2
                  mulhsu       a0, ra, s3
                  mulw         gp, sp, s10
                  divuw        s0, tp, s6
                  sub          s8, a5, t6
                  div          a1, s1, t1
                  slli         zero, a3, 25
                  xor          ra, a0, s6
                  slli         t5, t5, 8
                  or           s4, sp, s5
                  mulw         s8, a6, t4
                  slliw        zero, s5, 3
                  xor          t1, s4, tp
                  or           t1, s3, s3
                  xori         t0, t4, -368
                  andi         a5, ra, 1757
                  sraiw        gp, s3, 12
                  srlw         t4, t4, a7
                  remu         s6, s11, t4
                  sll          t4, s2, s8
                  divuw        a2, a1, t2
                  addw         t6, a0, s4
                  rem          a0, a2, t2
                  sub          t1, s0, s6
                  srlw         a7, a4, tp
                  mulhsu       s3, t1, s10
                  lui          s2, 768564
                  addiw        s4, ra, -1764
                  xor          a2, s6, a5
                  rem          a1, s10, t2
                  slli         gp, s1, 21
                  lui          s0, 42760
                  slt          a3, gp, a5
                  sllw         s0, s0, a4
                  remw         s8, zero, s1
                  xori         tp, sp, 598
                  mulhu        gp, s9, a3
                  remuw        s11, a0, a0
                  nop
                  or           zero, t4, s5
                  slli         s4, zero, 14
                  addw         t1, a6, t4
                  remu         t1, s4, gp
                  nop
                  addw         a0, s9, t6
                  sll          a1, a5, s2
                  addiw        s3, a5, 1354
                  srai         t4, gp, 29
                  srl          a2, s2, s2
                  divu         s10, s9, a4
                  mulhsu       a7, a1, a6
                  and          s3, s11, s5
                  divuw        tp, t4, a1
                  xor          t4, zero, s1
                  sraw         s6, t3, a2
                  sll          s8, s9, s7
                  remuw        a1, s7, s2
                  divu         t5, s5, a3
                  xor          a7, a6, t0
                  sra          s2, ra, zero
                  sra          gp, s11, a5
                  sraiw        tp, s10, 23
                  xori         sp, s9, -78
                  sra          a2, s11, sp
                  sltu         s8, a7, a0
                  sraiw        s4, s0, 21
                  or           s5, s7, a0
                  rem          tp, s0, ra
                  addiw        a0, a7, -1063
                  mulhsu       s6, s8, a6
                  andi         ra, s9, -428
                  mul          s1, t6, s5
                  mulw         s3, s9, a7
                  srli         zero, s10, 1
                  ori          t2, s11, -1884
                  sll          s10, s3, s6
                  nop
                  mul          t6, tp, ra
                  subw         t5, s8, s11
                  srai         t6, s2, 21
                  add          t1, s8, a6
                  sra          s11, s9, s9
                  addi         t4, s10, -1411
                  nop
                  sll          a5, s9, t3
                  divw         s1, a4, s6
                  slli         s4, t4, 59
                  mulw         t2, s8, a4
                  andi         t5, s9, -1868
                  slti         t2, t6, -1379
                  sltiu        s3, s10, -1642
                  sllw         gp, gp, s4
                  div          gp, s7, s3
                  slliw        a1, a1, 21
                  sll          t5, sp, s9
                  add          s9, s8, s3
                  sra          zero, s8, gp
                  sllw         s3, a4, a0
                  slliw        s8, a4, 24
                  srl          a1, s2, a0
                  rem          s6, a3, s6
                  lui          a1, 438444
                  nop
                  sllw         s8, s0, t0
                  sra          s8, t5, s0
                  addi         s8, t6, -1851
                  addw         zero, sp, t1
                  and          s5, s0, tp
                  slti         tp, s1, 1784
                  divw         s6, s6, s11
                  mul          t5, s2, t4
                  lui          t6, 905144
                  sllw         s9, t6, s0
                  mul          s6, s5, t1
                  xor          s11, a5, s1
                  srli         t4, a5, 12
                  add          s10, a0, a5
                  sraw         gp, a3, s9
                  sub          t4, a6, t6
                  srlw         sp, t0, s9
                  divu         s1, s8, s4
                  slli         s1, s4, 7
                  sll          t6, t4, gp
                  add          s11, t1, tp
                  srlw         a0, ra, t3
                  srl          s5, a0, s11
                  srai         t4, t3, 20
                  sllw         a1, a6, s0
                  nop
                  xori         t5, s11, -1641
                  mulhsu       ra, a6, s2
                  subw         s4, t4, gp
                  addw         s2, a2, a2
                  mulhsu       t0, s4, t3
                  remu         s5, a7, t1
                  mulw         t0, a6, a0
                  mul          gp, t6, a1
                  add          s0, a1, s9
                  mulhu        a5, s0, a1
                  sub          t5, a4, s3
                  sraiw        a2, a2, 21
                  xor          zero, s2, s9
                  srai         t2, s5, 7
                  lui          zero, 888671
                  slli         gp, gp, 20
                  div          t1, ra, a6
                  xor          tp, zero, a2
                  mulw         t6, s8, t6
                  srli         s0, s6, 47
                  ori          t6, t3, 1596
                  sraiw        t4, a5, 12
                  ori          s11, t6, -1950
                  slliw        t5, a2, 15
                  nop
                  mul          t0, t3, a6
                  addw         gp, a3, a7
                  lui          a6, 594200
                  sraiw        t2, s10, 25
                  subw         t2, s11, a5
                  sltu         a5, t0, s7
                  andi         t5, a1, 1796
                  srai         t1, s10, 27
                  sltiu        s9, a1, 755
                  srlw         a0, s8, s1
                  sraw         t1, sp, t6
                  addi         s2, t0, 185
                  sraiw        a5, tp, 8
                  mulh         sp, s9, t6
                  or           t6, a4, s8
                  slli         s10, t1, 18
                  addiw        s6, tp, -758
                  xor          s4, s4, s5
                  xori         s0, a5, 66
                  divw         s5, s10, a1
                  and          t0, a0, s1
                  divw         s1, s4, a6
                  sltiu        ra, zero, -798
                  srliw        t4, t0, 15
                  sraiw        a2, t6, 15
                  sllw         t6, a3, t6
                  slli         zero, t0, 50
                  srlw         t1, s11, s9
                  addiw        s5, s5, -787
                  addiw        t5, gp, 106
                  mulhsu       s3, a7, t0
                  andi         s11, a1, 1817
                  addiw        s4, a5, 609
                  addi         zero, t4, -510
                  sub          t4, gp, t4
                  and          t5, s8, s6
                  srl          a2, a3, s9
                  slli         s5, s10, 23
                  mulh         s5, s6, a3
                  slti         a5, a2, 1008
                  xori         t6, s0, -2038
                  divu         s9, t1, s2
                  lui          a7, 753178
                  srli         s2, a0, 60
                  nop
                  sra          t6, t1, a6
                  srlw         zero, t2, tp
                  nop
                  addiw        a0, ra, 1898
                  mulh         tp, t4, zero
                  srai         t0, zero, 37
                  sltu         a3, s2, s3
                  srli         s0, s1, 15
                  slti         t0, a0, 1058
                  auipc        s9, 688995
                  andi         t4, s3, -765
                  sltiu        t0, s0, -296
                  srlw         a2, s7, a2
                  auipc        s5, 418635
                  mulhsu       t1, a6, s2
                  remu         s2, t3, t6
                  slti         s3, s1, -369
                  ori          a2, a2, 1452
                  sraiw        zero, a5, 5
                  lui          s0, 81177
                  or           t2, s8, t4
                  slti         t4, s3, 1453
                  sllw         t6, a3, s2
                  xor          s9, s10, s10
                  remuw        s5, s11, s4
                  sllw         t5, sp, sp
                  or           a6, zero, s5
                  auipc        s6, 1020700
                  sltiu        zero, a2, -1385
                  lui          s5, 126805
                  addiw        s0, s3, 518
                  subw         a6, zero, s2
                  remw         a2, s0, s2
                  andi         t5, s7, -803
                  addw         s3, sp, s1
                  mulh         t6, zero, t2
                  srl          t4, a0, t4
                  srli         tp, a4, 10
                  auipc        s3, 641884
                  nop
                  ori          ra, t6, 500
                  addi         s2, s8, -416
                  remu         gp, sp, t6
                  sraiw        t2, s10, 0
                  sub          zero, t1, s6
                  lui          s10, 260131
                  addi         a3, a4, 1465
                  subw         ra, a2, t3
                  or           a0, a4, zero
                  slt          t5, s1, t1
                  mulw         t6, tp, ra
                  sra          sp, s5, s7
                  sltu         t5, zero, a7
                  slliw        s10, s11, 6
                  mulhu        zero, s7, s11
                  mulw         t0, s1, a4
                  mulh         s6, t6, tp
                  sra          s4, a3, t6
                  srl          s10, gp, a0
                  sltiu        t1, a0, 1854
                  slli         ra, a1, 17
                  sltiu        a3, t5, 310
                  nop
                  srliw        t4, s1, 15
                  divu         s9, t6, t1
                  mulhsu       a2, a3, s10
                  mulhsu       gp, s6, s0
                  nop
                  mulhu        t1, tp, s2
                  rem          s4, sp, a1
                  mulh         s3, ra, t2
                  xori         a3, s6, -1656
                  slli         s2, a7, 27
                  sllw         a6, t4, s9
                  sllw         s1, t1, s1
                  sraiw        tp, tp, 2
                  remu         ra, s6, a2
                  mulh         s4, t6, s8
                  remu         ra, s4, s7
                  rem          s1, t2, t1
                  divuw        t5, gp, s5
                  sllw         s9, a2, gp
                  lui          t4, 571382
                  ori          gp, s10, -1131
                  srli         s0, s1, 6
                  sltiu        a6, t6, -943
                  div          sp, s11, t2
                  or           s6, s8, gp
                  subw         a7, a0, t5
                  sra          s8, ra, a0
                  mulhsu       t2, s10, tp
                  sllw         t4, t0, s0
                  divw         tp, a4, gp
                  slliw        s2, t5, 27
                  sll          s1, ra, s9
                  xor          ra, t0, zero
                  xori         ra, t0, 354
                  sub          zero, a4, s6
                  srliw        a7, t3, 29
                  remuw        t6, a4, s10
                  slliw        s11, t2, 22
                  sra          s8, a0, a1
                  divuw        a0, s4, s6
                  xor          a2, s11, t5
                  lui          s5, 653542
                  srliw        s3, s5, 21
                  srliw        gp, t5, 12
                  lui          t6, 402248
                  sra          a1, s0, a3
                  remu         s10, t6, s5
                  xor          tp, a7, t6
                  remw         ra, s3, t6
                  subw         sp, t2, a4
                  auipc        s5, 12211
                  remw         s5, a5, zero
                  mulhu        tp, s8, zero
                  sra          gp, t1, ra
                  sltiu        gp, t4, -1651
                  div          s5, s11, s5
                  slt          s6, a4, s3
                  srliw        s11, a7, 19
                  sraiw        a6, s11, 28
                  div          t6, s8, s8
                  andi         ra, tp, -891
                  slt          s5, s5, a4
                  srai         a1, s2, 15
                  mulw         s0, s5, s6
                  mulhu        t1, a0, s11
                  srai         s1, a2, 14
                  addi         a6, a1, 943
                  divw         zero, zero, a4
                  sll          s6, t4, a7
                  nop
                  slli         ra, s8, 11
                  remu         s5, t2, zero
                  sra          s3, s11, s4
                  mulh         zero, t1, t1
                  nop
                  remu         sp, s2, t3
                  slti         tp, a2, 699
                  mulw         sp, s5, s1
                  remuw        s10, a1, s11
                  xori         a6, zero, 674
                  sra          t4, a4, a4
                  nop
                  div          gp, a4, s11
                  sub          a2, tp, s2
                  slli         s6, s4, 49
                  sraw         a6, ra, a6
                  remu         a5, s8, s10
                  sra          a2, sp, a0
                  srl          t4, zero, t3
                  srlw         a7, s5, s0
                  sraiw        s3, s10, 18
                  mulh         s0, s9, a5
                  mulhu        zero, s0, gp
                  div          s4, sp, s0
                  srai         s6, s2, 53
                  xori         s10, s11, -71
                  sltu         a1, t4, gp
                  mulh         a2, t2, t4
                  rem          a7, s0, s3
                  subw         t0, sp, s7
                  slti         s2, t0, -1571
                  add          ra, a4, s5
                  srlw         zero, a4, a6
                  add          s1, t2, s7
                  sltu         tp, t4, a4
                  auipc        t4, 245620
                  srli         zero, s7, 45
                  srlw         t1, t1, s11
                  remw         a7, a1, s11
                  or           s3, sp, a1
                  srai         a7, a7, 48
                  and          s10, t5, s8
                  add          s3, s3, ra
                  sraiw        a2, a5, 25
                  divu         a6, a2, tp
                  sraiw        a5, s5, 9
                  subw         t1, t3, s0
                  sraiw        t1, s10, 29
                  slti         t1, t5, 184
                  mul          tp, sp, tp
                  addi         a0, t6, -1758
                  remu         t6, s2, t0
                  srl          s2, s6, s3
                  slliw        s6, s11, 15
                  sll          t1, a6, a1
                  slli         s5, a1, 22
                  addw         s0, zero, t2
                  sub          t2, tp, a6
                  addw         ra, s4, a3
                  remw         s10, s11, t6
                  xori         s8, s0, 1771
                  remuw        t2, s6, a1
                  srliw        a7, s9, 3
                  or           t0, s7, t2
                  div          s6, t2, t5
                  mulhu        gp, a1, tp
                  divuw        ra, s0, s6
                  xori         s11, sp, 1180
                  sraw         gp, a0, t2
                  remu         t1, s6, s5
                  sraiw        a0, tp, 22
                  srl          t5, s9, a0
                  sra          s10, s6, t1
                  mulw         t0, a5, a6
                  sra          t6, t2, t3
                  nop
                  mulw         s9, t1, a3
                  slli         t5, a5, 35
                  addw         a5, s5, a3
                  mulhsu       a7, t3, sp
                  andi         s4, t5, 793
                  xor          a6, sp, t6
                  remu         s5, a1, s4
                  and          zero, s3, s5
                  xori         sp, a6, -1915
                  slliw        s0, t2, 2
                  mulw         t5, s1, s1
                  rem          s0, s7, s1
                  sltu         s4, gp, a0
                  slli         t4, s0, 30
                  nop
                  sltu         a2, a0, a1
                  sllw         s5, a6, s11
                  remw         a7, s11, s6
                  nop
                  remuw        t0, t4, s7
                  auipc        s11, 390813
                  slti         s8, t5, 665
                  sraw         t2, s7, a1
                  ori          t1, s9, -1621
                  sraiw        s2, s9, 13
                  subw         s4, a0, a7
                  auipc        s0, 522478
                  addw         s11, a1, gp
                  divuw        s3, t1, s0
                  sraw         tp, s0, s1
                  rem          s6, gp, a6
                  addw         t2, s5, s9
                  mul          tp, t4, s6
                  sltu         a2, a4, tp
                  remu         t0, s9, gp
                  mulh         s3, a4, a4
                  slti         s1, tp, -1953
                  addi         t0, sp, 279
                  divw         s8, a7, s4
                  xor          a2, t6, t6
                  srl          t0, s0, s4
                  remw         t5, sp, a1
                  srl          zero, a1, a7
                  mulhsu       s4, a6, s2
                  xor          a0, sp, s0
                  srlw         a3, s1, a7
                  srli         s8, s11, 21
                  srliw        ra, t1, 15
                  divu         s3, s3, s4
                  sraiw        s0, s3, 18
                  subw         tp, a3, tp
                  auipc        a3, 13947
                  xor          t0, s9, t2
                  slli         a2, t4, 60
                  addw         t1, s8, zero
                  sub          s10, gp, t1
                  sltu         s0, t0, s5
                  remu         a3, s11, a2
                  xor          a1, s1, t4
                  remu         t2, zero, s2
                  divu         t4, s6, s9
                  srliw        s2, t2, 24
                  srl          s4, a2, t4
                  rem          s3, s2, a7
                  slliw        a1, s3, 20
                  nop
                  div          tp, s9, s2
                  srlw         s8, gp, gp
                  mulhu        a0, t5, a6
                  sllw         s10, s10, ra
                  sll          t5, t0, s7
                  sraw         s4, t1, sp
                  slt          s4, a4, s1
                  divw         a0, s2, s5
                  ori          ra, ra, 648
                  mulh         tp, t0, a5
                  divuw        a7, s10, s11
                  remu         t0, s6, a3
                  sll          zero, s7, t3
                  divu         a2, s0, s7
                  sltiu        s1, s6, -1713
                  andi         s1, a7, 960
                  srai         a0, s7, 22
                  slli         s9, t4, 0
                  srai         ra, a1, 60
                  remu         t4, s7, a4
                  and          t1, s4, s11
                  divu         a3, t0, t4
                  addw         a3, s9, a6
                  divu         s1, t1, sp
                  and          s5, s8, tp
                  divuw        t1, a5, s11
                  sltu         t0, a3, tp
                  div          s0, t0, s5
                  divuw        sp, s5, t6
                  remuw        a5, t3, s6
                  mulhsu       gp, s8, s7
                  addiw        t6, ra, 991
                  sub          sp, s2, s2
                  andi         sp, t5, 817
                  remu         a0, t0, a2
                  sllw         sp, a2, s5
                  mulhsu       tp, t1, s5
                  and          s4, s10, a3
                  sllw         s6, s8, a1
                  remu         t0, s3, gp
                  srli         a1, ra, 54
                  mul          a7, s0, a5
                  sltiu        s1, t3, -520
                  mulhsu       s2, s11, tp
                  lui          t2, 628842
                  slli         a0, t4, 24
                  srai         s3, tp, 54
                  mulh         a6, s9, a4
                  remuw        s10, a1, ra
                  and          a7, s4, s2
                  mulw         t5, t4, s7
                  xori         s10, s4, 1747
                  mulh         ra, t4, a2
                  addi         s3, tp, -1175
                  div          s4, s10, t6
                  subw         s2, tp, a1
                  mulhu        a2, s0, gp
                  auipc        s1, 68322
                  mul          s9, a6, s10
                  mulh         sp, s5, s10
                  sub          ra, a2, s7
                  rem          a7, t2, a4
                  div          s1, t2, s11
                  rem          t1, s9, a5
                  divw         a2, a5, tp
                  sltiu        s9, s5, -292
                  slli         a3, s1, 38
                  div          zero, s8, a3
                  sra          s1, s9, s1
                  divw         s4, s1, t2
                  remw         t5, s9, s11
                  subw         s6, s5, t1
                  slliw        t2, s9, 3
                  remw         t6, sp, s2
                  divu         s3, s11, t3
                  sraiw        s5, a3, 13
                  subw         a7, t4, a2
                  sltu         s3, a4, s1
                  srli         a7, t2, 54
                  sltiu        s4, t1, 1326
                  divuw        s9, s1, s6
                  xor          a6, t0, s8
                  and          s10, s6, tp
                  lui          a5, 733198
                  or           t1, s4, s0
                  slti         s4, a0, 570
                  mulh         s11, s6, zero
                  srl          s4, s2, s8
                  or           a2, a1, s0
                  sllw         s11, t5, zero
                  mulhu        a7, s3, a2
                  slli         t6, s0, 33
                  xor          zero, a6, a5
                  sra          s6, s1, s5
                  sltiu        s8, s11, -830
                  addw         t4, s1, a6
                  auipc        tp, 454964
                  sra          s6, t2, zero
                  auipc        t1, 94919
                  addiw        t2, t6, 311
                  lui          s11, 726187
                  add          gp, a6, a4
                  slliw        s5, a3, 30
                  sll          gp, s11, t6
                  addw         t1, s6, t4
                  remuw        s8, sp, tp
                  mul          gp, s10, s5
                  srli         t6, gp, 39
                  srai         s2, t2, 51
                  mulhu        s1, t1, s8
                  divu         s6, a0, a6
                  mulhu        s2, gp, a7
                  remu         s1, gp, s1
                  rem          t2, sp, a7
                  sll          a3, ra, s4
                  sra          a3, s6, t1
                  mulw         s8, t1, s2
                  mulhu        s3, s3, s2
                  divu         s6, a4, t1
                  slli         t4, s5, 46
                  nop
                  addi         s5, a7, -1089
                  srl          a0, s3, a6
                  slliw        a3, s9, 14
                  slli         zero, sp, 3
                  or           s4, gp, a4
                  or           s0, s1, a7
                  sllw         s11, s8, t5
                  sra          t1, s6, s1
                  remuw        ra, t2, a1
                  remuw        s1, a4, tp
                  xori         s8, sp, -1780
                  slli         t5, s10, 52
                  slli         s10, a2, 48
                  mulhsu       sp, a1, a7
                  sra          s3, a6, s11
                  nop
                  sub          s3, a7, zero
                  xor          t1, a7, s5
                  srliw        s9, s11, 24
                  sltu         s6, a5, t4
                  sltu         s9, a3, s8
                  divw         s0, t1, s5
                  mul          a6, zero, s5
                  remw         zero, s7, s3
                  div          a6, gp, a2
                  srli         t5, s4, 19
                  ori          t0, t3, -505
                  and          a0, s6, zero
                  sllw         s11, s11, tp
                  xor          s5, gp, a1
                  addiw        a7, tp, -499
                  mulhsu       a7, s9, s9
                  xor          s11, zero, s5
                  addi         s5, s7, -440
                  xori         t1, s10, 1926
                  srl          t5, sp, gp
                  xor          s4, a7, s3
                  and          t2, a2, s10
                  slliw        s9, s10, 21
                  auipc        a3, 780518
                  ori          a3, s9, -1038
                  sraiw        s2, a4, 6
                  sllw         s8, a0, t2
                  sllw         s9, t4, s3
                  divw         s1, ra, s11
                  nop
                  slliw        a6, s9, 11
                  or           sp, s11, a2
                  or           tp, a1, a1
                  addi         s3, s5, -1387
                  addiw        s1, s5, 1345
                  subw         a0, a3, a2
                  rem          a2, s8, a2
                  sltiu        s4, t1, 1264
                  srliw        a2, a1, 12
                  xori         a0, s6, 1472
                  slt          tp, a7, a3
                  add          zero, s11, a2
                  srliw        s11, gp, 19
                  andi         a2, s8, -1121
                  mul          a2, t5, t2
                  mulh         s8, t4, s2
                  sltu         a2, s2, s10
                  divuw        a2, s5, s5
                  add          s5, t3, t5
                  remu         t1, tp, a3
                  addiw        s6, a4, -312
                  ori          a2, s4, 29
                  remw         a7, gp, t3
                  srl          a3, t1, s11
                  or           a2, a6, s4
                  xori         s4, t4, 1864
                  add          ra, a5, t1
                  div          a5, s2, a6
                  andi         s5, s5, 1866
                  addw         ra, a7, a6
                  sllw         t1, a7, a0
                  addw         s11, t3, t6
                  srai         a6, s8, 51
                  slli         t4, ra, 42
                  remu         t4, a3, s7
                  remu         s3, tp, zero
                  remuw        s0, s7, s6
                  slt          t1, a5, t1
                  xor          s2, a7, s5
                  divu         a2, a1, s0
                  mul          s3, tp, a5
                  add          s6, t5, t2
                  slli         t4, s10, 56
                  nop
                  remu         a0, t3, sp
                  mul          s0, a2, a1
                  nop
                  lui          s5, 930643
                  nop
                  mulw         t0, zero, t4
                  remuw        s5, a0, a1
                  mul          s5, a0, a2
                  remw         s3, a3, a6
                  sll          s1, t3, s1
                  mulh         tp, a0, s2
                  srai         sp, a3, 54
                  xor          t4, a7, a0
                  srli         t0, ra, 8
                  srl          t5, t4, a1
                  slliw        sp, s10, 10
                  slti         s10, zero, 1498
                  sraiw        s9, s9, 26
                  or           a0, t4, s11
                  sllw         t2, t6, s7
                  mulh         t4, s2, a6
                  ori          t0, t1, 168
                  sraw         a6, s10, a3
                  rem          a6, s5, t4
                  srli         s4, t2, 47
                  div          zero, gp, s4
                  slli         a7, a6, 17
                  slt          s1, s3, s5
                  slli         t2, a7, 5
                  nop
                  divu         ra, a2, s10
                  srlw         s4, a7, t4
                  addw         a1, a6, gp
                  mulhsu       t5, a0, a7
                  div          s2, t3, sp
                  mul          a0, t1, ra
                  sll          zero, s6, t2
                  srl          s5, s9, a3
                  sltiu        s11, s5, -993
                  remw         s11, t2, a7
                  addi         gp, s7, 194
                  auipc        s8, 742559
                  and          a2, s7, a5
                  xor          t6, t4, ra
                  subw         t0, s11, s3
                  srliw        a3, s1, 28
                  divu         t5, zero, s0
                  sraw         t4, s7, t0
                  sraiw        s6, s8, 4
                  srl          s5, s7, ra
                  subw         a0, t3, s1
                  remu         zero, s2, s11
                  divw         s3, s11, s1
                  auipc        t5, 370219
                  sltiu        s3, a0, 2028
                  mulhsu       tp, s11, t5
                  mulw         t0, s7, ra
                  remuw        t4, a1, s6
                  subw         a0, a1, s1
                  addi         t0, gp, 445
                  slti         t6, s0, -1104
                  divuw        t0, t0, a0
                  srliw        zero, t5, 24
                  remuw        t1, s3, t4
                  andi         s4, gp, 1926
                  remw         t5, t3, t4
                  srliw        s3, tp, 24
                  ori          a0, sp, 951
                  slti         s8, s6, -1457
                  sltu         a0, a2, gp
                  mulw         t5, a7, a7
                  mul          a0, s1, a1
                  sraw         t0, t5, a4
                  sllw         s9, s2, s1
                  sllw         ra, s9, a2
                  sltu         a1, s8, gp
                  mulh         a2, s9, s11
                  slti         t2, t0, -346
                  sltu         s1, s6, s5
                  xori         t2, s5, -1592
                  addw         t5, t0, t5
                  andi         ra, tp, -615
                  srli         tp, sp, 17
                  rem          zero, a1, s11
                  mulhu        s4, s3, s4
                  remuw        s0, s11, zero
                  slt          s4, a6, t6
                  remuw        t5, s8, a0
                  sllw         a3, t4, t1
                  srliw        s1, s10, 16
                  addi         s10, sp, -96
                  srl          t6, a0, s4
                  addi         s1, s3, 1854
                  auipc        s5, 990031
                  mulh         t0, s10, t3
                  auipc        tp, 722293
                  mulh         a5, t6, s1
                  remu         a1, tp, s4
                  andi         a0, a0, -896
                  mul          s9, t0, s8
                  mulh         gp, a0, s4
                  lui          t0, 776186
                  sub          gp, s10, a2
                  slti         a2, a7, -1652
                  slt          s3, a3, a4
                  xor          s10, s0, t6
                  sllw         t6, t5, s7
                  div          s5, s6, s9
                  or           a5, gp, sp
                  remu         t5, s3, s6
                  remu         s11, a5, t3
                  nop
                  sra          sp, a5, s2
                  divw         s2, zero, s2
                  slti         a3, s8, 250
                  or           s4, zero, t4
                  remw         ra, t3, t5
                  lui          s3, 899303
                  sltiu        s9, s0, -1387
                  sltiu        t0, a2, -80
                  remu         sp, s6, s10
                  slti         a5, s2, 1182
                  rem          t2, zero, t3
                  addi         sp, s3, 399
                  remu         s5, s2, t0
                  auipc        ra, 494490
                  rem          a1, s10, t2
                  add          a6, s4, s7
                  remu         s10, s6, a5
                  divw         ra, a7, s1
                  slli         t2, t2, 52
                  sraiw        a3, s6, 0
                  xor          sp, t3, s6
                  sll          s11, a7, t4
                  sraw         ra, s11, s2
                  addiw        tp, s7, 335
                  xor          t4, s9, a5
                  remw         a0, a6, a7
                  sllw         gp, s6, a3
                  slti         gp, t5, -1463
                  lui          s8, 457131
                  sra          tp, zero, t1
                  sllw         t4, s1, s7
                  mulhu        s2, zero, a4
                  addi         sp, s1, -1502
                  rem          s4, s8, a6
                  addiw        s3, s8, -801
                  sllw         gp, s11, s7
                  mulhsu       s8, t0, t1
                  mul          s3, a6, s4
                  ori          a7, s5, 138
                  sll          s4, s4, a7
                  auipc        s2, 367595
                  add          tp, t3, t4
                  xori         t4, t0, -1695
                  divu         a5, s10, s1
                  sraiw        s3, a5, 7
                  srl          t5, s0, s2
                  mulw         a3, s6, a4
                  or           t4, s0, t4
                  divuw        t1, tp, s3
                  srli         t6, s8, 6
                  srlw         s5, s2, ra
                  srl          s6, t3, s3
                  sltu         t2, s9, sp
                  remu         a2, s2, a3
                  divw         t6, a4, t5
                  remu         s3, a5, t5
                  lui          t4, 132800
                  mulhu        a2, t2, s1
                  srl          s6, a6, t5
                  sllw         a2, ra, t6
                  slt          t0, s11, t3
                  srai         a2, t2, 10
                  mulw         t4, s8, a3
                  sraiw        zero, t4, 17
                  addiw        a7, sp, 1890
                  remu         sp, t6, t0
                  addw         t4, s11, t3
                  srlw         a0, ra, t2
                  ori          s0, a2, -460
                  remw         s9, s1, a4
                  xori         s5, s8, 868
                  sraw         t4, s9, gp
                  slt          t4, tp, sp
                  srliw        gp, a1, 13
                  and          s9, s2, s4
                  remw         a2, ra, s2
                  andi         a5, tp, -554
                  ori          zero, s9, -1938
                  mul          t5, t1, t2
                  remu         gp, s3, a6
                  divu         a5, s2, t3
                  slt          s9, t2, t2
                  sra          s8, t2, s0
                  slli         s1, t3, 46
                  nop
                  sll          s1, tp, s8
                  srai         s3, s6, 51
                  mulhu        zero, t2, gp
                  div          t1, t3, t4
                  mul          t0, t4, t6
                  sraw         t6, a6, t4
                  and          t0, gp, a7
                  mulhu        s0, t3, a7
                  rem          s2, a0, s0
                  sraw         a2, t5, s1
                  nop
                  srl          a6, s4, s10
                  div          t4, s6, s0
                  sub          s5, a0, a2
                  divw         s11, t1, t4
                  addi         t5, s9, -1802
                  divw         s5, t4, s9
                  sub          t1, t2, a7
                  andi         t5, t1, -917
                  srli         t2, t6, 35
                  mulhsu       a5, a4, a5
                  addi         s4, a5, 381
                  sllw         tp, a4, s1
                  sub          a3, t1, s3
                  sra          s0, s9, t1
                  remuw        a2, zero, s4
                  sltu         s4, t4, s1
                  mulhsu       zero, s0, a4
                  mul          tp, sp, s6
                  auipc        t4, 981440
                  or           a5, a3, s0
                  addi         s3, s9, -192
                  slli         s1, t0, 63
                  mulhsu       a0, a2, a7
                  remuw        a6, a7, s0
                  addw         a2, s2, a4
                  slli         gp, sp, 10
                  addiw        a5, s10, -1678
                  and          s9, a2, s9
                  divu         s2, a7, s4
                  sub          t0, a2, t0
                  mulhsu       s0, t1, a2
                  remw         s5, zero, a0
                  addiw        t1, s7, -1025
                  slli         s8, t5, 61
                  slli         s2, a1, 4
                  slli         s3, t6, 2
                  add          gp, t5, gp
                  srli         s5, t1, 43
                  nop
                  sub          s8, s3, t1
                  slti         s8, s9, -943
                  remw         t0, s3, s3
                  sra          s1, t3, a5
                  sra          a1, tp, a5
                  xor          tp, t6, t2
                  sub          s10, t4, s10
                  xor          t6, ra, a4
                  addi         a1, a0, -71
                  slliw        a5, s5, 17
                  sraiw        gp, s7, 7
                  mulhu        s10, t3, s7
                  rem          t2, s10, a3
                  divuw        ra, t5, t4
                  slti         zero, a1, 1084
                  srl          sp, a6, s1
                  remw         a2, a1, s2
                  sll          tp, a5, tp
                  slliw        s5, t5, 23
                  sltiu        sp, s4, 1847
                  remuw        a7, s6, s0
                  slt          zero, t2, s11
                  or           t6, s1, a4
                  add          gp, s7, t3
                  sub          s6, s8, s5
                  sllw         a6, a2, s0
                  divw         sp, s11, a6
                  sra          t2, s6, t4
                  srai         t6, s9, 7
                  ori          s9, s3, -2036
                  remuw        t0, s0, a7
                  slt          a2, s5, ra
                  subw         s4, t5, t4
                  sltiu        s1, t3, -2024
                  mulw         a7, a7, s6
                  subw         s6, s0, t5
                  xor          s3, a3, t1
                  mulh         gp, t0, s10
                  mulhu        s9, s4, gp
                  srliw        s10, s11, 14
                  div          s10, s6, s8
                  addiw        t1, a5, -29
                  srai         t1, a6, 33
                  nop
                  sltiu        t1, s2, 2
                  and          a3, t3, a6
                  mulh         a2, t6, s1
                  mulh         t4, a7, a3
                  sll          t5, a3, s0
                  rem          t2, s5, s4
                  slli         a3, a3, 7
                  slli         t5, s4, 45
                  sraiw        s9, ra, 9
                  ori          a0, a3, -1153
                  sll          tp, a3, sp
                  ori          s10, ra, 1889
                  rem          t2, a2, t3
                  remuw        t4, s9, a3
                  remuw        t6, s7, a5
                  srlw         s10, t3, s6
                  add          t4, t5, t0
                  nop
                  mulw         tp, zero, ra
                  div          ra, tp, t6
                  srli         s10, t5, 29
                  addi         a2, s6, -426
                  mul          t1, s4, s2
                  sub          s11, a5, s10
                  addi         t6, t2, -920
                  rem          t0, t2, ra
                  slli         s9, a4, 1
                  divuw        s8, s7, s8
                  sraw         gp, s3, t4
                  remw         a7, t6, s10
                  div          s11, a7, zero
                  andi         a0, s1, -571
                  or           t1, t6, a1
                  addi         s6, t5, 31
                  addi         s4, a6, -2013
                  auipc        s11, 440727
                  or           gp, s2, s5
                  sra          gp, s6, s11
                  srlw         t5, s0, s7
                  divu         s3, s9, s2
                  ori          zero, zero, -832
                  lui          t4, 887827
                  rem          a6, a2, a7
                  mulhu        s8, tp, a1
                  srai         a6, t3, 35
                  divw         s3, s6, s7
                  div          s11, a3, a1
                  slti         t1, s0, 1017
                  mulhu        ra, s7, a6
                  sub          a2, t2, s0
                  subw         s11, s3, s4
                  remuw        t0, s8, a2
                  div          t5, t6, s2
                  sraw         s10, s0, a6
                  divuw        s8, a4, sp
                  remu         a0, tp, s7
                  slti         s8, t6, 728
                  addiw        s2, t6, -1417
                  sll          s11, s6, s0
                  slliw        t6, a7, 15
                  sltu         t0, s9, t3
                  slli         s11, a2, 55
                  srli         t4, tp, 41
                  mulw         a6, s3, t1
                  sllw         s1, t4, s8
                  andi         a2, t5, -1014
                  mul          t4, t4, a0
                  ori          a0, s5, -1069
                  srlw         t5, sp, t3
                  divuw        t6, s7, s6
                  xori         t1, a6, 1487
                  remw         s0, a4, a4
                  mulhsu       tp, s4, s5
                  xori         t6, gp, -1780
                  mulhu        s5, a0, a0
                  sltiu        ra, s5, 957
                  nop
                  slti         s6, s9, 1143
                  slliw        t0, a0, 20
                  addw         s8, ra, s7
                  sll          s2, s2, t3
                  subw         t4, s9, s0
                  nop
                  rem          a2, t1, s8
                  remuw        a6, t0, a0
                  ori          a2, t5, -1147
                  slliw        t1, s1, 15
                  divu         a3, zero, a1
                  rem          s1, sp, s6
                  remw         s3, s11, zero
                  mulh         s2, t2, t1
                  addi         gp, a7, 1410
                  andi         a2, a5, -1598
                  sll          a5, zero, s0
                  and          s5, s8, a2
                  mulw         ra, tp, a7
                  xori         s5, t5, -764
                  sltu         t6, a5, s4
                  addiw        s4, gp, -1687
                  auipc        s10, 768006
                  rem          t1, t0, t3
                  sltiu        s11, s6, -721
                  slti         t0, s5, 397
                  srl          s2, s3, t2
                  divu         s0, t2, a0
                  xor          a5, t4, a3
                  remuw        s1, s0, s2
                  mul          t5, s7, s6
                  andi         a5, t2, -1592
                  sltiu        a7, t0, 644
                  mulw         tp, a7, a4
                  sub          t1, t1, s11
                  remw         zero, s4, s7
                  sllw         sp, s6, s6
                  addiw        s0, s9, -683
                  sub          t1, t1, a7
                  nop
                  slli         s1, s2, 4
                  sraiw        s2, a4, 2
                  sltu         t5, s7, a1
                  divw         s3, a0, s1
                  sraw         sp, zero, t3
                  mulhsu       zero, t2, a2
                  mulw         a0, s10, t4
                  addiw        s3, t0, -1029
                  addiw        a5, s6, -354
                  sllw         s2, t6, a7
                  subw         s3, t1, s1
                  nop
                  srli         a3, s3, 3
                  lui          s3, 231771
                  rem          a0, t4, s11
                  mulhsu       s5, s8, a7
                  addw         s8, t3, t1
                  sub          a0, t0, s3
                  sra          a0, t4, s1
                  and          t6, s11, t0
                  sllw         s5, t4, s7
                  divw         s5, a0, a4
                  slli         s9, s11, 26
                  nop
                  mulh         s11, a4, s5
                  divuw        s3, s3, s2
                  div          t1, ra, a5
                  andi         s0, t0, -355
                  srai         t6, s2, 22
                  srliw        s5, s0, 23
                  subw         t4, a1, a0
                  remu         s8, s3, a5
                  subw         t2, s9, a0
                  sub          sp, t2, s8
                  srlw         zero, sp, s2
                  slt          gp, s1, s4
                  remu         a5, s10, s8
                  sra          t4, s1, s2
                  sraiw        t6, a0, 14
                  srlw         s3, sp, s5
                  srl          s0, s3, gp
                  srli         a2, t0, 33
                  srli         t4, a1, 63
                  andi         s6, a7, 1054
                  and          s0, t3, a6
                  addi         ra, t2, 1089
                  div          s6, s8, a2
                  xor          t1, gp, a7
                  divuw        t4, s6, gp
                  sra          tp, a2, t3
                  mulhu        a3, t4, s5
                  or           s2, s7, s5
                  subw         s11, tp, gp
                  sraw         t0, s3, s6
                  mulw         s0, a7, a3
                  andi         a0, t4, -1990
                  mulw         a0, a1, t3
                  srli         s2, sp, 43
                  slti         s2, s1, -1653
                  sll          tp, ra, t4
                  lui          a6, 158215
                  sllw         t6, t3, s10
                  remu         t1, a1, a6
                  div          zero, t6, t0
                  slti         a0, sp, 1799
                  remw         a7, t5, zero
                  srai         s0, s5, 56
                  slti         a6, a5, 8
                  xor          a3, t1, zero
                  slli         a0, s9, 41
                  srliw        t5, a6, 12
                  xori         t2, s8, 709
                  slti         s4, t0, 1126
                  sraiw        tp, a3, 13
                  mulhsu       t2, s11, gp
                  or           a7, tp, s5
                  slliw        t5, t2, 30
                  srl          s5, t3, t3
                  mulhu        ra, tp, s1
                  ori          s4, s3, -318
                  srlw         t5, s11, s1
                  mulw         a5, a5, s9
                  remu         s0, s3, s9
                  add          s6, s4, s3
                  remu         a2, s10, s0
                  lui          a2, 522358
                  or           t2, zero, s8
                  remu         s4, a1, t4
                  srai         t4, a4, 54
                  srlw         t0, sp, s11
                  add          zero, t4, ra
                  sltiu        s0, a5, -1467
                  mulw         a5, a7, t4
                  mulh         a5, a0, s2
                  srai         s10, a7, 23
                  remw         a3, s0, s5
                  auipc        s5, 515167
                  add          ra, t5, s8
                  andi         s5, s1, -444
                  addi         t0, zero, 1055
                  mulhu        a5, a4, s4
                  auipc        t2, 708735
                  auipc        a2, 429962
                  mul          t4, s4, a2
                  sllw         s5, t5, s0
                  mul          t0, t1, s8
                  srl          s3, a6, ra
                  auipc        s4, 37450
                  sll          s9, tp, s6
                  sll          a0, s4, s10
                  srai         a5, tp, 50
                  remw         gp, ra, s0
                  slli         s4, a7, 38
                  divu         t5, s2, t3
                  srlw         s4, s4, t6
                  divw         t0, s5, a6
                  and          a1, ra, s4
                  slti         s6, a0, -389
                  lui          s11, 491245
                  slti         a6, t0, -1456
                  xori         t5, t3, -762
                  addiw        a1, s2, 1203
                  remuw        s9, s2, a6
                  slt          a7, s8, a0
                  addi         s2, gp, -1488
                  mulw         t4, s4, sp
                  divuw        s1, t5, a7
                  subw         s4, t1, t2
                  rem          t5, zero, s11
                  slliw        t5, tp, 17
                  mulhsu       s8, a5, a6
                  mulhu        a1, zero, s0
                  srai         s6, t6, 58
                  andi         tp, t2, 115
                  lui          s5, 532205
                  sltu         s4, t6, t2
                  mulhu        s5, s11, s6
                  lui          a5, 623302
                  sll          a7, s0, t3
                  xor          s6, s1, s9
                  remu         t6, s2, a0
                  addiw        s0, a3, 168
                  srl          ra, t5, sp
                  srli         s9, a6, 53
                  sub          t4, a7, a4
                  srli         s10, s10, 62
                  sltiu        s2, s3, 2042
                  mulhu        s8, s1, a3
                  sra          gp, a0, t4
                  srli         ra, a1, 33
                  sra          t6, zero, tp
                  addw         a1, gp, tp
                  lui          t2, 437749
                  remuw        ra, ra, ra
                  ori          tp, t2, 258
                  remu         s4, a6, gp
                  mulhu        t2, s3, a6
                  mulhu        t5, t1, a4
                  srliw        a3, a0, 16
                  remuw        ra, t2, ra
                  addi         sp, s9, 809
                  srai         t4, s2, 58
                  mulhsu       s1, s11, s6
                  srlw         t2, t1, a2
                  auipc        s10, 145618
                  sltu         a2, gp, a0
                  mulhsu       t6, t2, t3
                  sll          s4, s10, s4
                  divw         s6, t4, a6
                  srlw         s6, s3, t6
                  divu         t4, s11, t3
                  sraw         a5, t6, s0
                  lui          t5, 3806
                  remw         t1, s8, a6
                  ori          s4, a0, 937
                  remuw        a7, a7, a3
                  divuw        s9, t5, a4
                  rem          s5, a0, t3
                  remw         a3, sp, a5
                  sraw         sp, s7, t0
                  xor          s4, s3, s9
                  sll          a6, t4, s10
                  mulh         a7, s7, s7
                  addiw        s2, a5, 1697
                  nop
                  auipc        s5, 447227
                  divw         t2, tp, a4
                  auipc        s1, 781723
                  xori         tp, s8, 1228
                  srai         s10, t2, 58
                  remw         s4, t5, t1
                  remw         t5, a3, gp
                  sra          s6, a3, a1
                  div          s6, s6, t1
                  xori         gp, s10, -696
                  andi         tp, s2, -294
                  srliw        t5, s9, 4
                  xori         a5, s2, -857
                  sra          s9, t5, s11
                  sltiu        t4, t6, -1513
                  slli         tp, a1, 2
                  mulw         t6, a4, s11
                  remw         a2, a7, t3
                  srlw         t2, s5, s7
                  mulhu        t0, gp, a0
                  remuw        s10, t3, zero
                  remw         zero, s8, t2
                  remuw        gp, s3, s1
                  sll          s4, s0, s6
                  slt          s4, zero, a0
                  slt          t1, zero, s7
                  addiw        gp, s9, -1211
                  xor          s1, a5, s3
                  sra          t6, t3, a6
                  sra          t2, a6, t5
                  auipc        a1, 445188
                  mulh         s6, a0, sp
                  divu         s11, a7, s9
                  sra          a5, zero, s8
                  remu         s9, s5, sp
                  remu         t6, s5, s7
                  auipc        s2, 738972
                  divu         t6, t3, t2
                  srl          t2, s6, t2
                  mulhsu       t5, gp, t1
                  sraw         t5, s3, a3
                  sltu         s5, t0, a3
                  srai         s5, s11, 60
                  addw         zero, a7, a3
                  or           a1, t3, t1
                  sllw         sp, t6, t4
                  divw         a7, s5, s8
                  add          t2, t2, t3
                  div          sp, s6, s2
                  subw         a5, sp, t2
                  div          a2, s6, a7
                  sll          t4, t4, a2
                  remu         s4, zero, a5
                  mulh         s2, sp, s11
                  addi         a2, a3, 1162
                  xor          ra, ra, a5
                  mul          zero, s2, s11
                  xor          s4, a0, s5
                  srl          t2, t5, a3
                  srli         t5, a5, 45
                  and          gp, t4, s5
                  andi         t1, s5, -1338
                  divuw        sp, a6, a2
                  srl          ra, t0, ra
                  sllw         a6, ra, s7
                  add          s4, t4, s10
                  xor          s11, a4, a7
                  or           gp, s0, s11
                  mulh         a0, s7, s11
                  mulh         s5, gp, t2
                  divuw        t4, tp, t5
                  remw         a0, s9, a1
                  nop
                  sllw         zero, sp, sp
                  sra          s1, s1, s8
                  lui          s6, 947520
                  mulhu        ra, s6, t5
                  mulw         s11, t5, a7
                  slti         a2, tp, -909
                  xor          a5, s4, s0
                  slt          a5, a5, a3
                  sra          a2, s9, s11
                  addw         t0, s1, a6
                  addw         t5, sp, a1
                  addi         gp, t3, -1946
                  sraiw        s9, s3, 14
                  sll          s10, a5, a4
                  srai         gp, t5, 45
                  mulhsu       s5, s2, s0
                  slli         s4, a6, 61
                  srliw        t2, s5, 12
                  mulhu        a0, s11, t1
                  divuw        tp, s1, t2
                  sltu         s10, ra, a4
                  mulw         a3, s3, a4
                  rem          s1, t3, a1
                  srli         gp, s11, 26
                  sub          a2, tp, t3
                  divu         a6, s1, a4
                  mul          a3, s8, a0
                  remw         a1, t1, tp
                  sub          s9, a1, t1
                  slliw        t0, tp, 20
                  sll          s3, s0, s0
                  mul          t4, s0, a0
                  sll          sp, a5, t1
                  andi         s6, sp, 99
                  sllw         sp, s3, s3
                  mulhsu       s10, s11, gp
                  xor          t6, s1, s2
                  lui          gp, 105102
                  sll          a2, s7, a5
                  and          s2, t4, s8
                  srai         sp, s2, 0
                  mulw         s3, t0, s7
                  addw         t6, s2, s7
                  slli         gp, s3, 50
                  addi         s10, s7, -574
                  addiw        t2, t6, 429
                  addiw        t2, s3, -605
                  slli         s3, s8, 54
                  mulw         t4, a7, s5
                  slliw        t2, gp, 31
                  divu         zero, t0, t1
                  auipc        a1, 79612
                  and          a2, a6, t2
                  ori          sp, t2, -1784
                  addi         s11, a5, -1910
                  remu         s10, t5, s1
                  auipc        s6, 402909
                  sll          tp, s9, s9
                  rem          ra, tp, s11
                  nop
                  remu         t6, a2, s5
                  addw         t2, t4, s1
                  sltiu        s11, a0, 1600
                  srliw        gp, s9, 31
                  subw         t5, s5, t1
                  add          t1, t1, t5
                  srliw        ra, t0, 14
                  sraw         ra, s11, s5
                  nop
                  sltu         s9, s1, s3
                  srl          a6, s4, zero
                  sltu         s4, t1, s1
                  sltu         s2, s2, t0
                  addw         a2, a0, s5
                  slli         ra, s6, 15
                  addw         s6, a2, a3
                  mulhsu       s6, zero, a6
                  sraiw        a7, s7, 4
                  subw         s4, t5, s6
                  add          t2, s6, a5
                  auipc        s6, 941049
                  addw         tp, s5, t1
                  rem          s11, s8, t5
                  sub          ra, a5, s10
                  mulw         s9, a3, s0
                  mulw         s3, sp, s7
                  nop
                  srlw         s10, s4, a6
                  auipc        a6, 510939
                  xor          t1, t0, sp
                  sub          ra, s5, a5
                  sll          s2, a6, zero
                  divw         t1, s2, a7
                  xori         t0, s9, 191
                  add          t0, a4, zero
                  andi         ra, t3, 1100
                  srai         zero, a7, 61
                  mul          s4, t6, a4
                  and          s9, s5, t3
                  slt          a5, a2, a6
                  mul          t6, ra, s6
                  sltu         t4, t0, t1
                  addi         a1, s7, 1379
                  or           a7, a3, t6
                  add          s4, a0, gp
                  andi         t6, t1, 1559
                  srlw         zero, a4, s5
                  or           s4, t6, a7
                  mulw         s10, s1, s7
                  xori         a2, ra, -72
                  srai         s10, s3, 5
                  srai         a7, tp, 4
                  mulh         a0, a4, a6
                  slliw        zero, s9, 15
                  sllw         s4, t3, s8
                  slt          s2, t1, s9
                  sltiu        a1, a1, 252
                  sll          t6, s3, gp
                  sraiw        s1, sp, 5
                  auipc        a0, 167074
                  mulw         s2, s0, ra
                  srlw         s5, tp, t3
                  rem          s10, t4, ra
                  addi         tp, s11, -2018
                  nop
                  xor          a7, t5, s1
                  mul          s0, s10, gp
                  sltiu        s10, s7, 578
                  sllw         t4, s10, s7
                  sraiw        s11, sp, 4
                  sub          a6, a0, t2
                  srlw         a5, s7, t5
                  sltiu        s5, a4, 564
                  slli         sp, s5, 19
                  divw         s4, s8, s1
                  sltu         t6, t3, s0
                  divw         s6, s7, s4
                  mulhsu       s5, tp, s5
                  remuw        s6, s10, s1
                  addw         a3, a3, t2
                  sltu         t4, zero, a2
                  or           s2, t4, s7
                  sub          gp, s9, s1
                  srliw        s8, a4, 25
                  ori          a7, a7, -1554
                  sll          t0, a2, s1
                  sraw         a5, ra, tp
                  andi         a0, s7, 630
                  divu         t5, a6, s10
                  srai         t2, a1, 30
                  divu         gp, a1, s9
                  and          a2, s1, t1
                  mulhsu       s10, s10, s4
                  mulw         s5, s11, tp
                  div          a5, a4, a3
                  ori          t6, a5, 686
                  slli         s6, s5, 49
                  addw         s2, a3, s5
                  slliw        t4, zero, 26
                  mulh         a2, s3, a3
                  sll          t5, a2, s4
                  nop
                  addw         sp, s10, gp
                  sub          s3, sp, a4
                  addw         s8, t2, t6
                  mulh         t0, a1, s6
                  lui          s5, 1027656
                  remw         a3, s4, a0
                  add          s6, zero, a6
                  sraw         t5, a1, t1
                  nop
                  or           gp, sp, tp
                  srliw        zero, s4, 31
                  srliw        t4, s2, 14
                  mul          s0, t6, a4
                  sltu         gp, a4, a0
                  addw         s9, t3, ra
                  remw         t0, a6, a4
                  remuw        tp, a0, a0
                  auipc        s2, 938416
                  or           a1, t4, a4
                  srl          t1, a1, t5
                  remw         s0, ra, a1
                  srli         a0, t0, 46
                  sraiw        s11, a1, 0
                  auipc        a5, 912810
                  auipc        s6, 311441
                  add          t0, s6, a4
                  sltiu        s9, s0, 749
                  divu         a1, a7, a2
                  mul          s5, a1, a4
                  mulw         ra, s10, t6
                  srli         s0, t3, 21
                  sra          zero, s5, s9
                  srlw         t1, s1, t1
                  lui          s5, 674483
                  nop
                  mulhu        a0, s10, s1
                  slli         tp, s8, 53
                  sll          s0, a5, s3
                  slliw        ra, s8, 12
                  ori          a5, a2, -1454
                  sltiu        a0, s4, -717
                  and          s11, t5, s6
                  srli         s4, zero, 11
                  mulw         a7, sp, s5
                  andi         a7, t3, -1644
                  sllw         a6, a3, s2
                  srliw        a1, s6, 11
                  remu         s5, s5, t4
                  divw         s4, t6, s2
                  add          t4, t2, s9
                  sraiw        a7, s4, 15
                  mulhu        s1, s3, a0
                  sraw         s3, s1, gp
                  remu         s4, a3, sp
                  slliw        ra, s5, 8
                  remuw        s8, s3, s3
                  remuw        ra, a1, s5
                  xor          a3, s0, s2
                  slt          t4, a0, t0
                  mulhu        t4, s10, gp
                  sll          t1, a6, a2
                  srai         s2, t0, 31
                  slli         t6, a1, 55
                  sll          s0, s8, s2
                  nop
                  mulh         a6, s2, t3
                  auipc        s0, 37492
                  srai         s1, s2, 45
                  sltiu        s1, ra, -1804
                  sraw         s9, a6, ra
                  remu         sp, s3, s6
                  remw         tp, t2, a7
                  addiw        s8, s7, -999
                  div          s1, t1, s9
                  remuw        s6, a4, s5
                  addi         tp, s0, -124
                  slliw        t5, gp, 7
                  sltiu        a0, a2, -1211
                  divu         t6, s5, t1
                  sltiu        s9, t1, 1952
                  sub          t0, a0, ra
                  div          t1, zero, a3
                  mulhu        t1, a4, s11
                  srlw         ra, ra, t0
                  nop
                  sllw         s8, t3, sp
                  addiw        s5, s3, 761
                  srli         s2, s1, 0
                  srai         t4, t1, 39
                  sub          t2, s5, s4
                  srl          s2, a0, t5
                  slliw        t6, gp, 1
                  and          a1, s0, s11
                  subw         tp, a7, a0
                  mulhsu       t5, s11, a5
                  sub          ra, a5, a6
                  ori          ra, a4, -720
                  slt          t2, s10, a6
                  remw         t4, t6, s11
                  xori         s2, tp, 275
                  divuw        s3, sp, s8
                  srl          s8, s1, t4
                  sub          a2, s0, t5
                  mulh         s8, s10, t2
                  remw         zero, a0, ra
                  divu         t5, s10, s5
                  mulw         s6, s0, a7
                  addiw        t4, a6, -147
                  xor          a3, ra, s8
                  remu         s9, s4, t0
                  andi         t1, s1, -299
                  sub          a0, t3, s9
                  nop
                  sltiu        gp, zero, -65
                  divw         t2, ra, t2
                  sra          sp, t6, a2
                  mulw         t5, s1, s7
                  divu         s11, t5, s8
                  sub          a2, s0, s5
                  remuw        t0, t4, s7
                  mulhu        s4, s5, s1
                  slli         s10, t5, 8
                  remuw        s11, s10, t5
                  sraw         s5, s10, gp
                  divu         a3, a4, s4
                  srl          t5, s9, a6
                  mulhsu       s10, a3, s6
                  remu         a0, a3, a4
                  auipc        t6, 117578
                  mulw         a3, gp, a3
                  mulhsu       t5, a5, t3
                  srai         gp, a4, 12
                  srai         s4, sp, 47
                  add          s11, a1, tp
                  sllw         t6, s7, tp
                  divuw        s2, s5, t3
                  mulhsu       sp, a1, sp
                  slti         ra, gp, 1372
                  divu         s3, a7, s5
                  nop
                  addi         s1, a6, 863
                  slti         a1, s9, 210
                  divw         a0, s8, gp
                  sltu         t0, s6, zero
                  addi         s0, s2, 1653
                  mulhsu       t5, t0, t5
                  srlw         s1, s8, s7
                  divuw        s5, s1, t6
                  xori         t1, a3, -789
                  slt          a0, t0, t2
                  remu         t4, ra, a6
                  slti         s10, s10, 471
                  addw         zero, gp, t3
                  slli         t0, s1, 48
                  mul          a0, s0, sp
                  ori          t6, a0, -892
                  divw         t4, s7, s9
                  ori          s3, s6, -1103
                  rem          a5, s5, s1
                  xor          ra, s11, s7
                  or           s8, s4, t3
                  remw         zero, s3, a0
                  mulhsu       ra, a3, a1
                  slt          a5, s9, gp
                  remu         a1, a1, s11
                  divw         a0, s8, s2
                  and          tp, t4, t6
                  ori          t0, t4, 996
                  mulhu        s0, a1, t5
                  addw         s11, t1, t3
                  mulhu        a2, t5, a6
                  sllw         tp, s2, s5
                  or           s3, a3, a6
                  sll          s11, s9, s5
                  slli         s10, ra, 50
                  nop
                  srli         a7, a3, 18
                  mul          ra, t3, s4
                  subw         zero, t6, gp
                  slli         t0, a2, 30
                  addi         s1, a6, -652
                  xori         s9, s6, 955
                  slti         s10, s3, 1815
                  slli         t6, t4, 60
                  sllw         s11, s3, t3
                  addw         s4, s7, a0
                  srliw        t0, a2, 26
                  slli         a1, a1, 60
                  remw         sp, t5, s3
                  and          a5, t3, s2
                  xor          s6, s11, t6
                  addiw        t5, a4, -1672
                  remw         t0, a2, a2
                  sra          t6, a1, t3
                  sraw         t0, gp, s3
                  sub          t4, s1, sp
                  srai         s9, a3, 53
                  nop
                  srlw         s9, s3, a1
                  mulhsu       a3, t3, s1
                  addiw        s3, t0, -1634
                  srl          t1, a6, a1
                  andi         a6, a4, 758
                  sraw         tp, a7, a0
                  subw         zero, a3, t6
                  rem          a7, t2, a4
                  mulw         a3, a0, t0
                  divw         sp, s11, a4
                  mulhsu       sp, s9, s4
                  xor          gp, t1, ra
                  sub          t4, s10, s1
                  srliw        a6, tp, 3
                  slli         gp, s9, 12
                  srliw        gp, a3, 23
                  sltiu        t6, s5, 419
                  sraiw        s1, a4, 13
                  srai         s9, a6, 19
                  remw         t5, sp, t5
                  sllw         s4, t1, a7
                  add          a3, tp, s11
                  sra          tp, a2, t2
                  andi         a5, t4, 1328
                  slli         t4, s8, 45
                  lui          s10, 871817
                  slli         s0, tp, 20
                  div          t2, t4, t5
                  sllw         s2, t6, t0
                  andi         s1, s8, -509
                  addiw        a5, a6, 1646
                  sltu         s3, s6, t5
                  srl          s9, s7, sp
                  sll          a7, s8, s8
                  andi         t4, a0, 1988
                  addi         a1, a6, -1703
                  srliw        t6, s0, 2
                  and          s9, a4, a6
                  srl          t4, sp, a3
                  srlw         s8, s10, a7
                  divw         t1, a4, a7
                  srlw         t5, s2, tp
                  ori          a5, a3, -941
                  addi         a3, t1, 598
                  slliw        s6, s9, 13
                  xor          tp, a5, a5
                  slli         s10, gp, 49
                  sra          t2, a2, s10
                  addi         a2, s5, 1975
                  addiw        s6, a2, -1486
                  slli         s3, t4, 18
                  add          t6, s7, s9
                  sll          s1, s2, s11
                  mulhu        t1, s10, s10
                  add          s6, a3, t2
                  sub          s3, s7, s7
                  sraw         s3, tp, s2
                  sll          zero, s6, a1
                  nop
                  sltu         s8, s9, a5
                  mulhsu       ra, s7, s1
                  remuw        s0, s11, tp
                  sraiw        s6, a0, 22
                  divw         a5, a1, s3
                  sub          t2, a3, a0
                  srliw        s5, a7, 28
                  srliw        a7, t3, 4
                  addw         t4, ra, gp
                  mulhu        s8, s3, s2
                  divw         s4, sp, zero
                  slli         a1, t4, 12
                  auipc        a3, 990866
                  subw         s8, t1, t1
                  auipc        zero, 545351
                  sub          t6, a7, t3
                  sll          gp, s5, tp
                  or           t6, a1, s10
                  mulhu        t0, tp, s1
                  sltu         s3, s1, s1
                  divu         s9, t2, s9
                  addiw        s8, s11, -1421
                  andi         a2, s9, 1640
                  div          ra, gp, s10
                  mulhu        t6, t3, ra
                  mulw         a6, s8, s11
                  sub          s3, a5, sp
                  divuw        s3, t6, s7
                  addiw        a7, s2, 1499
                  sub          s3, sp, a4
                  slliw        a2, t5, 18
                  mulhu        s6, s6, t6
                  addi         t2, zero, 702
                  srli         a2, s0, 32
                  slt          s0, s5, gp
                  mulw         s3, s5, a5
                  auipc        tp, 506357
                  srai         zero, zero, 7
                  sraiw        t1, s7, 25
                  ori          gp, a2, 1554
                  or           t5, s4, s5
                  slt          s10, t3, t1
                  lui          t5, 679721
                  mulhsu       s3, s10, zero
                  sub          t0, gp, s4
                  add          s0, s2, a7
                  add          a7, a0, a7
                  remuw        s3, t1, s2
                  sltiu        t2, s8, -1466
                  sraiw        a2, a7, 8
                  sraiw        s9, a2, 31
                  sltiu        sp, s7, -1922
                  srl          t1, zero, a1
                  or           a2, a1, s2
                  addiw        s3, ra, -731
                  remw         s5, a7, s9
                  andi         s3, a4, -1705
                  and          s10, a4, ra
                  srliw        a1, gp, 3
                  sllw         s5, t1, s5
                  addi         s8, a5, 968
                  mulw         s10, s5, t5
                  sltu         a5, tp, a5
                  srliw        s10, a4, 16
                  slti         a6, s10, 1894
                  divuw        ra, t1, s5
                  mulh         s3, a1, a7
                  mulh         t2, a0, t0
                  sltu         s8, ra, a3
                  srl          a3, a5, s10
                  mulw         a1, sp, s1
                  mul          gp, sp, t6
                  lui          s3, 833888
                  slliw        a0, s5, 3
                  or           sp, s2, s10
                  nop
                  add          a2, a3, s4
                  sraiw        a1, t2, 10
                  add          ra, t5, s10
                  mulh         gp, t5, a5
                  add          s10, zero, gp
                  mulhu        a3, t4, t6
                  slti         sp, a7, -1125
                  add          s2, t2, s6
                  mul          sp, a4, a6
                  rem          t1, a0, s7
                  remu         t4, a6, s1
                  lui          s4, 292989
                  addi         t2, tp, -1234
                  sub          tp, a3, a5
                  srlw         zero, s2, t4
                  sllw         zero, tp, ra
                  srl          a6, a2, s1
                  xor          t5, s0, zero
                  divw         s3, s4, ra
                  mul          s3, s4, a7
                  addw         t5, t5, tp
                  and          a3, t1, a0
                  remw         a7, s3, s11
                  divuw        a3, s11, tp
                  mul          s3, s9, tp
                  remu         zero, a7, gp
                  ori          s11, s3, -852
                  sub          a6, ra, t0
                  remuw        s10, s10, t0
                  xor          ra, s0, a4
                  remuw        tp, s2, s3
                  remw         sp, t0, s1
                  rem          s5, t5, s11
                  divuw        t1, t1, t1
                  andi         s8, zero, 762
                  mulh         s11, s2, s7
                  addi         gp, s5, 997
                  slt          s8, s2, s0
                  lui          t6, 665357
                  sra          a0, s5, ra
                  sltiu        t0, a7, -529
                  remu         t1, gp, t6
                  mulw         t1, a2, a2
                  xori         s0, t6, 912
                  slt          a0, s3, t4
                  ori          s1, zero, -901
                  srlw         a0, s6, s4
                  divuw        s8, sp, gp
                  sraw         s10, s11, t0
                  mulhu        a0, a0, t4
                  rem          t6, sp, s4
                  mul          tp, s3, s11
                  nop
                  srl          s6, tp, t3
                  xor          a1, a1, tp
                  rem          gp, t6, s8
                  sllw         a2, tp, sp
                  mulw         a3, s11, s10
                  lui          zero, 486142
                  remuw        s5, s9, a0
                  slti         a7, t0, -1633
                  sraiw        s10, s0, 19
                  sraiw        t6, a2, 29
                  slli         tp, s3, 31
                  divw         a2, s10, s5
                  remw         s9, ra, a5
                  subw         s2, s1, s0
                  subw         s5, s7, s10
                  divu         s10, s5, a0
                  remw         t5, s0, s2
                  divuw        s2, s1, s0
                  remu         s2, t1, s7
                  sltu         s6, t0, s5
                  xor          gp, s8, s2
                  sltiu        t5, s7, -1254
                  addi         zero, ra, -244
                  xor          a5, t4, s4
                  slliw        sp, t6, 4
                  slli         s5, a3, 11
                  rem          s9, s5, a6
                  add          s3, t5, t5
                  mulhsu       gp, a3, t6
                  addiw        gp, s0, -660
                  rem          zero, a6, a4
                  sll          s5, s11, gp
                  mulhsu       s3, s4, s6
                  slli         a3, zero, 50
                  slti         s5, t6, 590
                  and          a5, s10, s3
                  auipc        s6, 21038
                  sub          s5, s3, ra
                  sra          a6, a7, a2
                  and          s11, gp, t0
                  mulw         s0, s5, t2
                  sra          tp, s7, zero
                  slliw        a2, s2, 29
                  mulw         s6, a0, s10
                  addiw        a6, a7, -754
                  mulw         s6, s9, t2
                  remu         s8, s0, s2
                  sraw         s6, a6, s11
                  sub          a5, ra, s4
                  sra          sp, t3, gp
                  nop
                  addw         t6, gp, s2
                  sraw         t4, tp, s9
                  addw         a2, s1, a3
                  addiw        s9, s3, 1184
                  srlw         s10, s11, t5
                  subw         s3, s4, s8
                  remuw        s8, s11, s2
                  ori          s5, gp, 408
                  sub          t1, t4, s2
                  lui          s1, 109571
                  rem          t4, t6, s2
                  add          a1, t2, t4
                  divuw        tp, a1, s3
                  or           sp, s5, a0
                  xor          s5, t4, a7
                  slt          a6, s7, ra
                  xori         s6, t5, 1645
                  or           a7, s2, a2
                  div          a0, t2, s1
                  srli         tp, s0, 59
                  divw         tp, s9, s11
                  subw         a7, s7, zero
                  mulhsu       a7, t3, s10
                  remw         s3, s3, s0
                  andi         s5, gp, -1822
                  xori         t2, s3, -630
                  auipc        t4, 392741
                  srlw         s11, s11, zero
                  add          t4, t3, t2
                  remw         a0, t4, s11
                  divu         zero, s9, a1
                  xori         tp, s4, -513
                  srliw        s1, sp, 21
                  xori         s0, a6, -1804
                  slliw        a6, a2, 20
                  nop
                  mulhsu       s3, t4, s6
                  sllw         t4, a0, s11
                  remu         t1, a1, s4
                  sllw         s1, t3, s10
                  remu         s8, a4, s4
                  slt          a5, t3, a1
                  sll          s6, s3, s5
                  mulhu        a1, a2, a0
                  mulhu        tp, t1, ra
                  slliw        s8, a2, 3
                  ori          a2, t4, -1155
                  lui          sp, 882476
                  srl          s2, s4, s10
                  remu         a1, tp, t3
                  srli         t0, s3, 17
                  mulhu        s1, s2, s9
                  sraw         a3, t5, t2
                  addiw        s1, s8, 1087
                  nop
                  sra          t5, s6, t0
                  srai         s4, t6, 62
                  mulh         s4, a4, t1
                  auipc        t4, 279650
                  lui          s0, 881373
                  auipc        tp, 485002
                  sltu         t0, s9, s5
                  mulh         tp, s7, s7
                  sraw         s10, s5, zero
                  sraiw        s11, a5, 23
                  mul          a5, s3, a6
                  sraw         t1, t2, tp
                  divu         s8, s11, s1
                  sltiu        gp, s11, 1323
                  mulhsu       t4, zero, s6
                  sraw         s4, s0, a6
                  div          t5, a6, s0
                  remuw        s5, t0, t1
                  sra          s0, t0, s1
                  divuw        t6, a1, s4
                  xor          tp, s11, a7
                  divuw        gp, t5, s5
                  xori         ra, s3, 1364
                  srl          ra, tp, s0
                  slti         s5, t4, -1240
                  and          s8, s9, s7
                  divuw        s11, s1, t0
                  add          s10, s11, t4
                  sllw         a5, s10, a6
                  sll          tp, ra, a0
                  xori         a2, t1, -1081
                  sub          a2, tp, gp
                  sltiu        t1, s11, 930
                  add          a5, s10, a2
                  andi         ra, s7, -37
                  divu         s4, a1, zero
                  mulh         a2, s8, ra
                  sraiw        a5, sp, 5
                  mulhu        a2, s1, t1
                  sraiw        sp, s11, 15
                  or           zero, a0, s0
                  remu         tp, t5, t3
                  srlw         s10, t4, s4
                  srliw        ra, s4, 17
                  slti         s6, a1, 1941
                  sraw         zero, t0, s10
                  remuw        t4, s0, a0
                  divu         s0, t0, a6
                  mul          s11, a5, s1
                  remw         a6, zero, s9
                  or           s6, s9, t0
                  sraiw        s1, s6, 23
                  mulhu        t1, t6, t1
                  xori         zero, t3, 191
                  sra          t1, s7, ra
                  divuw        t4, a3, a2
                  addi         t2, s7, 801
                  srl          s3, a5, a2
                  mulhsu       t4, s3, a2
                  subw         s8, s4, t3
                  divw         t5, t3, s5
                  nop
                  div          sp, t4, gp
                  srli         t5, zero, 5
                  div          s8, sp, t2
                  sllw         t0, s6, sp
                  remu         t1, a4, s8
                  add          sp, t6, t1
                  mulw         a3, a6, gp
                  addw         t4, t5, t0
                  sraiw        a0, t0, 1
                  xori         gp, t2, 943
                  srli         s6, s7, 1
                  and          a2, s4, t0
                  add          gp, t4, a2
                  sltu         t6, zero, s0
                  srai         s0, s9, 61
                  srai         t1, a3, 11
                  nop
                  mul          s3, s6, t3
                  mulhsu       t2, s11, t3
                  sltiu        tp, s11, 1497
                  and          s5, s3, s8
                  srl          t4, s10, s6
                  divw         s9, t4, ra
                  slliw        a2, a5, 11
                  addi         s1, s4, -1499
                  srl          t5, a4, a1
                  nop
                  mulhu        tp, s7, zero
                  sub          s10, s2, t1
                  mulw         a6, t4, s9
                  subw         t6, t0, t4
                  addw         t0, s0, s10
                  xor          gp, s4, s3
                  auipc        a2, 1017108
                  slliw        s10, s0, 15
                  mulh         a0, a4, a7
                  and          s5, s4, s5
                  remw         t6, s9, a1
                  xori         s3, t4, -446
                  sllw         tp, s1, t5
                  xor          s4, s7, t6
                  slli         s4, t2, 41
                  remu         zero, a2, a0
                  divuw        s0, t3, a0
                  and          a7, t0, s7
                  xori         t5, s1, -945
                  sra          t5, tp, s4
                  slliw        a6, t4, 5
                  sub          a7, ra, zero
                  sraiw        tp, s3, 7
                  sraiw        a5, s4, 10
                  srlw         a5, tp, a7
                  nop
                  sraw         s3, tp, s3
                  divuw        ra, s4, s6
                  mulw         a6, s0, gp
                  addi         t2, a7, 994
                  andi         a1, a1, -311
                  mulh         a5, t1, t2
                  addw         t2, ra, a5
                  andi         t4, tp, 1837
                  srliw        a5, s0, 3
                  nop
                  divw         tp, t4, s7
                  slt          ra, zero, s7
                  addi         t5, ra, -555
                  srli         s3, s2, 9
                  srliw        a3, ra, 29
                  divu         s11, t1, s6
                  xor          a0, t1, s0
                  sraw         sp, a6, s6
                  mulw         a1, s0, s5
                  sll          s5, s6, a6
                  nop
                  addw         t0, t2, t6
                  sra          s4, t4, a2
                  sll          t0, t0, a4
                  remu         s11, s3, a0
                  slti         t5, a4, 1662
                  sub          gp, s0, s0
                  addiw        s4, a0, 1894
                  sub          s8, s9, t1
                  slli         t5, a6, 13
                  divuw        gp, t2, ra
                  sraiw        gp, a6, 22
                  slli         t4, t4, 47
                  sra          a2, t3, a3
                  divw         a3, s11, s8
                  andi         s4, t2, -1213
                  sltu         s3, t3, ra
                  slliw        zero, a2, 31
                  addi         t5, t1, -1752
                  sraw         gp, zero, s5
                  ori          a3, t3, 793
                  sltiu        s4, s8, 300
                  xori         a2, s6, -987
                  sub          t4, s9, ra
                  mulh         t0, tp, s5
                  add          s5, t0, a0
                  sltu         gp, a7, sp
                  subw         t2, s4, s3
                  subw         a3, sp, t3
                  sub          zero, a3, t1
                  sub          a5, s0, s3
                  srlw         tp, a6, t1
                  slliw        s0, a4, 30
                  srlw         s1, a7, t3
                  div          t4, t0, tp
                  slliw        s2, s3, 26
                  mulh         t0, a3, ra
                  sltiu        a3, a7, -1617
                  subw         zero, t5, gp
                  xor          ra, zero, s7
                  remuw        a2, a2, a7
                  lui          a7, 312615
                  divuw        a2, a6, s6
                  remu         s9, s1, gp
                  srlw         s11, a3, t3
                  subw         t2, a0, s7
                  lui          a1, 774403
                  nop
                  mul          a6, a2, s10
                  remw         a2, a7, ra
                  divw         s0, a0, t4
                  srlw         zero, s9, a2
                  addw         sp, s0, s5
                  mulhu        t5, a2, a3
                  slli         t2, zero, 7
                  xor          t5, t4, sp
                  lui          t0, 607775
                  slliw        s4, t0, 28
                  addiw        gp, sp, -17
                  mulhsu       a3, a0, s3
                  addiw        a6, s1, -1396
                  addw         s10, s6, zero
                  remuw        zero, s8, ra
                  div          t1, s6, a6
                  sraw         s9, a7, s10
                  srliw        s8, tp, 15
                  xor          t2, a7, a0
                  nop
                  sub          a5, sp, a6
                  mul          s10, s1, t3
                  nop
                  mul          t1, t0, t2
                  sra          t5, ra, a1
                  auipc        s9, 45795
                  srai         s1, s9, 4
                  mul          s10, tp, a6
                  srlw         a3, s8, s7
                  mulhu        a0, a6, a4
                  lui          a5, 501661
                  add          s2, s9, a1
                  addw         a1, t3, s7
                  mulw         t5, a6, a2
                  xor          sp, s11, a5
                  auipc        s10, 548540
                  lui          t6, 939452
                  ori          tp, s3, 1642
                  sllw         t2, s6, s10
                  div          s1, a7, s9
                  remuw        zero, a3, t6
                  sub          s2, s1, s0
                  remw         s4, a6, a4
                  srli         s8, t5, 23
                  rem          s8, t1, a4
                  srai         t5, s9, 21
                  auipc        s6, 950392
                  and          s3, s2, gp
                  mulh         s10, a3, sp
                  srai         a5, s2, 9
                  sll          sp, ra, s4
                  srliw        sp, s4, 28
                  mul          t5, s8, t3
                  sra          t2, s0, t3
                  div          s4, zero, t0
                  mulhsu       s6, t4, s9
                  or           t5, s11, a4
                  srlw         s0, s1, gp
                  srli         s1, t2, 4
                  slliw        a0, t0, 31
                  xor          t1, t6, s9
                  sub          s10, t2, s5
                  sltiu        t0, s4, -1746
                  ori          t6, sp, -1083
                  srlw         s1, s10, s5
                  slti         t5, t6, 891
                  srl          t1, s11, t3
                  srl          tp, t1, a4
                  divuw        s2, t4, a4
                  lui          s3, 513538
                  nop
                  remuw        s3, a2, a3
                  addiw        zero, tp, 996
                  slli         t1, t0, 2
                  mul          t0, t2, a2
                  sub          gp, s2, t3
                  mulw         t2, s1, a2
                  lui          a0, 448791
                  remu         a0, s6, t0
                  sra          s11, a4, a1
                  slliw        a1, a3, 8
                  or           a1, s9, a0
                  slti         s5, sp, -291
                  andi         t4, s6, -217
                  div          a2, a3, ra
                  divuw        t5, s0, t3
                  nop
                  sllw         s0, s10, gp
                  sub          a3, s4, a3
                  sllw         s3, s6, s9
                  slliw        s5, a6, 2
                  remuw        sp, s10, tp
                  add          s4, t4, a5
                  remw         s4, s6, a4
                  slliw        s0, tp, 7
                  remuw        a1, a3, a7
                  srli         tp, s2, 53
                  srli         zero, zero, 14
                  lui          t2, 251404
                  srlw         t1, a7, s1
                  srai         a0, gp, 63
                  sll          t2, s8, s2
                  remuw        t2, a6, s1
                  sra          s0, a0, s8
                  addiw        a3, t2, 571
                  ori          s8, a0, 1972
                  slt          s10, s5, t2
                  sltu         a2, a0, s7
                  divw         s10, t1, t3
                  mulhu        ra, s6, sp
                  mulh         t1, sp, gp
                  xori         s8, a2, 1453
                  divu         ra, s3, t0
                  slt          a2, t5, a6
                  slli         s10, t6, 41
                  andi         a1, s10, 506
                  remw         t4, ra, a7
                  sra          s4, s1, zero
                  mulhu        s0, t1, s3
                  sraw         s5, ra, tp
                  auipc        t4, 940293
                  sraw         t5, t5, s7
                  lui          t2, 156292
                  mulw         t6, t4, zero
                  rem          a2, s2, gp
                  ori          s8, t2, -925
                  mulh         s10, zero, ra
                  remuw        a5, s6, t2
                  or           s9, zero, a4
                  subw         t6, a1, a4
                  srlw         t5, s4, a3
                  mulh         s11, s3, t5
                  xori         zero, s11, -1771
                  sltiu        s2, s4, -392
                  addi         a2, a4, -1159
                  subw         a7, s11, zero
                  srliw        t5, t5, 11
                  remu         t6, a6, s5
                  remu         s9, t3, a0
                  and          t6, s6, a6
                  and          tp, t4, s11
                  slti         s8, s3, 888
                  div          t5, s9, s5
                  sraw         s9, zero, t6
                  rem          t6, a6, t4
                  sra          t5, t6, s9
                  andi         t2, a0, -977
                  divuw        s0, sp, s10
                  andi         t6, gp, -1930
                  mulh         t5, tp, s10
                  add          a1, sp, s10
                  div          t0, zero, a7
                  remu         t5, t2, a1
                  sub          s9, a2, a7
                  remw         t5, t5, a7
                  and          tp, t2, a5
                  remuw        tp, s2, ra
                  add          t6, s11, s6
                  slti         s8, ra, -1368
                  sub          a1, s9, s9
                  auipc        s8, 747516
                  sub          s10, a1, s3
                  mulw         a0, s4, t3
                  mulhu        a1, s5, a7
                  slt          a6, s2, a2
                  addi         a3, sp, 393
                  remw         s10, s7, s6
                  or           s6, s2, s7
                  and          t0, a3, s9
                  slt          a6, a0, t6
                  slli         s5, s9, 39
                  addiw        t1, a6, -1453
                  srliw        a0, t1, 14
                  sltu         s8, sp, s6
                  slt          a6, s8, s8
                  remw         t0, sp, a2
                  andi         gp, s9, 88
                  remu         a3, s11, gp
                  remuw        s10, a1, tp
                  andi         s1, gp, -407
                  sltiu        t1, t4, -740
                  slliw        gp, tp, 5
                  divw         t2, a0, a4
                  sra          sp, a4, t6
                  sub          s3, a0, sp
                  nop
                  sltu         a1, tp, a0
                  sraiw        zero, zero, 0
                  divu         t1, tp, t1
                  srl          sp, sp, s5
                  add          s0, a1, s7
                  slli         gp, s6, 58
                  mulw         s5, s11, t5
                  rem          s3, t5, t2
                  or           s5, s7, gp
                  slliw        s6, s8, 26
                  andi         t0, s7, -704
                  add          s6, s6, t3
                  slliw        s5, gp, 24
                  srai         s8, a3, 33
                  slti         t1, s8, -831
                  rem          a2, s9, tp
                  sraw         sp, t0, s11
                  div          s9, s5, t1
                  addw         s1, t6, a6
                  add          t5, s5, t0
                  remu         s10, gp, s1
                  slli         s10, s6, 62
                  subw         s3, s2, s7
                  slt          t5, s5, a3
                  andi         s5, s5, 1430
                  slti         t1, t1, -1212
                  sltiu        a2, a1, -1114
                  mul          s9, a3, t1
                  srai         t5, a1, 43
                  rem          t6, s5, ra
                  slli         s1, s2, 19
                  srliw        s9, a5, 4
                  slliw        s0, a5, 0
                  divuw        a7, a5, tp
                  addi         a7, t6, 694
                  slt          a5, a5, a2
                  srl          a3, s11, t0
                  addiw        a3, t1, -1430
                  xori         t6, t4, 1324
                  nop
                  mulhu        a5, ra, a1
                  lui          a2, 906938
                  rem          s2, t3, zero
                  ori          t0, t1, 553
                  add          ra, tp, a7
                  slliw        t0, s3, 11
                  mulh         t1, s11, t2
                  and          s10, s3, a4
                  subw         a6, s5, s7
                  sltu         s4, t1, a4
                  lui          t1, 633473
                  addiw        gp, a7, -200
                  subw         a3, s0, s1
                  srli         s6, s6, 27
                  mulh         t1, t0, t2
                  add          a2, a5, t0
                  auipc        s3, 811351
                  rem          t0, t1, a3
                  addw         a3, s7, ra
                  slliw        s9, s11, 31
                  divu         t5, a7, zero
                  remu         s2, s9, s7
                  slliw        s11, a6, 8
                  nop
                  div          s0, s2, a1
                  sltiu        gp, a5, 842
                  subw         a3, t0, s8
                  srai         s1, s10, 42
                  sll          a7, s3, a4
                  nop
                  divu         s6, s0, a3
                  mul          sp, tp, t2
                  divw         a3, ra, s6
                  xori         s8, t5, -1187
                  sraw         t1, a3, a4
                  srliw        s0, sp, 17
                  sltiu        s0, t6, -130
                  addi         gp, s6, 781
                  sltu         s1, a1, t3
                  nop
                  lui          s11, 58359
                  sub          t2, zero, a3
                  srli         gp, t3, 38
                  sll          s8, a2, s6
                  divu         sp, sp, gp
                  sraw         s11, s6, t3
                  addw         ra, s11, s3
                  sllw         t6, zero, s10
                  slli         t2, s9, 14
                  nop
                  srlw         t4, s4, s9
                  or           s5, tp, a5
                  srli         t4, ra, 25
                  sraw         s3, s2, s0
                  mulw         a5, s6, sp
                  addw         s1, t0, s1
                  xori         s1, s2, -1239
                  addi         a7, t5, -710
                  sll          s8, t5, s6
                  remw         t6, gp, s11
                  and          s1, s11, a3
                  addw         t1, s4, t6
                  add          a7, s9, t5
                  rem          s4, a3, s5
                  mul          t2, s1, a4
                  mulw         s1, a7, a2
                  srl          t0, s3, t3
                  rem          tp, t3, a4
                  remuw        s3, t2, s9
                  sll          gp, s11, a6
                  srlw         s10, a4, tp
                  mulh         a2, s7, t4
                  slti         t2, a7, 600
                  mul          a2, s0, t5
                  remw         s4, t3, a4
                  divu         t5, a0, s9
                  divu         t0, t5, s2
                  sll          t5, s8, a6
                  srlw         s8, t0, tp
                  mulh         s5, s3, a1
                  addiw        s1, s10, 1340
                  slliw        a0, t0, 10
                  auipc        gp, 820955
                  andi         sp, s10, -136
                  divw         s3, a3, s2
                  sltu         a5, s2, t0
                  mulhu        s3, t4, s3
                  xori         a6, sp, -1781
                  slli         t5, s9, 0
                  remu         s8, a1, s3
                  slt          t5, ra, a6
                  sraw         t2, s2, t1
                  addiw        s9, t3, -1415
                  lui          s4, 164050
                  mulh         a3, s0, t1
                  srliw        t1, a5, 4
                  andi         a2, a5, -168
                  addw         t1, s11, t0
                  sraiw        gp, a3, 11
                  xori         t1, tp, -1518
                  div          a0, t2, t4
                  slliw        t0, a2, 1
                  srliw        s0, s0, 22
                  auipc        s0, 741977
                  srliw        t2, t3, 26
                  mulh         a2, s3, s9
                  mul          zero, a1, gp
                  sub          t5, s9, a5
                  slt          s6, t3, gp
                  divw         s6, s9, s2
                  sraw         gp, s2, t2
                  sub          t4, s9, a4
                  srl          s0, s1, t3
                  mulw         s0, s3, s5
                  ori          sp, s8, 42
                  slti         t1, a3, 899
                  div          ra, s3, a3
                  sub          s6, t4, gp
                  srl          a0, t4, s1
                  slt          s0, a2, s3
                  mulw         s2, a3, ra
                  srai         a5, tp, 9
                  remu         s8, sp, s6
                  mul          zero, s11, s9
                  auipc        s1, 340703
                  lui          t2, 1043568
                  subw         t2, a2, s9
                  sll          t2, a7, sp
                  divuw        a5, tp, a0
                  sraiw        zero, s3, 5
                  divuw        ra, a4, s9
                  addi         a0, t2, -1059
                  nop
                  remu         sp, gp, a6
                  slt          s6, s3, zero
                  srliw        s2, a6, 29
                  and          s6, s9, t1
                  auipc        s8, 539727
                  and          s8, s7, a4
                  srli         t5, a5, 29
                  remw         a6, t5, tp
                  andi         s6, s5, 868
                  xor          s9, s10, t0
                  subw         s0, s10, t4
                  divw         s9, zero, a3
                  rem          zero, s6, t2
                  mulw         zero, s9, t6
                  remuw        a3, s6, a0
                  sltu         s4, gp, zero
                  nop
                  slli         a7, t6, 32
                  subw         s0, gp, a0
                  add          t5, s4, a0
                  mulw         t0, t4, t1
                  rem          a0, t1, a3
                  sltu         t0, t3, a3
                  srl          t4, s8, t0
                  xor          s6, tp, t1
                  sltiu        t5, t6, -1575
                  mulh         a6, s1, gp
                  rem          zero, s3, t1
                  srai         t5, t3, 55
                  remu         s9, a7, a3
                  add          a0, t5, s10
                  mulh         s0, a0, gp
                  addw         a6, s1, t5
                  slli         s2, s6, 17
                  sraiw        zero, s11, 4
                  lui          a7, 844820
                  nop
                  lui          s8, 1021698
                  sraiw        s5, a0, 26
                  sra          s8, a6, s8
                  mulh         a0, a1, a2
                  ori          s9, zero, 482
                  subw         t2, s7, a5
                  divuw        s11, t2, s5
                  xor          gp, a0, s11
                  div          zero, a5, a2
                  sub          a2, a5, a2
                  div          t1, t3, a5
                  addi         t4, s0, -1362
                  sltu         ra, s5, s8
                  mulhu        t2, s0, a4
                  add          zero, t3, t3
                  remuw        t4, a7, a0
                  srl          s4, s4, a4
                  and          s4, a1, s9
                  sll          s11, t4, sp
                  xor          s9, zero, s0
                  mul          t6, s5, s6
                  sltiu        a3, a0, 1272
                  srl          a0, a5, s4
                  mulhsu       a3, t3, s7
                  srai         t2, a6, 62
                  remw         s8, s5, s0
                  and          a0, s10, t3
                  lui          t2, 697019
                  sltu         ra, a6, a5
                  nop
                  or           s10, t4, sp
                  remuw        a2, s8, sp
                  sllw         s0, ra, a3
                  divw         zero, zero, s2
                  sub          t1, t2, a2
                  slli         a2, t6, 10
                  remw         t5, s10, a7
                  slt          s8, a6, ra
                  nop
                  nop
                  sub          t5, t1, t5
                  and          s8, s9, t4
                  remu         a2, s10, s0
                  remuw        a2, s9, t4
                  srli         ra, t6, 47
                  nop
                  sra          a6, s8, t3
                  lui          t5, 553916
                  xori         tp, a3, -73
                  lui          a1, 423403
                  xor          a2, tp, t4
                  slli         a5, a7, 52
                  auipc        zero, 165857
                  remu         sp, a4, s11
                  divuw        s4, gp, tp
                  mulw         s10, t6, s0
                  srl          tp, s0, t6
                  subw         s6, gp, a7
                  sll          t6, a1, s6
                  slliw        gp, a2, 31
                  xori         a6, a6, -1600
                  xori         t5, a0, 749
                  divw         t5, a1, t0
                  remuw        s6, a2, t4
                  ori          s6, zero, -17
                  auipc        s5, 524989
                  sll          a6, t6, a0
                  andi         s1, t1, -935
                  remw         t5, s3, a0
                  nop
                  slti         t5, a0, 229
                  slliw        a5, s5, 6
                  sltu         gp, a7, a6
                  xor          s3, s2, s7
                  ori          sp, s0, -466
                  addi         t5, a3, 1935
                  mulh         t0, gp, a4
                  remuw        gp, s10, a0
                  div          s5, a5, a3
                  and          s4, tp, a2
                  subw         a2, a5, ra
                  div          s11, a3, t0
                  divuw        s4, t3, t5
                  xori         t1, t5, -1986
                  divu         a6, a7, a6
                  or           s3, s8, sp
                  mulhu        s2, a3, s6
                  remuw        s11, a3, a0
                  ori          a2, s3, -390
                  andi         t2, s5, -1592
                  mul          s3, s6, t2
                  rem          s0, tp, t5
                  div          t0, s11, s3
                  sllw         s3, s9, a3
                  ori          a1, t1, 683
                  mul          s1, t6, s5
                  divuw        a6, gp, t2
                  sub          s6, s8, a1
                  divu         s6, t0, t1
                  sll          t5, a2, a7
                  andi         zero, a3, 931
                  mulhsu       s6, s0, s7
                  sraiw        a0, s4, 18
                  srl          ra, s1, t1
                  slliw        t5, s1, 5
                  mulhsu       s11, t4, s0
                  sltu         s6, s9, s3
                  nop
                  remuw        sp, a1, s7
                  mulh         s11, s11, s9
                  addw         t5, s2, s10
                  divw         s0, a4, s9
                  mulw         s11, a3, s5
                  slli         t1, s0, 59
                  auipc        t1, 174919
                  mulhsu       a7, s10, tp
                  divuw        s8, s5, t5
                  remuw        ra, a5, s1
                  addiw        t4, gp, 104
                  sltu         t1, s9, t5
                  sraiw        a5, t0, 31
                  remuw        s4, a1, s9
                  mulhsu       a7, a2, t4
                  srl          s6, t2, sp
                  divu         s2, s1, s9
                  div          t1, s2, s2
                  srai         s9, ra, 13
                  mulhu        t2, s2, a4
                  andi         t6, a0, 1089
                  srliw        zero, s1, 12
                  mulw         s4, s3, t1
                  remw         s4, s0, s0
                  xor          s5, t3, a2
                  sll          a2, zero, s9
                  slt          s1, tp, s8
                  lui          a0, 771228
                  mulw         s9, a4, s10
                  remw         t5, t3, a1
                  slti         s4, a0, 911
                  addi         s2, a3, -1484
                  mulhu        s4, s6, a5
                  remuw        s10, sp, t0
                  add          a7, s3, t5
                  srli         gp, t6, 53
                  nop
                  mulh         a5, s2, a0
                  lui          s4, 138715
                  srl          t2, a2, gp
                  slli         ra, a4, 39
                  add          a1, s8, t0
                  auipc        t1, 435670
                  andi         t5, a5, -612
                  sraw         a1, t2, s7
                  xor          s4, s6, sp
                  or           sp, t0, s9
                  remu         s3, s8, t0
                  mulh         t1, s3, a1
                  mul          a2, s3, s10
                  sub          s9, sp, s5
                  slli         s11, t1, 26
                  slt          a3, t2, t5
                  sraiw        zero, s6, 24
                  andi         s5, s3, -400
                  auipc        s11, 1031758
                  sraiw        t1, a0, 12
                  mulhsu       s4, t4, tp
                  slti         s6, t1, -1310
                  andi         s8, a7, 1624
                  sra          t5, a4, a3
                  srai         t2, gp, 39
                  mulw         s11, s10, t1
                  xor          s5, gp, t1
                  xori         s5, a4, -471
                  sub          a2, s6, s0
                  auipc        a7, 912270
                  add          s3, zero, t6
                  remuw        s3, ra, t2
                  remw         s11, sp, s3
                  mulw         t1, t5, s10
                  mulw         gp, s9, s1
                  addw         s8, t4, s3
                  mulw         ra, s4, a1
                  sll          t1, s9, a3
                  divu         t5, ra, a0
                  slli         s1, s7, 22
                  div          a0, s7, a7
                  mulh         ra, s0, s0
                  slliw        t1, s0, 11
                  srai         s4, s6, 55
                  remu         s2, s5, s3
                  sra          t2, sp, s2
                  addw         s0, s5, a2
                  srai         a3, t0, 24
                  sll          s5, a3, s1
                  sraw         s4, s3, s11
                  divu         a3, s10, s11
                  sll          t4, t6, zero
                  add          s11, s6, s9
                  rem          s4, s3, a6
                  ori          s9, s6, 794
                  mulh         t5, s5, zero
                  slti         a6, t6, -1679
                  srl          s0, t1, s2
                  srli         a7, s5, 5
                  ori          s4, a2, -1205
                  sub          a5, ra, a7
                  xor          a1, gp, t5
                  srlw         s2, s1, t0
                  remu         a6, s5, s6
                  divuw        s4, gp, tp
                  slt          t5, t0, t3
                  mulw         ra, s6, t5
                  mulw         gp, s10, a6
                  divw         s0, t5, ra
                  subw         a0, s2, gp
                  remu         a5, s6, t6
                  mul          t0, s8, s5
                  div          t2, s3, ra
                  slli         s9, t2, 5
                  srlw         a1, s1, a4
                  mul          zero, s7, a4
                  remu         ra, zero, s3
                  sltu         a5, a4, t1
                  andi         t5, t0, 508
                  remw         s2, a3, a0
                  remuw        s8, t3, a2
                  remw         a2, s11, gp
                  remw         a6, sp, s7
                  mul          a1, s3, a4
                  xor          tp, a6, a4
                  srlw         ra, t3, t1
                  mulhsu       a2, t6, sp
                  lui          a1, 549026
                  srliw        a7, ra, 18
                  remu         t6, s1, s2
                  srliw        s9, tp, 13
                  slt          s8, s3, ra
                  mulhu        a0, s4, s11
                  remuw        s0, a6, t2
                  slt          a0, a4, a2
                  divu         a5, a5, s2
                  remu         t0, s4, a2
                  remu         a5, t3, s10
                  mulw         a2, s2, t3
                  srliw        a6, t0, 26
                  slt          s11, t4, a0
                  xor          s11, t3, gp
                  add          gp, a2, t0
                  mulhu        s10, tp, a1
                  sub          a6, t6, s6
                  remu         t1, t5, a4
                  rem          t6, s8, s9
                  or           a3, t2, t1
                  sltiu        s3, a3, -167
                  srl          t4, s1, a1
                  sra          s8, s7, t3
                  xor          t2, a4, a2
                  sltu         a2, zero, s3
                  add          s11, a5, zero
                  andi         s4, a3, -1599
                  or           tp, s6, t1
                  mulhu        s10, s11, s10
                  sraiw        s0, s7, 11
                  sltu         s5, a1, a0
                  sub          s1, zero, a0
                  mul          a1, s2, t6
                  add          zero, t3, a6
                  and          a7, s4, t4
                  and          s9, ra, s6
                  nop
                  xori         t2, a7, -1270
                  add          a0, s8, s10
                  divw         s5, s10, s9
                  ori          s3, s1, 1587
                  nop
                  xor          t5, t4, a2
                  addiw        a6, s11, -1321
                  divw         s4, t2, ra
                  ori          t2, s9, 863
                  mul          tp, a7, t1
                  sra          a0, tp, s5
                  addi         s11, a1, 950
                  srlw         a7, t3, a6
                  sra          a2, t4, t1
                  and          s6, gp, s2
                  srai         s3, s3, 33
                  or           s8, t2, tp
                  slti         t4, a1, -1198
                  sll          t2, s4, ra
                  sllw         t4, t3, t5
                  srlw         a0, s6, a6
                  and          s6, s9, ra
                  xor          t1, a4, t1
                  sraw         t0, a1, s9
                  divu         t6, s3, a7
                  remw         s4, zero, s0
                  mul          a5, t5, a4
                  sltu         s1, s1, s4
                  ori          s3, s4, -665
                  slliw        s8, a0, 18
                  divu         s8, t5, ra
                  subw         t1, s0, a2
                  div          a3, a5, s3
                  addw         ra, t5, s5
                  addi         a3, ra, -353
                  andi         s1, t5, -937
                  xor          zero, s0, ra
                  mul          s4, a7, s2
                  sraw         a1, s2, sp
                  sll          s10, a7, t2
                  xor          s9, a1, s11
                  lui          s6, 451273
                  auipc        sp, 1011530
                  sraiw        s2, a1, 26
                  sllw         a7, a2, s9
                  auipc        s1, 57220
                  sraw         a0, s6, s1
                  sraw         a5, s5, t5
                  srl          t1, a2, a1
                  srl          sp, zero, t5
                  add          gp, t0, t2
                  remw         sp, gp, s2
                  and          s5, ra, s7
                  divw         s11, a5, sp
                  mulhu        t0, a5, tp
                  rem          tp, s7, a4
                  sraiw        s5, t4, 27
                  xor          s4, a4, tp
                  srai         a2, t5, 30
                  xori         a7, a2, -336
                  mulhsu       s0, tp, t6
                  sra          s1, ra, a2
                  sltu         t6, s11, a6
                  sra          s4, s9, s1
                  mulw         t6, s9, s0
                  srli         s6, s10, 57
                  divuw        a3, t2, s7
                  addi         a3, tp, -1035
                  sll          a0, gp, a3
                  sra          a2, s7, s8
                  rem          s6, a6, s4
                  sra          s4, a6, t0
                  srliw        s8, a4, 12
                  remu         s6, a5, t5
                  slti         tp, s1, 1750
                  rem          s3, a3, s6
                  xori         a7, t1, 1573
                  remuw        t1, t5, a1
                  slt          a7, s11, a3
                  or           s4, t5, s4
                  slti         zero, gp, -103
                  sll          a2, s11, a5
                  srliw        t1, s4, 24
                  and          a7, s8, a0
                  mulhsu       a1, zero, s10
                  mulhu        s0, t1, tp
                  divuw        s11, zero, ra
                  srliw        t2, t2, 4
                  sltu         t2, s5, zero
                  or           a5, t3, a5
                  slt          s11, tp, a7
                  mulhu        t0, a7, sp
                  slti         s3, a2, -641
                  add          a1, ra, a7
                  divw         t4, t5, tp
                  sltu         sp, a7, s2
                  slliw        s4, tp, 9
                  remw         gp, s3, zero
                  srai         s3, a5, 19
                  srliw        t4, s5, 20
                  xori         s2, s0, 1621
                  remw         sp, tp, s8
                  sll          tp, s10, s11
                  sll          ra, sp, s8
                  remuw        s1, a7, t0
                  slti         a3, t0, -1314
                  or           s8, t3, sp
                  divw         s3, s3, t3
                  nop
                  sllw         s6, tp, ra
                  sraw         s11, t2, s3
                  srli         a2, t0, 26
                  and          t1, s11, tp
                  andi         s3, s2, 58
                  mulhu        a5, s1, a6
                  mulw         a7, s9, zero
                  addiw        s5, s10, 1286
                  xori         a3, s5, 1734
                  sltiu        s10, t5, -204
                  addi         s8, t6, 86
                  rem          a2, a4, s4
                  srliw        t4, a6, 22
                  ori          a6, s6, 203
                  add          sp, t5, t6
                  slti         zero, s8, -1676
                  remw         s2, t5, s11
                  srli         a5, a2, 1
                  remuw        gp, t6, s3
                  mulw         tp, s2, s3
                  divuw        a2, s0, tp
                  mulhu        s0, s7, zero
                  nop
                  sraw         a2, tp, s10
                  mulhu        s10, s8, s4
                  srli         s11, t5, 2
                  remu         s9, s2, s4
                  auipc        a1, 888664
                  slli         s3, a2, 48
                  sll          t1, s1, s6
                  sraw         t0, s9, a6
                  remu         sp, t5, t5
                  srai         a7, s3, 36
                  mulw         zero, a3, a7
                  or           t6, a3, s1
                  xor          s9, s9, s11
                  or           ra, s8, s0
                  addw         a3, sp, s8
                  mulw         t2, ra, ra
                  sltu         s4, s7, gp
                  divuw        s9, zero, tp
                  remw         t0, s10, s6
                  remuw        s1, s11, t2
                  mulhsu       s5, sp, t1
                  sllw         t0, zero, s2
                  sraiw        s2, sp, 9
                  sub          t1, s8, a3
                  lui          t6, 180425
                  slliw        a0, s8, 0
                  srai         s11, s8, 15
                  divw         ra, s10, sp
                  addw         a3, a7, t2
                  div          a7, t6, a5
                  sub          s5, a4, t6
                  sraiw        s0, s5, 29
                  mulh         t1, s5, s5
                  andi         s5, a3, 660
                  mul          t5, a2, s3
                  ori          t5, a2, 143
                  remuw        s5, a0, tp
                  mulw         a3, t6, s3
                  nop
                  srai         s4, zero, 28
                  sltu         a1, s4, a6
                  subw         tp, s0, s4
                  remuw        t1, s2, ra
                  mul          s8, s2, a3
                  srai         a0, t4, 31
                  lui          t4, 473732
                  xor          t5, a3, s11
                  slli         s1, a2, 15
                  auipc        tp, 854060
                  sltiu        t6, s4, 1001
                  sltiu        t1, s1, 910
                  add          t5, s6, s9
                  sll          a3, t6, t4
                  div          t5, s8, t3
                  addw         t2, t1, s1
                  sraiw        t1, a3, 15
                  sltu         t6, s2, t5
                  srlw         a1, s3, zero
                  subw         t1, s2, t5
                  slli         a2, zero, 16
                  addw         s0, zero, s2
                  addi         t6, s5, -916
                  remuw        s1, t5, s7
                  sltiu        zero, a6, -836
                  or           sp, t4, s6
                  addw         t1, s2, t2
                  and          s6, a3, s9
                  srlw         a3, s1, a1
                  mulh         a7, s10, a1
                  mulhsu       t5, a3, a3
                  remuw        t0, s3, zero
                  sraiw        ra, a7, 24
                  add          s4, s0, s1
                  srl          s11, a0, s5
                  mulh         s4, t4, a7
                  divw         t2, s5, s8
                  sll          t5, s0, s9
                  divuw        a2, s7, s4
                  lui          s3, 217880
                  slt          s11, gp, a1
                  sraw         t5, a4, t6
                  nop
                  rem          s3, a0, a4
                  xori         a2, a0, -1539
                  divuw        s8, s4, a5
                  divw         s8, s5, s9
                  srai         s10, t1, 18
                  srl          s10, s2, s10
                  sll          a0, t3, t1
                  mulw         s11, a2, a3
                  mulhsu       t5, t0, sp
                  sltu         s1, s10, gp
                  sra          t2, sp, t6
                  addw         s10, s7, a7
                  xori         t1, zero, 1936
                  sraiw        s4, a6, 30
                  addiw        s3, t5, 782
                  srai         a0, a2, 49
                  or           t5, s1, a2
                  xor          ra, a4, t2
                  slt          s2, s7, tp
                  mul          t4, a2, s4
                  xori         a5, s7, 857
                  divw         tp, gp, a0
                  divu         a1, s6, tp
                  sllw         s3, t3, a6
                  srli         t1, s2, 3
                  add          s1, ra, s5
                  and          zero, s9, gp
                  sra          s5, t4, s8
                  and          t4, t5, s3
                  and          t6, s3, a0
                  srli         s3, zero, 2
                  mulhsu       tp, tp, s1
                  srai         a7, t3, 41
                  and          a2, a3, s3
                  lui          t4, 629503
                  sra          s4, s9, s7
                  addw         t2, t2, a5
                  slliw        s2, s1, 14
                  remuw        s3, t4, a3
                  lui          a2, 588249
                  remw         s10, t3, s5
                  divuw        t6, a3, s7
                  subw         s3, a1, s4
                  sltiu        s6, t5, -307
                  mulw         t6, tp, s5
                  divuw        a2, s2, s5
                  addiw        s1, zero, 1904
                  mul          s0, t3, t2
                  divu         s6, t6, s5
                  srli         a3, s5, 60
                  divu         a1, s7, a4
                  sub          s6, a4, a1
                  divu         a3, a6, s3
                  or           a1, s10, a7
                  div          a1, tp, s2
                  mulhu        t0, a6, a4
                  and          a5, t2, s4
                  mulh         a7, s1, s7
                  xori         a3, s7, -910
                  mulh         t2, zero, s1
                  sll          t4, a3, s9
                  add          s5, t2, s3
                  mul          a1, zero, s9
                  mulh         s1, s1, t0
                  remuw        t5, a5, s11
                  sll          s3, s10, s10
                  sltiu        t5, t2, -158
                  addiw        s8, t5, 162
                  add          s9, s5, s11
                  slti         s6, t0, -193
                  slliw        tp, ra, 23
                  rem          s6, s10, s0
                  srliw        gp, a2, 27
                  srli         a1, ra, 52
                  sltiu        t2, t6, -1853
                  divw         s2, s10, s8
                  mulhu        s0, s0, a3
                  srlw         s1, s6, t4
                  sllw         t5, t3, t2
                  sraw         tp, s8, t5
                  subw         s2, a0, t0
                  mulw         s2, a6, t1
                  addi         s4, s7, -1050
                  srlw         a0, a3, s4
                  addiw        gp, s1, 499
                  srlw         s1, ra, tp
                  sub          s6, s3, a1
                  divw         zero, s0, sp
                  divw         gp, a2, t3
                  remu         s10, a5, a6
                  mulhsu       gp, s2, s6
                  ori          s8, a5, 563
                  addiw        s0, s0, -1312
                  srli         s6, sp, 62
                  or           sp, a2, s5
                  mul          t5, t4, sp
                  div          tp, t2, ra
                  srli         a7, ra, 55
                  mulh         a2, a5, s4
                  sll          a5, a2, a6
                  mul          t1, gp, s9
                  xori         s2, s3, 26
                  ori          a3, gp, -330
                  slli         s0, a7, 56
                  sltiu        s8, a4, -1667
                  srai         s6, s10, 15
                  sllw         s4, a7, s11
                  srl          s9, s2, s10
                  auipc        t6, 860420
                  slt          sp, s3, tp
                  sllw         t0, s10, s6
                  andi         s8, a1, 1866
                  srliw        s8, s5, 7
                  addw         a2, a2, s11
                  addi         t4, t1, -492
                  sltu         a5, t6, a4
                  srliw        t2, t4, 30
                  mulw         tp, s3, s6
                  lui          t5, 685936
                  mulw         t1, t0, gp
                  sra          s9, s5, a0
                  mul          t2, zero, a5
                  slti         t0, a3, -262
                  srai         a3, s5, 12
                  srliw        gp, a3, 30
                  xor          t6, a0, ra
                  nop
                  lui          a0, 403368
                  sllw         t4, a1, s6
                  sltu         a2, a4, a2
                  mulhu        s0, a5, s1
                  sltiu        a3, ra, 786
                  div          t2, s7, s1
                  subw         t6, t5, gp
                  slliw        s8, s5, 6
                  divu         s0, t6, s4
                  sraw         s9, s10, s5
                  remu         s4, s10, zero
                  rem          zero, t4, t2
                  srliw        sp, a5, 18
                  mul          t0, a5, a6
                  srl          a5, t4, a0
                  lui          sp, 191291
                  sra          sp, s8, a6
                  sra          s11, a1, t1
                  sra          tp, s9, t0
                  sub          a7, zero, a7
                  divw         a5, s11, s0
                  divw         s9, a5, t5
                  rem          s10, s2, s1
                  rem          tp, t1, s11
                  addiw        a6, s7, -198
                  mulhsu       t2, s7, a2
                  div          s8, t0, a4
                  remu         s0, t1, s7
                  div          s11, t2, a7
                  sraw         t5, t3, ra
                  or           gp, s6, s4
                  divuw        a1, a3, a7
                  remuw        t1, s11, a1
                  lui          s1, 847462
                  divu         s2, a2, a6
                  mulw         sp, t3, t1
                  srl          t5, ra, t0
                  slliw        ra, s11, 21
                  mulhu        tp, sp, s11
                  ori          sp, gp, -1968
                  add          t6, s3, s9
                  mulw         s8, a2, gp
                  add          s2, s8, s5
                  lui          a3, 1023896
                  sllw         s11, a6, s3
                  divuw        zero, tp, s6
                  srai         s2, a2, 24
                  divw         t1, s1, s9
                  sltu         s5, s0, a3
                  addw         a0, s11, s3
                  ori          s5, s7, -2015
                  srlw         s1, s4, sp
                  sraw         t1, a1, s3
                  and          a5, a1, ra
                  add          s8, sp, zero
                  divw         a0, t4, s6
                  remu         s3, s5, gp
                  srli         a2, s3, 18
                  add          t0, s8, ra
                  srliw        s2, t1, 12
                  sll          a3, a4, a5
                  auipc        t5, 531523
                  add          a2, a0, s11
                  or           t1, sp, t4
                  slliw        s1, a0, 12
                  slt          a2, a7, s3
                  addiw        ra, a6, -921
                  sraiw        s9, tp, 9
                  mul          s1, a4, zero
                  ori          t6, s8, -1633
                  addi         s0, t1, 889
                  mulhu        a5, a3, t5
                  sltiu        s9, s6, 1068
                  divw         t5, a1, s9
                  sll          t1, t4, tp
                  srl          zero, gp, s6
                  sra          s11, s10, s3
                  addi         t4, a3, -1340
                  sub          t5, s5, a7
                  srli         gp, sp, 47
                  srai         a3, sp, 55
                  ori          a3, t3, -214
                  lui          t4, 366747
                  mulhsu       s10, tp, s11
                  slt          s2, s4, tp
                  remuw        gp, t6, sp
                  slt          sp, gp, sp
                  slt          a1, t6, a0
                  srli         s5, a3, 3
                  sub          s8, s8, sp
                  add          s8, a4, s3
                  ori          ra, sp, 1520
                  srliw        t6, s11, 12
                  sra          t5, t2, a4
                  remuw        t5, a7, a5
                  slti         a3, s2, -566
                  and          s6, t4, t3
                  srliw        t4, s9, 3
                  sltiu        a5, ra, 1922
                  div          a1, s9, s7
                  xori         a5, s1, 86
                  slli         t4, t5, 10
                  auipc        s3, 835527
                  sltu         a6, a0, t0
                  srai         s11, t3, 38
                  auipc        sp, 861428
                  sub          s6, t0, ra
                  slli         a1, t6, 44
                  sub          gp, t0, t5
                  sllw         a1, s11, s7
                  andi         t2, s11, 102
                  slti         t0, a0, -840
                  addw         a3, a3, a4
                  slti         t1, t3, 165
                  mulhu        s2, a3, a4
                  div          s10, s10, s11
                  slti         gp, a0, -167
                  subw         s5, a7, ra
                  sltiu        t5, s5, -158
                  sllw         s8, a5, a6
                  auipc        t2, 800965
                  auipc        s10, 885880
                  andi         s5, s2, 1012
                  sltiu        ra, a5, -463
                  ori          t0, s9, -1721
                  slli         ra, ra, 28
                  mulhsu       s8, s1, t3
                  srlw         zero, s3, ra
                  srli         gp, s9, 44
                  mulw         a6, a2, a6
                  sra          a3, s5, ra
                  addiw        t0, s2, 201
                  srl          a2, s3, s5
                  sllw         s4, a3, s11
                  srl          s2, t2, t3
                  sraw         s0, a7, s5
                  ori          s9, gp, -607
                  andi         s1, a6, -1251
                  ori          t1, t0, 1113
                  mulh         a2, t2, t6
                  sltu         t0, zero, t4
                  divw         s11, s0, s11
                  add          ra, s8, t0
                  auipc        t2, 439548
                  sraw         sp, s5, sp
                  add          s6, s0, s2
                  remuw        a5, s9, s4
                  remuw        a3, a4, a5
                  auipc        a2, 490224
                  ori          s6, t2, 732
                  divw         s1, s0, a7
                  srl          s1, s6, t4
                  andi         s5, s6, -938
                  xor          s5, zero, a2
                  srli         s8, t5, 53
                  mul          sp, t0, a6
                  mulhu        s8, s2, s2
                  addiw        s9, a3, -671
                  mulhsu       sp, gp, a6
                  sltiu        tp, a5, 1809
                  nop
                  remw         t0, a6, a5
                  rem          t4, s3, t3
                  addw         s4, s5, t5
                  add          a2, s6, t6
                  and          a6, s6, a5
                  sll          s3, s7, zero
                  add          a0, t3, s1
                  divu         t0, t5, s9
                  mulw         a5, s5, zero
                  andi         t2, s1, -1758
                  slliw        t4, s9, 12
                  mulhu        s2, t6, s2
                  auipc        s5, 53251
                  slli         t6, t1, 37
                  andi         gp, a2, -150
                  mulw         s10, s6, s4
                  srliw        s0, s6, 3
                  addiw        s6, s3, 529
                  sra          a2, a2, s6
                  mul          sp, t4, s2
                  remu         s10, ra, a7
                  and          t5, a3, s6
                  div          gp, t1, s2
                  mul          s11, sp, t1
                  addi         a5, s4, -580
                  slliw        t4, s10, 4
                  mulh         a0, t0, t5
                  auipc        s11, 669140
                  rem          gp, a0, s9
                  remu         t1, s6, s2
                  remuw        a2, a7, s7
                  remw         a3, a2, a1
                  div          t6, t6, ra
                  sltiu        t4, s2, -726
                  mulh         a5, s3, ra
                  mulw         t0, t1, s11
                  mulhu        a3, gp, s4
                  lui          t6, 1005975
                  nop
                  slt          gp, s6, s3
                  srlw         sp, t4, tp
                  xori         sp, gp, 1488
                  sllw         s3, s3, s1
                  slli         zero, t1, 41
                  divu         s3, s2, s1
                  sll          gp, a3, a1
                  addiw        s2, s10, -871
                  divw         t5, s1, s11
                  srl          t0, s5, t4
                  addiw        tp, a5, -17
                  xor          t6, s4, s8
                  divu         s11, s9, t2
                  remuw        zero, s11, a7
                  mul          t4, a4, s2
                  add          gp, t3, a7
                  slliw        s1, t1, 14
                  sllw         t2, a3, s4
                  lui          a7, 817495
                  divu         a2, tp, t2
                  and          s1, gp, a0
                  sllw         s5, s0, t3
                  slti         t2, ra, 435
                  ori          a2, sp, 851
                  auipc        t6, 823720
                  slli         t4, ra, 42
                  nop
                  div          a0, s4, s2
                  or           zero, a7, tp
                  mul          a6, s5, a5
                  mul          s0, a6, zero
                  divuw        s2, t6, t0
                  srli         s9, ra, 26
                  divuw        tp, s11, s3
                  srli         zero, t6, 3
                  slliw        sp, s8, 28
                  srliw        s0, t3, 18
                  srai         s4, a3, 22
                  slli         t2, t2, 28
                  xor          a6, s0, t3
                  and          s3, s0, s11
                  remuw        sp, t5, sp
                  sraw         t2, s7, t2
                  subw         a1, s0, t0
                  sltu         s6, t2, t3
                  or           ra, a5, a5
                  mulhsu       a7, t5, s0
                  addiw        a2, s7, -1751
                  add          a2, s1, t0
                  sraw         a1, s1, t6
                  mul          s5, s4, zero
                  mulw         a2, t2, t1
                  mul          s3, s11, a5
                  sltiu        gp, s8, -1326
                  xori         a0, s0, 541
                  slliw        a7, tp, 16
                  divu         s8, a2, a5
                  ori          sp, t4, 1573
                  div          t4, a0, s5
                  divu         s5, t5, gp
                  add          a0, a6, a4
                  srl          s0, s2, a3
                  xor          s1, t0, t0
                  div          t5, a4, t1
                  slli         s4, s9, 52
                  sltiu        a2, t4, -425
                  xori         t2, s11, -1604
                  subw         s9, tp, s5
                  sraiw        a3, s3, 28
                  srli         s4, t0, 45
                  sub          a0, s1, s6
                  divuw        a3, ra, zero
                  andi         t2, s2, 1129
                  sra          ra, sp, a0
                  nop
                  remu         a7, s11, s9
                  sraiw        a7, s3, 7
                  subw         t1, s11, s10
                  slli         zero, a0, 57
                  subw         a6, s9, t6
                  addiw        s11, zero, 1803
                  mulhu        a7, a0, s11
                  div          t5, s6, t5
                  slti         a0, ra, -1816
                  remu         t4, a3, a2
                  mulhsu       s4, a5, a1
                  mulw         s1, s10, t5
                  sraw         t0, a7, sp
                  la x28, test_done
                  jalr x0, x28, 0
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
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x3f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x23, x23, -4
                  sd  x14, (x23)
                  add x14, x23, zero
                  addi x14, x14, -256
                  sd  x1, 8(x14)
                  sd  x2, 16(x14)
                  sd  x3, 24(x14)
                  sd  x4, 32(x14)
                  sd  x5, 40(x14)
                  sd  x6, 48(x14)
                  sd  x7, 56(x14)
                  sd  x8, 64(x14)
                  sd  x9, 72(x14)
                  sd  x10, 80(x14)
                  sd  x11, 88(x14)
                  sd  x12, 96(x14)
                  sd  x13, 104(x14)
                  sd  x14, 112(x14)
                  sd  x15, 120(x14)
                  sd  x16, 128(x14)
                  sd  x17, 136(x14)
                  sd  x18, 144(x14)
                  sd  x19, 152(x14)
                  sd  x20, 160(x14)
                  sd  x21, 168(x14)
                  sd  x22, 176(x14)
                  sd  x23, 184(x14)
                  sd  x24, 192(x14)
                  sd  x25, 200(x14)
                  sd  x26, 208(x14)
                  sd  x27, 216(x14)
                  sd  x28, 224(x14)
                  sd  x29, 232(x14)
                  sd  x30, 240(x14)
                  sd  x31, 248(x14)
                  add x23, x14, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x8, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x8, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x8, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x8, x27, ecall_handler
                  li x27, 0x1
                  beq x8, x27, instr_fault_handler
                  li x27, 0x5
                  beq x8, x27, load_fault_handler
                  li x27, 0x7
                  beq x8, x27, store_fault_handler
                  li x27, 0xc
                  beq x8, x27, pt_fault_handler
                  li x27, 0xd
                  beq x8, x27, pt_fault_handler
                  li x27, 0xf
                  beq x8, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x8, _start
                  sd x0, 0(x8)
                  sd x1, 8(x8)
                  sd x2, 16(x8)
                  sd x3, 24(x8)
                  sd x4, 32(x8)
                  sd x5, 40(x8)
                  sd x6, 48(x8)
                  sd x7, 56(x8)
                  sd x8, 64(x8)
                  sd x9, 72(x8)
                  sd x10, 80(x8)
                  sd x11, 88(x8)
                  sd x12, 96(x8)
                  sd x13, 104(x8)
                  sd x14, 112(x8)
                  sd x15, 120(x8)
                  sd x16, 128(x8)
                  sd x17, 136(x8)
                  sd x18, 144(x8)
                  sd x19, 152(x8)
                  sd x20, 160(x8)
                  sd x21, 168(x8)
                  sd x22, 176(x8)
                  sd x23, 184(x8)
                  sd x24, 192(x8)
                  sd x25, 200(x8)
                  sd x26, 208(x8)
                  sd x27, 216(x8)
                  sd x28, 224(x8)
                  sd x29, 232(x8)
                  sd x30, 240(x8)
                  sd x31, 248(x8)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
                  mret

load_fault_handler:
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
                  mret

store_fault_handler:
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x14, x23, zero
                  ld  x1, 8(x14)
                  ld  x2, 16(x14)
                  ld  x3, 24(x14)
                  ld  x4, 32(x14)
                  ld  x5, 40(x14)
                  ld  x6, 48(x14)
                  ld  x7, 56(x14)
                  ld  x8, 64(x14)
                  ld  x9, 72(x14)
                  ld  x10, 80(x14)
                  ld  x11, 88(x14)
                  ld  x12, 96(x14)
                  ld  x13, 104(x14)
                  ld  x14, 112(x14)
                  ld  x15, 120(x14)
                  ld  x16, 128(x14)
                  ld  x17, 136(x14)
                  ld  x18, 144(x14)
                  ld  x19, 152(x14)
                  ld  x20, 160(x14)
                  ld  x21, 168(x14)
                  ld  x22, 176(x14)
                  ld  x23, 184(x14)
                  ld  x24, 192(x14)
                  ld  x25, 200(x14)
                  ld  x26, 208(x14)
                  ld  x27, 216(x14)
                  ld  x28, 224(x14)
                  ld  x29, 232(x14)
                  ld  x30, 240(x14)
                  ld  x31, 248(x14)
                  addi x14, x14, 256
                  add x23, x14, zero
                  ld  x14, (x23)
                  addi x23, x23, 4
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
