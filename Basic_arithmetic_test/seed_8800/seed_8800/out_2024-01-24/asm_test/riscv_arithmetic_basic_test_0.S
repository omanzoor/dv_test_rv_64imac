.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x26, 0x8000000000001105
                  csrw 0x301, x26
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  li x26, 0x0
                  csrw 0x304, x26 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf628d6cc
                  li x2, 0x13d81937
                  li x3, 0x0
                  li x4, 0x4
                  li x5, 0xf7e66fcf
                  li x6, 0x80000000
                  li x7, 0xca2adca4
                  li x8, 0x0
                  li x9, 0xf0e35dc1
                  li x10, 0x1
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0xec6224e8
                  li x14, 0x0
                  li x15, 0xfb6d2456
                  li x16, 0xf721362e
                  li x17, 0xf100b2a2
                  li x18, 0x0
                  li x20, 0x4fc159af
                  li x21, 0x41033992
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x1
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x4
                  la x24, user_stack_end
main:             sltiu        s5, t5, 1389
                  div          t0, s3, s10
                  nop
                  sub          a7, t4, s8
                  slti         s6, t0, -1959
                  sub          a4, s2, s0
                  slt          s10, t2, s10
                  sra          s11, t3, t3
                  mul          s11, s3, t3
                  sll          a6, tp, a5
                  remw         s11, a2, gp
                  srl          s7, s8, a3
                  ori          a6, s3, 379
                  srlw         a7, a0, s3
                  srai         t2, s2, 19
                  or           t6, sp, sp
                  sraiw        s4, t5, 4
                  mulhu        a1, gp, tp
                  remu         a0, sp, t6
                  srliw        t0, a0, 13
                  slli         s9, t3, 52
                  div          gp, t1, s0
                  sraiw        a7, s9, 16
                  sllw         s4, a1, t1
                  srliw        t0, s4, 18
                  divw         a7, t6, sp
                  sraiw        a6, s4, 31
                  rem          a3, s10, a3
                  sltiu        t5, a1, 465
                  remu         tp, t1, a7
                  rem          s4, s6, s5
                  mulhu        t1, ra, t0
                  or           tp, t4, a4
                  mul          a1, t4, a2
                  andi         s6, s5, -2025
                  remw         s5, a1, a3
                  sllw         ra, s5, s10
                  auipc        a6, 193544
                  xor          tp, s4, s11
                  nop
                  remu         t5, s3, ra
                  addi         a3, s11, -1060
                  srl          s7, s3, a3
                  or           gp, gp, ra
                  andi         a4, s5, 365
                  lui          t5, 896443
                  mulhu        ra, t6, t1
                  auipc        s10, 672319
                  addw         t4, s8, t3
                  xor          s1, s0, ra
                  remuw        t1, s9, s4
                  mulhsu       zero, s2, t3
                  add          a2, t6, t2
                  and          zero, a3, s5
                  divu         t6, gp, ra
                  sub          zero, t0, s8
                  remu         t6, s5, s5
                  slti         s9, ra, 290
                  or           t1, t5, zero
                  srl          t0, a5, t0
                  addi         t2, gp, 111
                  mulh         s11, a1, s1
                  srliw        s1, a4, 3
                  xor          t5, s6, a2
                  and          s5, s9, t0
                  sra          s9, a7, gp
                  rem          s1, s9, a2
                  addw         s9, a7, sp
                  slli         a0, t5, 29
                  sraw         s10, a3, a0
                  sltu         a0, a2, a5
                  slli         a4, s3, 13
                  sll          a1, s9, tp
                  sll          sp, a0, s11
                  slliw        a7, t3, 8
                  ori          s2, t1, -1264
                  sll          s11, tp, a3
                  divw         a2, t3, ra
                  xor          s5, s8, s8
                  addi         a4, s11, 1651
                  sll          tp, s11, t0
                  divu         a3, s2, sp
                  sra          s6, a3, s6
                  srl          s1, s2, s4
                  addw         a1, a6, a4
                  remuw        t1, a5, a0
                  rem          a4, s7, ra
                  sllw         zero, a5, t2
                  srli         t4, t6, 21
                  divw         t6, s5, sp
                  srliw        zero, t5, 8
                  or           s10, s8, s4
                  xori         s6, s6, 1062
                  sub          s2, s6, sp
                  sra          sp, s7, s3
                  srlw         s7, s11, s7
                  divu         s10, gp, a0
                  ori          t1, a5, -1128
                  sll          s4, a0, s5
                  mulh         gp, t5, s8
                  srai         t5, a0, 37
                  srli         s9, s11, 56
                  subw         a4, t4, a2
                  divuw        a5, s7, zero
                  divu         s2, s9, zero
                  sltiu        s5, s11, 1643
                  sub          a3, a7, s5
                  auipc        s1, 370219
                  srli         zero, tp, 14
                  add          ra, a2, s5
                  remu         gp, sp, s5
                  mul          s6, a3, a3
                  sra          gp, t6, s10
                  sraw         s6, s3, s2
                  divu         s9, a0, zero
                  mulw         s1, a0, t4
                  mulhu        zero, s0, s11
                  slti         t4, s5, -225
                  and          zero, t0, s9
                  divuw        a0, s0, sp
                  xori         zero, t6, -35
                  srliw        s9, sp, 27
                  sltu         a7, t3, zero
                  sll          s7, a4, t0
                  div          a3, tp, s10
                  andi         t2, a6, 785
                  add          s9, t1, sp
                  divw         a0, a1, s1
                  mulhsu       t4, s1, a6
                  sllw         a2, a3, s2
                  remuw        a2, t3, s6
                  nop
                  divw         s6, t1, tp
                  sraw         zero, t4, s2
                  remu         a7, gp, a5
                  slt          zero, s2, a7
                  srlw         t3, t2, s11
                  divuw        a2, ra, ra
                  rem          t4, zero, s6
                  sltiu        gp, t1, 1780
                  srai         t3, s10, 10
                  and          s5, t1, t4
                  remw         zero, tp, s9
                  divu         s7, a1, t1
                  or           t0, t6, s9
                  auipc        s6, 442831
                  add          sp, a4, a5
                  sraiw        a0, a3, 1
                  sraw         s11, zero, s9
                  nop
                  lui          s7, 1011124
                  remu         a6, zero, s9
                  remuw        s7, t4, a7
                  srl          s9, s2, t0
                  divu         t3, a7, s5
                  sllw         s9, zero, t5
                  divuw        s4, t5, s8
                  addw         a6, s7, a4
                  mul          s7, s9, t1
                  mul          t1, ra, s5
                  rem          t0, a6, gp
                  addw         t4, t6, a5
                  div          s10, t1, a3
                  slti         ra, a6, 477
                  sub          t6, a2, a2
                  mulhu        s9, s5, s2
                  slti         s9, s9, -1899
                  rem          tp, tp, a6
                  sraiw        s10, s5, 29
                  srai         t2, a3, 55
                  ori          s2, tp, 1321
                  remu         zero, s7, t1
                  div          s7, s0, s4
                  srai         s5, ra, 17
                  remw         t5, t1, a6
                  srl          t4, a0, a1
                  divu         s6, a1, t6
                  divw         a5, a0, t2
                  xor          a5, a0, ra
                  xori         a7, t6, -1143
                  sllw         a0, t2, t2
                  andi         zero, zero, 490
                  mul          a0, s4, s6
                  xor          s10, t0, s8
                  addi         s2, t3, -1918
                  srai         s7, s10, 12
                  addi         s7, s1, 1298
                  sltiu        a5, a5, 464
                  sraiw        s7, s7, 5
                  auipc        ra, 272744
                  add          a3, t0, tp
                  mulw         t0, t5, a6
                  xor          t5, s4, s2
                  addi         s4, s5, -275
                  mul          t5, s4, t4
                  srl          a7, a1, tp
                  add          gp, a5, s2
                  sra          s9, s9, s6
                  lui          t4, 918751
                  sll          s10, s11, s10
                  srli         s7, s5, 8
                  sll          gp, s10, zero
                  rem          t2, t6, t3
                  srlw         t5, s2, s10
                  mulw         s5, a7, t6
                  srli         s2, t1, 29
                  remw         t4, t4, s1
                  sll          t3, zero, tp
                  mulhu        s5, t1, a0
                  addw         zero, s8, a3
                  srai         zero, s2, 55
                  sll          t1, s10, zero
                  andi         zero, s11, -1424
                  ori          a1, t2, -451
                  srl          a5, a5, sp
                  addi         t1, t3, 1600
                  slti         t2, s4, 1944
                  subw         ra, t1, a3
                  srliw        t1, s3, 1
                  sllw         s6, a4, s5
                  srl          a5, s4, s1
                  slliw        a3, s10, 2
                  subw         gp, s7, a4
                  remu         ra, s2, a4
                  rem          a4, s3, s9
                  mulw         t3, s5, s7
                  srl          a7, s4, s10
                  addiw        ra, a6, -910
                  sll          t5, t6, t6
                  nop
                  sllw         a0, s0, ra
                  srl          sp, t1, gp
                  sll          s5, zero, t0
                  xori         tp, s2, -478
                  div          a0, a6, s4
                  sraw         s5, a3, a1
                  divu         a6, s6, s7
                  auipc        a5, 935955
                  sraw         s9, a5, zero
                  xor          a6, s8, s3
                  lui          a4, 755740
                  ori          a2, a2, -987
                  andi         a1, a4, -1304
                  div          sp, t4, s8
                  srl          s9, s11, s9
                  addw         s7, ra, a6
                  srliw        gp, s8, 27
                  or           a7, s6, zero
                  add          s5, s0, a3
                  srl          ra, a1, a4
                  srliw        t5, s10, 21
                  sraiw        t2, s10, 23
                  sraw         gp, sp, a6
                  sraiw        s4, s7, 31
                  andi         ra, a6, 197
                  sllw         a2, a0, s10
                  sll          s2, t1, a7
                  subw         s4, t5, s4
                  srai         s7, t4, 3
                  add          s5, tp, s5
                  mulhsu       ra, a0, a7
                  nop
                  add          s2, s5, s6
                  sllw         a2, a5, a7
                  auipc        a2, 500087
                  addi         t5, a7, 475
                  divuw        s10, sp, s1
                  srliw        a3, t0, 3
                  add          a1, t6, a1
                  xori         a1, s8, 890
                  remw         s4, s10, s9
                  auipc        s1, 329878
                  divw         a2, s5, s8
                  remu         a4, zero, tp
                  xori         t4, a4, -2005
                  srlw         s6, s9, s7
                  nop
                  and          ra, a2, gp
                  div          a1, a1, s1
                  auipc        a2, 738356
                  srlw         s11, s0, s3
                  srli         a2, t5, 44
                  addw         zero, s3, a1
                  auipc        t5, 411460
                  mulhu        t1, t6, sp
                  subw         t3, zero, a5
                  sllw         sp, s2, a4
                  sltiu        t0, t0, 205
                  sltiu        t0, s8, 1439
                  mulw         a6, s5, s1
                  mulw         a7, a1, t6
                  srlw         t1, a7, a0
                  xor          a0, s0, zero
                  srl          a2, s2, a2
                  addi         s4, s10, 124
                  sltu         s10, a3, a3
                  add          t6, a6, s7
                  srli         a4, s1, 13
                  lui          a0, 261414
                  addiw        s11, s3, 1720
                  srl          a4, s9, a0
                  remuw        t0, s6, a7
                  mulw         t3, s4, s0
                  xor          s4, ra, s4
                  nop
                  mulh         tp, zero, a2
                  sub          t5, s1, s0
                  slliw        a7, a3, 15
                  div          s5, s4, a5
                  mulh         zero, tp, a7
                  slli         t5, a2, 44
                  mul          s7, s3, t1
                  xori         a2, s1, -844
                  remw         a4, s10, t1
                  rem          zero, s7, a4
                  srliw        a6, s8, 21
                  mulhsu       s10, a6, s5
                  div          zero, a5, s10
                  sllw         s1, a5, s9
                  mulw         sp, t6, s7
                  or           s9, t6, ra
                  divu         s7, t6, ra
                  subw         gp, a5, s2
                  mul          t2, a5, t4
                  sltu         t2, a4, a2
                  addi         a0, sp, -1314
                  andi         s11, tp, -520
                  sltu         a5, s2, a3
                  mulw         a1, s9, a4
                  sllw         s5, t4, t0
                  sltu         s4, tp, tp
                  sltiu        t4, a7, 1549
                  remuw        s11, t2, tp
                  divuw        t2, s4, s9
                  addi         t0, t4, -1162
                  auipc        a4, 481378
                  remuw        s7, t6, t0
                  addi         a3, a0, -209
                  andi         t0, s0, -2024
                  or           t3, gp, s0
                  remuw        a0, s9, t0
                  nop
                  remuw        s1, t5, t1
                  srli         t3, s9, 45
                  slti         a5, sp, 1372
                  slliw        a4, a3, 23
                  divw         s10, s7, a7
                  divuw        s10, s6, a2
                  xor          tp, s4, a5
                  mulhu        t0, t5, a0
                  divw         a1, s7, s8
                  rem          a2, s1, s8
                  xori         t3, s7, 1111
                  divw         s9, a0, t5
                  mulhu        a2, a5, a4
                  mulw         s2, s0, s9
                  sll          s2, tp, s6
                  xori         zero, a2, 1834
                  divw         s7, zero, gp
                  addw         ra, s3, t4
                  slli         t5, s3, 33
                  mul          t3, t5, a2
                  remuw        a0, t1, s7
                  srai         t2, zero, 1
                  sltu         a4, t3, ra
                  mulw         a2, t1, s9
                  remuw        s9, s5, a6
                  srai         t2, a3, 6
                  remuw        t5, s1, s8
                  xor          a1, s11, s11
                  srliw        s1, s7, 22
                  addw         a5, s11, t4
                  remu         a6, s11, t3
                  remu         a7, a5, s1
                  divu         a7, s7, tp
                  slti         s4, s9, -924
                  sraw         sp, a1, a4
                  ori          a5, t5, -1214
                  srlw         s1, s0, s8
                  xor          a5, sp, s5
                  sllw         t4, a0, t3
                  srl          t0, a4, s2
                  addw         t6, t2, s11
                  divuw        s7, a4, s3
                  addw         t1, s10, s0
                  mulhu        t4, t3, s0
                  nop
                  lui          gp, 554867
                  addiw        gp, s4, -1583
                  sltu         s9, gp, t5
                  div          a4, s9, gp
                  xori         s11, a2, 143
                  lui          a2, 286019
                  sllw         t0, s5, s5
                  remu         a5, s8, t0
                  divu         a2, t5, ra
                  subw         s4, sp, s8
                  and          t4, t0, a5
                  srli         s6, a2, 1
                  slti         a6, t2, -1343
                  or           a5, s10, s1
                  sllw         t3, zero, a5
                  srlw         s2, a6, a1
                  and          t5, a1, s0
                  sllw         s6, s0, a3
                  addw         a1, s8, t2
                  divw         a2, s2, ra
                  andi         a4, sp, -377
                  srli         ra, tp, 4
                  srli         a3, s4, 27
                  slt          gp, s11, a7
                  slliw        a3, s8, 30
                  srli         gp, s1, 3
                  sll          a5, gp, tp
                  mulhu        t0, a4, zero
                  sraiw        s10, tp, 29
                  slt          s2, t1, zero
                  add          s5, s7, s1
                  sltu         t3, t2, s9
                  remuw        t5, zero, s4
                  sltiu        a3, a1, -1742
                  add          a7, a3, s1
                  auipc        s10, 515169
                  mulw         a5, t4, a1
                  subw         s11, tp, s5
                  add          s6, s8, a6
                  sra          s1, ra, a5
                  srl          a0, a3, t5
                  remuw        a4, a2, t6
                  srliw        a5, s4, 15
                  lui          tp, 752563
                  sraiw        t6, a2, 2
                  addw         s2, a6, a1
                  srliw        t5, s3, 21
                  divuw        tp, t5, s6
                  sra          s4, s8, a2
                  srl          s5, s9, a0
                  mulh         a0, sp, a3
                  srai         a3, s7, 42
                  div          s6, a3, a3
                  srliw        s10, ra, 20
                  add          a0, t1, a1
                  addiw        t1, s2, -1901
                  srai         a7, s11, 15
                  addiw        zero, tp, -1444
                  div          a6, a1, t5
                  auipc        t4, 943579
                  sltu         s5, s10, s6
                  and          a6, s3, t3
                  sra          a4, s7, tp
                  divu         gp, t2, tp
                  addw         a5, s0, s1
                  sllw         t3, s2, a1
                  sra          t3, t0, a2
                  slti         t1, s5, 185
                  remuw        a5, t0, sp
                  mulh         a1, zero, a6
                  divw         t4, t1, t6
                  srl          a2, a2, s0
                  remuw        t4, s7, s1
                  mul          a1, s11, s0
                  mulhu        sp, t2, ra
                  and          t3, a3, a5
                  remuw        s9, s3, s7
                  srl          s9, a2, s3
                  sraiw        t3, s3, 20
                  ori          s7, zero, 1568
                  slli         a2, ra, 53
                  srliw        s10, sp, 24
                  srliw        s6, t2, 0
                  srli         t0, a1, 27
                  addw         a0, s1, s8
                  lui          a4, 731898
                  nop
                  remw         zero, t3, a5
                  mulh         a2, s7, zero
                  remu         zero, a5, s1
                  and          ra, s6, a2
                  sraiw        t2, s2, 28
                  add          s11, t2, t1
                  srl          s9, a3, t3
                  sllw         a0, s10, s6
                  srl          s11, s8, zero
                  sra          t6, a6, a4
                  sub          sp, t6, s2
                  mulh         s10, s8, a2
                  sraw         tp, a4, a5
                  divu         s10, a1, s1
                  srli         a1, s9, 18
                  slt          a6, s6, s0
                  mulw         t3, a6, s7
                  mulhsu       t4, s6, s5
                  mulhsu       t1, s2, s9
                  srlw         s11, s3, t3
                  or           s4, a2, gp
                  addiw        t1, a2, -865
                  andi         a1, s1, 118
                  srlw         a1, t3, s5
                  slt          a4, s9, sp
                  andi         a0, a7, -926
                  addw         s5, t6, s1
                  srliw        a3, ra, 11
                  addiw        t0, a2, -2009
                  srliw        s10, s2, 13
                  remw         t2, s8, s10
                  and          a5, s5, sp
                  lui          a4, 746705
                  addi         s2, s0, 1928
                  and          s11, a4, s4
                  srai         s10, tp, 21
                  divuw        zero, zero, a2
                  srai         t6, a0, 28
                  sub          sp, zero, gp
                  addw         a1, a5, s1
                  rem          t3, s1, t4
                  sraw         a4, s8, tp
                  addw         s7, s2, s8
                  sraw         ra, t2, a7
                  addi         s2, s6, 334
                  mulw         a5, t5, s5
                  and          s5, s0, t2
                  mul          a2, s5, s2
                  sltu         sp, s3, s6
                  or           s11, a5, a6
                  addi         s1, s3, -579
                  sraiw        t4, t5, 7
                  xori         s10, s3, 1497
                  sltu         t2, a4, s7
                  srai         t3, a7, 16
                  sltu         t3, a1, t0
                  srl          zero, a1, a6
                  divuw        a2, s4, sp
                  rem          s6, t3, s5
                  divw         gp, s2, tp
                  sub          gp, s7, gp
                  divu         s9, a4, ra
                  srlw         s11, t4, s6
                  remuw        a6, a4, s11
                  add          s11, t4, s4
                  sltu         zero, t3, s8
                  xor          t0, s3, a4
                  srliw        s4, t3, 27
                  addw         a2, t3, a5
                  addi         a3, gp, -167
                  remu         tp, t1, ra
                  sub          s10, zero, tp
                  rem          t6, t0, s11
                  lui          t1, 654679
                  slli         t1, a1, 8
                  mulhsu       a3, sp, t1
                  slliw        s2, s8, 30
                  auipc        t1, 428496
                  sll          t3, a7, t6
                  sra          a1, a6, s8
                  slt          a2, t5, tp
                  div          a6, s1, ra
                  add          s10, s5, s7
                  mulhsu       a5, sp, a0
                  addiw        t1, gp, 929
                  ori          s7, s6, -709
                  srli         ra, t6, 13
                  remw         t3, a7, s8
                  srai         a1, a7, 6
                  sllw         a4, sp, t1
                  xori         s2, t2, 829
                  remu         a3, t0, gp
                  addi         s1, t2, -1244
                  divu         t2, s6, a3
                  divuw        t4, s8, s11
                  addw         s4, s6, s7
                  sltiu        ra, s7, -242
                  sltiu        s4, a3, -1637
                  mulhu        t6, a3, ra
                  xori         gp, t6, -1330
                  slliw        ra, s0, 17
                  sltiu        t0, a4, 1830
                  or           s9, s9, s1
                  mul          a1, s0, s6
                  rem          ra, s3, tp
                  srl          s6, gp, s7
                  add          a3, s8, a6
                  addiw        s9, a4, -423
                  xori         a5, t1, 1507
                  srl          t3, s7, t3
                  sraw         t1, s6, a3
                  sub          t6, s4, s9
                  mulhu        s10, s2, a7
                  lui          a1, 738590
                  xor          gp, ra, a6
                  div          t2, s3, tp
                  addi         s2, s3, -741
                  and          tp, s8, s11
                  srliw        a5, t4, 7
                  sra          a1, s2, a2
                  mul          s11, gp, a0
                  srli         t3, sp, 49
                  sll          s2, t4, zero
                  or           s4, a0, a7
                  and          a4, t3, sp
                  andi         a7, s0, -1449
                  srliw        s5, t1, 28
                  srl          sp, t1, zero
                  mul          t3, sp, sp
                  slti         s10, t5, 253
                  or           sp, a5, s6
                  andi         t4, zero, -1970
                  sltu         zero, a0, t3
                  slliw        s9, t1, 3
                  div          a2, ra, a6
                  addw         zero, t5, a3
                  xor          a3, zero, t6
                  auipc        a5, 122436
                  lui          t4, 263636
                  remu         s6, ra, t2
                  add          s7, sp, s4
                  sub          s10, a1, t6
                  andi         a0, t0, -1859
                  div          a3, t4, s7
                  ori          gp, ra, -515
                  addi         tp, t4, -1101
                  srai         s4, a6, 19
                  srliw        s1, ra, 18
                  ori          a7, s1, 334
                  mulh         s11, s8, a3
                  sra          s7, t3, t2
                  andi         s5, a6, 1042
                  remu         s11, a0, sp
                  addi         ra, a6, 1892
                  nop
                  srlw         s2, a2, s10
                  div          t3, sp, t5
                  srai         a1, t2, 36
                  xori         a5, s3, 1389
                  slt          a5, s6, a2
                  mulhsu       s1, s9, t4
                  slti         s6, t4, 433
                  slti         t3, t3, 611
                  divu         s9, a5, tp
                  slli         t1, zero, 6
                  mulw         a5, s2, t4
                  slti         tp, t6, 460
                  and          s1, a0, t2
                  mulh         gp, s10, s7
                  lui          s9, 284799
                  andi         s7, t6, -912
                  mulhsu       s9, a1, s1
                  srai         tp, a0, 54
                  rem          s10, s1, s10
                  xor          tp, gp, sp
                  slli         a7, s11, 41
                  div          s2, s0, a5
                  sltiu        a6, ra, 1996
                  sra          a0, t6, s1
                  remw         a0, ra, gp
                  and          t5, a3, s8
                  sllw         a2, a4, t1
                  divw         zero, s4, t3
                  andi         a4, t6, -422
                  xori         ra, s2, 2045
                  sll          s1, a0, s10
                  sllw         a3, s3, tp
                  addi         s7, t5, -1546
                  rem          gp, gp, a7
                  or           t0, s5, s1
                  srl          t1, s3, s8
                  mulw         a2, s10, a1
                  slli         a2, t1, 20
                  slliw        a0, a2, 23
                  div          a4, s8, t6
                  divu         a4, s2, sp
                  mulhsu       s1, t4, t1
                  rem          t0, a2, a3
                  subw         t1, s2, t0
                  slli         ra, tp, 17
                  sraiw        t2, a5, 14
                  sll          t2, a0, s6
                  sub          t3, s11, s3
                  remw         zero, ra, a7
                  srai         t0, t0, 51
                  slli         a6, t4, 58
                  slli         gp, t3, 38
                  mulhsu       t3, ra, t5
                  mulhsu       t0, s11, gp
                  addw         s9, a2, t0
                  sra          t5, s2, sp
                  divu         t1, s10, a7
                  and          t0, s2, s8
                  add          s2, zero, s1
                  remw         sp, t1, a2
                  xori         tp, ra, 82
                  sltu         s4, s11, a1
                  sltu         t3, a5, s5
                  nop
                  divu         s6, s7, s8
                  remu         a6, a2, s10
                  and          ra, t1, ra
                  mulh         gp, s10, a5
                  mul          a2, t1, a7
                  add          t0, a4, s3
                  sll          gp, a5, a1
                  nop
                  andi         sp, t6, -103
                  sraiw        s2, tp, 30
                  divuw        a6, a2, s6
                  subw         t6, s0, t5
                  subw         a1, a7, s2
                  subw         a5, t6, s11
                  rem          s10, zero, t4
                  addiw        s1, s4, 2041
                  addi         s7, t0, -1646
                  remw         t2, s5, s6
                  srl          s9, t2, a1
                  addw         t3, a0, gp
                  remu         a7, a6, gp
                  ori          ra, t2, -1284
                  divu         s11, a5, s10
                  srai         s9, ra, 5
                  remuw        a5, sp, t4
                  divuw        s4, sp, s8
                  rem          t5, sp, s1
                  sub          t1, s11, t3
                  srli         a2, s1, 35
                  sltu         s1, t1, s7
                  mulhu        s2, a2, a3
                  sllw         t5, a3, s10
                  sllw         zero, sp, a0
                  sll          a2, gp, t3
                  addw         t3, t1, a2
                  ori          a5, zero, -1023
                  or           s1, t5, s9
                  srli         ra, t2, 13
                  add          s10, t5, s8
                  auipc        zero, 592788
                  subw         s5, a7, t2
                  div          a6, t0, tp
                  sll          ra, a5, s0
                  slti         t5, a7, -1447
                  rem          s11, ra, a7
                  remu         s1, t1, t0
                  sllw         t1, a3, s2
                  slliw        s7, s8, 22
                  mul          tp, s7, s0
                  srliw        t6, s6, 21
                  sraiw        s10, s11, 27
                  srl          t0, s5, a7
                  srliw        s5, s4, 16
                  sltu         s5, a1, a4
                  sub          s10, t6, ra
                  ori          a4, s5, -1523
                  nop
                  div          ra, s4, s1
                  slt          a3, s6, s6
                  slli         s9, t2, 33
                  mulh         sp, zero, s10
                  mul          s9, s1, gp
                  subw         t3, a3, a3
                  sub          a5, s11, t4
                  divu         s6, t0, s10
                  divuw        s9, s6, sp
                  sltu         zero, a5, a0
                  ori          tp, s7, -128
                  divw         s1, s8, a3
                  and          t2, s4, s5
                  slti         gp, a7, 1668
                  xor          tp, s4, s0
                  slli         sp, a3, 60
                  sub          t1, tp, t6
                  mulhu        t2, s0, t2
                  sub          a4, t6, s3
                  auipc        a5, 274576
                  slti         t6, t0, -1123
                  nop
                  auipc        t5, 120032
                  ori          s6, a7, 1152
                  sltiu        t3, a3, -702
                  mulw         s2, t5, s8
                  ori          s11, a6, 109
                  sra          s10, s0, sp
                  xori         a2, s1, 1779
                  rem          s5, s10, t6
                  sraw         tp, gp, s9
                  auipc        a1, 417339
                  mul          a4, a0, a7
                  srlw         a3, t1, sp
                  srai         s9, a3, 21
                  div          tp, a6, a7
                  divw         t3, ra, tp
                  remuw        a7, s11, s7
                  srli         s2, tp, 48
                  div          gp, s3, a7
                  and          gp, t0, gp
                  sllw         s11, t4, ra
                  xori         s9, s8, 1579
                  sub          t6, zero, s4
                  srl          a3, s0, t2
                  slti         a6, s5, 1931
                  remu         a1, s4, a2
                  divuw        s2, t1, a6
                  sraiw        s4, s5, 30
                  sltu         a2, ra, s8
                  nop
                  remu         a5, s4, a2
                  xori         t3, s11, 383
                  sra          a0, a6, a7
                  auipc        t3, 732559
                  sllw         tp, t5, zero
                  add          t4, t3, s10
                  divuw        t2, a5, s0
                  lui          s4, 530900
                  mulhsu       s5, s2, s7
                  srlw         s6, a0, s2
                  remu         s5, s7, t4
                  sra          s7, a7, t6
                  sub          s2, t3, t3
                  or           s7, s1, a6
                  mulhu        s4, s8, a1
                  slliw        zero, t1, 4
                  sub          s7, t0, s6
                  ori          t2, t0, 1964
                  sltiu        ra, a2, -760
                  addiw        tp, a6, -396
                  sll          tp, a0, sp
                  rem          t3, s2, t4
                  slli         a5, s10, 26
                  addw         sp, s1, a4
                  slt          s5, tp, t0
                  srl          gp, s5, a4
                  addw         a1, t4, gp
                  sltu         s5, t0, t2
                  srl          zero, s2, t1
                  sltu         s11, s1, t5
                  srlw         a5, s5, a0
                  mulhu        s1, s9, s1
                  rem          gp, a5, t1
                  slli         a0, s7, 37
                  srl          t6, ra, s9
                  divuw        s4, t2, s7
                  sraiw        t1, t3, 1
                  xor          zero, s7, s7
                  divuw        s10, s9, s0
                  mulw         s5, gp, ra
                  add          s11, s10, tp
                  remw         gp, s1, s3
                  sraiw        a1, a5, 5
                  srl          t5, s6, s1
                  slli         s7, t2, 37
                  or           s5, t5, s11
                  add          s1, a2, t5
                  sra          a0, s11, a1
                  addw         t1, t4, sp
                  slt          t6, s6, a4
                  and          a7, s7, s11
                  mul          a5, s5, s5
                  sltiu        s5, s7, -760
                  lui          s9, 672267
                  or           t2, s1, s3
                  addi         s1, s6, -766
                  addi         s9, a6, -225
                  divw         ra, a6, a5
                  slli         tp, a3, 3
                  mul          s11, s8, s8
                  slliw        a4, t0, 12
                  lui          s4, 739385
                  addi         t5, s9, -1662
                  auipc        t0, 755378
                  sltu         a5, a5, s4
                  srlw         sp, a7, t5
                  or           s9, a3, t2
                  sraw         a4, s4, a0
                  sllw         t5, a1, s8
                  sltu         s11, s3, a4
                  or           t1, s11, s1
                  divu         a3, zero, t1
                  srli         a7, t2, 56
                  subw         s11, a2, s3
                  mul          s7, t5, a0
                  ori          t1, a4, 971
                  or           s9, t6, a0
                  sltu         a6, s3, a6
                  and          t2, s5, a6
                  sltiu        zero, t6, 879
                  slt          t3, s5, a0
                  xor          a2, a0, t1
                  divuw        a0, a6, s7
                  div          a3, a7, gp
                  subw         a6, a7, t6
                  and          ra, s10, tp
                  sub          a5, t6, s10
                  slti         s9, s0, -149
                  mulhu        a0, gp, sp
                  addiw        s6, t1, -1726
                  mulw         zero, sp, a4
                  srlw         t6, t5, s2
                  sltiu        s7, t6, -1893
                  sllw         gp, s6, a4
                  andi         a1, a2, -1509
                  divw         a0, s11, t5
                  auipc        s10, 988858
                  or           a2, s1, t6
                  remw         a2, gp, t1
                  div          s11, sp, s0
                  divu         a0, s2, ra
                  srlw         t5, s10, a0
                  mulw         a1, t0, ra
                  mulhu        sp, tp, s9
                  andi         s2, zero, -1027
                  mul          s11, s8, t1
                  mulhsu       s1, ra, a0
                  subw         t1, s0, s8
                  srai         a6, t1, 56
                  add          a6, gp, zero
                  addiw        sp, t5, -1529
                  subw         a2, ra, s9
                  sltiu        a0, gp, -981
                  srli         s5, a3, 32
                  srai         s7, s1, 6
                  andi         t4, s2, -1461
                  slt          a3, a2, a5
                  srliw        t6, t0, 3
                  slli         t6, s8, 3
                  mulhu        a1, s4, s0
                  divw         a2, s5, s5
                  addw         a3, a2, s11
                  remu         t2, s9, t5
                  divuw        a4, a6, a5
                  slt          ra, zero, sp
                  nop
                  andi         s11, s6, -290
                  mulhu        ra, s1, s0
                  mulhsu       s10, s3, t5
                  sraiw        t6, s11, 30
                  mul          t6, s5, a4
                  srliw        t4, a7, 1
                  auipc        a0, 484262
                  srlw         t0, t3, s8
                  srl          s1, t1, t1
                  rem          s10, s3, t6
                  sllw         a7, t2, tp
                  slti         gp, a0, -872
                  xori         s1, t0, -1949
                  nop
                  slt          s2, s2, a7
                  divw         s9, ra, a6
                  and          s9, s9, a0
                  and          s10, s11, s11
                  lui          s10, 570701
                  slti         t3, a0, -719
                  remw         s5, s6, s2
                  mulw         s6, a1, s2
                  slti         a1, a7, -1739
                  slli         t2, a7, 17
                  lui          s9, 822075
                  addiw        t6, s8, 569
                  slli         ra, gp, 44
                  lui          ra, 700399
                  sraw         a2, t6, t5
                  ori          t2, s1, -816
                  sll          s9, s1, s4
                  slli         ra, sp, 60
                  and          ra, ra, s3
                  slli         t5, t1, 25
                  srl          a1, tp, a5
                  srliw        zero, s7, 4
                  andi         s7, s0, 931
                  mulh         s6, a6, a7
                  rem          s9, a1, t4
                  mulw         a5, t5, gp
                  divw         s11, a0, s7
                  div          t2, a3, s11
                  xori         t3, s8, -1785
                  addw         s11, s2, ra
                  sll          a3, a1, tp
                  sll          s7, s7, a2
                  mulh         tp, t2, zero
                  sltu         s1, t4, ra
                  sltiu        s10, t0, -1313
                  or           a3, s10, ra
                  sra          t5, s11, t6
                  remw         t3, sp, s7
                  andi         s4, t0, 1957
                  mulhu        s6, s8, t4
                  xori         s10, a4, 1160
                  auipc        t4, 2971
                  remw         s5, sp, s3
                  sltu         a2, t3, a0
                  slli         gp, a1, 54
                  addi         a2, s2, -472
                  sllw         a0, s4, a5
                  andi         a0, s5, 1450
                  div          t5, a0, s11
                  andi         s7, tp, 1514
                  srai         a2, s2, 3
                  remu         ra, s8, sp
                  mul          t0, s9, s0
                  divuw        t2, s0, t2
                  add          a0, ra, s10
                  slt          sp, s0, s7
                  srliw        a6, gp, 21
                  srli         a2, t4, 8
                  add          s2, gp, tp
                  andi         t2, s7, -1838
                  sraiw        t0, sp, 13
                  subw         s1, a1, a6
                  sraw         t6, a3, a4
                  sra          s9, s4, s3
                  remu         ra, t4, s3
                  sraw         s11, a2, t6
                  slti         a3, s9, -338
                  add          gp, a4, a1
                  sllw         s2, t0, s8
                  srlw         a2, s11, t2
                  remu         a4, a3, sp
                  mulw         a4, sp, a0
                  divw         t0, a3, gp
                  slli         s9, s2, 3
                  divuw        s7, a7, a7
                  addi         t3, t4, 1907
                  sra          zero, a5, ra
                  srai         t6, a4, 7
                  sraw         s2, tp, a5
                  remw         t1, s10, t2
                  andi         t2, s6, -96
                  sll          a6, a4, t1
                  andi         zero, s1, -1969
                  divuw        a7, a6, s10
                  srlw         a0, s8, t3
                  sllw         s11, gp, t0
                  srl          s6, a7, t3
                  addw         t3, a6, t4
                  andi         t6, s9, 1195
                  srlw         a3, s4, s6
                  divu         s2, sp, a6
                  rem          t6, s0, tp
                  sraw         s9, zero, t2
                  sll          s6, s10, s0
                  div          t5, s7, s1
                  addiw        t4, s3, -215
                  and          t3, s9, s9
                  remuw        a0, t0, t3
                  add          s1, t0, ra
                  srliw        s2, t1, 9
                  slt          s6, s4, t1
                  nop
                  remuw        a6, a5, a7
                  nop
                  sub          a2, a1, s10
                  sra          s9, s7, s2
                  remw         a5, s4, t6
                  nop
                  sltiu        sp, gp, -1131
                  srli         t6, s0, 10
                  nop
                  sraw         s11, s5, s0
                  sltu         ra, a0, t0
                  divw         a6, s2, ra
                  srlw         s9, a5, a7
                  sltiu        a0, t0, -109
                  slli         a4, t0, 45
                  auipc        t4, 516951
                  srli         s11, s9, 7
                  lui          a5, 1038660
                  srliw        s2, a1, 30
                  slli         s9, a3, 62
                  addi         s1, s2, 1507
                  divu         sp, s3, s3
                  xor          t3, a5, t0
                  sra          t1, s3, s10
                  sraiw        t4, s3, 9
                  slli         gp, t4, 38
                  lui          a7, 401820
                  slliw        s10, s6, 16
                  sllw         s10, s4, a4
                  add          s4, a7, t6
                  sub          zero, sp, s11
                  addiw        tp, s6, 541
                  remw         s5, s4, t5
                  xor          a6, t2, s8
                  subw         t2, s1, tp
                  addiw        t2, a5, 1896
                  slliw        s10, t3, 28
                  mulw         s5, s1, a5
                  slliw        a4, a2, 8
                  srai         t0, s8, 43
                  and          a0, s2, s10
                  mulhsu       s6, s10, a7
                  sraw         ra, a1, a1
                  andi         t1, s4, 1293
                  xori         gp, a2, -904
                  lui          zero, 940505
                  subw         s2, ra, s9
                  slliw        sp, t1, 20
                  subw         s10, a4, a2
                  mulh         t6, a5, a7
                  divw         tp, s5, s10
                  srliw        s6, s0, 19
                  sltiu        gp, t2, -1530
                  sraiw        t1, t6, 17
                  sltu         s10, s7, zero
                  divuw        t6, a4, t0
                  slt          s9, t6, s10
                  srai         gp, a0, 40
                  sltiu        a4, t6, -1747
                  srli         s1, s3, 31
                  slli         sp, s4, 24
                  sll          s10, s9, a4
                  sltu         a0, tp, a5
                  divu         s10, t6, s4
                  ori          t1, t0, 114
                  lui          gp, 901662
                  mulh         a7, s0, t4
                  or           gp, t0, s9
                  divu         s6, sp, t2
                  slt          a2, s4, ra
                  mulw         s2, tp, a6
                  sraw         s11, a5, a6
                  srlw         a3, a5, s4
                  srai         zero, s3, 30
                  auipc        a1, 72426
                  mulw         s2, s5, a3
                  mul          s11, s2, s7
                  remuw        t5, s5, gp
                  srliw        s5, gp, 19
                  remuw        a0, t3, s6
                  divw         s7, sp, t0
                  rem          t5, s7, s6
                  mulhu        gp, ra, t2
                  remu         s7, a6, gp
                  divu         a2, s8, t4
                  remw         t3, s3, s3
                  xori         s9, t4, -783
                  mulw         s9, tp, s0
                  remuw        a3, s7, t6
                  ori          s4, s11, -1710
                  mulhu        a3, a3, tp
                  auipc        t1, 493497
                  addiw        s11, s8, -498
                  addiw        a6, t3, 1352
                  sll          t0, sp, t5
                  slli         sp, a7, 57
                  srai         a4, a3, 56
                  mulhsu       t0, s2, s7
                  and          s11, s10, a1
                  addw         a3, t1, s5
                  sllw         a6, s5, s0
                  sllw         tp, zero, s4
                  srliw        s2, s9, 29
                  srai         t6, t4, 23
                  sraiw        a0, zero, 20
                  remuw        t4, s1, t3
                  slliw        sp, s0, 6
                  mulh         s4, a6, a0
                  divw         s1, a7, a0
                  nop
                  mulhu        a5, t2, t0
                  ori          a7, t2, -174
                  subw         t1, s8, t6
                  addi         a3, a7, 117
                  slt          t4, zero, a3
                  srliw        s6, s8, 13
                  srlw         t1, s2, a3
                  subw         s10, t3, s1
                  mulhu        tp, t1, s1
                  sub          tp, s0, s3
                  mulh         gp, s9, s2
                  sllw         a3, s11, a0
                  andi         tp, tp, -1843
                  mulh         a3, s3, t1
                  subw         a3, a3, t1
                  xori         s11, s1, -1447
                  mul          sp, t6, a0
                  srl          s10, a3, a1
                  sra          s6, t4, s7
                  mulw         ra, t4, t0
                  mulhu        t0, s9, ra
                  div          s9, ra, s2
                  remu         t3, t3, a1
                  addw         zero, t3, t6
                  slti         s4, ra, -1530
                  srliw        t4, a5, 5
                  remuw        tp, s10, a3
                  slli         a3, t6, 27
                  srliw        a3, s2, 4
                  add          s2, s5, s10
                  add          s6, s6, a2
                  addiw        s11, s10, -1623
                  rem          t6, s1, ra
                  srli         t3, a6, 36
                  slli         t2, a3, 12
                  sltiu        t1, s3, -803
                  srli         a3, a3, 11
                  and          a1, s4, s5
                  sllw         a3, a5, s4
                  slti         s10, sp, -343
                  mul          s9, t6, s6
                  divu         a4, s2, s4
                  remu         s1, s9, a4
                  srai         s7, s4, 33
                  auipc        t0, 802926
                  mulhsu       gp, a7, s4
                  sra          gp, a3, a3
                  sltu         t2, t6, a6
                  mulhsu       a2, zero, a0
                  divu         tp, s2, s1
                  div          s1, tp, t4
                  auipc        a5, 769222
                  sub          s2, s3, s7
                  mulh         t1, s10, a1
                  slli         s1, gp, 55
                  rem          s1, tp, s6
                  sltu         sp, tp, sp
                  remu         a7, a7, t3
                  sltiu        s11, gp, 1113
                  divu         t0, s8, ra
                  srl          s5, a1, t3
                  or           s2, t0, tp
                  srli         s2, s2, 17
                  srlw         t4, s8, a4
                  slti         t5, a7, 292
                  ori          t5, t6, -491
                  and          s9, t6, s10
                  slt          t2, a4, s9
                  divw         a3, s0, a5
                  xori         t2, sp, -917
                  divu         t2, t5, s10
                  addi         s5, s10, -871
                  srli         s2, gp, 28
                  sltu         zero, t1, t0
                  divuw        s11, s3, sp
                  sll          t5, a4, tp
                  divu         a2, a0, t5
                  sltu         ra, sp, gp
                  sraiw        sp, s11, 9
                  sraiw        t3, t0, 28
                  srlw         a3, gp, a7
                  and          zero, a2, s2
                  sub          s6, ra, a4
                  mulw         t4, t1, tp
                  remw         s4, t4, s10
                  xori         s5, t6, -503
                  xor          a7, gp, a1
                  mulh         a3, t0, s6
                  divw         s1, s4, t5
                  mulw         t3, s0, a4
                  sub          s2, sp, gp
                  addiw        tp, gp, -44
                  slli         s9, t5, 44
                  slliw        a0, s5, 31
                  remu         gp, t3, s6
                  divw         t5, gp, zero
                  mulw         s7, s10, ra
                  auipc        a6, 646467
                  xori         s1, t6, -1322
                  sub          t4, s6, tp
                  mulhsu       a1, a3, a0
                  and          a7, gp, s7
                  addi         a1, s2, -1576
                  xori         a1, t4, -1139
                  or           gp, a4, a6
                  slt          s10, a1, gp
                  mulhsu       a2, t5, s6
                  slt          s6, t3, a4
                  remu         s10, t2, s10
                  slliw        gp, a7, 20
                  slti         s7, s2, -856
                  mulhsu       s6, s11, t3
                  sub          a3, a1, a2
                  div          ra, a4, zero
                  divw         a0, s0, a2
                  sltiu        a5, s9, 239
                  lui          s5, 282505
                  or           a0, a7, t1
                  mulhsu       s10, t5, s6
                  ori          a2, a1, 120
                  sraiw        s9, a1, 15
                  xor          ra, a4, zero
                  remw         s1, t0, s3
                  slti         a2, t1, -65
                  sub          t1, a3, t4
                  andi         t3, a1, 1870
                  nop
                  xori         zero, ra, 531
                  sub          a1, a1, a0
                  div          t0, gp, s10
                  remw         a3, s2, a7
                  mulw         s7, t1, a5
                  slliw        s7, a4, 13
                  auipc        t1, 341114
                  remuw        t0, s9, ra
                  subw         sp, t2, s9
                  divw         t2, a7, a6
                  sltiu        t0, s7, -52
                  srai         a2, t5, 54
                  lui          a5, 312396
                  andi         a0, t1, -642
                  mulw         s2, s11, s4
                  divuw        t6, t2, zero
                  sltu         s5, gp, t5
                  srliw        s10, a7, 0
                  mulhu        ra, t1, s1
                  sltiu        t0, s5, -77
                  srlw         zero, s5, t0
                  slli         sp, zero, 42
                  sra          t3, s1, t3
                  srliw        s2, a2, 10
                  remw         t3, s5, s11
                  srliw        t4, s4, 20
                  srlw         tp, a3, s7
                  addw         sp, t2, s10
                  mulhsu       s5, t6, a7
                  slli         zero, s0, 43
                  srl          s6, tp, a1
                  sub          tp, a5, s1
                  xori         t6, t2, 518
                  mulhu        a4, t0, t2
                  srlw         a6, s3, tp
                  add          a3, a7, tp
                  mulhu        a6, t2, a0
                  slliw        gp, ra, 29
                  sraiw        zero, s8, 7
                  remw         s6, gp, a6
                  mul          zero, sp, t3
                  srai         tp, s3, 27
                  addw         s6, sp, s5
                  addiw        a7, t3, -299
                  rem          a6, t5, s3
                  sltu         s2, s8, sp
                  mulw         a0, s6, a1
                  lui          s6, 959719
                  sraiw        a6, ra, 26
                  mulh         s11, t1, a2
                  ori          a6, t6, -758
                  remuw        a4, s3, t5
                  subw         s1, a7, s7
                  mulhsu       a4, s11, t3
                  slti         s7, s11, 479
                  lui          s11, 422459
                  ori          zero, t4, 5
                  sra          ra, s3, t4
                  sltiu        s4, t6, -407
                  remuw        s6, a5, zero
                  rem          a1, s7, s10
                  srai         ra, t3, 47
                  addiw        s7, s9, -869
                  or           zero, tp, a0
                  ori          a2, s5, 646
                  or           a6, a3, s10
                  srai         t6, s2, 20
                  addi         s9, a2, -1267
                  auipc        a3, 243093
                  xori         a0, gp, -39
                  addw         s7, zero, a7
                  auipc        s10, 361520
                  mulw         a2, a2, s7
                  srai         s7, t0, 47
                  mul          t4, zero, s1
                  slti         a0, t4, -841
                  sllw         a2, s8, a2
                  srliw        t6, t0, 8
                  and          a4, s7, s5
                  sraiw        zero, a2, 11
                  divw         a2, a2, t3
                  remuw        s11, s11, tp
                  srliw        sp, a2, 15
                  srai         t3, s7, 21
                  sraw         t4, ra, s9
                  srliw        s9, a5, 7
                  subw         s11, a2, a1
                  sll          s11, a6, a0
                  divuw        a1, s2, s11
                  addw         t4, a4, tp
                  mulh         sp, s7, a1
                  slti         t0, s6, -1921
                  addi         t0, s4, 1887
                  srl          a5, ra, s10
                  slt          a2, s1, s2
                  addw         a3, t0, t1
                  lui          a6, 359737
                  srl          zero, s10, s4
                  addi         s11, s9, 854
                  xor          t0, t0, a1
                  addw         t0, t2, tp
                  sraw         t6, a3, s2
                  sllw         t5, s9, s8
                  remw         s10, t3, t1
                  andi         a4, a0, -1262
                  mulw         s11, t0, t1
                  mul          t0, tp, a2
                  nop
                  divw         a1, sp, t2
                  xor          s1, sp, t1
                  ori          s10, a3, -1850
                  sraiw        a6, sp, 12
                  slli         s4, a4, 19
                  sltu         s10, s0, t5
                  sra          t6, a6, s2
                  andi         s10, ra, 1162
                  xor          s7, a1, s4
                  div          a1, t0, s10
                  slliw        sp, s1, 22
                  xor          t5, tp, a6
                  sraw         a6, s9, t0
                  andi         s2, t1, -1868
                  remu         t3, s8, a1
                  slli         t2, t5, 25
                  or           s11, a7, s9
                  slt          tp, t3, s2
                  addw         s10, s9, a4
                  auipc        a2, 709597
                  xori         t2, t5, 943
                  sraw         zero, a5, s5
                  sraw         t5, t2, zero
                  and          t6, a0, s0
                  or           sp, s4, s3
                  mulw         gp, tp, s8
                  and          s9, s10, s6
                  subw         a2, s7, s1
                  srlw         s4, s6, a2
                  ori          ra, a7, -555
                  mul          s1, a0, s8
                  srliw        s6, gp, 0
                  srli         a4, s1, 24
                  andi         a0, a0, -1405
                  sllw         t2, a7, t0
                  divuw        t4, s8, a4
                  lui          a2, 327443
                  srli         a5, gp, 1
                  sltu         s11, s2, s9
                  divw         s6, s1, s6
                  sra          t1, gp, a1
                  remw         s7, zero, a3
                  remw         a7, s1, t5
                  or           a3, a6, s10
                  nop
                  lui          a1, 44453
                  nop
                  andi         s9, ra, 723
                  srliw        gp, s3, 17
                  slt          a1, s1, s1
                  sub          a5, t1, sp
                  mulh         t1, a6, s7
                  srli         a4, a5, 28
                  sra          a3, a0, a1
                  ori          s9, s1, -1537
                  slliw        s10, t4, 28
                  srlw         t3, s2, s9
                  remuw        tp, t1, t2
                  sra          a6, a5, s10
                  mulw         a7, ra, t2
                  remuw        s9, t1, sp
                  or           a2, t2, gp
                  sub          a6, a0, t0
                  nop
                  divuw        a3, t0, s5
                  auipc        a1, 137566
                  divu         t2, a4, s6
                  add          t2, s8, a5
                  mulhsu       s1, a5, s7
                  slliw        t4, s1, 20
                  and          s1, s1, tp
                  ori          t2, tp, -1416
                  sll          s10, t3, a3
                  subw         s10, sp, a4
                  slti         s5, s8, -805
                  sub          a0, a7, s9
                  divu         a7, a3, ra
                  slliw        t6, s0, 24
                  lui          s1, 876617
                  mulh         a7, ra, a4
                  srl          s2, s8, a3
                  divuw        sp, ra, gp
                  andi         t0, zero, 588
                  nop
                  slt          zero, s9, s10
                  srli         t1, s2, 37
                  addw         a3, s5, sp
                  sll          s6, s7, a6
                  ori          s7, s5, 918
                  add          a4, s0, s3
                  lui          s1, 697814
                  srliw        a3, t2, 29
                  addw         a4, s7, sp
                  sra          t3, a4, a0
                  mulw         a1, t1, s7
                  divu         t5, a7, t6
                  remu         t0, a2, s0
                  andi         s7, t2, -1619
                  addiw        s2, t1, 1761
                  divw         s6, a7, s6
                  xor          gp, sp, s3
                  sllw         zero, t4, a4
                  addw         ra, s3, s4
                  nop
                  sll          t0, s11, ra
                  remuw        s6, s6, ra
                  rem          s7, a2, t0
                  mulw         t5, t6, t6
                  addiw        s2, tp, -615
                  divu         a7, s11, s8
                  sltiu        s10, s11, 994
                  slliw        a7, sp, 22
                  div          a2, sp, a5
                  srli         a7, ra, 42
                  remu         s9, a1, s5
                  slli         t1, s8, 16
                  divw         s5, t1, s5
                  slt          gp, a4, a7
                  divuw        t5, s6, s11
                  or           s7, a1, t5
                  sltiu        s5, s4, -1006
                  sra          a7, t5, ra
                  ori          s5, s2, 1320
                  mulhsu       gp, a2, t0
                  div          t1, s2, s4
                  slli         a7, t5, 29
                  divuw        a7, t3, t0
                  lui          s5, 309770
                  or           s6, sp, tp
                  sraw         a7, a1, tp
                  lui          a5, 491517
                  srlw         t3, a4, s7
                  xor          s9, s7, a7
                  subw         a2, s6, a3
                  sraw         zero, t0, s10
                  sraiw        t0, t5, 25
                  slli         a3, s5, 46
                  auipc        a2, 354967
                  auipc        t2, 151141
                  subw         sp, s1, t5
                  xori         t2, a4, -259
                  divuw        a6, s4, s4
                  addi         a4, s6, 648
                  mulhu        s10, t5, t3
                  srliw        a1, t2, 16
                  mul          s9, s5, s0
                  remw         s9, a5, zero
                  divu         a7, s0, t5
                  addi         s9, ra, -592
                  mulhu        t4, tp, s0
                  and          s1, s10, s2
                  mul          s4, s0, s6
                  mulh         s11, gp, s8
                  rem          a0, a6, t2
                  sraiw        tp, s10, 2
                  nop
                  slti         t5, s6, -397
                  sll          s7, s4, t3
                  mul          s5, zero, a5
                  divu         ra, s6, s0
                  div          a3, tp, tp
                  or           sp, t2, a6
                  sraw         s2, t2, s0
                  mulh         sp, s2, a4
                  srai         s2, t1, 21
                  slti         t1, t1, 542
                  slt          a6, a5, a5
                  subw         a4, s5, s2
                  srl          t3, a6, a2
                  sllw         s7, a3, t1
                  slti         a7, sp, -1938
                  srai         zero, s0, 63
                  slliw        a0, a0, 11
                  or           s5, s3, t0
                  subw         t5, a1, s4
                  sraw         t2, s8, a7
                  addiw        t4, s2, 896
                  div          t4, s1, t5
                  remw         t5, s6, tp
                  addiw        a5, a6, -946
                  mulh         a5, s6, zero
                  ori          t6, t1, -239
                  divw         zero, t3, s6
                  nop
                  div          t3, a5, sp
                  sltiu        s9, s0, -155
                  sltiu        t5, t3, 1283
                  slt          ra, s5, s6
                  mulhu        t2, s5, a5
                  sltiu        s5, s3, 400
                  srl          s7, s4, a0
                  mul          a3, s10, s3
                  add          a0, s4, s9
                  lui          tp, 794025
                  lui          t2, 787661
                  slli         t2, s8, 21
                  srlw         s5, s5, t0
                  mul          s2, ra, a7
                  srliw        a4, s6, 24
                  add          t1, ra, sp
                  srli         s11, zero, 24
                  sltu         t0, sp, s1
                  sraiw        a5, s4, 9
                  remuw        s4, s2, a1
                  slti         a7, a0, 1671
                  remw         a3, t1, s2
                  subw         tp, s2, t4
                  mulhsu       s6, a1, s5
                  subw         s7, t0, s7
                  addi         a6, a4, 1823
                  addiw        gp, a5, -1979
                  andi         zero, t3, -1734
                  divw         a2, a0, s7
                  remuw        a2, s10, a5
                  xori         tp, s10, -1877
                  srliw        t5, t0, 31
                  ori          gp, a3, -605
                  div          a7, s9, zero
                  remw         t6, tp, a3
                  srai         tp, a6, 1
                  nop
                  sub          s2, s4, s7
                  sra          s5, t1, s9
                  addi         ra, tp, -900
                  sraiw        tp, s10, 20
                  mulhsu       t6, s11, s10
                  mulhu        s6, a1, a0
                  sraiw        t0, s6, 6
                  addi         a2, s7, -444
                  divuw        t2, s6, s3
                  slt          gp, zero, a2
                  sltiu        a6, s5, 369
                  and          a2, s8, ra
                  slt          a6, a1, s9
                  slt          a4, s4, a6
                  andi         t2, tp, -1056
                  and          a2, a0, s3
                  remu         s10, s9, t3
                  sllw         a1, s5, s6
                  add          s9, sp, t3
                  andi         s9, s0, 1923
                  auipc        a7, 400630
                  mulhsu       ra, gp, s6
                  remu         a2, s1, s9
                  mulw         sp, t1, a0
                  remu         a0, a3, t5
                  srliw        a1, t1, 15
                  or           a5, ra, s6
                  add          s7, s1, s10
                  auipc        s5, 1038240
                  sltiu        a4, s2, -744
                  mulw         s11, a4, a7
                  rem          s5, t1, s7
                  sraw         s6, t1, s2
                  sraw         s5, a3, a2
                  and          t0, a7, gp
                  ori          t1, tp, -1863
                  subw         s6, s6, s6
                  rem          zero, a2, a1
                  remw         s1, t3, tp
                  mul          s4, a4, s9
                  div          a4, a2, a1
                  lui          tp, 721376
                  lui          t5, 451762
                  sllw         sp, a0, ra
                  sub          s5, t3, s7
                  slliw        a0, t3, 27
                  divw         a2, tp, t4
                  remu         a3, s0, gp
                  lui          t1, 894038
                  lui          a0, 144909
                  sub          sp, t2, a2
                  add          t6, s11, ra
                  sllw         s10, t4, s9
                  slliw        s4, t5, 8
                  sraiw        a6, t3, 31
                  add          t2, s2, s6
                  mulh         s9, s7, s0
                  auipc        s7, 305280
                  add          s1, a7, a5
                  remw         gp, s2, ra
                  srlw         t1, s6, s8
                  mulhsu       t3, s1, a1
                  div          s7, s3, a5
                  mulhu        s11, a2, sp
                  remu         tp, t5, t3
                  divw         t0, s9, t4
                  sltiu        s7, s3, -179
                  xori         tp, s3, 1316
                  or           t1, a6, s1
                  subw         a2, s3, t3
                  remuw        tp, s3, a1
                  ori          sp, a3, -1073
                  divw         s6, s5, s11
                  ori          ra, tp, 340
                  or           t2, s6, s4
                  slt          s10, s4, s2
                  sub          t6, t6, a6
                  remw         s1, gp, t4
                  sraiw        t3, tp, 3
                  srai         s7, a7, 59
                  rem          a2, a3, s5
                  mulhsu       a6, s9, a5
                  auipc        a1, 1046319
                  remw         a6, a4, s0
                  slliw        a2, gp, 1
                  divu         s7, s9, s5
                  sub          t2, a6, s1
                  slt          s6, s7, s6
                  slti         t6, s0, 1222
                  rem          t6, a2, sp
                  srliw        s7, t2, 7
                  divw         a0, s11, s1
                  srl          t2, a7, s4
                  sltiu        t1, s8, -1983
                  divw         a5, t3, s7
                  mulh         s10, t5, s7
                  sub          tp, a6, a1
                  div          t3, gp, t0
                  remu         a5, t6, gp
                  addw         s2, sp, t1
                  xor          s10, sp, s11
                  xor          s10, s2, t3
                  slti         s9, a1, 1517
                  sltiu        t4, s10, -868
                  sra          s9, s6, gp
                  srli         a5, s3, 14
                  or           ra, a3, tp
                  mulhsu       a3, a0, t4
                  xor          a7, s6, sp
                  div          s7, s1, s2
                  remw         s6, s10, a7
                  srliw        t4, a2, 5
                  auipc        t3, 459454
                  mulhsu       t1, s3, t1
                  srai         a0, s0, 62
                  srl          s4, t2, a7
                  mulw         s2, t2, t4
                  slti         s5, zero, 498
                  lui          s9, 375130
                  subw         t2, s7, s7
                  sraw         a3, t5, a3
                  srai         s6, s2, 14
                  remw         tp, a1, tp
                  remu         t1, s1, t1
                  div          t6, s8, a0
                  slliw        s5, s3, 25
                  xor          s7, a5, s8
                  lui          tp, 952574
                  and          tp, s3, t5
                  divw         a1, ra, a5
                  sll          a1, a1, s10
                  srliw        t1, gp, 9
                  sll          zero, a7, a3
                  sllw         s1, s10, sp
                  divu         a0, t5, a5
                  mulhsu       a0, t2, s4
                  andi         s10, s4, 408
                  sraw         gp, gp, ra
                  srlw         t3, sp, s4
                  div          s10, s3, s2
                  remw         a1, s7, a2
                  addiw        t2, s4, 151
                  sraiw        sp, s10, 31
                  sub          tp, ra, t2
                  div          t2, tp, s6
                  nop
                  ori          s9, s6, 300
                  andi         s2, t6, 1175
                  mul          gp, s10, a3
                  srliw        a7, s6, 6
                  divw         s9, a5, s7
                  srliw        s7, t1, 9
                  lui          zero, 463606
                  addw         t3, zero, gp
                  and          s9, t1, a6
                  sraw         a4, a7, a0
                  sltu         s9, s0, s3
                  xor          a3, a0, a5
                  srli         s5, a4, 29
                  divw         t1, ra, s7
                  mulh         zero, t0, s0
                  and          s1, a0, a2
                  srli         a5, ra, 26
                  mulh         t2, s0, sp
                  sub          s4, tp, a0
                  remuw        a1, s2, gp
                  sraiw        s10, t5, 20
                  sra          s11, a3, t2
                  sra          a3, s3, a6
                  remu         t0, zero, t0
                  divw         a1, s0, s4
                  addi         a2, a0, 1937
                  mulhu        s1, tp, t1
                  nop
                  andi         a3, s2, -1591
                  xor          gp, t4, a4
                  auipc        s6, 540362
                  remu         a7, a3, t6
                  sltu         s6, ra, t5
                  sltu         s1, s6, t2
                  ori          s11, t5, 796
                  remuw        t0, s3, s9
                  mulhu        a7, a4, a6
                  andi         a0, t1, -795
                  mulh         s10, s9, s10
                  sub          t1, ra, s2
                  remw         t3, t0, t4
                  andi         a0, a6, -886
                  or           s7, t4, t0
                  slt          a5, a5, s1
                  sltu         gp, s6, s5
                  divuw        s5, t1, s4
                  nop
                  mulw         t1, s11, a2
                  sllw         t3, ra, zero
                  sltiu        a0, gp, 1690
                  xor          t4, a6, gp
                  addiw        ra, sp, -1929
                  srai         gp, t3, 38
                  sltiu        s4, a1, -780
                  srli         a3, tp, 35
                  and          a1, s8, a1
                  mulhsu       s7, sp, t0
                  divu         zero, a4, t1
                  xor          s9, a5, t3
                  divw         t6, zero, gp
                  divuw        a7, a6, s5
                  sub          s6, a0, s2
                  and          t2, sp, s10
                  divuw        a2, a3, t2
                  sraw         a6, a6, t2
                  mulw         s4, s6, t3
                  addi         s4, s4, -69
                  mulh         a2, ra, a7
                  remu         a2, s5, s10
                  rem          t5, t0, t4
                  ori          s9, zero, 1221
                  mulhu        s4, t5, t6
                  mulhu        a0, a1, a6
                  and          s1, s3, s4
                  sub          a5, ra, tp
                  add          s11, a5, t3
                  divu         a7, t3, s9
                  lui          s6, 161834
                  auipc        t1, 38223
                  lui          s6, 754083
                  divuw        a1, a2, t0
                  slti         a7, s1, 837
                  sltu         a6, s6, a5
                  lui          t1, 84710
                  addw         t6, a4, s8
                  srli         a3, zero, 18
                  sra          ra, t3, a7
                  xor          a2, s8, ra
                  and          a4, s1, t0
                  sraiw        s7, a0, 31
                  sra          zero, s6, s10
                  divw         t6, tp, a1
                  addw         s5, a1, a7
                  mulhu        t2, s9, t3
                  divw         tp, a2, s2
                  remu         s6, s0, s6
                  div          sp, s0, s1
                  remw         a3, ra, a4
                  and          s1, a5, s11
                  slti         a0, a0, 1946
                  slt          a6, s2, s7
                  auipc        a5, 709983
                  srli         s9, s8, 26
                  mul          s11, a0, s0
                  mulw         zero, t6, a5
                  mulhsu       s10, a6, sp
                  mulw         a3, s2, t5
                  sltu         t6, s5, a4
                  mulhu        t6, s2, a2
                  sra          a2, t6, t3
                  xori         s5, s2, 1086
                  subw         s6, s5, s3
                  rem          s7, t1, zero
                  divu         gp, s2, a3
                  divuw        a1, sp, s9
                  and          a0, tp, s10
                  addi         zero, t6, 1407
                  addiw        t1, t2, 2047
                  divuw        t6, gp, ra
                  sltu         sp, sp, t0
                  ori          a7, gp, 315
                  subw         zero, a5, t6
                  remu         s2, s3, s5
                  mulw         s1, gp, s6
                  srl          a5, s4, s3
                  addi         zero, t0, 400
                  slti         t3, t1, 665
                  divw         s7, s8, a7
                  andi         s5, s1, -1736
                  sll          t5, zero, a4
                  ori          zero, s11, 1708
                  srliw        t4, a5, 8
                  lui          s2, 138327
                  srlw         a7, t1, a7
                  mul          s7, t2, s7
                  lui          t6, 482280
                  slli         t0, t5, 51
                  sltu         s1, t2, s2
                  mulh         a7, t4, s4
                  andi         a7, ra, 1968
                  divuw        a7, a6, a7
                  nop
                  divw         s11, ra, a7
                  sraiw        a1, t3, 31
                  mulhu        s5, a1, sp
                  slti         s1, gp, -1014
                  srai         s2, t0, 22
                  divuw        a1, s11, a2
                  mulhsu       t2, a4, t2
                  mulhsu       ra, t0, a7
                  mulhsu       t2, t0, a6
                  divu         s11, s5, a2
                  subw         a4, a1, t5
                  sra          a0, t4, t2
                  add          a5, s7, a2
                  ori          s7, s5, 1082
                  ori          s7, s10, 269
                  subw         t2, s1, s0
                  addi         s5, zero, 915
                  auipc        a1, 168109
                  mulw         a6, a7, a1
                  divuw        sp, s5, s1
                  remw         a1, a7, t4
                  xori         t3, a2, -85
                  remu         s4, sp, s2
                  remw         s6, s0, t3
                  xor          t1, t3, s3
                  slli         s1, t1, 38
                  mulh         sp, s0, a7
                  lui          ra, 184841
                  remuw        s10, a7, tp
                  slt          tp, s6, zero
                  subw         s2, s9, a4
                  sll          a7, a5, a6
                  divw         sp, s1, s11
                  srli         a7, a3, 5
                  srl          a3, tp, a4
                  srai         sp, s1, 45
                  subw         tp, sp, t5
                  sra          sp, s4, t4
                  sraiw        t3, s10, 5
                  sltiu        s11, a4, -1457
                  slt          a2, s8, s1
                  mulw         ra, s7, t6
                  sra          t1, t2, s6
                  divuw        a0, a7, t0
                  sub          gp, zero, a2
                  remu         s6, t5, ra
                  or           t3, a6, s0
                  lui          a5, 868337
                  div          gp, s7, t1
                  mulh         a1, s7, s11
                  mul          s4, s3, s7
                  sll          s5, a6, t1
                  divu         t1, s10, s4
                  and          t6, ra, a3
                  mulhu        zero, s9, s10
                  srl          tp, s9, tp
                  ori          s7, a5, 50
                  addi         a4, a0, 402
                  sub          t1, zero, t3
                  divuw        s1, t3, gp
                  srli         a2, a4, 15
                  mulh         s9, s2, t1
                  mulw         t4, a7, s5
                  remuw        a7, s7, s8
                  xori         s5, t6, -1915
                  slli         a0, sp, 32
                  mul          sp, s1, tp
                  slti         t5, s4, 14
                  remuw        t4, t0, t2
                  divu         a6, zero, s10
                  srl          t3, s3, s2
                  slt          a7, t6, s8
                  srlw         t0, gp, s10
                  srli         gp, s1, 33
                  slli         a3, s8, 63
                  srli         s11, s11, 43
                  mulhu        a2, gp, a4
                  lui          t4, 717481
                  sraw         t0, a3, s4
                  srai         s4, sp, 41
                  sraw         t3, t0, s10
                  sllw         tp, a2, t5
                  srl          zero, s2, s1
                  sll          s11, s8, s1
                  addiw        ra, gp, 1093
                  sllw         t2, s0, a7
                  slli         t1, s10, 21
                  sraiw        s4, s7, 30
                  nop
                  xori         a0, s8, -917
                  sltu         s5, ra, s6
                  ori          s1, t3, 670
                  slt          zero, t1, t4
                  mulh         s6, a7, ra
                  and          a4, s10, s8
                  remu         ra, s9, s11
                  slliw        ra, s9, 18
                  slliw        a1, s10, 16
                  remu         a4, s3, s1
                  nop
                  slliw        gp, sp, 1
                  rem          gp, a7, t6
                  srlw         s7, a5, t5
                  divu         a4, t2, a5
                  sltiu        t5, s3, 697
                  div          t1, s5, s6
                  sraiw        a5, ra, 11
                  mulh         gp, zero, t5
                  mul          a5, s8, a3
                  addi         gp, s4, 1325
                  sltu         t4, sp, t4
                  slt          a6, ra, a5
                  nop
                  srli         s9, a7, 52
                  addiw        s9, s2, 1201
                  sraiw        s10, s8, 0
                  sltiu        t0, t0, -43
                  slt          s9, s3, zero
                  addiw        ra, s3, -50
                  xori         t3, tp, 1699
                  sub          t0, s8, tp
                  divuw        s4, t1, sp
                  sllw         a3, a6, s4
                  xor          zero, a1, t1
                  xor          a4, s10, a2
                  srl          a7, gp, tp
                  sub          a5, s4, s5
                  divw         tp, gp, s9
                  slti         s11, a5, 215
                  xori         s9, s0, 984
                  srli         s5, s2, 34
                  srlw         t6, a6, t6
                  xori         gp, ra, -1421
                  mulh         sp, a6, a7
                  sra          s7, t5, s4
                  xor          s11, a5, s5
                  add          a0, tp, s0
                  divu         s6, t2, a4
                  sllw         sp, s0, tp
                  mulhsu       s11, s11, s0
                  remw         tp, a1, tp
                  slliw        a7, a6, 29
                  sltu         zero, a2, a4
                  divu         s5, a7, s4
                  slt          t6, a6, gp
                  mulw         a5, t3, t6
                  div          s7, s3, s8
                  slti         s7, ra, 1633
                  auipc        t5, 887905
                  sltiu        s1, s5, 1452
                  divuw        t3, s7, s2
                  xor          s1, ra, a0
                  slli         gp, a6, 43
                  sll          a0, s9, a0
                  addiw        s9, t1, 625
                  addi         s9, s11, -157
                  slti         s11, t0, -1909
                  remuw        a1, s8, t6
                  addw         tp, s3, a4
                  mulhsu       s5, a1, a7
                  nop
                  divu         a6, s1, s2
                  mul          s6, s11, s9
                  srliw        t1, s9, 16
                  remu         s1, s2, t4
                  slli         a7, a1, 34
                  xori         a0, t3, -1903
                  sllw         t0, s5, t3
                  auipc        ra, 76537
                  auipc        sp, 640467
                  sub          t5, tp, s9
                  sra          s4, s5, s11
                  remw         zero, a2, s11
                  lui          tp, 807658
                  srlw         t5, t0, ra
                  slt          t1, sp, gp
                  slli         t1, a4, 29
                  sltu         sp, a2, a3
                  sll          s7, s9, t2
                  remuw        a0, t4, t3
                  srlw         s11, sp, sp
                  mulh         t6, a2, t5
                  sraw         s11, s8, t5
                  divw         t0, a7, s1
                  lui          a4, 824843
                  sltiu        zero, a4, -514
                  and          a3, t1, a5
                  sllw         s5, s2, s2
                  lui          s10, 354703
                  mulhsu       s9, s2, t5
                  addiw        s11, a3, 89
                  nop
                  sltiu        a7, a4, 1184
                  add          a0, t1, t3
                  remw         s11, a4, a3
                  xor          t2, s9, a4
                  sltiu        t3, sp, 167
                  divw         a0, s7, s3
                  addiw        s7, a1, 1919
                  srliw        t3, s9, 3
                  add          zero, s9, t1
                  sltiu        t6, zero, 1824
                  addiw        t6, t6, -893
                  ori          gp, zero, 431
                  addiw        sp, zero, 1007
                  sraw         s6, a7, t5
                  remuw        ra, s5, a4
                  srl          a2, t6, a5
                  xori         t5, s11, 1631
                  mulhu        s11, s2, s7
                  slliw        t6, s5, 13
                  xor          zero, s11, t5
                  divu         s1, s5, a1
                  add          a2, s2, s7
                  mulw         zero, t2, a1
                  nop
                  addiw        a6, t5, 807
                  slli         a0, s1, 52
                  and          sp, tp, t1
                  and          a4, s6, s2
                  xor          tp, a4, ra
                  subw         s9, t2, s9
                  sltiu        s9, s5, -910
                  add          a5, t6, a0
                  sll          t3, zero, a7
                  mul          a2, t2, t6
                  and          s2, s9, t2
                  ori          t3, a5, -110
                  rem          s10, a2, a5
                  srliw        a2, s2, 0
                  slti         s9, t6, -1319
                  sub          s1, a2, t5
                  rem          t5, gp, s4
                  sraw         t1, t6, a4
                  slti         sp, s10, 1796
                  nop
                  or           s6, t2, s6
                  remuw        t6, s1, s11
                  sllw         a2, t1, a1
                  mulhu        s11, s6, t6
                  remu         s1, t0, t4
                  addw         s9, t2, s1
                  addiw        a2, a1, 1432
                  remw         ra, a4, s9
                  add          zero, t3, s7
                  srl          s7, s1, t1
                  sra          s6, s3, sp
                  addw         s9, a3, sp
                  mulhsu       s11, s4, ra
                  addw         t6, s10, t6
                  rem          s9, sp, s9
                  srliw        a2, t0, 23
                  mulhsu       gp, s10, s8
                  sltiu        a3, a3, -1897
                  srl          a1, s4, t6
                  slt          gp, ra, t4
                  mulhsu       zero, a3, s9
                  lui          s5, 752372
                  mulhsu       gp, s9, s1
                  div          t3, t4, a5
                  divu         a7, s5, a6
                  srl          t6, a5, s9
                  xor          t3, s8, s8
                  addiw        ra, ra, -330
                  divw         a2, a3, a6
                  sltiu        gp, a2, -1106
                  divu         a2, s3, t3
                  slliw        s5, s7, 29
                  sraiw        s10, a7, 22
                  sraiw        a6, s1, 2
                  subw         t6, a4, ra
                  sub          s9, a6, s11
                  ori          s7, s8, 116
                  divuw        a7, s0, a5
                  slli         s10, s5, 4
                  add          s1, sp, t3
                  sraiw        a5, s8, 19
                  divuw        s2, t6, s8
                  ori          a6, t5, 1404
                  auipc        sp, 216181
                  lui          t3, 565295
                  mulh         s6, s9, a3
                  div          s11, tp, s9
                  auipc        s7, 474004
                  xori         t2, s7, -707
                  mul          t5, t5, t0
                  xor          s10, a6, t0
                  divu         s2, a0, a1
                  subw         zero, s11, sp
                  addw         zero, s2, zero
                  slt          a2, zero, a2
                  nop
                  auipc        s10, 26574
                  nop
                  mulhu        zero, s3, s5
                  sllw         s2, s2, zero
                  and          zero, t3, s8
                  mul          t5, tp, t5
                  subw         a2, s0, sp
                  subw         a2, ra, s3
                  mulhu        s4, s2, a5
                  mulhu        s7, a5, s5
                  sllw         t2, s7, s5
                  mulw         t5, s11, s9
                  slli         a6, s6, 53
                  mul          t2, s0, t2
                  div          a3, a4, t0
                  sltu         zero, a7, s5
                  sltiu        s7, a5, -653
                  divu         s10, t3, a1
                  sll          a1, ra, tp
                  slli         a1, zero, 60
                  remu         s1, t5, s10
                  sllw         t2, s9, t0
                  sll          t4, s7, t1
                  and          s6, a0, s11
                  addi         gp, a4, -2015
                  remw         ra, a4, s10
                  ori          a0, s0, -1502
                  srai         t3, t3, 34
                  or           sp, a6, s11
                  slti         s6, gp, -370
                  srlw         gp, s4, t3
                  addw         s6, s0, s6
                  remw         zero, zero, a0
                  remu         a7, gp, t5
                  srlw         a3, s7, t4
                  sll          sp, a1, s9
                  auipc        t3, 911424
                  sltiu        t1, s2, 1480
                  divu         a2, s8, a6
                  add          t4, gp, tp
                  mulhu        a5, t5, s3
                  auipc        zero, 972179
                  mul          a7, a4, s8
                  subw         a7, ra, a4
                  andi         t2, s5, 489
                  rem          s6, t6, s11
                  and          sp, a4, a2
                  mulw         a6, t1, s11
                  andi         a7, tp, 1668
                  ori          s10, a0, 1333
                  and          a1, s11, s8
                  xor          a3, s1, t6
                  auipc        a4, 1044880
                  sltu         t0, s6, ra
                  addi         s1, a0, 191
                  srai         s2, s5, 4
                  mulhu        s9, s3, a3
                  sllw         s7, s10, t2
                  remu         t2, s9, gp
                  sra          a4, s5, s6
                  remuw        s6, s0, ra
                  sllw         a7, gp, s10
                  addi         s4, t5, -1426
                  andi         t6, s5, -290
                  andi         tp, a6, -1893
                  xori         a4, gp, 1875
                  srai         t4, a2, 36
                  remw         a2, t6, t6
                  add          gp, a4, sp
                  remu         t1, t5, s11
                  remu         s11, s0, a4
                  mulh         a1, a0, s6
                  addiw        t6, s0, 1772
                  mul          s11, s7, a7
                  sraw         s11, a3, zero
                  sll          a7, zero, s7
                  slli         a1, a6, 59
                  and          a4, ra, a7
                  sra          s4, s9, a4
                  slliw        t3, t1, 24
                  mulhsu       s7, s0, tp
                  srai         a1, sp, 42
                  divuw        t6, s3, a2
                  srai         s10, ra, 14
                  srai         s10, tp, 59
                  mul          s6, t1, s8
                  srl          a0, t3, s1
                  lui          a4, 446203
                  divu         s10, s4, a1
                  mulw         s11, s0, s6
                  xori         t1, s4, -1154
                  sra          a6, a4, a2
                  auipc        t2, 929641
                  add          zero, s7, s5
                  remu         t6, t3, gp
                  ori          s11, s7, -1207
                  sraw         zero, t0, tp
                  mulw         zero, zero, a7
                  addi         zero, t5, 1423
                  rem          t6, s9, s1
                  sraiw        a4, a4, 21
                  slliw        t3, t6, 3
                  lui          t6, 700029
                  sltu         t5, s7, a0
                  divuw        t1, tp, s0
                  remw         t5, s11, a4
                  rem          zero, t1, s3
                  mulh         t6, t4, s11
                  mulh         t6, s1, a6
                  divu         ra, s4, s6
                  sub          s5, t6, s4
                  divu         s7, a6, s6
                  xori         gp, t2, -490
                  mulhsu       s7, a7, s1
                  sraw         tp, zero, a3
                  sltu         sp, sp, a4
                  srli         tp, sp, 63
                  slli         ra, ra, 13
                  or           s4, tp, a2
                  div          a5, t2, t0
                  div          s5, t3, t3
                  mul          tp, s8, s8
                  sltu         s5, t0, a5
                  slt          a4, s2, a6
                  or           s5, a2, s9
                  lui          a5, 232836
                  mulhu        a3, s11, a6
                  subw         t4, a1, a1
                  or           t4, t3, a2
                  srlw         t0, s2, s5
                  slt          a0, t6, ra
                  mul          t6, t0, s7
                  mulw         a2, a5, a3
                  auipc        s6, 531856
                  ori          tp, zero, 400
                  nop
                  divu         a1, t4, a0
                  sltiu        tp, s2, -175
                  srliw        ra, s5, 27
                  mul          s2, s6, t0
                  srai         s9, s0, 55
                  xor          s2, t1, s5
                  slli         s4, s3, 12
                  divu         zero, sp, gp
                  srl          s9, a7, a0
                  addiw        a7, a2, 1244
                  srl          s5, s4, sp
                  sllw         s7, s9, gp
                  srli         t0, s4, 9
                  srli         s1, gp, 19
                  slt          t3, t0, s0
                  srli         s6, a0, 20
                  mulh         a0, sp, t6
                  add          zero, a6, s8
                  xori         a2, sp, 289
                  sub          a2, t3, tp
                  remw         s5, t6, a1
                  sub          s4, t0, a4
                  xor          sp, gp, tp
                  remuw        a3, a5, s11
                  slti         t3, zero, -804
                  mul          a3, a0, t2
                  addi         tp, a2, -1348
                  srliw        gp, t6, 25
                  slti         a7, s1, -1607
                  mulhsu       gp, t1, s5
                  srai         a2, t1, 41
                  mulhsu       a7, gp, a6
                  divu         s6, a4, a7
                  srliw        t3, s7, 26
                  or           a3, a3, zero
                  lui          t6, 831997
                  slt          t3, s7, a7
                  rem          s1, t6, t5
                  remuw        sp, a3, t3
                  xor          s2, t5, t3
                  sll          zero, a2, zero
                  sll          s5, a6, a0
                  srli         t1, s3, 3
                  mulhu        s2, s7, tp
                  div          sp, s2, t5
                  mulw         t5, t1, tp
                  sub          s6, tp, t6
                  divw         a2, a0, a3
                  sra          t1, s10, a0
                  srai         t1, s3, 16
                  remuw        s1, s2, tp
                  divuw        s11, s3, ra
                  sll          a1, t3, t3
                  srliw        a7, t6, 4
                  remw         sp, s4, zero
                  rem          t1, t3, a5
                  slt          a1, tp, s7
                  nop
                  lui          t0, 399648
                  or           a2, t1, s3
                  slliw        s5, s6, 29
                  or           a4, s9, t1
                  divuw        t2, t2, t6
                  nop
                  remw         t4, tp, s3
                  auipc        s9, 577155
                  mulhu        a4, a3, ra
                  slti         s2, sp, 1026
                  add          t0, s5, a6
                  divuw        tp, s8, t2
                  lui          s2, 490585
                  srliw        t3, a6, 21
                  xori         t2, s4, -808
                  add          t4, s10, a6
                  mulh         a5, a2, s10
                  divuw        a3, a5, s5
                  mulhu        sp, s10, tp
                  remu         t5, t2, zero
                  xor          a6, t6, t0
                  div          gp, zero, zero
                  srlw         t1, s6, s5
                  addi         sp, a5, -908
                  lui          tp, 814633
                  xori         gp, t2, -1619
                  mulw         t4, s9, s7
                  remu         gp, a3, s4
                  slliw        s5, s2, 1
                  srliw        s9, a4, 16
                  sltu         s5, a0, t4
                  sltu         ra, a6, a1
                  sraiw        t1, sp, 9
                  subw         s7, s8, a3
                  xor          t0, s10, a2
                  rem          s4, s9, s11
                  slt          s11, a6, a1
                  andi         a3, a7, 1741
                  subw         t3, s2, t6
                  sub          a6, a0, s4
                  xori         t5, ra, -892
                  sltiu        a1, ra, 812
                  mulhu        s11, a1, t0
                  nop
                  and          t2, s0, s6
                  srli         zero, ra, 44
                  rem          a4, a1, a0
                  xor          t2, s8, a2
                  slliw        s2, t5, 18
                  andi         tp, zero, -1211
                  remu         s7, t3, t6
                  divuw        a6, s5, s11
                  xor          gp, t2, a4
                  sraw         s4, s4, t2
                  addi         t0, a1, -441
                  sltiu        t1, a6, 535
                  sll          zero, ra, t6
                  mulhsu       s7, s2, a6
                  andi         a5, s8, 623
                  ori          s11, a7, -1429
                  ori          t3, a4, -1856
                  add          a0, a2, gp
                  auipc        sp, 971682
                  mulw         zero, a4, a7
                  xor          s7, a0, t0
                  srlw         sp, a0, t3
                  srlw         tp, s8, s6
                  addi         a7, t3, 708
                  srai         a6, t6, 11
                  or           a1, gp, a2
                  rem          a2, zero, t5
                  mulh         zero, zero, ra
                  divu         tp, a2, t5
                  mulw         a6, tp, a1
                  ori          s6, s3, -1491
                  mul          sp, s1, t0
                  xor          s7, a7, s6
                  and          s5, s11, ra
                  sraiw        a0, s0, 21
                  div          s7, t1, s0
                  mulhu        s6, s1, t5
                  sllw         a7, t4, s1
                  srli         s4, t4, 14
                  lui          ra, 228964
                  mulw         t4, s4, a5
                  slti         t2, a7, 1607
                  ori          gp, a4, -1402
                  addiw        a1, tp, 2014
                  rem          s11, a0, tp
                  srai         a3, s3, 50
                  mulhsu       s1, a5, s1
                  auipc        s10, 468830
                  addi         s4, tp, -846
                  subw         s2, s5, s7
                  mulw         a4, t6, a6
                  srl          a6, s6, s7
                  divw         s6, a7, s8
                  or           t3, s0, s9
                  srl          tp, s8, s3
                  xor          a0, s9, a4
                  xori         a2, s2, -1924
                  slt          s1, ra, a1
                  divw         a3, a0, tp
                  divw         t0, s11, s6
                  mulhsu       t4, sp, t2
                  xor          s7, s4, s10
                  andi         s10, a0, 492
                  remu         s9, s5, s5
                  subw         s10, s1, t5
                  sllw         a4, s3, s11
                  subw         s10, s9, s3
                  addiw        t5, s9, -173
                  srlw         s2, tp, a5
                  sraw         t3, ra, t0
                  addw         ra, t6, s3
                  addw         a6, a2, a5
                  srli         s4, ra, 26
                  slti         s10, gp, -1013
                  sltiu        tp, t0, -552
                  rem          sp, s1, s5
                  srlw         t3, t4, t3
                  divu         a7, s8, a2
                  add          a2, s0, s7
                  and          s5, s4, s7
                  remw         tp, t2, a6
                  srli         a0, ra, 7
                  slti         zero, s11, -306
                  sltu         s9, s5, a4
                  lui          zero, 229731
                  mul          s9, a5, s11
                  andi         s7, s2, 435
                  div          sp, t1, s10
                  addiw        s2, t0, 1444
                  srai         a6, s11, 6
                  mul          t1, a3, gp
                  sll          s9, t2, s4
                  addi         s11, s7, -862
                  srlw         a7, a7, gp
                  srliw        t2, tp, 9
                  sll          s6, t5, sp
                  mul          s9, a1, t5
                  auipc        s1, 978245
                  subw         zero, a0, s11
                  mulhu        s1, ra, a2
                  remuw        t5, t5, s9
                  div          a0, s2, s11
                  sra          zero, zero, a6
                  sra          a6, s5, s4
                  xor          s2, s9, t2
                  slliw        t3, a1, 11
                  andi         s4, t0, -1028
                  nop
                  remu         s9, s5, a4
                  divuw        sp, s2, s11
                  mul          t0, a1, a3
                  divuw        a7, s11, s5
                  sltu         s6, t5, a7
                  remuw        a3, tp, tp
                  remw         t6, a0, a6
                  sraw         s7, a3, s10
                  srl          a7, a0, a1
                  ori          sp, s1, -1282
                  mulhu        tp, s9, s7
                  divu         s1, s7, t4
                  sra          s7, t1, t4
                  mulhsu       a7, a1, t5
                  srlw         gp, s8, s10
                  slli         t6, s7, 48
                  xor          sp, s7, tp
                  srl          t2, zero, s3
                  rem          a3, s4, s0
                  sub          s7, t5, a4
                  xor          s10, s4, s5
                  nop
                  slli         t6, a3, 15
                  add          a5, s7, s1
                  remw         t1, s10, t0
                  subw         a4, tp, ra
                  lui          t3, 514259
                  sraw         s7, a5, t5
                  mulhsu       a0, t4, t1
                  and          a3, s3, a1
                  mulhsu       s6, t5, ra
                  srlw         tp, a5, s2
                  srli         sp, zero, 4
                  addiw        a0, a6, -1171
                  remuw        t2, s0, s7
                  slti         s5, s6, 524
                  addiw        t5, s7, 1094
                  srlw         s7, tp, t3
                  rem          s9, t2, s1
                  mulh         zero, t0, a7
                  or           s6, t2, ra
                  sra          a4, s6, s7
                  remuw        t3, t4, a5
                  slti         t5, a4, -1969
                  srai         zero, t6, 39
                  slt          a4, t6, s7
                  srlw         sp, sp, s5
                  remuw        sp, tp, s9
                  addiw        a6, a5, -876
                  add          tp, t2, a2
                  xor          a5, a6, zero
                  sraw         a1, a7, s11
                  add          gp, ra, sp
                  remuw        zero, a3, s6
                  remuw        s1, s1, t1
                  sub          a4, t1, t2
                  sub          a3, s6, a0
                  sltiu        s6, s7, -415
                  slti         gp, s1, 851
                  andi         s7, a0, 423
                  slli         sp, s9, 60
                  and          s5, t0, t5
                  remw         a4, a6, t3
                  srai         a1, t2, 41
                  srai         s7, zero, 49
                  xori         t5, s8, -1455
                  addi         s4, s7, -14
                  nop
                  mulhsu       a2, gp, t0
                  slli         s10, s0, 34
                  subw         s5, s7, ra
                  remw         t5, sp, s7
                  andi         tp, a7, 580
                  divw         s9, a1, t4
                  divuw        t2, s5, tp
                  div          s9, gp, s11
                  sraw         s10, t3, a2
                  remuw        s10, a6, a7
                  mulh         a7, t3, s6
                  mul          sp, s5, a7
                  divw         gp, t2, s9
                  divw         s5, t2, s7
                  sltu         s9, s6, sp
                  ori          a1, s10, 749
                  mulh         s6, a4, a2
                  sraw         a3, t1, a5
                  add          s10, gp, t3
                  sraiw        ra, t5, 20
                  mulw         a1, t1, s1
                  srl          t1, s3, t0
                  lui          t3, 770999
                  lui          a0, 257038
                  sub          t3, s9, s3
                  srlw         s10, t3, a6
                  srliw        a7, s3, 28
                  slt          a2, s6, s6
                  sll          s10, s10, gp
                  rem          t0, a7, s8
                  mulw         s7, s0, t3
                  srai         t4, a6, 60
                  slliw        t2, s1, 31
                  add          t0, s6, t6
                  addiw        a2, s4, -1205
                  mulw         t1, s11, a4
                  addiw        s10, t2, 383
                  subw         s10, a2, t1
                  sraw         t4, a5, s8
                  or           t6, s1, s0
                  lui          tp, 708358
                  lui          s7, 198474
                  addw         ra, a6, a1
                  div          a6, a2, a4
                  sllw         a4, s2, s9
                  sllw         a1, a2, zero
                  srai         s2, t6, 60
                  sub          s9, s0, a5
                  xor          gp, a6, a5
                  sra          t3, s9, a1
                  and          a4, a5, s4
                  slt          tp, s11, s3
                  rem          a4, zero, s5
                  remu         a3, a0, gp
                  addi         a0, s6, -1158
                  and          t3, tp, s7
                  srliw        s4, s7, 13
                  divu         t6, ra, a7
                  div          t4, s10, a7
                  sll          s10, t0, s11
                  divu         a1, tp, ra
                  mul          s6, t1, t1
                  xor          s6, s0, s1
                  slliw        s2, t3, 12
                  or           a4, s4, s8
                  mulh         t0, a1, ra
                  sraw         t3, s10, t5
                  nop
                  subw         tp, s6, t0
                  slliw        gp, s7, 22
                  sltiu        a5, s2, -1629
                  mulh         s2, s1, a5
                  auipc        a4, 745731
                  addw         a7, gp, a0
                  andi         a2, a0, -1364
                  nop
                  srliw        a5, t3, 4
                  sll          s11, a0, s5
                  sllw         s5, s0, a0
                  divw         a6, a1, a3
                  rem          s11, t2, a0
                  srlw         gp, a5, sp
                  mulw         t3, sp, zero
                  mulh         s4, s2, s1
                  sltiu        s1, ra, -594
                  subw         s1, zero, s6
                  divu         t1, t4, tp
                  remuw        t3, a6, s9
                  subw         sp, s10, a2
                  addw         a2, a4, s9
                  sra          zero, s4, s2
                  rem          s11, s11, t5
                  subw         a7, s2, s11
                  nop
                  remu         s6, a6, a4
                  sraw         t2, t0, a3
                  sltu         t0, a3, s8
                  mulhu        ra, a4, s4
                  mulw         t6, s11, t2
                  ori          t3, t3, 1690
                  divuw        a3, s10, s1
                  divu         s2, t5, s10
                  xori         a4, s1, -1539
                  mul          t2, a1, t1
                  addi         t6, t5, 4
                  div          a2, s9, ra
                  add          ra, t2, s7
                  mulhu        t3, a2, s7
                  slliw        s1, t1, 25
                  xor          tp, t3, a7
                  subw         t5, t2, t6
                  divu         gp, a1, sp
                  xori         a0, a6, -974
                  mulh         zero, a7, tp
                  sll          a1, gp, tp
                  xor          a4, t6, tp
                  sltu         a3, s10, s5
                  auipc        a6, 331840
                  slli         zero, s5, 58
                  rem          t5, t5, s6
                  srlw         t5, s8, s9
                  sraw         a2, a7, gp
                  sraw         a4, a3, a7
                  divw         tp, t5, ra
                  sraiw        a4, t1, 18
                  sraw         t0, s5, t3
                  sub          t5, sp, a3
                  sraw         s4, s3, s6
                  srai         s6, s2, 30
                  divu         t3, s3, s8
                  auipc        t4, 114851
                  slliw        zero, s6, 14
                  remu         a4, sp, s8
                  and          s6, zero, s11
                  mulhsu       t0, s11, tp
                  ori          tp, s10, -1728
                  srai         s4, sp, 3
                  mulhsu       s2, s4, a0
                  addw         a6, t5, zero
                  auipc        a7, 539936
                  addiw        ra, a3, 1770
                  xor          t0, s1, s8
                  sll          s1, a3, t6
                  add          s11, s1, s4
                  sltu         s4, zero, a5
                  divu         s4, zero, a7
                  addi         a4, a4, 1203
                  srli         tp, a3, 14
                  add          t4, s0, t6
                  sltu         gp, a1, t6
                  divu         s9, t0, s7
                  sra          t2, t3, t5
                  mul          a6, a4, s3
                  sltiu        a7, gp, -972
                  sll          a7, t1, a0
                  divu         t0, s1, a5
                  srliw        zero, a5, 11
                  add          a5, a4, a7
                  slti         t3, s10, -922
                  sraw         t0, t4, t6
                  and          t5, gp, s5
                  rem          a5, s9, a5
                  sraw         zero, s5, s10
                  sllw         s7, t2, t5
                  srlw         t5, s1, gp
                  add          s7, s2, gp
                  srlw         s7, t0, t0
                  add          a7, s1, s0
                  and          s11, s10, a0
                  or           gp, t6, gp
                  auipc        t5, 443867
                  add          sp, s6, a4
                  divu         s2, s8, s8
                  srli         t2, a2, 50
                  divuw        a2, s2, ra
                  divw         tp, s11, s5
                  xor          s9, a5, a5
                  sraiw        a6, s8, 2
                  remw         s5, s1, s8
                  addi         s6, a6, 1382
                  sraiw        tp, a0, 7
                  subw         t6, a2, s5
                  mul          s6, s1, a5
                  ori          a3, a4, -1926
                  andi         a7, a5, -2004
                  sltu         a0, t2, t2
                  rem          s10, a4, s2
                  mulw         s11, s8, s0
                  sll          a0, a7, a4
                  xori         s11, t6, 696
                  srli         s2, zero, 16
                  subw         s10, t1, s5
                  mulw         a0, s3, s5
                  mulhu        ra, a0, t0
                  subw         sp, a0, a1
                  mul          s1, s8, t5
                  xori         s4, a6, 738
                  sraiw        t1, a6, 2
                  srai         sp, tp, 11
                  addiw        t3, s6, -1617
                  srai         t0, s5, 58
                  mulhsu       a2, a1, t2
                  sraw         ra, a6, s7
                  srlw         a0, s3, s9
                  srliw        s9, s3, 22
                  sll          a5, a4, t4
                  srl          ra, a2, s1
                  srlw         a1, s8, s6
                  lui          s2, 966524
                  sll          t5, t6, s7
                  ori          a1, a7, -1762
                  divuw        a5, a0, s10
                  srliw        a5, s11, 2
                  subw         t6, s4, t6
                  divw         s4, t1, t1
                  or           ra, s9, t5
                  ori          t5, t5, -48
                  srl          tp, s11, zero
                  rem          s9, t1, t3
                  srliw        s9, a0, 26
                  sraiw        t0, a0, 19
                  srlw         a2, s6, t4
                  mulw         s10, a1, s6
                  mulhu        s4, t5, a7
                  nop
                  sraiw        t1, zero, 31
                  mul          zero, s11, a7
                  remuw        s10, s9, a2
                  xor          a7, a3, t5
                  and          t3, t3, s8
                  sub          s4, gp, s7
                  srlw         s4, s3, s2
                  mulh         zero, a0, s5
                  add          s10, t5, s9
                  mulw         t6, t1, a7
                  remu         t5, s9, ra
                  sllw         s7, sp, t2
                  auipc        t5, 944426
                  srliw        a2, t1, 31
                  addi         s6, t6, 1211
                  mulh         a0, a6, s1
                  addiw        a3, s6, -998
                  andi         s5, s1, -729
                  mulh         a6, t3, s9
                  mulh         t2, a1, tp
                  auipc        t5, 922624
                  remuw        s5, s3, s6
                  sub          s4, ra, zero
                  addi         t3, tp, -452
                  sub          zero, s1, a7
                  ori          a0, a6, -223
                  divuw        a3, t6, s0
                  or           gp, s9, s10
                  srliw        a3, s11, 6
                  remuw        t4, a5, s1
                  div          a3, a6, t0
                  xor          a1, s7, a0
                  sub          a6, s3, s2
                  sraw         t6, s1, t2
                  div          s4, t5, a0
                  rem          s6, gp, a6
                  srl          ra, t0, ra
                  add          a7, t1, s6
                  sra          s6, a1, sp
                  remw         t4, s9, a1
                  srl          a0, t6, s0
                  srlw         a6, t5, t3
                  srai         a1, zero, 63
                  sllw         sp, sp, a2
                  remuw        s1, tp, s0
                  remw         s4, a0, a5
                  addi         a0, t5, -460
                  addiw        s7, s9, 1176
                  mulw         a7, t0, s9
                  slliw        sp, gp, 9
                  addw         a0, a3, zero
                  mulw         gp, ra, t3
                  xor          s4, s1, a5
                  andi         a7, t2, 1204
                  srl          a2, s1, t2
                  sraiw        gp, t6, 29
                  auipc        zero, 612284
                  xor          a2, a7, sp
                  div          s1, a2, zero
                  mul          a5, a2, gp
                  divuw        t5, s3, s6
                  mul          zero, ra, a6
                  slliw        zero, s11, 26
                  remuw        s11, gp, t5
                  addw         tp, t5, a5
                  remu         s7, s4, s1
                  or           t2, a2, s6
                  divu         zero, ra, t4
                  mulw         t0, a4, s7
                  remw         t0, a2, s4
                  add          s7, t4, s2
                  sra          t1, a7, a6
                  remw         s9, gp, a7
                  and          gp, a3, t5
                  sub          a3, s1, a3
                  addiw        s7, a3, -118
                  slti         s11, a6, 1505
                  divu         ra, a0, t0
                  sltu         s2, s2, s1
                  addw         t2, a7, t5
                  srl          s11, a0, ra
                  divu         a2, a5, a6
                  srli         s11, a2, 52
                  subw         t4, s7, s9
                  srli         a2, a6, 16
                  xori         zero, s2, 2039
                  addw         s5, t5, s11
                  or           t4, sp, s8
                  andi         s2, gp, 471
                  slliw        t0, a4, 12
                  sllw         t3, a1, t3
                  sra          sp, gp, zero
                  mulh         t3, gp, t0
                  srli         s5, t5, 28
                  sll          gp, s11, s0
                  slti         a6, a1, -312
                  slti         a3, s5, 478
                  slliw        a6, tp, 18
                  add          t5, a0, t6
                  or           t0, gp, a7
                  mul          t4, a2, s0
                  remuw        a2, a7, t5
                  remuw        s1, s2, a4
                  slti         a1, s4, -1797
                  mulh         s11, s1, s3
                  srlw         t4, s2, a1
                  addi         ra, tp, -1378
                  sraw         t0, a4, s5
                  auipc        s5, 271431
                  ori          s5, t3, -1191
                  sub          s9, s8, sp
                  addi         a2, t5, 638
                  divu         a1, t5, t3
                  sra          a2, s6, a1
                  mulhsu       s4, a0, tp
                  div          t5, s9, sp
                  addiw        a5, s4, 982
                  sltiu        tp, t1, -1722
                  remw         s5, t4, a0
                  mulw         t4, s7, a0
                  auipc        zero, 541760
                  sltu         a7, gp, a3
                  addi         a0, s2, -665
                  srlw         a2, s8, a1
                  slti         a6, s1, -909
                  or           a5, a1, s1
                  sllw         s10, s7, s6
                  subw         s10, s7, s6
                  nop
                  sltu         s6, a1, s10
                  srl          s7, s10, s9
                  slliw        s2, a7, 30
                  remw         s1, s0, ra
                  add          tp, t6, s3
                  addw         a2, s4, s7
                  and          a5, s0, a5
                  lui          s6, 796888
                  addiw        t2, s3, 291
                  addiw        s2, a4, -337
                  add          s4, s0, t0
                  and          a0, zero, s8
                  remw         s10, s6, a2
                  xori         s2, a3, 286
                  divw         t3, a6, t6
                  sra          zero, s5, t1
                  mulh         t5, t2, t0
                  remw         gp, s7, ra
                  slti         zero, a7, 242
                  xor          t3, s1, a3
                  addi         s10, a1, -542
                  sra          a6, ra, t1
                  addi         tp, sp, 526
                  div          s1, a4, a7
                  div          s7, t5, t6
                  mulh         sp, s3, t2
                  slli         a0, tp, 62
                  srlw         gp, s7, t0
                  mul          a7, t6, s5
                  xori         t3, a1, -2034
                  remw         s6, a0, gp
                  divw         a2, s2, ra
                  remu         a3, s4, a1
                  subw         a2, a7, s5
                  mul          tp, tp, s5
                  remuw        s1, t1, s6
                  sraiw        s7, ra, 25
                  xor          s5, a1, t3
                  divuw        gp, t2, s2
                  nop
                  divuw        sp, a1, tp
                  mul          a3, a7, sp
                  mulhu        a2, sp, t6
                  add          t1, a3, tp
                  sub          s1, a2, a7
                  and          a7, t4, sp
                  slti         s9, a5, 1088
                  srai         t5, s2, 61
                  auipc        t4, 486553
                  ori          s10, a4, -457
                  rem          s9, s1, a3
                  divw         gp, a4, s1
                  div          s5, a5, s4
                  slliw        gp, s2, 28
                  subw         s11, a2, t6
                  remw         gp, a0, ra
                  addw         s11, gp, a1
                  srliw        a4, ra, 7
                  addiw        a4, t4, 66
                  slliw        sp, t0, 29
                  sllw         t4, s8, a0
                  add          s6, s0, s6
                  addi         s10, t3, 915
                  sltu         t6, s10, t0
                  divuw        zero, s10, sp
                  divu         a6, s2, gp
                  sraw         s10, gp, a6
                  slli         ra, gp, 38
                  sub          s7, s11, a6
                  sllw         s9, s2, a0
                  mulhsu       t6, s1, s8
                  mulh         s11, t1, a1
                  sllw         s4, a2, a4
                  addi         t3, s1, 1680
                  srliw        s7, t5, 26
                  srli         s5, s7, 9
                  auipc        s9, 182847
                  mulw         a4, a4, a4
                  subw         t1, a2, a2
                  nop
                  sltu         t6, a7, s11
                  divw         s6, sp, t2
                  mulh         t3, sp, s11
                  add          a4, t0, a7
                  addw         s1, s4, sp
                  rem          a6, a3, t5
                  addi         a2, a6, -1462
                  sub          s11, a5, s6
                  divu         a5, a3, s3
                  sllw         a1, s3, s1
                  remu         t4, s4, t3
                  sll          s11, sp, ra
                  slt          a6, a3, t4
                  addw         a4, s1, a6
                  remuw        t1, gp, a4
                  subw         t5, a4, a3
                  nop
                  sraiw        t6, s0, 23
                  remw         a4, a0, s7
                  sraw         s4, t5, s4
                  remuw        s2, s5, a4
                  subw         t2, ra, a4
                  mul          s1, s2, s10
                  divu         s9, ra, s7
                  div          a7, s4, s1
                  mul          s6, s10, s7
                  xor          s9, s5, tp
                  slt          t0, s0, gp
                  slti         a1, s1, -1042
                  slliw        t2, s11, 7
                  sltu         s5, a5, gp
                  sra          t3, a1, sp
                  slli         t0, t5, 17
                  mul          sp, s6, a6
                  srl          t5, t4, s10
                  rem          s6, a0, t1
                  andi         t4, t0, -482
                  sltiu        t3, t2, -620
                  sraiw        a2, a4, 9
                  remw         s6, a6, zero
                  divuw        s9, s8, a7
                  auipc        t1, 97418
                  xori         a0, t3, -1856
                  slliw        a2, t4, 2
                  mulhsu       s6, s0, sp
                  srai         s7, a6, 19
                  or           a6, s5, a5
                  srliw        sp, gp, 6
                  auipc        a0, 434406
                  srai         zero, s0, 54
                  sraiw        a7, s4, 9
                  auipc        a4, 416732
                  div          ra, s1, a7
                  auipc        s11, 676829
                  sraw         tp, t4, t4
                  slliw        s4, s9, 11
                  mul          zero, s7, s9
                  remw         s11, s11, ra
                  slt          s9, zero, s0
                  xor          zero, s11, s10
                  xor          s4, zero, t3
                  sll          gp, s2, t4
                  mulw         sp, s10, s7
                  sllw         a5, s1, a5
                  add          s7, ra, a6
                  slli         a0, ra, 8
                  remu         ra, t6, s9
                  and          t2, a3, s9
                  sllw         zero, s7, s2
                  addw         s7, t4, t4
                  srlw         s11, a7, s8
                  srli         t0, a6, 28
                  divw         s10, a2, s3
                  sllw         s9, t6, tp
                  divu         s5, s3, sp
                  slliw        t1, gp, 1
                  mulw         t5, sp, a3
                  addw         s7, s8, t6
                  auipc        ra, 78276
                  addi         s7, s3, 528
                  srlw         s4, a6, s5
                  sltiu        s6, s6, 1608
                  andi         gp, a0, -822
                  slliw        s11, s5, 18
                  andi         a4, t3, -1252
                  sub          t0, sp, s9
                  divu         t3, ra, a2
                  sraiw        t5, a2, 16
                  remuw        s11, s3, s7
                  slliw        a7, s9, 20
                  sltu         s5, s6, s4
                  srli         a3, a7, 15
                  ori          gp, s5, 1785
                  srliw        s2, s2, 26
                  xor          a4, t2, s10
                  mulhsu       a3, s11, gp
                  lui          a3, 971122
                  subw         s4, zero, a6
                  add          t5, a3, a4
                  sraw         a3, gp, a7
                  sltiu        s10, zero, 997
                  slliw        s11, t2, 20
                  slliw        a0, gp, 15
                  add          s7, t4, s4
                  slt          s4, s8, t5
                  subw         t1, s10, s7
                  slli         ra, s5, 49
                  div          a4, s9, a1
                  nop
                  div          t3, s10, s1
                  mulw         sp, s3, s2
                  addi         tp, s10, -1081
                  mul          a3, s1, t5
                  sraw         s11, zero, s4
                  srai         s4, a7, 28
                  slt          a6, t6, s0
                  sllw         s2, a6, s3
                  addi         s1, s0, -776
                  mulhu        s4, ra, s6
                  sll          t0, gp, t0
                  slli         t5, gp, 23
                  slt          a7, s6, s7
                  auipc        ra, 217194
                  mulw         a5, ra, ra
                  rem          ra, s1, s7
                  remu         a0, t6, s1
                  sraw         sp, t0, s6
                  divuw        a5, s11, a7
                  mulhu        a6, t1, t2
                  mulw         a7, t0, a3
                  sub          sp, s9, t2
                  divw         s2, tp, t3
                  remw         a1, ra, s10
                  srliw        sp, t6, 25
                  srlw         t3, t6, s3
                  slti         a7, s2, -1626
                  sltiu        s6, a1, -871
                  xor          sp, s2, s0
                  sub          t5, a2, tp
                  nop
                  slt          s9, a3, s4
                  nop
                  divuw        a3, s5, ra
                  sra          a5, a4, s0
                  mulhsu       tp, zero, t4
                  slt          s7, a1, t3
                  xor          t5, a1, t4
                  srliw        t0, sp, 28
                  slti         gp, t0, -628
                  addi         sp, a7, 375
                  sll          a4, s10, t2
                  div          a6, a1, a7
                  ori          a0, a4, 1443
                  srlw         a5, s3, a1
                  addi         a0, s1, 719
                  sllw         a0, a3, ra
                  srai         s10, zero, 58
                  addiw        gp, t6, 1690
                  divu         t1, t4, t6
                  mulhsu       s5, s8, a0
                  sltiu        s10, ra, -458
                  slli         zero, sp, 49
                  slliw        t5, t4, 2
                  sllw         t3, a0, s8
                  divuw        s1, t3, t1
                  mulw         a3, a2, s0
                  divw         a4, s3, t5
                  div          s1, s9, s8
                  addw         ra, sp, a0
                  add          t4, s5, a2
                  subw         s9, a7, t0
                  remu         t2, a5, t0
                  div          t6, a6, s7
                  remw         gp, a0, t4
                  div          sp, s10, t0
                  mulw         s7, t0, a0
                  auipc        a0, 140277
                  divu         ra, a1, s4
                  remw         a0, s5, s3
                  sllw         t3, s0, gp
                  addw         t6, s9, t6
                  addi         a3, s9, 1673
                  sll          a5, s0, t3
                  addw         s7, s1, tp
                  mulh         a7, s2, s8
                  sraiw        t2, s5, 5
                  mulhsu       s2, t1, s3
                  auipc        s4, 927039
                  add          s7, t3, s0
                  lui          a0, 356739
                  remw         s6, s3, s7
                  divu         tp, a2, s9
                  srai         s1, s5, 3
                  sltu         t2, sp, s8
                  remu         s6, a6, a2
                  nop
                  subw         a0, t0, s11
                  srai         a3, s9, 10
                  slliw        t5, sp, 20
                  srlw         ra, sp, s7
                  sub          a1, s8, ra
                  srlw         a4, s9, s10
                  addi         tp, a6, -13
                  rem          s2, s8, t5
                  nop
                  slli         a0, t2, 50
                  divu         ra, s11, s9
                  mulw         tp, a2, s5
                  sllw         s9, s11, a3
                  srli         s6, sp, 59
                  mulhsu       a7, a5, t6
                  or           a5, s3, s6
                  srl          gp, sp, s1
                  sll          s2, s8, s3
                  or           a3, t5, tp
                  addi         s9, a5, 1561
                  slliw        a5, t5, 24
                  srli         t3, t3, 28
                  sll          a5, t2, t3
                  slti         a3, gp, 693
                  rem          t0, s7, s3
                  auipc        t0, 470363
                  andi         a6, a4, -1234
                  sub          tp, zero, t5
                  rem          a7, sp, t2
                  srl          t6, s0, a6
                  slliw        t0, s1, 24
                  remuw        sp, t2, t0
                  mulhsu       t2, s11, a6
                  sltiu        a7, a3, -1097
                  nop
                  remw         s5, t4, t3
                  addw         a7, s10, a5
                  rem          ra, s2, s6
                  srliw        s1, s5, 9
                  mulhsu       s2, s7, a5
                  srai         a6, a4, 44
                  sraw         t0, a3, s8
                  lui          a7, 64815
                  xor          sp, t0, zero
                  and          t6, s2, s11
                  slli         s11, t3, 31
                  divw         a0, s6, s3
                  slt          t3, s6, s3
                  srai         s9, s11, 6
                  srl          s6, s2, s3
                  addiw        s7, t1, 391
                  addi         s6, s9, 1875
                  slt          s11, s1, s0
                  srai         a2, gp, 38
                  divu         t0, t4, a0
                  xori         s5, s4, -967
                  slti         s10, s8, -1097
                  sll          zero, a5, a2
                  mulhsu       a1, a3, s4
                  mulh         a6, t3, t4
                  div          a2, t2, s3
                  mulhsu       t1, s3, a5
                  addw         a7, a2, s9
                  andi         s9, s2, -493
                  and          t3, t6, t1
                  mul          s4, s2, gp
                  divuw        a3, t5, a4
                  xor          s10, s10, a7
                  remu         t3, a6, sp
                  add          s1, s8, t4
                  mul          s11, t0, s9
                  srl          a4, a0, a5
                  sll          sp, gp, ra
                  divuw        s10, ra, s3
                  remu         s2, t6, a1
                  srai         s9, t3, 21
                  add          s7, s1, s2
                  divuw        s7, t2, s4
                  sll          gp, a6, s0
                  remu         t6, s3, t6
                  srlw         a6, t4, t1
                  subw         s4, a6, t2
                  mulhu        zero, a7, s10
                  srlw         s2, t5, s4
                  andi         sp, t2, 1239
                  remu         sp, t6, s8
                  srliw        s7, s0, 24
                  lui          gp, 45791
                  andi         s6, s3, -1059
                  sraiw        s4, gp, 19
                  sraw         zero, a3, t3
                  sra          gp, t2, a1
                  nop
                  addw         s9, s4, s5
                  subw         s4, s7, sp
                  remw         a7, a2, a0
                  addw         t3, t5, s8
                  div          s2, s3, a5
                  sltiu        t4, t3, -1762
                  slliw        t0, t0, 6
                  div          s10, s7, sp
                  addiw        t3, a6, 545
                  srl          s7, a6, sp
                  slt          t4, s1, a5
                  sll          s5, t1, s10
                  remuw        t1, tp, s6
                  mulh         a1, s4, t2
                  addw         t2, s5, s4
                  sltu         s2, gp, t0
                  remu         s6, sp, s3
                  srlw         s10, t2, t2
                  and          a1, t6, a3
                  and          s5, s7, t3
                  sraiw        a3, s2, 5
                  xor          s7, s9, a4
                  or           s9, t6, a1
                  div          a7, zero, sp
                  slli         zero, s3, 45
                  lui          s2, 79184
                  div          a6, s7, s4
                  addiw        t1, s0, 1951
                  remu         gp, s6, t5
                  srl          a1, t6, s10
                  remuw        t5, t5, s4
                  srli         s2, s3, 8
                  sra          t3, zero, t0
                  srl          s7, s10, gp
                  lui          a7, 530074
                  lui          s9, 189381
                  sltu         s7, s7, t2
                  sll          zero, a3, s7
                  mulh         a2, t4, s4
                  sltu         ra, a3, s2
                  xori         s9, t1, 306
                  addi         s7, tp, 491
                  sllw         a7, t1, a6
                  or           t1, t5, a3
                  sraiw        sp, zero, 23
                  slliw        s2, ra, 30
                  mulhsu       s7, a3, zero
                  div          s5, t6, s3
                  srai         s4, s6, 55
                  slt          s7, s6, a5
                  addi         s9, s7, 690
                  and          a5, ra, t5
                  addi         s6, t3, -1427
                  sllw         a1, t3, s4
                  remu         a2, s4, s8
                  remw         s6, a3, s11
                  xori         s2, s0, 1020
                  srlw         a2, t1, s0
                  sllw         s10, s5, s2
                  sllw         t2, t3, s11
                  mul          a6, ra, s4
                  sra          t2, ra, a7
                  nop
                  remu         gp, t4, s9
                  add          s7, a7, a0
                  slliw        sp, t1, 28
                  and          a0, s3, s3
                  mulhsu       a1, t5, s8
                  mulh         t2, t3, t3
                  divu         t3, a0, s3
                  slt          a3, a6, s8
                  auipc        ra, 769952
                  ori          gp, ra, -1075
                  srliw        s10, s11, 22
                  remuw        t2, s1, s0
                  addi         a6, tp, -1141
                  sllw         s5, t2, t2
                  sraiw        s1, s3, 18
                  divuw        tp, s2, a0
                  srli         gp, s1, 36
                  andi         tp, t3, 1941
                  mulw         t6, s10, zero
                  mul          a1, s3, a4
                  addiw        s6, a7, -523
                  and          a0, a1, gp
                  remuw        a7, a5, ra
                  sll          s10, s1, t4
                  andi         s4, s0, 1705
                  addi         gp, sp, -1499
                  lui          s6, 799463
                  ori          a1, a5, -106
                  slt          gp, s6, zero
                  sraiw        gp, zero, 7
                  addiw        a3, tp, -771
                  add          a0, t4, s5
                  rem          a4, gp, t4
                  addw         ra, s3, t5
                  addiw        s4, s2, 1486
                  and          a4, s1, t1
                  ori          s1, t1, 1852
                  srlw         t0, a3, s1
                  remu         t0, a6, s9
                  mul          tp, a5, a2
                  remuw        t5, s1, ra
                  sltu         t3, a5, t0
                  mulw         sp, t2, s0
                  or           gp, s3, a7
                  mul          a2, t0, s0
                  srliw        s6, sp, 26
                  auipc        tp, 732819
                  divw         t0, s9, sp
                  srli         zero, s3, 25
                  sraw         ra, sp, s9
                  srli         s4, t5, 55
                  slti         t2, t5, -1556
                  mulhsu       s10, s1, t4
                  mulh         s10, a0, s5
                  slliw        s6, s7, 0
                  mulhu        a7, a2, s3
                  auipc        s11, 871726
                  sraiw        s11, s4, 0
                  addw         zero, a3, a4
                  add          ra, a4, tp
                  xori         s2, a3, -2036
                  addiw        a5, s11, -971
                  mulhsu       t0, t0, a2
                  divuw        a5, s9, s9
                  or           zero, s2, s5
                  sra          s2, s3, tp
                  slliw        t0, t4, 3
                  xor          a2, t1, s11
                  mulh         s6, sp, t0
                  rem          s7, t4, t4
                  srliw        s7, a5, 20
                  slti         s9, a1, 421
                  sraiw        s5, s11, 24
                  divuw        a2, s9, s5
                  addiw        t5, t0, -626
                  slt          s10, gp, a7
                  lui          t1, 405045
                  subw         s4, s5, t6
                  mulhu        s1, a2, a7
                  remuw        s2, s8, ra
                  auipc        s7, 397570
                  srliw        tp, t2, 10
                  rem          zero, ra, s4
                  addw         zero, gp, a0
                  xori         s2, t2, 1447
                  lui          s2, 848829
                  srliw        zero, t0, 1
                  mul          zero, a5, s10
                  add          a6, t1, a0
                  sltiu        a3, a1, -1909
                  andi         a5, a5, 1866
                  divuw        a3, t0, s5
                  mulw         s1, sp, zero
                  sll          s5, s4, a5
                  sllw         s7, a7, s8
                  srlw         a6, s5, t2
                  subw         zero, ra, a2
                  and          a1, a7, a3
                  auipc        gp, 751231
                  div          tp, a7, t5
                  slliw        a6, s6, 20
                  nop
                  srli         s10, s10, 32
                  slt          t2, s7, s7
                  remw         s9, s9, s8
                  srl          zero, s8, t2
                  mulhsu       a6, a7, s6
                  xori         ra, zero, 547
                  sra          s10, s8, t0
                  sltiu        a1, s10, -826
                  slti         ra, a3, 229
                  srli         a2, a6, 26
                  srai         t2, a3, 58
                  slli         s9, s2, 52
                  sltu         a3, s9, s4
                  sltiu        s5, gp, -808
                  srli         s11, t6, 53
                  divu         zero, s11, t0
                  sll          sp, zero, t5
                  ori          t6, t3, -488
                  srai         s5, a6, 52
                  srliw        a2, s2, 1
                  andi         s4, s3, 178
                  srl          t5, zero, a6
                  nop
                  divw         t6, sp, s11
                  srai         s7, s1, 44
                  srai         s1, t6, 35
                  xor          s1, s2, a5
                  sltu         t0, t2, a2
                  mulhsu       gp, s2, s8
                  xori         sp, a1, 34
                  srlw         zero, t4, a4
                  div          s10, s6, a6
                  divw         a6, tp, s11
                  divu         s6, tp, t3
                  and          gp, s11, t0
                  subw         s9, ra, zero
                  xor          s1, a1, s2
                  or           sp, s11, s0
                  sraw         s6, s4, tp
                  slli         s11, t0, 30
                  sll          t2, t2, a4
                  subw         a7, s4, a6
                  andi         s11, a4, -1138
                  addiw        s2, s3, 1813
                  remw         sp, a6, s4
                  xori         a4, s8, 1777
                  sll          s11, t5, a3
                  srl          a5, gp, s8
                  slt          a1, s0, s2
                  srl          s7, s9, a2
                  addi         t4, t6, -1600
                  remu         s4, s7, t1
                  slt          s10, tp, s2
                  xor          zero, ra, a1
                  auipc        ra, 160799
                  srl          t1, s9, t3
                  lui          a0, 381871
                  sltiu        s2, s7, 1128
                  sll          zero, zero, t6
                  and          gp, sp, s10
                  mul          s1, a3, t5
                  subw         a6, t1, s2
                  addiw        s6, s4, -67
                  mulhsu       s4, s9, a4
                  srl          t6, t4, s2
                  sltu         a6, a6, s1
                  div          t2, a4, s5
                  srli         a7, s10, 22
                  or           s11, a4, s3
                  mul          t4, zero, s7
                  sra          t2, s11, s2
                  remu         s4, a3, t2
                  mulw         a3, a7, a6
                  slti         s11, s5, 2043
                  mulhsu       s7, sp, a3
                  ori          a5, a1, 1125
                  addi         a2, t0, 363
                  remuw        a7, sp, zero
                  mulhsu       t0, s7, s11
                  subw         a3, a6, a2
                  mulw         a5, t4, t1
                  sra          a3, t6, t5
                  sltu         a5, s9, s4
                  andi         a5, s4, 1868
                  mulhsu       t3, t4, t0
                  divw         t4, t6, s4
                  mulw         s9, a0, s7
                  mul          t3, tp, t1
                  mul          s2, t6, s8
                  mulw         s6, s7, a2
                  ori          a4, s10, 1056
                  divuw        ra, s0, s10
                  mulhsu       s5, s6, t2
                  remuw        t1, zero, zero
                  sra          s2, s1, tp
                  divuw        s5, a7, a2
                  sub          a1, ra, a0
                  sra          s6, a0, s6
                  sltu         s11, s3, s2
                  mul          s9, t4, s9
                  mulhu        s9, t2, t2
                  sraw         s9, s6, tp
                  srlw         a1, a4, s0
                  mulhsu       a6, t1, t4
                  mul          s10, s3, t5
                  mulhu        a7, a1, s9
                  lui          t6, 839773
                  addi         s4, s2, -297
                  lui          a5, 703044
                  srlw         a0, s7, s7
                  auipc        a2, 95185
                  slt          s2, t3, ra
                  div          a5, a4, t0
                  slliw        t1, a2, 5
                  remuw        t0, s3, s3
                  remuw        a6, s10, s10
                  div          ra, s9, gp
                  and          s4, tp, s10
                  remu         t5, s5, t6
                  and          a6, s6, s6
                  lui          s9, 85968
                  subw         t1, t1, t5
                  addiw        zero, s9, 1913
                  andi         t4, t4, -692
                  add          s2, tp, a6
                  srli         a1, s5, 34
                  remuw        t2, t5, s3
                  sraiw        gp, gp, 27
                  srl          zero, s5, t3
                  slliw        t4, s8, 0
                  divuw        a2, s7, t0
                  mulh         s2, s8, tp
                  mulw         tp, a0, s11
                  slt          t4, a6, t0
                  lui          t2, 439820
                  and          s1, t5, s4
                  remw         t4, s11, a0
                  addi         a6, gp, -390
                  or           a6, a0, s11
                  and          t6, s6, a0
                  srlw         zero, t5, s1
                  sraiw        s9, s2, 14
                  sub          t5, t4, t3
                  srai         s10, s7, 63
                  slli         sp, s2, 32
                  ori          s7, s9, 1523
                  slt          t4, s1, zero
                  sltu         t3, a7, t1
                  lui          t1, 733731
                  ori          t3, a7, 988
                  addiw        t4, s3, 520
                  srl          a7, ra, a7
                  or           t6, s1, t5
                  slt          t1, a4, a0
                  andi         s6, t2, -444
                  rem          ra, t1, s8
                  auipc        s1, 218580
                  addi         s1, s7, -646
                  srliw        t4, t3, 15
                  srai         t5, t4, 3
                  remuw        t6, ra, s10
                  remuw        t2, s5, gp
                  addiw        s9, a2, -1915
                  remuw        t5, t5, gp
                  sraiw        s11, s3, 26
                  addw         s10, a2, t4
                  slli         a3, s7, 7
                  auipc        a7, 601838
                  addw         a2, a2, sp
                  sraw         t1, s11, a4
                  sllw         t3, s1, s5
                  divuw        a1, a3, a6
                  mulhsu       a6, s2, t0
                  div          t1, s2, a1
                  sltu         s10, s6, s7
                  sra          s1, s0, s0
                  srai         s6, s9, 20
                  srlw         ra, s0, gp
                  sraiw        s11, s2, 27
                  divu         t1, t1, t6
                  sltu         s4, zero, s5
                  srl          tp, s8, a3
                  rem          sp, s10, t2
                  and          s10, t0, s4
                  mulh         s9, a6, a6
                  subw         t4, s8, a5
                  remu         gp, s0, s6
                  mulhu        a7, s3, s9
                  sll          t4, s11, a5
                  nop
                  sltu         ra, t0, a7
                  srli         s10, tp, 8
                  sllw         t1, a1, s8
                  xor          tp, a3, s11
                  srlw         s7, a0, t0
                  addw         a3, s3, a0
                  slliw        s1, s1, 25
                  mul          t0, ra, s2
                  sraw         t5, s9, s8
                  mulhu        s6, s0, a0
                  srlw         t0, t2, s6
                  slli         s5, s11, 8
                  divuw        ra, s9, ra
                  auipc        gp, 871510
                  remw         a7, s10, s0
                  lui          s11, 589054
                  srl          ra, t5, a4
                  sll          a2, s1, sp
                  sub          a5, s8, s4
                  slt          a6, tp, t6
                  mulw         a2, t5, zero
                  srlw         sp, zero, t5
                  subw         s5, t5, t3
                  lui          s1, 537701
                  ori          a3, a1, 389
                  mulh         s11, zero, t3
                  mulh         s1, s2, ra
                  remu         a0, a1, t3
                  addiw        gp, a1, 2028
                  xor          s11, t5, t1
                  or           s1, a2, a0
                  srliw        a7, t0, 4
                  slliw        ra, t3, 9
                  divw         tp, a1, s7
                  rem          a7, a7, s5
                  sll          s7, t3, s3
                  slliw        ra, s0, 6
                  auipc        s11, 420601
                  add          a7, t6, s4
                  mulw         ra, t5, t3
                  srai         a3, zero, 61
                  mulhu        t6, s0, t3
                  srli         a4, s0, 34
                  sllw         ra, gp, s0
                  or           t2, t4, s1
                  srai         t3, s6, 16
                  sll          gp, t6, a5
                  ori          a5, s1, -314
                  auipc        sp, 812305
                  divw         t5, a7, s5
                  mulhu        s6, s6, a2
                  and          ra, t0, s3
                  sraw         s2, t5, t5
                  srai         s6, a1, 35
                  addiw        tp, t4, 1989
                  mulhu        t2, t4, s7
                  srlw         a7, t0, t2
                  sllw         sp, t2, s9
                  mulw         a7, s5, a0
                  ori          s5, s11, -1851
                  sub          t0, s0, s11
                  mulh         a0, a4, s6
                  nop
                  subw         s2, s9, t5
                  lui          tp, 402644
                  sllw         t3, a4, a6
                  auipc        s4, 685571
                  lui          ra, 193675
                  srliw        t2, ra, 7
                  sll          t4, t0, s7
                  addiw        a0, a6, 526
                  mulhsu       s2, a6, s11
                  mulh         t2, a3, sp
                  remw         s5, s6, s4
                  srliw        sp, ra, 28
                  mulhsu       ra, tp, s11
                  slti         a2, s9, 121
                  addw         t2, t2, a1
                  add          t6, a4, a7
                  div          s2, sp, ra
                  subw         s6, t2, t0
                  lui          a2, 650869
                  divu         tp, a4, t2
                  mul          t2, t0, s7
                  sraiw        gp, s2, 23
                  slt          s10, s8, tp
                  slli         s7, a7, 18
                  mulhu        a5, s4, a7
                  addw         s2, ra, gp
                  sltiu        t0, t4, -1652
                  and          t0, s0, s11
                  remw         s1, gp, t3
                  slli         a2, zero, 15
                  divu         zero, a5, s8
                  ori          s6, s7, -269
                  mulhsu       s7, a1, s9
                  divw         sp, a6, s5
                  slt          s11, a0, s4
                  subw         a5, s9, s11
                  xori         a3, ra, 1330
                  slli         s11, s4, 15
                  andi         s2, gp, -1400
                  sll          a0, s10, t4
                  sltiu        s11, s1, 1212
                  divuw        s2, s10, t6
                  addiw        s9, tp, -450
                  sltu         tp, tp, t5
                  srlw         s9, zero, s6
                  sllw         a2, s7, a3
                  remw         s9, zero, gp
                  remuw        s11, s11, s11
                  srli         s4, s1, 3
                  sraw         s6, a3, s5
                  auipc        s2, 117075
                  div          a4, zero, t3
                  auipc        s6, 585821
                  slliw        t4, s4, 1
                  slt          a7, s7, t0
                  subw         gp, zero, a6
                  xori         a2, s6, 25
                  auipc        a0, 212
                  addw         a0, s7, s2
                  mulhu        s6, s5, s6
                  mul          a7, t5, s8
                  div          s2, sp, a2
                  sltu         zero, ra, tp
                  ori          t2, s2, -576
                  addw         sp, s4, a7
                  sltu         a7, s7, s0
                  subw         t2, sp, tp
                  slli         t3, s10, 29
                  add          s2, zero, s11
                  sra          a1, ra, t4
                  add          t4, s10, a3
                  auipc        s9, 435271
                  remu         s2, gp, sp
                  sltiu        s6, a6, 1830
                  divu         gp, s4, ra
                  srai         a3, a3, 48
                  sltiu        t4, t3, -1943
                  rem          a3, s7, a4
                  addw         a2, s8, t0
                  addiw        t1, s9, -1493
                  srliw        t6, s8, 18
                  sllw         s4, s6, ra
                  ori          zero, s8, 644
                  srai         a4, t4, 49
                  ori          a0, t6, -1790
                  andi         s9, s8, 271
                  sllw         s9, a0, s10
                  srli         a4, t1, 38
                  divu         a5, zero, zero
                  srai         t2, sp, 3
                  and          s2, t4, t1
                  xori         t5, t5, -148
                  slliw        s11, t0, 14
                  srai         t3, s4, 12
                  srlw         s5, s10, a6
                  divu         sp, t1, t6
                  sraiw        s11, t6, 1
                  xor          s9, s10, s3
                  nop
                  ori          s4, a7, -954
                  sra          a1, s3, a0
                  or           a7, t3, s8
                  divu         a5, a6, s1
                  sllw         a4, a2, s9
                  divw         s6, s4, a7
                  xori         tp, a5, -828
                  mul          a5, zero, t6
                  srl          s2, s11, s10
                  sltiu        a0, t0, -1179
                  srli         s5, t4, 13
                  sub          s11, t6, s10
                  divw         a0, ra, t1
                  and          tp, a5, s8
                  mulw         s5, t6, a2
                  remw         sp, ra, a1
                  remu         s7, t4, s1
                  mulhu        s9, s0, zero
                  xori         s5, s5, 111
                  subw         s11, t5, s2
                  and          s7, s0, tp
                  rem          t4, a2, s2
                  sllw         a1, s6, t0
                  srl          t1, a3, s10
                  mulhsu       s1, s5, ra
                  sltiu        t3, a6, 911
                  sraiw        gp, t0, 22
                  sllw         sp, a1, a6
                  mulw         a2, sp, t4
                  remw         gp, a0, t3
                  sraw         t5, a6, sp
                  nop
                  remw         tp, a5, t2
                  addiw        zero, s7, -566
                  mulhsu       s7, s6, s1
                  sraw         a6, a2, t6
                  remw         s6, a5, s0
                  slt          s4, t5, tp
                  remuw        gp, a6, s10
                  slti         ra, s5, -434
                  sllw         s5, s2, t0
                  mulhu        t6, a6, s11
                  srliw        s1, ra, 5
                  rem          s4, a3, t2
                  slli         s7, a3, 54
                  addi         sp, gp, 1819
                  srai         s10, zero, 0
                  mulw         sp, t1, ra
                  sllw         s1, gp, sp
                  mulh         s9, t1, gp
                  nop
                  xor          s11, t1, s5
                  mulh         s5, t3, t4
                  add          a6, s2, s8
                  srl          ra, s5, gp
                  auipc        a6, 427925
                  nop
                  addw         t5, t5, s8
                  or           tp, t3, a3
                  mulh         s2, s6, zero
                  slliw        s7, t3, 16
                  sra          ra, s3, a2
                  slti         s9, t1, -714
                  sll          t2, s6, s7
                  and          t2, s7, a0
                  sra          gp, a3, a1
                  sltu         s10, zero, s11
                  mulhsu       gp, t4, s6
                  mul          ra, t2, a6
                  sllw         s1, s3, a7
                  sraw         t0, a0, t5
                  xor          a3, zero, a0
                  mulw         ra, a5, a4
                  addw         a6, s11, s1
                  ori          sp, s8, -971
                  xori         t5, s1, 852
                  slt          s2, t4, t6
                  ori          s7, a0, -905
                  ori          s4, a6, 748
                  srli         t6, t1, 35
                  or           s10, a2, s11
                  slliw        a5, t0, 30
                  slti         a7, s9, 1950
                  divuw        s10, s7, zero
                  addiw        t3, a5, -1073
                  sll          s2, a7, s6
                  slliw        t0, tp, 2
                  addw         s11, sp, t4
                  addiw        a3, zero, 969
                  mulh         s2, tp, a7
                  add          t1, s11, a2
                  slti         tp, s11, -1096
                  xori         s10, a4, -1800
                  addiw        s4, s3, 1851
                  srai         t4, a1, 15
                  remu         a4, sp, a7
                  mulhsu       a5, s11, t5
                  ori          s7, s7, 1863
                  sub          s1, gp, s0
                  slliw        gp, s1, 1
                  lui          a4, 628582
                  mulw         t6, a5, s4
                  lui          t4, 136223
                  sub          s5, s9, s3
                  xori         s10, s7, -442
                  andi         a1, s7, -704
                  slliw        sp, s7, 20
                  slliw        a3, t0, 27
                  slliw        a0, s8, 4
                  ori          a5, s6, 299
                  remw         t1, gp, a7
                  auipc        a1, 736214
                  sra          a3, zero, s9
                  mulhsu       a5, t5, a4
                  mulhsu       s9, a0, t0
                  mulhsu       t1, a0, t4
                  addiw        t5, s6, -353
                  remu         s7, a3, gp
                  sltiu        a7, t5, 30
                  sltiu        t4, t0, -1372
                  subw         s2, ra, s2
                  or           s2, s0, t4
                  lui          s9, 835631
                  auipc        s1, 392628
                  mulw         gp, a1, gp
                  addw         gp, s11, s4
                  remu         s4, s2, t0
                  xor          t6, ra, gp
                  srl          s4, a2, a1
                  remu         s6, a3, ra
                  mul          a3, a4, s0
                  sub          s6, s8, s9
                  slli         t4, s6, 49
                  srai         a5, s6, 5
                  remu         s4, s5, t4
                  sltiu        t0, s4, 1053
                  mulh         s10, s5, s5
                  subw         s9, a7, s6
                  subw         t4, t6, s8
                  lui          s9, 814659
                  remu         s7, t2, gp
                  slt          zero, s11, a2
                  sll          t5, a1, ra
                  mulhsu       t3, s1, t0
                  addi         a4, t1, 1281
                  addw         a1, gp, s5
                  sltu         a7, s5, s1
                  mulw         a5, gp, s9
                  mulhsu       t0, s2, s4
                  add          s9, s9, tp
                  sll          a2, gp, s10
                  subw         zero, tp, a3
                  slliw        s5, t5, 4
                  subw         s6, a7, ra
                  remw         s11, gp, s10
                  remuw        s9, s6, s5
                  slliw        a5, s5, 11
                  remuw        t0, zero, a1
                  slli         t5, s3, 33
                  remu         tp, a4, a1
                  sraw         s4, a5, sp
                  subw         s7, s8, sp
                  addw         zero, s0, s3
                  sllw         a7, s10, ra
                  nop
                  srliw        t0, s7, 0
                  sra          s5, a2, s3
                  sraw         s6, ra, ra
                  remu         s11, s6, s6
                  mulhsu       a2, a2, s2
                  mulw         t1, a7, a1
                  addi         s10, t2, 550
                  xor          t5, a1, s4
                  sra          a0, t1, s0
                  sra          s10, a0, s11
                  sub          t1, a7, a4
                  remu         a6, s8, ra
                  addiw        sp, s10, 1352
                  add          zero, a7, a1
                  nop
                  sltu         t2, a3, s3
                  mulw         a4, s9, a5
                  nop
                  auipc        t0, 78761
                  remuw        s10, s10, a0
                  subw         s4, t5, s1
                  or           s2, gp, s7
                  xori         a5, t5, 1524
                  mulhu        s2, s10, a1
                  lui          sp, 471
                  mul          a7, t3, s5
                  addi         a0, s3, 1491
                  slliw        t3, s9, 9
                  srli         t3, a6, 39
                  and          tp, s5, a7
                  andi         s2, a1, 42
                  sra          a1, s6, s1
                  srlw         t5, s7, s1
                  sltu         a3, t1, a7
                  sub          s7, s8, a1
                  sub          s9, t3, s1
                  xor          t3, a0, s9
                  sltiu        a5, s9, 943
                  sltu         s11, s0, s10
                  slli         s2, t2, 17
                  sraw         s11, ra, s0
                  mul          t0, gp, s5
                  addw         sp, t2, a0
                  remw         t0, zero, gp
                  divu         t1, tp, t6
                  sllw         a6, tp, a4
                  auipc        t6, 369215
                  srlw         s2, s7, a3
                  srliw        zero, t2, 14
                  addiw        a0, s1, -664
                  srai         a2, gp, 8
                  mul          a3, a1, s10
                  mulh         s6, a5, s4
                  mulw         a7, s5, t4
                  ori          t4, s10, 1916
                  sraiw        zero, s3, 4
                  lui          tp, 1007206
                  divu         sp, t3, s7
                  sub          zero, s2, s5
                  remw         t4, a0, s10
                  div          s1, a2, s6
                  srlw         t2, s6, a2
                  sub          a3, s3, t5
                  sltu         zero, tp, s10
                  srliw        t6, s10, 6
                  add          s4, sp, s6
                  divw         s6, s4, s1
                  srlw         s5, a2, t5
                  remuw        s2, a6, t3
                  nop
                  divu         s11, t1, s9
                  remu         a1, s5, a7
                  mulw         ra, zero, s3
                  lui          s2, 609402
                  sltu         t0, gp, s5
                  srliw        a3, s4, 31
                  xori         a0, t1, -935
                  srliw        tp, s0, 0
                  xori         s11, a7, -2030
                  sraiw        t0, a2, 25
                  mulw         sp, a5, s4
                  srli         s7, s5, 41
                  remuw        ra, a3, s9
                  remw         s9, s1, t3
                  addi         gp, s7, -301
                  slti         a6, s9, 1402
                  rem          a4, t2, ra
                  srlw         t6, a2, s9
                  addw         a6, ra, a0
                  remuw        tp, zero, s5
                  xor          a3, s5, t3
                  divu         s1, s2, t2
                  subw         a7, a1, s7
                  sltu         s6, a2, t6
                  srl          t5, t6, a7
                  divuw        s9, a2, tp
                  remu         t2, s5, a1
                  div          s6, a7, ra
                  divuw        t6, s0, gp
                  andi         a4, s1, 1379
                  remuw        s4, s10, t2
                  srli         s7, s0, 59
                  xori         a3, a0, 1289
                  mulw         a1, s4, s4
                  mulh         s4, s7, s8
                  remu         s10, s3, zero
                  nop
                  addi         s7, a4, -661
                  mulhsu       a5, a7, s4
                  mulw         a4, t3, s0
                  lui          t3, 239921
                  ori          s10, a6, 731
                  srai         t0, a3, 58
                  mulhsu       a3, sp, tp
                  sraw         t2, s5, sp
                  sltiu        a6, s5, -511
                  andi         zero, s3, 835
                  lui          t5, 570403
                  add          t2, t6, ra
                  sraiw        a0, s6, 8
                  ori          ra, t0, -1007
                  andi         s4, s8, 908
                  remw         t4, s4, sp
                  srl          s9, a7, a3
                  addiw        a7, a4, 785
                  srlw         a7, a6, a2
                  sraw         s9, s2, t4
                  ori          a4, s9, 479
                  xori         s1, a5, -1592
                  xor          ra, s1, t6
                  addi         s9, sp, 438
                  sll          t0, t4, t4
                  mulhu        t1, a0, tp
                  sraiw        t0, tp, 13
                  srai         s1, s5, 62
                  rem          a0, a6, a3
                  auipc        a7, 568002
                  xori         zero, s0, 1050
                  srli         a1, a0, 0
                  srliw        t3, s4, 5
                  srli         t6, s0, 38
                  subw         s1, s1, ra
                  nop
                  srli         s6, t5, 14
                  mulh         t4, s10, s7
                  sllw         a5, s0, zero
                  srl          s9, t1, s10
                  slli         t2, a5, 10
                  lui          a7, 588228
                  div          a1, zero, a5
                  srai         zero, a4, 48
                  sltu         a7, s0, t1
                  xor          a6, t1, sp
                  mulhu        a4, s8, s5
                  rem          t3, s1, s4
                  div          s10, s3, s2
                  ori          s7, s7, 1854
                  sltiu        t3, sp, 450
                  sraiw        t4, a5, 26
                  slliw        s6, t5, 13
                  remuw        s2, s3, s6
                  slti         tp, s10, 1548
                  slti         s7, s4, 1030
                  sll          zero, t3, a4
                  divuw        t4, a6, t3
                  remu         s5, t1, s8
                  lui          sp, 195079
                  mul          t1, a6, t6
                  or           s11, s0, s3
                  slli         t3, a5, 8
                  addw         s1, t5, a2
                  mulhsu       a4, s4, t5
                  auipc        s1, 316751
                  ori          s7, t2, 1690
                  addw         t3, s11, t4
                  subw         a7, zero, t0
                  lui          ra, 721266
                  rem          a4, zero, a2
                  ori          a3, s3, -449
                  or           a3, a1, t4
                  slt          a0, s6, s1
                  addiw        s1, s10, -531
                  sra          s7, s9, s3
                  srliw        ra, s1, 2
                  sub          a0, ra, t4
                  ori          gp, a6, -618
                  sltu         t6, gp, s1
                  divuw        t3, s0, gp
                  ori          s10, s5, -1682
                  slti         t0, s6, 1494
                  lui          a1, 466814
                  addi         a2, a6, -98
                  slt          t3, a3, s3
                  lui          a4, 656457
                  slti         t2, t1, -2024
                  sllw         s7, s1, a0
                  divw         ra, t4, ra
                  addi         t6, t0, 1807
                  and          t3, a3, s9
                  addiw        s7, a7, -1511
                  slli         tp, a7, 34
                  sltiu        s9, a5, 1781
                  sraiw        s5, t0, 25
                  remuw        a7, zero, s3
                  remu         a6, s4, ra
                  addiw        s11, s11, -1633
                  and          s9, t3, s1
                  slti         t3, tp, 1303
                  xori         s6, s10, 1028
                  slt          t5, t5, gp
                  lui          t1, 455583
                  xori         a5, ra, -1008
                  sll          t6, s9, a2
                  mul          s10, ra, a2
                  mulhu        t2, t6, s8
                  divuw        a7, t1, s11
                  sra          s4, sp, a7
                  rem          s2, tp, t0
                  lui          s1, 743199
                  srl          t6, s2, a2
                  slt          a1, a2, s2
                  ori          t5, s0, -1822
                  sltiu        a4, s9, 460
                  slli         a3, t2, 19
                  slti         zero, s5, -697
                  remuw        a7, a4, s7
                  srliw        a0, s2, 20
                  srai         a5, s10, 58
                  xor          a1, s4, gp
                  andi         s1, t1, 804
                  and          s7, a1, s3
                  add          a0, tp, s1
                  subw         ra, s3, t4
                  sltiu        a0, ra, 358
                  andi         a6, ra, 567
                  srai         sp, a3, 58
                  div          t4, s7, s11
                  addi         t6, s10, -1475
                  mulw         a5, a6, s6
                  sub          a0, s1, sp
                  xor          s1, a1, s4
                  slt          s10, s9, a2
                  xori         a7, zero, 1984
                  slliw        s2, s7, 4
                  remuw        a1, s5, a6
                  div          a5, s0, a0
                  remuw        gp, a7, t1
                  or           s5, s4, s3
                  and          a0, tp, t2
                  srl          sp, s8, t6
                  rem          a7, s10, s9
                  sllw         s5, zero, a7
                  sltiu        s9, t0, -939
                  srliw        s11, tp, 4
                  mulw         t3, tp, a2
                  ori          a3, a4, -867
                  mulhsu       t2, sp, s4
                  slli         t3, zero, 16
                  subw         t6, t4, s0
                  mulhu        a6, t4, s10
                  divw         sp, s4, t0
                  slti         s7, t5, -1782
                  xori         gp, a6, -2018
                  xori         s4, s10, 243
                  addi         s11, t5, -618
                  and          a0, a3, sp
                  and          zero, t6, s9
                  divu         s5, s0, s8
                  srlw         tp, t6, s10
                  sub          s7, a1, t1
                  mulw         tp, gp, s11
                  slli         s10, s4, 22
                  srli         s7, zero, 41
                  slliw        s9, a1, 5
                  xori         a3, s0, -1932
                  addiw        a7, a4, -43
                  and          a2, s6, s8
                  srlw         zero, s4, gp
                  ori          a2, s9, 613
                  andi         s5, gp, -1858
                  xori         t3, gp, -838
                  mulh         tp, s1, t1
                  remw         a1, a0, t0
                  srai         zero, s8, 26
                  xori         a2, s5, 700
                  sub          t2, t2, s8
                  andi         s6, a0, 1471
                  add          a6, gp, s9
                  auipc        ra, 124779
                  sra          s2, zero, sp
                  srl          t1, t0, t4
                  div          t1, t5, s9
                  srliw        t5, a1, 30
                  addw         a1, t6, a2
                  remuw        s4, s0, a2
                  slti         a7, t5, -1875
                  srai         t3, s4, 47
                  sub          s1, a3, s3
                  mulhsu       t2, a5, tp
                  xori         t1, zero, 321
                  auipc        a2, 393007
                  sub          ra, s9, a0
                  divuw        a3, s7, zero
                  remuw        a7, tp, s6
                  remu         a6, s4, ra
                  addi         a1, a6, 199
                  srl          a3, s1, s9
                  nop
                  mulw         s11, t1, s1
                  slliw        ra, a1, 14
                  nop
                  or           s9, s2, s4
                  slt          a1, s6, s3
                  srliw        a4, a7, 16
                  addi         sp, a7, -1509
                  mul          gp, t6, t5
                  slli         a7, a0, 32
                  divuw        t2, s9, gp
                  slliw        s11, t2, 16
                  srlw         s1, a1, t3
                  addiw        t4, s1, 1591
                  slliw        a3, t3, 21
                  and          s11, s4, a4
                  mulhu        s4, a5, s10
                  addiw        s7, s5, 1117
                  xor          sp, t4, a3
                  srlw         tp, s7, s9
                  sraiw        t6, a7, 19
                  div          s1, a6, t2
                  div          tp, a2, a7
                  addi         s2, t5, -992
                  srlw         ra, t1, a2
                  divuw        a4, s10, t3
                  ori          s11, s3, -1220
                  mulw         s9, s3, s10
                  sraw         a0, t1, s1
                  add          ra, s10, s7
                  addi         gp, tp, 1459
                  xor          t3, t5, s5
                  sub          s1, s10, s5
                  remuw        s5, a1, s8
                  srlw         t3, s5, a5
                  divuw        a7, a6, s11
                  sltiu        s1, s4, -77
                  xor          a3, a2, s4
                  mulhu        s10, a4, s3
                  srai         t4, s9, 42
                  or           s7, s0, s2
                  rem          a1, a6, a0
                  sra          tp, sp, a2
                  slliw        s7, s0, 29
                  srli         zero, tp, 0
                  addiw        a0, s4, -1799
                  srlw         s2, t3, s5
                  srliw        zero, t4, 8
                  slti         s1, t2, -853
                  lui          s11, 260270
                  srl          tp, s4, s8
                  mulw         a4, t2, s8
                  mulhu        tp, s0, a5
                  mul          ra, gp, a4
                  srli         s2, s1, 49
                  srliw        s4, s5, 28
                  sll          s2, a2, sp
                  remw         s1, s5, a5
                  slti         t2, s6, 1116
                  addi         sp, s1, -876
                  rem          tp, a5, t3
                  sltiu        a6, a0, -632
                  slliw        s1, tp, 9
                  mul          a4, t4, s3
                  srli         zero, zero, 50
                  slt          gp, t4, a3
                  andi         s1, t4, 1990
                  sraw         a3, s10, s3
                  mul          s9, ra, a6
                  slt          gp, s2, t0
                  sraiw        a2, t0, 26
                  sll          t2, t2, a7
                  remw         t4, s5, gp
                  addiw        s7, t3, -598
                  subw         s4, a3, a0
                  divu         s9, ra, s10
                  add          s5, s2, s4
                  sltiu        ra, ra, 724
                  divuw        s9, sp, a2
                  sraiw        gp, s9, 4
                  remu         t3, s7, t3
                  slti         a7, s3, 43
                  subw         t6, t1, a5
                  div          sp, s2, ra
                  sraiw        a3, s7, 23
                  divuw        s6, tp, gp
                  add          a7, a6, t1
                  nop
                  srliw        s10, a2, 18
                  slliw        a2, a2, 28
                  or           a0, t6, t2
                  addw         ra, a5, t4
                  add          a5, s7, ra
                  mulw         t3, t2, gp
                  andi         a1, a2, 643
                  div          t2, t0, s11
                  srli         a7, t4, 12
                  slliw        s9, sp, 2
                  divu         t4, t1, a3
                  mulhu        s9, a1, s2
                  slliw        a3, a4, 19
                  srli         t3, s3, 57
                  remuw        s10, a2, gp
                  divu         gp, a1, a2
                  ori          t0, t6, -1527
                  lui          a2, 119946
                  nop
                  slt          t5, s6, s2
                  remuw        t2, s11, a0
                  addw         s6, t5, s9
                  subw         s5, t5, a3
                  rem          sp, a0, s9
                  mulhsu       a6, s11, a4
                  divu         a2, s9, ra
                  nop
                  srlw         t4, gp, t0
                  slliw        zero, zero, 5
                  sraw         s11, tp, zero
                  nop
                  sraw         s1, s10, a3
                  slliw        s5, s0, 22
                  addi         a3, s6, -838
                  remw         s10, t4, a1
                  andi         gp, gp, -632
                  mulhsu       s5, s3, t3
                  sraw         a7, t0, a2
                  mulw         a6, s3, s7
                  sra          s7, s10, a7
                  srlw         sp, a5, s3
                  or           a1, s2, ra
                  mulh         s7, s2, t5
                  sra          s11, gp, a3
                  div          s11, t1, t4
                  sltu         a0, sp, a7
                  srli         s9, s6, 39
                  lui          a6, 655834
                  srai         a4, t2, 14
                  mulhsu       tp, sp, s11
                  remw         t2, t6, s1
                  sraiw        s1, t6, 30
                  divw         zero, ra, t6
                  srl          s11, s3, s0
                  sll          s11, t6, a2
                  sraiw        zero, t4, 12
                  xor          a6, t6, s2
                  sltu         t2, gp, a2
                  sltu         zero, t0, a4
                  remu         a1, a6, s10
                  addiw        a0, s11, 315
                  div          zero, t2, a6
                  xori         a7, t1, -664
                  xori         tp, a3, 1443
                  sub          t3, ra, a1
                  xor          t3, s11, t6
                  srliw        s11, t4, 27
                  divw         s11, s0, s6
                  remuw        a3, a3, t3
                  mulhsu       a1, s4, s1
                  addw         gp, s0, tp
                  divu         t3, s9, s10
                  subw         gp, gp, s8
                  addw         s10, s11, s8
                  and          a1, t2, s1
                  div          t1, a7, t0
                  addi         s6, s3, 977
                  or           s2, ra, a7
                  xor          t0, gp, t2
                  slli         a3, a5, 14
                  or           s6, s3, a3
                  ori          a7, s4, -1380
                  srliw        s9, s7, 9
                  srli         gp, s5, 39
                  divuw        t1, s8, a6
                  addiw        t1, s7, 1478
                  sllw         s1, t5, s1
                  sraw         t3, tp, a0
                  srliw        s1, t6, 28
                  sll          a0, t2, t3
                  xor          s7, gp, t6
                  sltiu        zero, s0, 1471
                  addiw        zero, a1, 1257
                  ori          t3, t1, -1009
                  addiw        t1, s0, -1863
                  ori          a4, s10, -641
                  sltiu        s2, s0, 252
                  xori         s10, s7, 1650
                  srl          s9, sp, t5
                  srliw        zero, s7, 28
                  subw         t2, gp, t4
                  divu         s7, s9, t6
                  divuw        s4, s8, s6
                  add          a6, s1, t4
                  slti         tp, s4, -1228
                  srliw        a6, a2, 27
                  remuw        s11, s2, a3
                  rem          t5, t3, a3
                  slti         s10, s6, 1662
                  slti         t6, s9, 846
                  nop
                  srliw        s10, a3, 21
                  mulhsu       s1, gp, a3
                  nop
                  sraw         s9, s4, tp
                  lui          a6, 982646
                  auipc        s10, 340317
                  slti         t1, t4, -1531
                  or           a6, s10, s3
                  srlw         s4, s1, a1
                  srliw        t4, t2, 24
                  mulhsu       a2, gp, a7
                  remw         a0, s9, a0
                  sllw         zero, t3, zero
                  mulhsu       s7, t2, t6
                  remuw        t3, zero, s7
                  sltiu        sp, t5, -962
                  slti         s1, s9, 374
                  remw         a5, t1, a0
                  mulw         t0, a6, a5
                  srli         s9, t0, 25
                  mulw         s11, t1, t3
                  mulh         a6, a7, t2
                  add          a6, a7, s2
                  xor          sp, zero, s3
                  mul          s10, t4, t5
                  auipc        t3, 529730
                  divw         zero, a1, a1
                  and          s6, a4, s7
                  divuw        a7, s9, s5
                  sra          gp, a6, s3
                  rem          ra, sp, zero
                  divu         zero, s7, s7
                  srai         s9, a1, 22
                  ori          t2, zero, 665
                  divuw        t6, s7, t5
                  srlw         s10, s11, t6
                  or           s7, t4, s6
                  srai         s11, s5, 63
                  addiw        s4, s9, -1957
                  and          a3, a0, a2
                  sltiu        t2, sp, 2018
                  addw         a6, gp, t2
                  xori         t1, t6, 1013
                  mulhu        s6, ra, s0
                  or           a4, s8, s2
                  subw         a0, a7, s2
                  sltiu        a1, gp, -23
                  slti         ra, s5, 59
                  rem          zero, s9, t4
                  sra          a6, s11, t6
                  sllw         a2, a1, t2
                  mul          a1, s2, t3
                  srai         a7, s7, 59
                  mulhsu       s9, t5, t0
                  divu         a2, tp, t5
                  sltu         a3, a4, t6
                  slt          a4, a0, a6
                  addiw        t0, s7, 2012
                  mul          a4, t0, tp
                  slli         s1, s6, 48
                  andi         gp, a4, 1462
                  sraiw        t5, t2, 3
                  sub          tp, a4, s5
                  addiw        s5, s10, -331
                  addw         s1, zero, tp
                  rem          sp, s3, s6
                  mulh         s6, t1, gp
                  sraiw        a4, s0, 0
                  addiw        zero, a1, 429
                  sub          sp, a2, t1
                  andi         s4, gp, -1115
                  srliw        s11, a7, 13
                  mul          a0, t3, s1
                  srl          a7, s0, a3
                  rem          a7, a5, a2
                  remuw        t1, ra, s3
                  slti         a5, s2, 1881
                  and          s10, s7, s4
                  mulhu        a7, zero, t3
                  remw         s5, t5, a2
                  sltiu        s2, s4, 1062
                  divw         s7, t6, s11
                  sltu         s10, t6, a6
                  rem          a1, gp, s6
                  addw         gp, sp, a6
                  rem          s2, s11, tp
                  add          s5, a6, s7
                  subw         a2, a0, a4
                  mulhsu       a0, a0, t6
                  sllw         s6, zero, tp
                  xori         t1, ra, -1299
                  andi         gp, s6, -979
                  mulw         s11, a6, gp
                  sltiu        s2, t1, -565
                  sra          t6, s2, a0
                  srli         a5, s2, 37
                  srai         s7, t0, 46
                  slliw        sp, s7, 29
                  sll          t3, t2, s8
                  sra          a2, a3, t0
                  ori          sp, s7, 357
                  subw         a0, a5, t4
                  mulw         sp, sp, s1
                  subw         s6, s3, a7
                  sll          a1, t4, s9
                  divuw        t5, s2, t4
                  lui          s1, 755660
                  srai         tp, s4, 2
                  slti         t1, a6, 1093
                  divuw        a2, s3, s6
                  nop
                  ori          t6, t4, -1291
                  sll          zero, tp, t3
                  srliw        s5, s8, 5
                  divuw        a3, s5, t2
                  mulw         a3, a3, a6
                  slti         a2, t1, 611
                  mul          a7, ra, tp
                  xori         s7, a6, 1437
                  srai         t3, s11, 23
                  remw         gp, a7, t3
                  srai         t3, tp, 63
                  slti         t5, s0, -1999
                  remu         t0, s6, t5
                  srai         s11, s2, 16
                  mulw         tp, a0, s8
                  addw         s4, a0, tp
                  slliw        s11, gp, 16
                  remuw        zero, s6, a7
                  remuw        zero, s9, sp
                  sraw         t2, a0, a4
                  or           a0, zero, s5
                  slliw        s6, s3, 12
                  mulw         a3, t6, t4
                  srai         s5, ra, 41
                  andi         tp, s10, 285
                  rem          t6, a0, s4
                  slli         a1, gp, 51
                  auipc        t4, 452551
                  remw         ra, zero, t0
                  sltiu        a6, a7, 1987
                  sraw         a1, t4, sp
                  sltiu        a7, s2, 1220
                  rem          t2, zero, t1
                  ori          s9, gp, -1452
                  divu         t6, a7, t1
                  sub          tp, t3, s4
                  rem          zero, zero, tp
                  slti         gp, s8, -1385
                  addiw        tp, a2, 611
                  mulh         s10, t4, zero
                  ori          s9, s8, -1738
                  divuw        a3, s10, t6
                  xori         zero, a3, -432
                  and          a2, s4, gp
                  xori         s1, a6, -1769
                  xori         a0, sp, -1328
                  slti         s5, s11, 1684
                  lui          s11, 49862
                  add          t3, s9, a2
                  sra          s11, s1, t4
                  srl          sp, a2, s4
                  slliw        s7, t4, 10
                  slliw        t2, a0, 7
                  andi         a2, s7, -1936
                  add          s7, s7, t0
                  slti         s5, tp, 1805
                  divw         s4, t2, ra
                  xor          a7, s0, a1
                  srl          a7, t1, t5
                  slt          tp, s10, s11
                  srli         zero, tp, 20
                  remw         s2, t6, a3
                  mulh         a6, gp, s7
                  rem          s5, t4, ra
                  ori          sp, t0, 56
                  remuw        a0, t5, a1
                  srlw         s1, a0, s7
                  subw         s2, t1, a5
                  add          a7, a7, a6
                  srli         a5, t6, 14
                  sra          s1, s7, s1
                  remu         t4, a3, t4
                  sll          s6, t5, a5
                  xori         a2, a4, 242
                  srl          a3, s7, s4
                  subw         a6, t4, a1
                  add          s2, s0, zero
                  slli         a1, ra, 15
                  sra          t2, s9, tp
                  sll          s6, s10, t3
                  remu         t4, a4, s7
                  rem          s5, s8, a1
                  slli         ra, s4, 2
                  auipc        a5, 721362
                  mulhsu       a1, s8, t4
                  slt          t6, ra, s5
                  mulh         sp, s1, s3
                  remu         a3, a5, s9
                  div          s9, ra, ra
                  srlw         sp, a2, s7
                  slli         t5, s3, 12
                  mulhu        t5, sp, t1
                  slt          t1, t3, sp
                  lui          s2, 805586
                  mulhsu       a7, s2, s5
                  xor          a5, t4, a4
                  sltu         sp, s11, s10
                  srliw        a3, t4, 13
                  div          t5, a1, gp
                  xor          tp, t3, s2
                  remw         s9, zero, t4
                  addiw        a1, s4, 1865
                  addi         t0, t2, 259
                  sllw         s7, a4, a5
                  srli         a1, tp, 30
                  subw         t4, t3, a2
                  srli         t1, s8, 56
                  mul          s4, s9, a5
                  rem          t6, s4, zero
                  mul          s7, s8, a2
                  sltiu        s10, ra, -219
                  rem          t6, t1, gp
                  addi         t5, a3, 28
                  sll          a5, zero, zero
                  addiw        a1, s4, -516
                  remw         t2, t4, s2
                  lui          tp, 77373
                  addiw        s4, s5, -963
                  sraw         tp, t6, ra
                  srli         a0, a1, 30
                  slt          a7, a0, a1
                  sraw         s2, a4, s7
                  srl          a7, s11, tp
                  sltu         t3, s5, s2
                  remw         s11, s0, a5
                  div          a5, gp, s2
                  sltu         a4, a7, a6
                  divw         a1, s6, a6
                  srliw        ra, a3, 2
                  mul          a0, a5, s11
                  auipc        s6, 817611
                  sll          t3, s4, s0
                  sra          t5, a1, a7
                  add          zero, s5, s1
                  sltiu        s6, a2, 1067
                  sltiu        s4, a6, -2040
                  sltu         t2, zero, t0
                  div          t3, s7, s3
                  subw         tp, a3, s3
                  subw         t2, gp, s5
                  sltu         s5, t4, s8
                  lui          s4, 829173
                  remu         a3, s11, s10
                  addi         s4, a6, -676
                  addiw        s7, a6, 1723
                  divu         a7, t5, s2
                  sub          a4, s6, s6
                  remuw        t0, a6, gp
                  xor          a4, t6, a7
                  addi         a1, sp, 1926
                  slliw        t5, zero, 8
                  sll          s6, a7, s3
                  remu         t2, a7, tp
                  xori         a0, sp, -2003
                  sltiu        ra, sp, -469
                  rem          sp, s6, a6
                  remuw        gp, s9, a0
                  remw         a1, t4, s6
                  sllw         a3, a4, t1
                  ori          s1, s7, 1869
                  srai         s11, s7, 41
                  mulhsu       a6, s1, s1
                  addi         zero, s1, 1580
                  auipc        zero, 308229
                  sraiw        t5, s10, 1
                  mulhsu       t3, a7, s1
                  remu         a5, a1, s2
                  sll          a3, t0, s5
                  auipc        a6, 922400
                  auipc        s4, 310398
                  subw         a1, t4, a5
                  divu         t5, gp, t3
                  remuw        t0, a3, t0
                  mul          a1, s9, s8
                  remuw        s9, s5, tp
                  srliw        s5, s6, 17
                  mulhu        a6, t6, t1
                  remu         s11, s3, s0
                  addw         a1, s11, a3
                  slliw        a2, a2, 16
                  addi         a2, s4, -644
                  srai         a6, s7, 38
                  divu         gp, t0, zero
                  srai         s5, t2, 61
                  srai         t5, a3, 62
                  slt          s7, s7, a6
                  add          t0, tp, t6
                  sraiw        t3, a3, 31
                  slt          s6, a5, s10
                  remu         t6, t1, a5
                  xor          a7, s10, ra
                  divu         a7, s9, t0
                  and          t5, t0, ra
                  sll          a7, s4, s7
                  srli         a1, a2, 25
                  ori          a3, s7, 258
                  srliw        t1, a4, 12
                  remu         ra, a2, sp
                  or           a6, a4, s11
                  divw         sp, s7, a6
                  mulhu        zero, s1, s7
                  addiw        a7, a2, 56
                  remuw        sp, t6, s10
                  mulhu        a4, t1, s1
                  sltiu        a2, t0, 740
                  srliw        a1, s6, 13
                  mulhsu       a4, t6, a6
                  srai         t1, zero, 6
                  slt          a7, a2, a3
                  divw         s11, a1, ra
                  mul          a4, tp, s9
                  add          ra, a6, t0
                  remuw        s10, ra, s7
                  srliw        s10, s3, 7
                  addiw        a5, a4, 1507
                  srli         t6, t2, 62
                  sraiw        s10, t4, 13
                  sraw         t5, s5, a7
                  nop
                  ori          s1, a1, 1658
                  subw         tp, s1, s7
                  divuw        s7, sp, a1
                  slli         t6, s0, 18
                  sll          a6, t5, s11
                  mulw         a6, t5, s5
                  xor          s10, t3, t2
                  remu         t5, a6, t2
                  auipc        t6, 279757
                  srlw         a2, zero, a1
                  sraw         s9, s11, t6
                  nop
                  sraiw        s10, s3, 5
                  slliw        t3, a3, 5
                  rem          a2, s2, t1
                  div          s4, tp, a6
                  sraiw        s10, s3, 1
                  div          gp, a4, t6
                  mulhsu       ra, s10, s9
                  divu         s1, s6, t0
                  sra          s7, s4, s3
                  sra          t1, s11, s3
                  sltiu        t3, s11, 1434
                  remw         a1, s11, s6
                  and          tp, s1, sp
                  ori          s11, t4, 1203
                  sll          a0, zero, s11
                  sll          sp, tp, s9
                  subw         a2, s4, t1
                  slti         t6, s2, -1152
                  mul          a3, s3, s0
                  add          zero, t0, t2
                  srlw         ra, a1, s10
                  remw         tp, s3, a7
                  subw         sp, t0, a7
                  sub          a5, t2, a3
                  sltiu        a5, s1, -1794
                  remuw        s11, t1, t0
                  sraiw        ra, s5, 22
                  and          a6, a7, zero
                  sltiu        s2, s2, 735
                  mul          s10, t5, t5
                  srliw        a0, t5, 15
                  addw         ra, a2, ra
                  slliw        s2, sp, 21
                  slli         gp, t6, 56
                  srli         gp, a2, 46
                  addi         s11, gp, 74
                  sraw         t6, a5, t3
                  nop
                  subw         s9, s9, s11
                  srli         a6, t2, 28
                  divuw        zero, tp, s5
                  div          a4, a4, ra
                  remu         ra, s4, a4
                  div          a6, a7, t3
                  sltiu        a1, s9, -871
                  sub          s4, t2, a1
                  slliw        t3, a5, 5
                  and          t0, s8, t0
                  divuw        s2, s2, a0
                  srlw         s5, zero, a0
                  div          s10, s0, a5
                  addiw        a4, gp, -391
                  sraw         t3, s10, tp
                  addw         s11, s5, tp
                  mul          s4, s8, t6
                  srli         a5, t6, 33
                  addw         s11, sp, gp
                  sraw         a1, t0, t2
                  lui          s2, 243439
                  remu         a0, ra, ra
                  srlw         s4, a2, s6
                  divw         ra, a2, s6
                  sltu         tp, zero, s9
                  mulh         a1, a4, gp
                  mulhsu       a3, t0, a2
                  slti         t5, a4, 534
                  divu         t5, tp, s3
                  divu         a6, s10, t5
                  srl          s6, t6, s9
                  srai         t3, a0, 35
                  srli         t6, s2, 47
                  divw         a7, a5, s10
                  slliw        a4, t2, 29
                  lui          s2, 936603
                  addi         s4, s5, -209
                  addw         s5, s8, s8
                  slt          t5, s8, t4
                  slli         s1, s10, 49
                  andi         a4, t0, -978
                  mulhu        s10, a5, s3
                  xori         s1, a4, -1329
                  auipc        a0, 870559
                  xor          s5, s4, t5
                  lui          a2, 314271
                  div          s1, s5, gp
                  auipc        ra, 613848
                  divuw        sp, a3, s4
                  divw         s7, t4, gp
                  auipc        a2, 888792
                  srli         s11, s1, 38
                  sll          zero, s3, t4
                  srai         t5, s4, 46
                  srliw        t4, a3, 26
                  mulw         t2, a0, ra
                  nop
                  sll          t2, s5, s5
                  andi         s10, s3, -636
                  ori          s5, t1, 286
                  xor          s4, t4, zero
                  xori         t5, s11, -141
                  slliw        s11, t0, 2
                  lui          s4, 256375
                  andi         t6, s4, -1128
                  add          t2, s11, sp
                  srlw         s2, s5, s0
                  srlw         t5, s5, s10
                  xor          t1, s10, s5
                  ori          s10, t1, -1497
                  and          s11, zero, a1
                  srl          ra, a6, s10
                  divw         ra, tp, sp
                  sra          a1, ra, a4
                  slti         zero, sp, 755
                  add          a4, a4, s4
                  sra          t5, t5, s9
                  srli         t0, s10, 8
                  divuw        a1, gp, t0
                  srai         t0, t3, 26
                  srli         a6, tp, 32
                  sraw         s1, a5, a3
                  mulw         sp, a2, t0
                  add          zero, s3, s1
                  nop
                  nop
                  srliw        t2, s4, 15
                  sltu         s5, s8, a5
                  sraiw        s2, s9, 12
                  srliw        s6, s7, 20
                  divu         s10, s10, s1
                  remuw        zero, s5, s7
                  slli         s7, a2, 46
                  slti         s2, s6, 288
                  remuw        s10, sp, s10
                  srliw        s5, t1, 14
                  sraw         t3, s1, t4
                  andi         sp, ra, 1741
                  addw         s10, a6, ra
                  subw         a3, a7, t6
                  rem          s2, s4, gp
                  sltu         a6, t2, s2
                  srl          s9, s4, s9
                  sltiu        a4, s1, 717
                  srl          t1, t5, t6
                  sra          gp, t3, s1
                  mulh         t3, a4, a1
                  addw         t2, s1, s6
                  sllw         a6, s5, a5
                  slliw        s7, s8, 26
                  slliw        s1, t1, 26
                  sll          t4, t6, s7
                  divuw        s6, a4, t5
                  mulhsu       tp, s10, ra
                  xori         a5, t2, -1847
                  srliw        a2, s3, 13
                  xori         a1, a4, -669
                  mulhsu       gp, s9, s3
                  slli         s1, t2, 3
                  sraiw        sp, s1, 28
                  sraiw        ra, s9, 22
                  sllw         a3, s10, t5
                  divuw        s9, t6, t6
                  xori         s4, s1, -1218
                  addi         s2, a3, 898
                  slli         s4, s9, 4
                  sltu         t3, t3, a1
                  sraw         a0, zero, t6
                  slt          tp, s5, t1
                  slliw        s1, t5, 25
                  remw         t3, s0, s0
                  xor          s9, ra, a0
                  remuw        zero, t0, t3
                  sraiw        t0, t6, 23
                  sub          s6, s9, s4
                  addiw        a6, s2, 1283
                  ori          tp, a3, 714
                  remuw        s5, a6, s11
                  div          gp, s8, t5
                  slti         a1, s11, 1771
                  nop
                  slliw        s4, s4, 2
                  mulhu        ra, zero, a3
                  xori         s1, a4, -782
                  sraiw        s10, t2, 22
                  add          s11, a6, s9
                  sraiw        t4, s6, 11
                  srli         s7, tp, 20
                  divw         zero, s2, s6
                  andi         s1, t0, 1098
                  slt          sp, s6, s8
                  divw         a1, sp, sp
                  srlw         s6, gp, s1
                  addiw        t3, t2, 496
                  ori          tp, gp, -598
                  lui          a7, 776078
                  mulhu        s10, s5, t1
                  mul          t4, s6, a0
                  srliw        t6, s3, 28
                  nop
                  sra          t5, s10, s10
                  xor          a2, s11, s10
                  srliw        a5, s2, 4
                  srl          a6, sp, tp
                  sraw         zero, t0, s7
                  slliw        a7, s11, 4
                  and          t0, a4, t6
                  mul          s11, sp, t6
                  nop
                  srl          s2, s1, zero
                  xor          s5, s2, zero
                  mulhsu       sp, a4, zero
                  sllw         a0, t6, a6
                  remw         s6, t1, a7
                  slli         a2, t5, 26
                  sltu         s7, t6, a1
                  or           a2, sp, s4
                  mulhsu       s1, t2, a5
                  addi         t1, tp, 264
                  sll          t3, a3, t0
                  srl          gp, t1, t5
                  ori          a5, a3, 861
                  remw         a3, a7, a3
                  mul          a5, a0, sp
                  lui          zero, 451676
                  sraiw        a2, t5, 17
                  nop
                  divuw        a0, s9, s6
                  sub          t6, a5, s3
                  remw         t0, t0, t3
                  add          s9, s3, s2
                  ori          a5, s9, 880
                  mulhu        a1, a1, s6
                  slt          zero, t0, t6
                  remu         gp, s3, s8
                  subw         s1, a1, s10
                  sll          s4, s7, a0
                  sraw         s4, a1, t6
                  lui          s5, 811582
                  slti         t4, a7, -726
                  remu         sp, t5, t5
                  remu         a6, t3, s1
                  and          t2, t0, s0
                  srai         s2, s10, 21
                  mulh         a6, t3, a0
                  remuw        s6, s10, a2
                  srli         zero, t3, 41
                  andi         s5, gp, 650
                  mulh         s5, ra, s11
                  andi         t5, a5, 2023
                  xor          a4, t0, sp
                  srl          s2, ra, s5
                  slliw        gp, s10, 11
                  mulhsu       ra, s5, s0
                  sllw         s5, zero, t5
                  divuw        t6, s0, a3
                  srlw         sp, s7, t2
                  srai         a2, gp, 52
                  mul          a1, a7, s2
                  lui          a1, 297645
                  sllw         s6, tp, zero
                  rem          zero, a6, s6
                  mulhu        t4, s1, s5
                  srai         s7, s8, 42
                  auipc        t5, 453282
                  srli         s11, t4, 47
                  nop
                  mulw         a3, t6, a6
                  xori         t3, t2, -1742
                  addw         t2, s5, t5
                  mulw         sp, a2, t1
                  sltiu        s5, a4, -1102
                  srli         a3, sp, 25
                  auipc        s7, 718628
                  ori          a6, sp, 1802
                  div          a4, a4, s3
                  lui          zero, 592057
                  addi         t3, s4, -814
                  subw         s4, zero, s5
                  ori          s5, t5, 1415
                  sllw         a6, a2, a6
                  slt          gp, s3, t2
                  divw         s7, t2, s7
                  mulhu        t2, s7, s0
                  rem          a2, s3, s5
                  rem          t0, s11, a6
                  sra          a2, ra, a5
                  sllw         a2, t4, sp
                  sra          t5, s6, a5
                  ori          t6, t5, -499
                  mulw         a0, t5, s5
                  xor          a3, t5, t5
                  remu         a6, a7, s4
                  sra          a1, tp, sp
                  divu         sp, s5, gp
                  sll          a0, a2, s6
                  mulh         tp, s7, t2
                  sll          s1, s7, a4
                  auipc        ra, 749381
                  srl          s5, zero, tp
                  subw         t1, t6, ra
                  mul          t6, gp, a2
                  lui          t6, 911908
                  sll          t0, s5, s3
                  mulw         t5, a7, a5
                  div          s11, t0, a3
                  auipc        a0, 54531
                  remuw        s1, s4, a3
                  srl          ra, s9, sp
                  sltu         zero, s2, s11
                  auipc        s11, 593288
                  ori          s6, a4, -706
                  slli         a5, a4, 32
                  xor          s1, s7, t0
                  divw         zero, s5, s8
                  sllw         t0, s2, a7
                  and          s9, s8, s0
                  mulw         sp, s1, a5
                  auipc        s6, 898229
                  or           s5, a1, gp
                  slli         a2, ra, 16
                  andi         zero, a7, 1680
                  lui          s11, 285067
                  slli         zero, s3, 0
                  sraw         ra, s4, s5
                  divuw        t2, s11, gp
                  addi         t4, t2, -1418
                  sraiw        a2, s3, 14
                  srlw         gp, s4, a0
                  rem          t4, s3, s5
                  srliw        s9, s11, 6
                  auipc        a1, 666162
                  srlw         s9, a7, s9
                  sltu         zero, s6, s1
                  sraw         a5, t4, s5
                  ori          a1, s6, -1998
                  srli         s9, a3, 33
                  add          t4, s4, tp
                  and          s2, t3, t5
                  divw         s1, t0, sp
                  divw         a5, t2, s5
                  addi         s1, a5, 430
                  addw         s7, gp, s6
                  srli         a2, a3, 62
                  sraw         ra, s11, s1
                  slli         s6, s2, 1
                  srai         s2, s0, 39
                  and          t0, a2, s9
                  mulhu        s2, s6, a2
                  or           s4, s2, t4
                  sra          gp, a2, a2
                  auipc        zero, 840535
                  slt          a7, t6, s5
                  mulw         a0, s6, s11
                  divu         a1, a0, sp
                  remu         t5, a7, t2
                  sub          s9, s2, s9
                  mulw         s2, gp, a3
                  divw         s5, a2, s3
                  slli         a7, s5, 8
                  divuw        a3, s3, s0
                  mulhu        s9, t4, t4
                  slli         s11, s7, 63
                  xor          ra, a1, t4
                  sllw         t2, t0, t2
                  ori          s9, tp, 324
                  ori          tp, s10, -272
                  sub          s10, s3, s5
                  sraw         a2, s5, t2
                  sltu         a2, a3, s10
                  remuw        s2, a4, t3
                  mulh         s7, t4, a2
                  and          sp, s0, s2
                  srliw        a5, s2, 29
                  srai         tp, gp, 37
                  sll          t0, t4, s10
                  slti         a0, a6, 753
                  mul          a3, t3, s8
                  auipc        a0, 592784
                  addiw        s10, s3, -948
                  div          sp, a5, a3
                  add          a6, ra, gp
                  addi         s11, a0, 397
                  sltiu        ra, s2, 684
                  srliw        a4, a5, 24
                  mulhu        a7, s9, gp
                  srai         s9, t6, 0
                  div          s5, s4, s4
                  add          a4, a6, a4
                  addiw        s10, t2, -1338
                  slliw        a5, t5, 16
                  mulw         tp, gp, t6
                  sra          s6, s3, s1
                  auipc        t3, 857312
                  sltu         s6, s3, zero
                  sltu         s1, a7, t1
                  div          t5, s6, t4
                  sltiu        ra, a3, -720
                  remuw        t6, s10, s7
                  slli         t4, s9, 46
                  sraiw        t4, a4, 20
                  remu         a7, s1, s7
                  mulhu        s7, s2, tp
                  addi         s10, s3, -896
                  sllw         gp, t5, s11
                  divuw        s6, s9, s3
                  sra          a1, s0, s10
                  or           t0, s3, t4
                  mulh         gp, s7, gp
                  mulhu        s6, s8, s7
                  or           t2, s4, s2
                  div          tp, t2, s5
                  slti         t6, s10, 881
                  addiw        t2, a3, 1708
                  srl          s10, s1, s2
                  slliw        s2, t4, 29
                  subw         a7, t6, s9
                  and          s5, s1, a0
                  sllw         a0, t3, s9
                  andi         a6, a6, -841
                  and          s9, a5, s1
                  slt          t3, s5, s10
                  mulhsu       a2, a1, s10
                  auipc        a2, 993567
                  remw         a3, s3, t4
                  slt          a0, t1, s2
                  div          s2, s9, t5
                  divw         a7, s6, t2
                  remuw        t6, s8, a6
                  sraw         s5, t5, s6
                  slli         a0, a1, 40
                  addiw        tp, s7, -702
                  subw         a6, ra, s8
                  srlw         t5, s3, s10
                  xori         t6, t4, -842
                  remw         a0, ra, t3
                  sllw         a0, s2, a0
                  sll          s7, a0, a3
                  xori         a0, a0, -840
                  subw         s2, s2, t4
                  or           t6, s2, s2
                  sraiw        s1, ra, 19
                  mulhsu       tp, s1, s1
                  remuw        t3, s1, t4
                  mulh         a3, s9, a2
                  mulhsu       s9, s10, t0
                  srl          t0, a7, t0
                  slliw        a0, a6, 17
                  srli         a0, a6, 35
                  sraiw        tp, gp, 18
                  srl          s6, s7, gp
                  divuw        s9, a0, a3
                  slli         a0, s0, 25
                  rem          a4, t5, a3
                  sra          s4, s6, s8
                  or           t4, t6, tp
                  or           a1, s2, s1
                  slti         a5, t4, 611
                  srl          t4, sp, ra
                  sllw         s5, s10, s2
                  srliw        ra, s10, 22
                  addi         t5, s0, 1590
                  nop
                  add          t5, t1, sp
                  slli         a1, gp, 50
                  srl          s11, a0, t5
                  remw         tp, a5, s3
                  and          s10, a6, s1
                  subw         s10, s5, a6
                  slli         t0, s10, 38
                  xori         s1, s9, -1973
                  sub          t6, a2, t3
                  andi         a7, zero, -1423
                  sltiu        s10, t6, -48
                  sltiu        s9, t0, 1759
                  auipc        t0, 461370
                  divuw        a5, t1, s11
                  xori         a0, s0, -243
                  add          s11, s2, s5
                  sltu         a6, s9, ra
                  srlw         t1, s9, t0
                  addw         sp, a7, s8
                  mulh         a7, a2, a4
                  sraw         s7, s5, tp
                  slli         s5, t4, 44
                  and          t3, sp, t4
                  remu         s6, s0, t1
                  nop
                  andi         s4, a6, 661
                  srai         ra, a4, 49
                  mulhu        s4, t1, s8
                  or           s4, s7, zero
                  slliw        s11, s4, 15
                  mulh         t3, ra, s8
                  andi         t5, s7, -1632
                  addiw        t2, t0, -433
                  slt          s4, s7, zero
                  sraw         t5, s10, a2
                  sltu         t2, a1, t1
                  remu         t1, t0, s7
                  sll          t3, gp, s4
                  lui          s7, 650217
                  xori         s1, s0, 1790
                  subw         t1, s7, a2
                  mul          t2, tp, s1
                  remw         t6, a2, sp
                  sub          a3, a0, s4
                  slli         s5, s4, 32
                  or           a0, a2, t5
                  rem          s10, a2, s3
                  sraw         a0, sp, s2
                  mulw         s1, a3, s5
                  addiw        zero, a5, 1697
                  or           tp, a3, s5
                  mulw         a0, tp, tp
                  sltu         s9, s11, s11
                  div          s5, ra, t3
                  remuw        a7, s3, a6
                  sllw         s5, s5, s10
                  auipc        s2, 805475
                  sraiw        a6, a1, 10
                  xori         s11, s8, 954
                  div          a5, gp, a2
                  lui          t0, 834188
                  mulw         a7, t5, a5
                  remw         a1, s10, t3
                  remuw        a3, s4, t4
                  sub          gp, a0, a1
                  xori         t5, s5, -1417
                  ori          a7, s0, -1955
                  sraw         t5, s3, zero
                  addi         t5, s4, -1649
                  remuw        t2, t2, t0
                  and          a6, t1, a0
                  add          tp, a7, s5
                  sraw         a4, t3, s8
                  addi         sp, zero, 282
                  addw         t2, s9, s9
                  sltu         tp, t1, s4
                  srai         zero, s9, 37
                  srlw         s11, t1, s5
                  mulhu        a3, ra, s9
                  xori         s7, t5, 1856
                  subw         s4, a5, ra
                  xor          zero, s2, s0
                  sltiu        a6, s0, -1259
                  remuw        zero, s3, a6
                  addi         a3, t6, -1791
                  nop
                  ori          zero, t0, 1561
                  addi         t3, t6, -604
                  mulh         a2, s10, tp
                  srliw        s5, a6, 13
                  sltu         sp, sp, tp
                  sraw         a5, t0, s2
                  subw         t5, t4, a1
                  add          s9, s5, a1
                  addw         s5, a5, t4
                  or           s9, s11, a2
                  ori          a6, a2, -1053
                  rem          a6, a6, s0
                  xori         ra, ra, 1528
                  remu         a1, s8, t0
                  sltu         s1, s4, a2
                  sub          t4, s11, a6
                  srliw        s2, a3, 24
                  slli         t4, t1, 54
                  divuw        s10, t3, a4
                  xori         s9, s2, 1762
                  srli         s9, s7, 27
                  slliw        t3, s2, 27
                  lui          sp, 559744
                  remuw        gp, sp, t5
                  sltiu        gp, s6, -647
                  srliw        s4, s6, 30
                  slliw        a5, s3, 24
                  srai         s2, s4, 42
                  sllw         t1, a2, a4
                  mulh         s11, s11, s11
                  xor          t2, gp, ra
                  or           s7, t1, a4
                  mul          s9, a0, sp
                  sra          zero, s9, a3
                  slt          s2, s11, t4
                  divu         s5, zero, tp
                  srai         s2, zero, 23
                  sltiu        a2, s7, -935
                  sllw         a1, a0, a5
                  slti         s10, ra, 2005
                  sraiw        s2, s4, 13
                  divw         a7, a3, s1
                  addi         a2, a4, -1749
                  divu         s7, s5, a3
                  lui          t2, 1036710
                  andi         s10, t6, 117
                  nop
                  srlw         s7, a6, t1
                  divu         s10, s3, s9
                  sllw         a1, s9, s10
                  srli         a6, s5, 28
                  remu         a4, zero, t5
                  slti         a6, s10, -365
                  mul          t2, t2, s10
                  sraiw        a7, a4, 0
                  sltu         s2, a3, a2
                  srai         a1, s11, 47
                  slliw        s4, s0, 21
                  sllw         a0, gp, s10
                  andi         t6, s9, -216
                  srli         s5, s5, 48
                  lui          tp, 146641
                  sraw         sp, a1, s3
                  mul          s4, t0, t1
                  xor          t1, a5, a1
                  subw         s4, s5, s0
                  nop
                  divu         t5, s11, t2
                  andi         zero, s7, -41
                  sltiu        gp, a4, 1716
                  sraiw        t3, tp, 2
                  addw         s7, t5, a6
                  sraw         t0, s1, t6
                  divw         tp, a2, s7
                  slliw        t5, a4, 5
                  sltiu        a1, tp, -962
                  addi         t0, tp, 1529
                  mulhu        a0, a4, t6
                  remu         t0, a7, a5
                  divuw        t1, t3, s11
                  ori          a3, t4, -1860
                  sraw         t0, a2, s6
                  xor          s4, t6, a2
                  sltu         a2, t1, s7
                  sraw         a1, t5, s6
                  divu         t2, s7, s11
                  xor          a5, t2, a2
                  mulw         a6, t4, s1
                  remw         tp, s4, s2
                  and          a3, s4, s4
                  add          a4, t6, s5
                  remw         sp, a3, s9
                  divuw        s4, s8, t3
                  lui          s6, 901857
                  addi         t6, s10, -133
                  xor          a2, s0, s11
                  subw         t3, ra, s9
                  lui          s11, 375194
                  divuw        t1, t5, s6
                  srai         s9, a4, 55
                  divuw        t4, s0, s6
                  or           s2, s1, s1
                  andi         s1, t4, 1927
                  sltu         t5, a3, ra
                  slti         t0, s8, 525
                  slt          s5, a0, a3
                  sraw         t1, zero, t3
                  sll          t3, a3, sp
                  slti         a3, t2, 943
                  addw         t3, sp, s6
                  mulw         s1, ra, a6
                  addi         gp, s7, -512
                  and          tp, sp, a4
                  mulhu        s5, s2, t2
                  slti         s7, a5, -319
                  slti         a2, a0, -1872
                  add          sp, s3, ra
                  mul          a4, s4, a4
                  sltu         a3, tp, s10
                  slti         t6, a6, 1883
                  nop
                  sltiu        a0, a4, 512
                  xori         a2, a4, -1102
                  slliw        zero, t3, 27
                  addi         s7, s3, -1046
                  sllw         t6, s6, t3
                  slt          t4, s5, s1
                  srlw         s4, ra, zero
                  sltiu        a5, a5, -1980
                  addiw        s4, s9, 85
                  sltiu        ra, s2, 805
                  mulhsu       gp, a6, a0
                  addi         a1, s11, 1615
                  mulh         t2, s9, a6
                  xor          s1, t6, a5
                  mulw         ra, s4, s2
                  and          gp, sp, t4
                  sraiw        tp, zero, 1
                  divw         t3, s2, t0
                  sraw         s10, s10, t1
                  sll          t1, a3, a7
                  mulh         a0, t1, tp
                  addiw        ra, t6, 1352
                  srlw         ra, s0, s11
                  srli         t3, a3, 46
                  srai         s2, s3, 12
                  mulh         t3, t4, s5
                  subw         t4, gp, a0
                  srli         a1, s7, 17
                  sra          t3, sp, a7
                  xor          t6, t1, t0
                  slli         zero, s7, 7
                  rem          a5, s2, a6
                  auipc        zero, 473356
                  remu         t0, a6, a5
                  or           s7, s1, t0
                  addi         a2, zero, 761
                  divu         a6, s9, s1
                  sraiw        a6, a6, 14
                  slt          a1, zero, s3
                  div          t5, a3, s9
                  slti         gp, t1, 1985
                  slti         a0, zero, 812
                  addiw        s11, s4, 963
                  sraiw        s9, s6, 23
                  remu         a7, s3, t0
                  divw         t5, s3, s3
                  nop
                  divw         zero, t5, t6
                  sraw         s1, t0, t5
                  sltiu        a1, a1, 1992
                  slti         a7, t2, -986
                  ori          t3, a4, 1194
                  sll          s11, s1, a2
                  sllw         t5, s4, a7
                  remw         a5, ra, t0
                  remuw        s4, s3, a7
                  sll          s10, a3, t0
                  sltiu        s5, s9, -1374
                  mulhu        s11, s9, a4
                  mulw         s11, ra, zero
                  slti         s5, a3, 241
                  nop
                  andi         t6, t3, -400
                  srlw         a0, tp, s4
                  nop
                  remuw        s6, s5, a5
                  div          s11, a2, s6
                  or           tp, t6, a3
                  lui          s6, 151299
                  srliw        a1, sp, 26
                  addw         t5, t2, s5
                  addw         s4, zero, t1
                  addw         tp, a6, s3
                  div          t2, s7, s4
                  sraw         a0, t6, t2
                  slli         t4, s9, 35
                  add          tp, s0, s0
                  slliw        t0, zero, 1
                  and          t1, a4, t3
                  lui          ra, 964626
                  divu         ra, a3, tp
                  and          t3, a2, a6
                  mulh         s7, a5, a7
                  sll          s7, s11, s2
                  or           ra, sp, gp
                  divu         s1, a3, s11
                  sllw         t4, s3, t0
                  div          s2, s5, s5
                  mulw         s9, zero, t6
                  addi         s4, a4, 1486
                  divw         a2, s11, ra
                  andi         a3, s2, 1768
                  sllw         s11, s7, tp
                  srl          a5, s6, s7
                  srl          t0, zero, s10
                  sraiw        s5, s8, 5
                  slli         a3, a1, 2
                  slti         t6, t4, 1517
                  subw         a7, ra, sp
                  srliw        s1, s10, 13
                  auipc        s2, 736163
                  sll          s11, sp, t5
                  mulhu        a5, gp, gp
                  sllw         ra, a2, a7
                  sltiu        a7, s8, -778
                  sll          s10, s3, t3
                  sraiw        a2, a5, 25
                  srai         t5, s7, 22
                  srli         s2, s10, 50
                  slt          t4, s6, a1
                  div          s10, a3, a7
                  xori         s10, a2, -64
                  ori          s4, a6, 284
                  slti         t6, a1, -1135
                  addi         tp, a3, 242
                  andi         zero, a7, -452
                  remuw        a2, t0, s9
                  srlw         s6, s3, s5
                  addw         a5, s5, s9
                  nop
                  mulw         t3, s1, t2
                  andi         ra, s7, -1774
                  sraiw        t0, a1, 14
                  slli         gp, sp, 49
                  mulw         t4, a5, a2
                  slliw        a0, a1, 24
                  auipc        a7, 301272
                  sltu         a2, a3, s8
                  mulh         gp, t4, a2
                  slti         s1, t1, -1755
                  nop
                  mulhsu       t6, s11, a5
                  slli         s4, s11, 53
                  auipc        s2, 143273
                  divu         a2, a0, s7
                  remw         s7, zero, s0
                  srliw        s10, a0, 2
                  lui          t0, 975083
                  srli         t6, t0, 3
                  sra          sp, s2, a2
                  srli         s1, t2, 31
                  sraw         a0, t1, s11
                  sub          s10, t0, a1
                  xori         a7, t3, -991
                  lui          t4, 62593
                  add          s11, zero, a5
                  sra          t6, t5, a4
                  srli         t5, s4, 34
                  srli         s11, s0, 51
                  sltiu        a6, t5, -1726
                  mul          ra, t5, s7
                  div          gp, t1, a3
                  slt          s2, t6, a2
                  srl          s1, t5, gp
                  ori          s4, sp, -1973
                  or           s10, t0, a7
                  xor          s2, tp, tp
                  srlw         t3, zero, zero
                  xori         t1, t2, 1332
                  or           zero, a2, s2
                  sub          s11, s7, a1
                  sllw         gp, s4, a2
                  sraiw        ra, tp, 24
                  and          a5, s4, a0
                  div          sp, a2, s10
                  auipc        s2, 762250
                  mulh         a1, a5, s5
                  slliw        sp, gp, 12
                  srai         s7, t2, 27
                  sraiw        a2, s5, 4
                  slti         gp, a1, -657
                  mulh         s5, a0, a5
                  sltu         t0, s4, t4
                  andi         a0, s7, 1228
                  mulh         sp, t3, a3
                  divuw        s2, s11, t1
                  divw         a0, s11, a4
                  mul          t5, tp, t4
                  sub          a2, t1, t5
                  mulw         s4, a6, s11
                  slliw        a5, t3, 5
                  mulh         s5, t6, s4
                  addiw        a0, s6, -1667
                  srlw         t3, t2, t4
                  mulhsu       s2, a0, tp
                  srl          t4, gp, a5
                  divw         t6, a1, t6
                  divuw        t0, a4, t1
                  and          s11, a7, s11
                  addw         a7, zero, s4
                  divw         zero, zero, a1
                  or           t4, a4, s7
                  xor          a1, s4, s11
                  srliw        zero, a3, 28
                  srli         a1, a5, 27
                  remw         t5, s1, s0
                  divuw        sp, s1, a5
                  mulw         s6, t3, t5
                  srai         t4, gp, 11
                  or           t6, s6, a2
                  srl          gp, a3, t2
                  sllw         s10, a6, s2
                  divu         s1, zero, t6
                  addiw        a2, ra, 255
                  divw         t4, ra, s2
                  srl          s10, sp, a1
                  mulhu        t0, t0, t5
                  divu         zero, a5, s10
                  or           s11, a6, t1
                  sraiw        s9, t5, 28
                  addiw        t3, t2, -665
                  mulh         s5, a7, a6
                  xor          s5, s7, sp
                  remu         s1, s7, tp
                  mul          a0, s7, t5
                  sraiw        s2, s3, 8
                  xor          gp, s7, s0
                  srliw        sp, a1, 17
                  addi         t2, a3, -1976
                  sll          a1, t5, a3
                  xor          s2, a7, a5
                  divw         zero, t4, a7
                  addw         t5, a5, t4
                  remuw        t0, gp, t3
                  mulh         tp, t4, s5
                  srli         s5, sp, 29
                  subw         s5, t5, s5
                  slti         a6, a5, -1075
                  andi         s7, a2, -849
                  and          t0, t2, s7
                  remu         zero, t0, t2
                  addi         s10, t1, 513
                  addiw        s7, s11, -996
                  srl          s5, ra, t3
                  srl          a0, a4, a5
                  sraiw        s4, s9, 8
                  sltiu        a5, s9, 1819
                  srai         s4, s7, 15
                  srai         s5, gp, 52
                  sraw         a0, ra, a4
                  div          zero, a6, s4
                  divu         gp, s9, s9
                  ori          tp, gp, -1211
                  mulhsu       a0, a1, t3
                  subw         t3, ra, s8
                  addi         s1, s5, 1888
                  remu         s6, t6, t0
                  sraiw        tp, s11, 27
                  xori         t4, s1, 113
                  sltu         t0, s1, zero
                  srliw        t0, a5, 8
                  sub          a2, t2, s0
                  sltu         s9, t3, a1
                  mul          s11, a2, s1
                  ori          s11, gp, 373
                  ori          t1, t1, 2000
                  srl          a5, s1, tp
                  slti         ra, s0, -1502
                  sub          s1, s6, s11
                  xori         t4, ra, -2027
                  sllw         sp, s6, s7
                  sltu         s11, t6, t1
                  mulh         tp, s0, s0
                  sraw         a0, s1, s1
                  auipc        tp, 919801
                  slt          s9, t3, a6
                  sub          a3, ra, s2
                  rem          a0, s3, s6
                  sltu         t2, s10, t0
                  addi         zero, s11, -1585
                  div          ra, a0, t3
                  mul          t4, tp, s0
                  mulhsu       t5, a4, zero
                  sraw         a0, t3, t5
                  sub          s9, s6, s1
                  rem          t3, gp, s2
                  sll          a0, a5, zero
                  ori          gp, s10, 834
                  rem          t5, t4, s10
                  sub          s4, s7, s5
                  ori          a2, gp, -1466
                  divw         a0, t5, t2
                  slti         s6, s6, 255
                  sraiw        s10, a1, 11
                  xori         a5, ra, 1091
                  addi         s10, sp, 1517
                  sub          a6, s9, a5
                  mul          ra, s2, sp
                  slliw        a6, s0, 19
                  subw         a6, s7, gp
                  ori          a3, t6, -896
                  nop
                  divw         a6, a5, a3
                  addw         gp, a1, gp
                  nop
                  remu         t4, tp, t4
                  sra          t0, a3, t1
                  auipc        sp, 548858
                  remuw        t3, s2, s5
                  sltu         s6, a2, t4
                  sra          s7, s2, a1
                  slliw        t1, s6, 0
                  slt          a0, t6, t6
                  addi         t2, s4, -1184
                  srli         t6, t0, 28
                  slli         s10, s5, 51
                  sraiw        s7, s8, 20
                  rem          gp, t2, s0
                  remw         a6, a1, s6
                  srliw        t5, s3, 6
                  slli         zero, s2, 16
                  sltu         gp, s4, s5
                  mulh         a3, a2, a4
                  mulhu        t6, t6, sp
                  sltiu        sp, t5, -371
                  addw         s4, a0, s3
                  ori          a5, t5, 1735
                  sra          a6, t2, sp
                  remuw        a5, zero, a2
                  mulhu        s6, s6, a7
                  sub          t0, t4, t6
                  sub          sp, t3, gp
                  slliw        sp, s10, 19
                  xor          t0, tp, s11
                  divu         zero, s10, sp
                  srliw        a6, t5, 25
                  rem          t2, t4, t2
                  div          s1, t0, s9
                  nop
                  sltu         t1, s3, ra
                  or           t3, tp, s11
                  slliw        a1, t6, 18
                  addw         a1, s4, s9
                  sub          s2, a2, t2
                  nop
                  srai         s9, t0, 53
                  slt          s6, gp, a0
                  srlw         t4, s6, sp
                  srli         gp, a2, 50
                  add          s5, a7, t2
                  sra          a0, a2, t2
                  xori         a3, s7, -1937
                  and          s2, s3, a0
                  divuw        s7, s0, s9
                  sll          a6, t3, s4
                  add          s9, s4, s7
                  srl          s7, t2, s11
                  divuw        s1, a2, s5
                  slti         t2, tp, 1957
                  sllw         gp, s7, zero
                  or           t0, a2, zero
                  remw         t1, a4, a0
                  srli         s10, t2, 1
                  mul          zero, a6, s2
                  mulh         gp, t5, zero
                  sraw         sp, s5, a4
                  srai         s11, t4, 60
                  sub          s11, a0, s5
                  sllw         t2, a1, sp
                  mul          gp, s7, a6
                  sllw         t1, s0, t5
                  srliw        s9, a5, 8
                  addi         s1, zero, 1162
                  sraiw        t4, a1, 31
                  divu         s10, s4, t5
                  mulh         a6, a3, zero
                  divu         ra, t0, s5
                  nop
                  mulh         sp, t0, s4
                  add          s1, a4, s7
                  xori         zero, t5, -1425
                  addw         t4, t4, s9
                  remw         gp, s1, a3
                  sltu         a4, t1, s2
                  mulhsu       s11, t3, a4
                  srl          s10, a1, t1
                  sll          s2, s10, a6
                  add          zero, zero, sp
                  andi         s1, s5, -402
                  srl          a0, tp, t3
                  srli         s5, t4, 6
                  divw         t0, a5, t4
                  ori          s10, a6, -947
                  sub          zero, s0, s5
                  remuw        a3, t6, a1
                  mulhu        s11, s4, a5
                  andi         t6, s8, -719
                  remuw        a5, gp, s0
                  sll          a0, t2, s5
                  mulw         t6, a4, t4
                  srai         a4, sp, 35
                  slli         s11, gp, 63
                  remw         s11, s1, s5
                  mulh         t2, a1, t5
                  srai         a2, a4, 12
                  xori         zero, s2, 785
                  srlw         a3, a7, s3
                  mul          a2, s1, s9
                  and          a7, t4, s6
                  xor          s9, t0, s8
                  srli         s4, s10, 5
                  rem          sp, a4, a7
                  auipc        s5, 787052
                  rem          t3, s2, s1
                  srlw         a7, s7, s7
                  sub          s1, s3, t3
                  lui          tp, 546200
                  sub          a0, s9, s0
                  remuw        sp, s9, s2
                  slt          ra, a3, s0
                  sra          tp, zero, s9
                  remw         s5, a7, tp
                  addi         t2, s4, 402
                  slti         sp, ra, -414
                  srliw        a0, s8, 15
                  subw         t2, s10, s2
                  mulhsu       a4, t2, a7
                  slti         t2, s3, -1001
                  mulhu        t2, s5, s2
                  sraiw        s2, a3, 24
                  srai         t0, s8, 36
                  slliw        tp, ra, 4
                  slli         t3, a5, 28
                  slliw        s1, a0, 29
                  remuw        s1, s1, t3
                  addiw        t2, s1, -1446
                  mulhu        sp, ra, t0
                  sltu         zero, s6, t4
                  and          t6, s0, ra
                  slt          a1, t2, s1
                  xor          t2, s0, s3
                  remuw        t2, t4, s8
                  ori          s10, gp, -783
                  and          t3, a7, s9
                  mulw         a1, t3, s1
                  mulw         ra, zero, s6
                  sub          t6, s10, s0
                  rem          t1, a3, ra
                  srliw        s9, a3, 0
                  addw         s1, a5, a6
                  sll          ra, t4, s9
                  sll          s9, s1, s2
                  mulhsu       t3, a7, s9
                  div          sp, sp, t1
                  srl          a0, s9, gp
                  sub          a7, tp, s0
                  mulhsu       a3, t0, s2
                  divuw        s1, tp, gp
                  xori         s2, a0, -953
                  sltu         a0, tp, s2
                  divw         s2, a2, a5
                  andi         s9, s7, 930
                  slliw        tp, a3, 27
                  mulhsu       tp, s3, a1
                  addi         t3, s1, -489
                  sltiu        tp, s5, 1728
                  sraiw        s11, a6, 29
                  lui          t3, 859875
                  addw         s11, s6, t2
                  mulh         t4, s6, s8
                  divw         sp, s2, s1
                  sub          a2, s1, s10
                  div          a1, s0, t1
                  and          tp, a1, t6
                  sra          s7, t2, s3
                  auipc        t4, 1014492
                  divuw        s7, s2, t0
                  remuw        a7, tp, a0
                  sub          zero, tp, sp
                  srlw         s9, s4, a3
                  lui          t3, 556569
                  remw         sp, a6, s7
                  sub          s4, t2, a1
                  xor          a0, s0, t2
                  slt          s10, sp, s7
                  sllw         a3, a6, s0
                  andi         a7, t6, -1157
                  xori         s1, s9, 0
                  sltiu        s7, t3, -1633
                  addiw        sp, s3, -1038
                  rem          zero, t2, s4
                  ori          t1, s6, -1292
                  divu         gp, a6, sp
                  divw         t2, zero, ra
                  sllw         a6, a2, t0
                  srl          gp, t6, s4
                  remu         s10, s0, zero
                  subw         s11, t2, t6
                  sltu         s6, t2, a3
                  xori         t5, s8, 131
                  sub          a3, gp, gp
                  srlw         t6, t1, a6
                  addw         s11, zero, zero
                  div          t0, t2, s9
                  xori         sp, gp, 662
                  sllw         s7, a5, s1
                  and          s6, tp, a6
                  divw         ra, s10, t6
                  mulhsu       s11, t2, s10
                  rem          t1, s2, t3
                  sra          s4, s1, s1
                  addi         t3, t2, -319
                  srai         sp, a3, 60
                  or           s5, t4, s6
                  remu         a1, t1, a6
                  and          s9, t3, s0
                  srlw         s6, t3, s0
                  xor          s7, s0, s1
                  srliw        s9, t3, 5
                  divw         ra, s10, sp
                  remuw        ra, ra, a0
                  sraw         a3, s2, sp
                  srl          s7, zero, a2
                  add          s11, a1, s8
                  div          a4, t2, s8
                  remu         t3, ra, t5
                  subw         s9, s5, s11
                  addiw        s9, ra, 1179
                  divu         a7, s11, t5
                  sllw         a0, t5, s10
                  andi         tp, s8, 1374
                  sraiw        gp, gp, 17
                  div          zero, t5, s5
                  sltiu        s6, a2, 367
                  addw         s9, a6, s4
                  or           a5, a0, t6
                  mulh         t2, a5, s4
                  srl          t4, a5, zero
                  sub          a3, s3, t2
                  mulh         s11, a1, t5
                  srliw        s6, t3, 28
                  slt          s11, s0, s11
                  sllw         a2, s8, s1
                  xori         a3, sp, 834
                  srlw         s7, s0, t0
                  add          t3, a4, a4
                  divuw        s5, t3, zero
                  sra          s2, s10, t4
                  nop
                  sltu         a1, s2, gp
                  slt          a3, a5, t1
                  slti         t2, s9, -519
                  remu         a6, s10, s5
                  sub          s4, s10, s5
                  slliw        a0, zero, 18
                  mulh         sp, s8, a3
                  sltiu        ra, t0, 1334
                  addiw        t1, a7, 321
                  slt          a3, a2, sp
                  sll          s5, gp, a5
                  nop
                  srl          t0, s5, a5
                  addi         t3, t3, -1660
                  and          tp, s6, s5
                  or           a2, a3, t5
                  divw         s5, s8, a1
                  lui          s10, 459857
                  mulw         sp, s5, a3
                  slt          a3, s7, s7
                  subw         t3, t0, t2
                  sraw         s2, s10, a4
                  addi         a5, tp, 1375
                  and          gp, t5, a2
                  divuw        a2, t4, t1
                  slt          gp, a5, t0
                  divw         sp, zero, t2
                  xor          a1, t3, tp
                  sraw         s10, tp, t2
                  mulhsu       a1, s1, s11
                  andi         a7, s5, -1650
                  sllw         a5, s3, s8
                  remw         s9, t5, sp
                  sraiw        tp, tp, 22
                  add          s5, s7, sp
                  lui          s2, 32263
                  or           s5, s3, a3
                  or           s9, tp, s4
                  xori         s1, t1, 581
                  sllw         a2, s5, t5
                  slli         s5, t1, 25
                  remuw        t5, s10, gp
                  sll          s10, a3, s10
                  rem          s10, a5, a5
                  mulhu        s6, tp, ra
                  srl          a2, a5, t3
                  divw         t1, s5, ra
                  remw         gp, t0, zero
                  ori          a5, a1, 900
                  sllw         a6, s6, s5
                  nop
                  remuw        s1, a5, t0
                  srl          s7, a3, a4
                  remw         a2, a0, a4
                  mulw         s10, s0, t5
                  ori          t6, s4, -205
                  sub          t6, s10, a0
                  lui          s7, 970826
                  srl          s4, a5, sp
                  sllw         a5, s6, a7
                  srli         a5, a6, 50
                  xori         t4, t5, -162
                  remw         s7, s4, t6
                  sltiu        s1, s7, -1833
                  mul          t6, a1, tp
                  srai         tp, a5, 7
                  srliw        s2, a3, 28
                  lui          s6, 623718
                  addi         s1, s2, 699
                  xor          t2, s10, s2
                  slti         s4, t3, -730
                  ori          a7, a5, 2019
                  mul          s9, t2, t2
                  mulhsu       a3, s4, sp
                  remw         t6, t3, s5
                  subw         t4, t6, tp
                  divuw        s10, a1, t5
                  divw         s7, a1, s8
                  nop
                  addiw        t0, t3, 76
                  div          s6, a0, s4
                  divu         t0, tp, a2
                  rem          s5, s10, a0
                  addw         s11, s7, s9
                  ori          s7, s9, 533
                  sraiw        t1, t1, 6
                  divu         s5, a3, s10
                  srliw        t4, t3, 23
                  ori          t1, a3, -1562
                  xori         a2, a5, -1572
                  mulh         a5, a0, ra
                  slt          a7, a4, zero
                  add          a6, a3, s10
                  add          t5, t6, s4
                  divw         s4, a5, t3
                  addi         a0, t6, 1775
                  auipc        s9, 154848
                  xor          a7, a5, s4
                  sraw         t6, t1, s3
                  andi         s1, s0, 881
                  slt          t0, s8, s5
                  srl          s4, a1, sp
                  sraw         a0, t5, s3
                  sllw         tp, s1, t6
                  slti         a6, s6, 1383
                  mulhu        t4, s2, sp
                  sltu         a0, ra, t5
                  slli         gp, ra, 28
                  slliw        s11, s4, 4
                  add          a6, t6, gp
                  addiw        a1, s3, 1526
                  auipc        zero, 905384
                  sraw         a1, s11, t1
                  mul          s11, t1, s8
                  srai         tp, gp, 1
                  slli         a0, a5, 22
                  sraw         a4, s7, s0
                  addw         t6, t0, a4
                  sraiw        s2, sp, 31
                  sllw         t2, a4, s1
                  remw         s7, t3, tp
                  addw         tp, s9, a5
                  srl          a6, a3, t5
                  srli         gp, t3, 58
                  sll          a6, s6, s3
                  xori         a3, s8, -1559
                  sll          a6, t6, a6
                  ori          t5, t2, -130
                  subw         a7, ra, ra
                  sra          s11, t4, s5
                  slliw        zero, s2, 17
                  slt          s6, s1, s1
                  xor          s1, zero, s6
                  srli         a2, t3, 52
                  srai         a4, ra, 41
                  slt          gp, s2, a4
                  nop
                  mulw         s7, s2, t1
                  sraiw        gp, a1, 1
                  remw         t1, a5, s0
                  addw         a0, a1, s7
                  mulw         zero, s7, s11
                  addi         a2, t3, 1154
                  addi         t3, a5, -365
                  srli         s11, t3, 14
                  srlw         s11, t4, a5
                  mul          s11, s6, t0
                  sllw         a2, s0, a5
                  mulw         zero, a7, s4
                  addiw        a2, a6, 842
                  divu         t6, a6, t2
                  auipc        a4, 529965
                  divw         a4, s0, a0
                  sra          t0, s10, t1
                  divu         s1, a6, a5
                  divuw        a0, a1, s9
                  add          s2, s6, a1
                  divw         a4, a7, s2
                  addw         a1, a0, zero
                  sraiw        tp, t5, 27
                  andi         a4, s3, -157
                  rem          a5, t3, a2
                  or           s4, t2, s1
                  remu         s11, gp, a5
                  addiw        t3, t2, 1762
                  mulhu        s7, ra, tp
                  mulhsu       a0, s10, s7
                  remuw        a2, t0, t4
                  andi         t6, a5, -84
                  sub          t2, t6, s8
                  divw         t5, t4, t2
                  addi         sp, s11, -725
                  nop
                  divuw        a6, a4, s9
                  mulh         s11, t0, tp
                  sraiw        sp, zero, 1
                  add          t1, s4, t0
                  mulhu        a0, tp, sp
                  andi         t5, t2, -782
                  xor          a1, t3, s3
                  remuw        s4, s7, s11
                  sltiu        gp, s10, -654
                  add          s1, s8, a5
                  ori          a0, t0, -1513
                  addi         a4, s3, -582
                  rem          a5, ra, t5
                  mul          s9, tp, t4
                  auipc        s9, 545224
                  rem          sp, gp, s9
                  sub          s5, zero, s6
                  addw         t6, ra, s10
                  sltu         t1, s0, s0
                  slt          s7, s9, a3
                  slli         t5, t3, 5
                  sraiw        t4, t3, 21
                  auipc        t0, 216108
                  srai         a6, s11, 45
                  subw         gp, s7, t0
                  mulhsu       t6, a1, s0
                  srli         zero, s6, 39
                  sll          t1, a0, tp
                  srli         t3, a4, 16
                  addiw        zero, ra, -818
                  slti         a1, s10, 1905
                  sub          t1, a5, s1
                  remw         t6, t2, sp
                  div          a0, t3, ra
                  or           t3, s3, t2
                  sra          a0, zero, s3
                  or           t0, a6, a3
                  sltu         s5, s6, sp
                  srlw         a5, s4, t4
                  slliw        t3, t5, 31
                  divuw        a1, s2, s9
                  addi         a1, s6, 765
                  srl          a1, t2, a2
                  mulh         s11, zero, a3
                  add          t1, a7, a2
                  mulh         t1, s1, a5
                  andi         t1, s8, 1150
                  sraw         s7, s7, t6
                  mulh         s1, a4, zero
                  mulhsu       t1, a5, t5
                  sraiw        s10, a6, 12
                  srl          a3, t2, a6
                  div          a7, sp, s5
                  mul          s6, zero, a3
                  mulw         a6, s2, s1
                  srai         t1, tp, 10
                  divu         gp, zero, a1
                  slti         a6, t4, -511
                  divuw        t5, a6, zero
                  srai         tp, t5, 10
                  mul          gp, ra, s7
                  slt          t2, a5, gp
                  divw         a0, a1, t5
                  sra          s7, zero, s7
                  ori          t2, ra, -957
                  mulhsu       gp, t0, s5
                  slti         s7, a7, -1110
                  andi         a2, a0, -1617
                  sraw         s7, a3, gp
                  addi         s7, s10, -1629
                  mulhu        a6, a1, s1
                  auipc        s11, 9354
                  mulhu        s4, a4, s3
                  sltu         s1, s9, s6
                  remuw        t2, t4, s6
                  mulw         t4, a7, s2
                  mulhsu       s4, t5, a5
                  mulh         s1, t6, s1
                  addi         t6, tp, 1018
                  addi         a5, s10, -916
                  sra          t0, s9, a7
                  subw         t4, t1, t5
                  lui          a0, 126212
                  addiw        t4, a3, -2009
                  sraw         s5, ra, t1
                  mulh         t5, a4, s6
                  addiw        t0, ra, 62
                  addiw        ra, t5, -789
                  slti         s5, a0, 258
                  mulhu        s10, t1, s2
                  auipc        t3, 851574
                  divuw        s11, t6, a5
                  sra          s11, s10, sp
                  srai         a7, t0, 13
                  sltu         s10, a1, a4
                  add          t0, t2, a5
                  sll          a1, s4, a4
                  mulhu        s2, a2, a5
                  addi         t5, s8, 1205
                  mul          s5, a6, s1
                  remw         a7, t6, s10
                  xori         a6, t0, -1012
                  mulhsu       a5, a1, t3
                  srlw         a5, a0, s8
                  div          zero, t3, a1
                  addw         a2, a1, s4
                  srl          sp, s1, t3
                  mul          s7, s0, a0
                  rem          a1, ra, sp
                  sub          a0, a6, s5
                  sllw         t3, s11, s2
                  xori         a7, s11, -1807
                  remw         a4, s11, a6
                  xori         a3, a3, -1131
                  mul          gp, s7, t4
                  remuw        s7, ra, a4
                  divw         sp, a0, a0
                  xor          tp, s0, a1
                  remuw        tp, t4, t0
                  remuw        a7, a0, s7
                  mulh         t3, s3, s8
                  xori         t3, t1, 1063
                  ori          s11, s8, -1152
                  remw         gp, t2, a1
                  sub          ra, sp, a3
                  addiw        s1, gp, -680
                  ori          a0, a2, 230
                  sltu         s11, s10, s11
                  mul          s2, gp, a0
                  sllw         a4, t0, ra
                  xori         t1, s7, -213
                  sraw         s11, a5, t6
                  add          t5, t6, t0
                  sltu         a6, s7, a2
                  or           s4, s9, t0
                  addiw        s9, s1, -649
                  sraw         a2, s5, a2
                  xori         a2, s6, 873
                  xor          t5, t6, s8
                  mulhu        t5, a6, a3
                  slti         t5, t3, 519
                  auipc        a4, 744026
                  sraiw        a7, s3, 4
                  sltu         a6, a1, t3
                  sraw         s6, s8, s3
                  srai         s1, s1, 3
                  srliw        s9, s8, 18
                  mulhu        a7, a3, s3
                  srliw        a0, s3, 9
                  subw         t0, t5, a0
                  sub          a4, a6, t3
                  mulh         tp, gp, a7
                  sll          ra, t4, tp
                  sllw         t4, ra, ra
                  sltiu        t3, t4, 1062
                  slli         t4, s6, 33
                  sll          gp, t3, s9
                  xori         tp, s7, 163
                  srliw        zero, a5, 30
                  sllw         a2, zero, s5
                  addiw        t4, s3, 1348
                  remu         a4, t3, s10
                  sub          a7, s9, s3
                  lui          t2, 950652
                  divuw        t3, s1, a0
                  sra          zero, tp, t0
                  sraiw        a6, s2, 11
                  addi         s7, s5, 1130
                  mulw         t1, s1, a4
                  srlw         s1, s9, a0
                  rem          s1, sp, t4
                  sub          zero, t0, a6
                  rem          gp, a5, t3
                  nop
                  lui          gp, 263870
                  mul          s9, t6, s2
                  sltiu        s9, s2, -1797
                  mulh         a5, a3, s7
                  subw         s9, s7, gp
                  sltiu        s2, t5, -215
                  mulw         t3, s5, t2
                  slti         t4, s8, 1766
                  nop
                  sll          sp, s8, a5
                  sraiw        s10, t5, 23
                  srai         t0, a4, 49
                  mulw         s5, t6, a7
                  mulhsu       a4, s2, t1
                  xori         a7, s5, 1136
                  lui          s7, 339548
                  mulhu        t2, t0, s8
                  mul          s4, s4, s5
                  xori         sp, a4, -894
                  and          zero, s8, s7
                  xor          s4, s1, s1
                  or           s4, t0, zero
                  slliw        t2, a2, 23
                  slli         s10, a7, 56
                  addw         t3, s7, zero
                  addi         s2, a5, -71
                  slti         a5, gp, 1819
                  srl          t1, t4, s10
                  and          t0, s3, s6
                  remuw        s7, a3, s0
                  srl          a0, a4, s11
                  slti         s2, s6, 1247
                  addw         s2, s3, ra
                  and          t1, s6, t3
                  xori         a6, s6, 1940
                  sllw         a0, s5, s10
                  and          a5, sp, s3
                  mulhsu       tp, sp, t5
                  ori          s1, sp, 1319
                  remuw        a0, s10, t6
                  sllw         t3, s7, a5
                  div          s7, s8, s1
                  divw         s1, s2, s1
                  mulhsu       a0, t2, zero
                  addw         a3, s10, a4
                  xor          s1, s9, s1
                  subw         t2, s3, s6
                  sraw         t6, t5, s4
                  mulhsu       gp, a2, a2
                  srlw         sp, s5, s7
                  addi         s2, a5, -1154
                  xor          sp, t6, t6
                  mulh         a4, a5, ra
                  and          s11, gp, zero
                  rem          t3, ra, t6
                  srli         ra, t5, 57
                  remu         t1, sp, a7
                  remuw        ra, a0, a7
                  slt          a2, t3, t1
                  srliw        t0, s8, 17
                  divu         t1, a3, t1
                  sltiu        a1, a0, 1977
                  sltiu        a5, s8, -930
                  srlw         s2, t6, s11
                  sraiw        a6, t0, 10
                  sub          sp, a1, sp
                  remw         a5, s5, s4
                  sltiu        s1, a0, 2034
                  xor          s1, zero, a6
                  slti         a2, t0, 1847
                  xor          sp, s5, s2
                  sll          s2, s8, sp
                  srli         t5, s11, 11
                  sub          a2, t5, s10
                  rem          s1, a2, t2
                  mulh         s11, a5, a4
                  lui          a7, 3655
                  slt          t6, a3, zero
                  and          sp, s5, tp
                  slti         s6, ra, -801
                  srl          a1, s9, s0
                  rem          a3, a1, a7
                  sltu         t6, s10, a1
                  mulhsu       s5, a4, t6
                  sltiu        t4, s10, -1448
                  addiw        a7, a6, -1775
                  subw         s4, a4, zero
                  sraw         t1, a4, s1
                  mulw         t2, ra, t0
                  sllw         sp, t5, s6
                  slti         s2, t6, 290
                  srl          t5, a2, zero
                  srlw         s10, a0, s10
                  addiw        a0, t4, 1127
                  slli         a6, s9, 35
                  or           a0, s3, s0
                  divu         a2, s8, s11
                  slliw        a0, s10, 12
                  mulhsu       zero, a0, s7
                  mulw         s9, t5, a0
                  mulhsu       t3, s10, ra
                  divuw        t3, gp, t5
                  sltu         t1, s7, gp
                  remw         a0, s7, a2
                  and          t3, s7, t4
                  slli         s1, a5, 35
                  divw         t4, t0, s1
                  xor          ra, ra, t4
                  auipc        s11, 1003010
                  mulw         gp, t5, t6
                  ori          a7, s1, -1796
                  divu         s9, t4, t1
                  remw         a4, t3, ra
                  mulhsu       a0, a0, s8
                  addi         s2, a4, -1698
                  srl          a7, a2, s5
                  addiw        a4, s11, 1833
                  slliw        s6, s6, 14
                  or           zero, a1, s5
                  addi         s4, tp, -306
                  mulhu        t0, s6, sp
                  add          a0, gp, t4
                  sub          a1, s5, s4
                  mulhu        t6, a2, s4
                  xori         a1, t5, 528
                  div          a6, a7, a0
                  srai         s4, s10, 14
                  mulh         s6, a2, sp
                  sltiu        gp, s3, -1931
                  divw         sp, s8, a7
                  sltiu        s10, gp, -399
                  div          t1, s6, s8
                  sll          s10, s11, s9
                  mulhsu       t6, s8, t1
                  remu         s4, a3, t2
                  mulw         t0, t5, a0
                  divw         t1, t1, s5
                  divu         a5, a5, gp
                  sltiu        s6, s8, -1835
                  nop
                  andi         t3, s6, 1425
                  div          a6, t2, s9
                  subw         zero, t2, s2
                  divu         t5, a2, s7
                  subw         a0, a2, a2
                  auipc        s4, 999329
                  andi         ra, s4, -175
                  rem          a3, a3, ra
                  divw         t0, s7, s3
                  divu         a1, t1, a0
                  sll          ra, gp, s1
                  mulhsu       a0, s8, s2
                  remuw        a4, gp, a2
                  addi         a1, a7, -1945
                  sub          s9, zero, t5
                  addiw        t6, a0, 1675
                  srli         a2, zero, 30
                  ori          gp, ra, -1686
                  add          a6, s1, t5
                  mulw         zero, a0, s10
                  and          t2, s7, s9
                  remu         zero, t0, s3
                  ori          tp, t5, 1329
                  add          t1, s0, a7
                  divw         s5, s3, sp
                  remuw        t5, s10, sp
                  sllw         s11, s11, sp
                  addw         a4, t0, a2
                  andi         s9, s4, -1354
                  subw         t3, a4, s11
                  slt          t5, s0, a6
                  remuw        a1, t5, s8
                  sltu         t6, s4, a5
                  mulh         a5, s5, s5
                  remw         a7, s3, s6
                  mulh         ra, a6, s4
                  sraw         s10, s11, a5
                  remw         a7, gp, t2
                  slti         t2, t1, -1605
                  and          a2, sp, sp
                  slliw        a6, s8, 7
                  remw         a7, a1, s2
                  andi         s10, s0, -913
                  divu         t0, s5, gp
                  mulhu        t5, a7, s10
                  srai         t0, s7, 54
                  sub          a7, a7, s11
                  srli         zero, t3, 43
                  xor          sp, a7, a1
                  slliw        tp, ra, 26
                  slt          t2, s11, s11
                  srlw         sp, a5, s6
                  sllw         s1, s2, t2
                  and          tp, t6, s9
                  remw         a1, s4, gp
                  srliw        t0, a6, 30
                  rem          a3, a6, s10
                  slliw        s11, t5, 9
                  remw         zero, t0, sp
                  mulh         a4, a1, s2
                  slt          t4, s11, s0
                  sraw         s1, tp, a7
                  divw         zero, a7, s2
                  srliw        a7, a7, 16
                  sltiu        a4, s0, 554
                  slliw        s2, a4, 17
                  sra          s11, s11, t4
                  or           s1, a3, tp
                  add          s9, ra, t4
                  add          a3, t3, s7
                  slti         s2, gp, -670
                  divw         s10, a4, t6
                  sllw         s9, a7, t3
                  xor          a2, t3, a2
                  remuw        s6, a0, s1
                  sltu         s11, s9, s6
                  slt          s2, tp, s6
                  srlw         s9, t5, zero
                  srlw         s4, t6, a2
                  remu         a2, ra, s5
                  sraiw        a5, s8, 16
                  slt          a6, a7, a7
                  remu         s4, t1, tp
                  srlw         a6, t2, s7
                  sltiu        zero, t2, 505
                  ori          a0, s4, -1685
                  srai         s9, t3, 27
                  add          s5, s4, a2
                  and          s11, a1, s9
                  srl          t5, s5, t2
                  xor          s6, a3, a7
                  xori         t3, s2, -56
                  sllw         a5, a2, a7
                  addi         gp, a3, 652
                  srlw         s11, s2, s11
                  sra          sp, s4, s1
                  or           gp, s10, s7
                  auipc        a4, 57059
                  mulh         a5, a4, a6
                  rem          zero, s7, s3
                  div          s9, a3, s7
                  mul          t0, s6, a2
                  srai         t4, s0, 35
                  divu         a5, gp, s9
                  nop
                  xor          a4, t4, t3
                  mul          s2, a3, s8
                  sltiu        t6, s4, -1869
                  slt          s10, t1, a2
                  lui          s1, 869254
                  sraw         s11, t2, s9
                  auipc        a3, 341467
                  srli         t6, t3, 23
                  addw         a0, a0, t3
                  rem          s2, s1, a3
                  divuw        s11, t6, gp
                  mulhsu       s6, t0, t5
                  remw         s7, t2, a1
                  mulhsu       s1, s7, s2
                  divuw        a5, a3, s10
                  srliw        t4, t5, 24
                  addi         zero, t1, -933
                  xor          s11, t0, s0
                  add          a6, zero, s6
                  divw         t4, a5, t0
                  sltu         a1, t6, a5
                  remu         ra, t6, gp
                  remuw        sp, s4, a5
                  sll          t4, a6, a4
                  divuw        t3, s4, s11
                  rem          a3, s6, s8
                  addi         a3, ra, 254
                  divu         a5, s10, t4
                  srl          zero, a0, a1
                  divu         s11, a2, t0
                  xor          s2, a6, tp
                  subw         s9, t3, a1
                  sltiu        tp, s2, 1836
                  slt          t3, s5, s8
                  srli         ra, s2, 17
                  sraiw        t5, s10, 14
                  add          s11, a7, a0
                  srliw        t3, t6, 14
                  sll          a4, s6, s3
                  nop
                  slti         s11, a3, 860
                  slti         a5, tp, 142
                  divuw        t4, s6, ra
                  mulhsu       t4, t1, a4
                  slliw        t2, a0, 31
                  sraw         a1, a5, a5
                  sraiw        t0, s5, 0
                  mulhu        s4, sp, a2
                  sll          t4, s7, s0
                  sltiu        a0, s1, 277
                  mul          t3, a7, zero
                  slt          t0, s0, zero
                  srli         s2, s4, 4
                  ori          a0, a5, 528
                  slti         s6, a3, 1909
                  andi         sp, a5, -1271
                  xor          zero, sp, tp
                  srai         ra, t5, 17
                  srliw        tp, a2, 12
                  mulhsu       a2, s0, t6
                  slt          zero, sp, s7
                  mulh         a3, s1, a2
                  sll          s9, s9, sp
                  sltiu        t3, s8, -507
                  or           a3, s6, t4
                  mul          t3, s1, s6
                  mulw         s10, t0, t3
                  srai         a5, t6, 41
                  auipc        s2, 29052
                  sll          t2, s5, a3
                  mulw         a3, t0, t4
                  add          s5, tp, a4
                  slti         a2, a4, -687
                  sub          s11, s10, s7
                  mulh         s5, t5, s8
                  and          s6, tp, a5
                  slliw        a0, gp, 5
                  addw         a0, a1, a0
                  mulhsu       t1, t6, s4
                  div          t6, s7, a5
                  sll          t1, s4, a2
                  rem          t2, t3, s8
                  ori          gp, s8, -1261
                  or           s10, a6, t1
                  slti         t2, t0, 1867
                  div          s10, t2, s10
                  remuw        s7, a2, s10
                  mulhu        s2, a0, a6
                  remu         s11, a6, gp
                  sraw         zero, t2, s9
                  slliw        t5, a5, 13
                  remuw        t1, t6, s1
                  addiw        s11, a1, -1774
                  xori         a4, t3, -1881
                  srliw        s6, t0, 11
                  sll          s6, s6, s9
                  xor          s2, a6, t4
                  srai         s7, t3, 49
                  divu         a3, s5, a0
                  andi         a7, gp, -1671
                  ori          t0, t1, 1949
                  rem          t6, t0, t0
                  nop
                  slli         a1, a1, 28
                  slliw        t4, gp, 15
                  auipc        s4, 96066
                  mulhsu       s2, t0, sp
                  srli         s9, a1, 44
                  subw         a5, s7, a6
                  slliw        a2, t0, 4
                  lui          t0, 1029082
                  mulh         t2, a2, t3
                  rem          sp, s6, s1
                  lui          t5, 859171
                  slt          a5, s5, zero
                  addw         a4, a3, sp
                  slti         t0, s3, -909
                  addw         zero, t2, t0
                  addw         a0, tp, a4
                  mulh         s5, t3, s2
                  div          t5, t5, s0
                  slliw        sp, s10, 11
                  mul          a6, a7, gp
                  or           t3, a2, t3
                  add          a2, s4, a3
                  mulhu        sp, t2, s5
                  add          s10, t1, t0
                  sltiu        s10, s9, 1063
                  mulw         a4, s3, a4
                  auipc        s9, 494158
                  auipc        ra, 195450
                  rem          s10, s5, s7
                  slliw        s2, s5, 14
                  mulw         a3, s5, t3
                  slti         gp, s0, 1022
                  rem          a7, s4, t6
                  slli         s1, s4, 15
                  subw         s4, s11, s10
                  slliw        gp, s0, 7
                  mulhsu       ra, s5, gp
                  addi         a5, t1, -1512
                  divw         s6, a0, t0
                  xor          s7, s6, a7
                  slli         a3, a2, 2
                  sllw         s2, s9, s1
                  slti         s7, zero, -436
                  slli         a3, sp, 39
                  xori         a7, s0, 1141
                  sltu         s2, a5, s6
                  slti         a6, t1, -1857
                  divuw        t2, a1, s4
                  sra          a6, s8, s6
                  sraw         s2, a3, t6
                  addi         t1, gp, 1991
                  sraw         a7, t3, t3
                  slt          a2, a3, zero
                  sll          a2, s6, t4
                  mulhsu       sp, s6, s5
                  lui          a4, 360501
                  subw         s5, tp, t3
                  addi         t6, t2, 113
                  xori         a7, a5, -78
                  srl          t5, t3, t1
                  sra          zero, a4, s0
                  mulh         tp, a5, a6
                  mulw         t3, gp, zero
                  mul          tp, t4, t4
                  sllw         t6, zero, s1
                  and          a4, s3, t2
                  mulhsu       a7, a0, t4
                  srl          s7, a2, ra
                  srli         t2, a1, 53
                  mulh         s11, a3, gp
                  srlw         t6, t4, a2
                  addiw        a1, sp, 595
                  mulhu        a2, a7, s11
                  sraw         s11, t6, s7
                  mul          zero, gp, a2
                  remu         s11, s10, a0
                  sltu         sp, a6, a5
                  andi         t0, s11, 698
                  slti         t2, s0, -1015
                  or           a1, tp, s7
                  srli         a2, t2, 56
                  mulhsu       s1, a6, a0
                  sra          a6, a0, s7
                  sll          t0, zero, zero
                  sraw         s6, s5, s10
                  sub          a4, s8, s10
                  mulh         s6, s3, t1
                  slti         s5, t0, -1490
                  addi         s5, ra, -967
                  remuw        s10, a0, t6
                  auipc        gp, 687426
                  divw         s11, a1, t1
                  slliw        s7, s3, 31
                  divu         s1, s6, s10
                  nop
                  srai         a5, s2, 54
                  srlw         t1, s3, a1
                  srliw        s1, a4, 13
                  ori          s10, t3, 1887
                  slli         s1, s11, 40
                  or           t4, s10, a1
                  and          s1, sp, s0
                  slt          zero, tp, t5
                  xori         a4, s5, 1368
                  addw         a1, gp, t1
                  add          s6, s0, s5
                  and          zero, s3, s1
                  slt          a3, ra, s0
                  slliw        a3, s11, 14
                  and          sp, s5, gp
                  slli         t1, s1, 0
                  subw         s5, t0, t2
                  remuw        t6, a5, a4
                  addiw        a0, tp, -977
                  div          t3, s10, s0
                  sub          t5, a0, ra
                  sraw         t1, t2, t5
                  and          s9, a6, s3
                  slliw        t0, s11, 17
                  mulw         a1, a1, s11
                  srai         s6, ra, 31
                  or           a0, s2, a5
                  ori          s9, s1, 183
                  sllw         s1, a1, s1
                  srai         s9, t6, 0
                  sltiu        gp, a5, 70
                  sllw         gp, s8, a0
                  ori          s6, s0, 119
                  slti         t3, t0, 1344
                  slliw        a0, a2, 23
                  xor          t6, s10, a2
                  remw         s9, ra, s9
                  mulhu        a0, sp, a1
                  xori         s5, s10, -806
                  subw         a7, gp, s9
                  add          zero, a4, zero
                  slliw        t0, t5, 25
                  divuw        s4, s1, t4
                  remw         s4, t3, s7
                  sll          s11, sp, sp
                  or           s6, a2, a1
                  addi         t0, a1, -46
                  slti         ra, s2, 1114
                  mulh         zero, zero, s8
                  addiw        gp, t1, -846
                  divw         t1, t5, a5
                  slliw        s7, s0, 19
                  addw         t4, t3, tp
                  or           s5, s5, a1
                  rem          zero, zero, s8
                  sllw         zero, s6, gp
                  srai         tp, s6, 15
                  andi         a7, t0, -314
                  divu         s7, t1, t5
                  mul          a1, zero, a4
                  ori          a7, a0, -1962
                  sra          tp, ra, a4
                  sltu         s5, t6, gp
                  addiw        t2, s2, -1357
                  divu         zero, s8, a2
                  divuw        t4, t6, s10
                  sllw         s9, s6, t3
                  add          a0, a2, t3
                  srli         s7, t3, 25
                  remu         a6, s0, t6
                  sub          a1, a5, s5
                  mulh         s7, a5, a0
                  srai         s11, sp, 21
                  mulw         a6, gp, s10
                  xori         s2, t6, 1194
                  sraiw        t6, s11, 24
                  mul          t0, s10, s4
                  div          s2, s8, s11
                  srai         s7, s1, 34
                  xori         t4, t0, 177
                  sltu         s6, a4, s6
                  remuw        a0, t0, s9
                  subw         ra, s9, a6
                  addi         a7, s4, -753
                  slti         s11, s7, 746
                  sllw         s10, a5, sp
                  divu         s6, s4, s8
                  srliw        gp, ra, 30
                  addi         s9, t1, -719
                  srl          s7, t3, t5
                  ori          t2, s9, 2047
                  mulhsu       s5, s2, s5
                  slli         a4, s11, 57
                  sub          a1, s8, s9
                  remw         gp, gp, s11
                  srli         t3, a5, 34
                  slt          s4, s7, t2
                  xori         s10, s10, 1958
                  remw         gp, t1, t5
                  addiw        s2, s7, -1131
                  sll          a6, t5, s4
                  srlw         a1, s8, a6
                  sraiw        s10, t4, 27
                  xori         tp, a7, 316
                  xor          sp, zero, a7
                  divuw        t2, gp, a6
                  slti         t1, a3, 1018
                  sll          t4, s9, a0
                  srl          a0, a0, a5
                  lui          t5, 304324
                  addiw        a5, s2, 374
                  sra          s10, ra, tp
                  lui          t6, 615218
                  addi         ra, s8, 362
                  remuw        s6, s3, zero
                  sll          s2, a3, s10
                  addw         s6, t3, t6
                  addw         s9, t0, a1
                  sraiw        t5, s6, 5
                  div          t2, a7, t4
                  xor          s7, t4, t5
                  xor          zero, s8, tp
                  lui          a3, 825974
                  nop
                  sltiu        s1, tp, 1985
                  divuw        a7, a1, t5
                  addw         t5, t4, s1
                  divw         t2, s7, s4
                  divuw        s2, s0, s2
                  ori          t6, a7, -1448
                  ori          t6, s4, -228
                  sltu         a7, t5, s0
                  sltu         tp, zero, t1
                  ori          sp, a0, 200
                  slt          t4, a1, a2
                  mulh         a7, ra, a6
                  sra          tp, t1, t6
                  srlw         a7, a2, s8
                  divw         a0, s7, t5
                  sraiw        gp, a2, 23
                  andi         a4, s5, -39
                  srliw        s5, s0, 27
                  remuw        s7, zero, zero
                  sltiu        s9, s0, 128
                  srai         a1, t4, 30
                  addi         t4, t5, 1096
                  slt          a4, s10, a6
                  srai         a7, ra, 26
                  sra          a5, t6, s0
                  sraiw        a4, a7, 31
                  sraiw        s11, s10, 17
                  mulw         ra, a2, t3
                  nop
                  remw         a0, s3, s7
                  srl          s11, t4, s4
                  or           sp, t2, t4
                  nop
                  rem          s2, t2, s0
                  addw         a3, s0, t2
                  mulhu        t1, a4, s2
                  srli         s9, s0, 61
                  sraiw        t0, ra, 6
                  slti         a0, zero, -1344
                  slt          a6, s9, a1
                  slt          sp, s9, a2
                  and          s11, a2, s8
                  addiw        s1, a0, -1896
                  slli         t3, s6, 36
                  remu         t0, a6, a7
                  sltu         s5, s9, zero
                  srli         t1, a1, 1
                  mulhu        a2, s6, s8
                  slt          s9, s2, t1
                  sltiu        s7, s11, 1736
                  sll          tp, sp, t1
                  divw         ra, gp, s1
                  slt          a0, s5, s5
                  mulhsu       a0, s7, s0
                  srl          s10, zero, ra
                  mulw         t6, a4, t5
                  slliw        a3, a3, 0
                  divw         a2, s2, t2
                  addi         s6, s7, -1285
                  subw         t1, s4, s6
                  srl          s11, a6, t5
                  mulw         t6, sp, a5
                  andi         s2, a3, 332
                  addw         a2, t4, t5
                  xori         s6, t1, 193
                  rem          a6, a6, t1
                  andi         t4, zero, -1662
                  slti         sp, a6, 1030
                  nop
                  div          a6, t4, s8
                  lui          sp, 351340
                  srai         t2, t3, 52
                  nop
                  mulhsu       a1, t5, a2
                  divw         a1, t1, a7
                  srai         a2, t4, 39
                  sraw         s7, t1, t4
                  sltu         a5, s5, gp
                  remuw        s1, s11, s0
                  srl          gp, a2, s7
                  mulh         a2, a0, t0
                  sraiw        s9, t5, 11
                  addw         a6, s10, t3
                  sltu         s2, a1, a5
                  mulh         t2, s1, t6
                  remu         a2, t4, t4
                  mulw         t4, s11, s3
                  addiw        a3, s8, 1573
                  sltiu        t5, s0, 320
                  sub          t5, t3, s8
                  addw         t3, s11, a7
                  srlw         sp, t4, t4
                  mulhsu       t0, s7, t3
                  addi         ra, a6, 1210
                  divu         s11, gp, a3
                  sltiu        t0, t1, -1999
                  sll          a2, t5, s9
                  xor          t2, s8, a7
                  srli         s9, s8, 54
                  addw         s1, tp, t3
                  slti         ra, gp, 432
                  addi         s4, s1, 466
                  srliw        t1, zero, 24
                  add          a6, s6, t2
                  addiw        s10, s9, -1202
                  addw         a4, a2, a3
                  sllw         a5, sp, t5
                  sltu         s2, a7, t4
                  divw         s11, t2, s5
                  sltiu        s1, ra, 430
                  remuw        s11, ra, zero
                  nop
                  ori          t6, ra, 541
                  sraw         a3, t5, s0
                  srlw         t4, ra, s5
                  lui          a2, 283739
                  xor          zero, t0, s11
                  mulhu        s10, sp, sp
                  sltu         tp, a7, s3
                  srl          t1, s0, ra
                  subw         s10, zero, s1
                  srai         s9, s3, 57
                  addw         s4, s0, a5
                  sraiw        a6, t0, 4
                  sub          t5, t5, s2
                  slli         a0, s0, 27
                  ori          s7, t3, -690
                  remw         gp, s8, a1
                  and          t1, tp, t0
                  mulhsu       t6, a3, t3
                  sltu         t1, a3, s5
                  sra          a7, tp, t3
                  mulw         s1, sp, a5
                  auipc        tp, 793097
                  xori         ra, s4, -149
                  mulw         a7, a4, s9
                  div          s2, t3, t2
                  lui          t0, 824487
                  sra          s10, s5, s7
                  sraiw        a1, a7, 7
                  mulhsu       a7, tp, a3
                  slli         s4, s7, 16
                  remu         gp, t3, t3
                  or           t0, a0, t5
                  sllw         s6, s10, t2
                  addi         a4, s5, 642
                  or           a6, s8, s6
                  slliw        tp, s11, 2
                  add          gp, ra, sp
                  slliw        s6, t1, 7
                  addw         t0, t3, s0
                  sll          s7, a5, s4
                  srli         t6, gp, 37
                  mulw         zero, s11, s11
                  and          a7, t5, s11
                  remuw        gp, s11, a1
                  slli         tp, a1, 0
                  sub          zero, a7, tp
                  remw         a7, a4, s2
                  srlw         a6, ra, t4
                  mulh         t6, s7, tp
                  sllw         gp, s11, s6
                  srliw        s4, s2, 6
                  addiw        t3, t2, 271
                  lui          s5, 278758
                  srl          a7, a2, s1
                  add          tp, a6, a3
                  auipc        t5, 630774
                  mulh         zero, a5, s9
                  and          a2, tp, s8
                  lui          gp, 85822
                  sltiu        a6, s7, 1984
                  and          s9, a3, t1
                  sltu         a6, zero, t1
                  sub          t6, t5, t2
                  srliw        t4, s0, 4
                  mulhsu       t0, t3, t3
                  nop
                  addw         s10, s2, t0
                  remuw        s2, t2, t0
                  slli         t1, tp, 2
                  mulhu        zero, zero, t2
                  auipc        t4, 23883
                  addiw        zero, s1, 637
                  sraiw        t6, a3, 2
                  lui          a7, 569111
                  slt          a0, s11, a2
                  addw         s9, a0, tp
                  slt          a6, a2, t5
                  addw         a6, a2, t1
                  divw         t1, s9, a3
                  sraiw        s4, s5, 3
                  remu         s2, a3, s8
                  addiw        t1, s7, 1433
                  addw         t3, s6, a1
                  divu         t4, s2, zero
                  addw         s10, s3, gp
                  mulh         t3, t2, s0
                  sra          a2, a7, s11
                  divu         s5, t0, t5
                  add          s7, s8, ra
                  addiw        a2, zero, -83
                  or           t3, t1, a3
                  mulhsu       t1, t3, a2
                  mulh         a5, a7, s4
                  srliw        a5, a6, 18
                  divw         t1, sp, a2
                  sra          a5, a0, t0
                  and          t4, s8, zero
                  srliw        t5, s2, 8
                  rem          s7, t6, sp
                  sub          a3, t0, sp
                  addw         t3, tp, s11
                  div          a6, s3, t0
                  slliw        s2, sp, 25
                  remuw        t0, t4, a5
                  or           s2, t4, s2
                  remu         t2, s9, gp
                  slli         a0, zero, 63
                  srlw         sp, tp, t2
                  sraiw        t5, s1, 10
                  slti         t3, s7, 1672
                  addiw        ra, a3, 126
                  srliw        t2, a7, 24
                  remuw        t2, t3, a4
                  nop
                  remu         t4, t3, s2
                  srai         s6, t2, 45
                  divu         zero, a0, s11
                  sra          zero, t1, a3
                  sraw         t2, t0, a0
                  srai         ra, t5, 8
                  sll          gp, a1, s1
                  srliw        ra, a1, 2
                  lui          a4, 721215
                  and          a7, ra, s10
                  sltu         a2, a2, s2
                  nop
                  lui          s2, 637482
                  ori          s2, s4, -1252
                  rem          s5, s5, s4
                  sraw         s7, s1, a2
                  and          tp, s3, a2
                  sraiw        t3, tp, 11
                  auipc        t6, 791708
                  lui          a2, 303185
                  addiw        s9, s3, -1200
                  sub          s1, s3, s4
                  subw         a0, tp, s6
                  addi         a6, a5, 410
                  lui          sp, 999146
                  sll          a1, s11, s6
                  slt          sp, s3, gp
                  lui          t6, 332106
                  mulh         t1, sp, a3
                  srli         a2, gp, 23
                  xor          zero, s8, a0
                  mulh         t2, s7, t4
                  auipc        s2, 279296
                  sraiw        a3, t5, 3
                  sra          s2, a0, a7
                  sltu         t2, s11, a3
                  slt          s6, t4, tp
                  sub          s2, a6, s3
                  remw         t3, s10, s1
                  slt          a2, t5, s0
                  slliw        t6, ra, 23
                  auipc        t2, 675934
                  addw         t6, a4, a6
                  sll          s11, a2, t6
                  or           a2, s4, t4
                  add          ra, t0, s5
                  sltu         gp, tp, s1
                  slli         s4, s9, 2
                  sltu         s6, s0, s1
                  mul          a7, a7, t2
                  add          t6, zero, a0
                  and          s10, a1, s7
                  mulh         zero, s10, a2
                  ori          t2, s10, 375
                  remw         a4, tp, a4
                  divuw        a6, s7, a4
                  lui          s10, 321779
                  sltu         ra, s5, s10
                  sltiu        ra, a3, -1826
                  addw         s2, t6, zero
                  addw         t3, s7, a7
                  andi         a1, a3, -290
                  addiw        zero, a0, 1738
                  and          ra, t4, tp
                  addi         t4, s10, -1631
                  sllw         a6, t0, a5
                  andi         a6, t4, -593
                  or           ra, s10, t5
                  sub          zero, t3, sp
                  remu         ra, t0, s11
                  sllw         a3, s10, t1
                  slliw        zero, a6, 18
                  auipc        s5, 95454
                  divw         t1, s11, s10
                  auipc        a7, 356085
                  slliw        a7, ra, 26
                  sub          t6, a0, a4
                  slliw        t3, a5, 14
                  mul          a4, s1, zero
                  rem          t2, s5, s11
                  ori          t6, a5, -1881
                  and          a7, a7, s8
                  addi         s1, t1, -1884
                  mulhu        s2, a6, s2
                  remw         s7, t6, a5
                  addiw        gp, s7, 968
                  divu         a6, t5, sp
                  slt          s2, a5, s1
                  addw         t4, s5, s4
                  remuw        a2, a2, a3
                  slliw        a4, a7, 11
                  xori         t1, s6, 928
                  sra          ra, t6, t4
                  addiw        t1, a1, -1619
                  divu         s6, s5, s9
                  div          t4, t0, t6
                  addw         t5, s11, t4
                  or           t6, t1, t2
                  xori         a5, zero, 693
                  remuw        gp, s5, t6
                  divuw        a6, gp, a6
                  mulhu        gp, a5, a7
                  sltu         a5, zero, zero
                  sltu         t0, s1, s3
                  and          a5, t0, a5
                  xori         zero, s6, -405
                  mulw         t0, s6, t0
                  sra          a7, t4, zero
                  sllw         t0, t0, sp
                  addiw        s10, tp, 912
                  remuw        a5, t2, a7
                  or           s4, s7, sp
                  sll          a2, t4, t2
                  subw         s1, t0, a7
                  mulw         s6, s10, gp
                  sraw         s5, sp, a2
                  xor          a7, s11, t4
                  mulhsu       a5, t0, t0
                  sub          t6, s2, t5
                  sltu         s7, a7, s4
                  divw         tp, a4, sp
                  subw         t0, t0, t0
                  sltiu        t2, t3, 2027
                  nop
                  mulhu        t2, a7, t3
                  srl          a7, a0, t5
                  sraiw        s10, s0, 15
                  slti         ra, t4, 364
                  add          s5, s5, a3
                  addi         a7, s10, 214
                  srli         ra, s10, 36
                  mulh         s4, a1, a4
                  slti         s2, t2, -589
                  rem          t3, t2, tp
                  lui          gp, 786239
                  slliw        s11, s4, 25
                  sllw         s4, s10, sp
                  divw         s4, s10, a1
                  sltiu        t5, ra, 545
                  srli         ra, s4, 3
                  addi         s11, a2, -152
                  addw         t4, a1, a6
                  sraiw        t4, a0, 19
                  remuw        t6, s11, t0
                  sraw         s9, s3, s8
                  divuw        a2, s1, s10
                  nop
                  mulh         tp, a3, s3
                  addi         a6, t5, 1068
                  sra          s4, a0, s9
                  addi         a4, t2, 1365
                  addiw        zero, a1, -1490
                  sra          tp, s11, zero
                  addw         s11, s11, a6
                  sll          a4, t3, t0
                  sraiw        t2, s10, 15
                  addi         t1, zero, -172
                  mulhu        t5, s1, t2
                  slliw        a7, s0, 22
                  div          t4, s0, t3
                  addw         s9, sp, t6
                  slliw        t0, s1, 8
                  mulhsu       s11, a1, a1
                  srl          t6, a5, a6
                  auipc        t2, 389791
                  sltiu        t4, t1, 1395
                  rem          gp, t4, s7
                  mulhu        t3, t2, s2
                  andi         zero, a4, -1463
                  xor          a7, s3, gp
                  sltu         a5, t1, s6
                  mulh         a4, s2, s3
                  srliw        a3, a3, 4
                  sra          s11, s6, t4
                  sltu         s2, t4, gp
                  remu         s5, zero, tp
                  rem          s4, s9, ra
                  mulw         tp, s9, s4
                  subw         t3, sp, tp
                  add          a4, s11, t6
                  mulhu        s10, t3, a1
                  mul          tp, a3, s11
                  remw         s5, t1, t1
                  mulh         s10, t3, zero
                  remw         s11, a5, a6
                  srl          t3, s8, t4
                  divuw        sp, s9, tp
                  srlw         s11, zero, s4
                  div          a2, s11, a5
                  remu         t1, a0, gp
                  divu         t3, a2, s9
                  mulhu        t6, t5, s2
                  srlw         s4, s0, s1
                  auipc        t3, 835542
                  xor          t1, t0, s4
                  subw         a0, s10, t6
                  and          a6, s3, t2
                  mulhsu       a5, s1, a4
                  sub          sp, s3, s5
                  srlw         a7, gp, s2
                  remu         ra, s9, a4
                  slliw        a1, s10, 5
                  subw         s11, a3, t6
                  div          sp, t2, a6
                  divuw        s9, a4, t3
                  and          t2, t0, s7
                  addiw        a2, ra, -1817
                  xor          s9, gp, a4
                  xor          s5, a1, s1
                  sll          t6, t0, t2
                  divw         gp, t6, a7
                  sraw         s1, t6, a5
                  divw         s6, a2, t2
                  subw         a2, s10, t6
                  addw         a7, t6, t3
                  ori          a5, a1, -751
                  sltiu        tp, s11, 145
                  sraiw        t5, a6, 11
                  sll          s1, s2, s7
                  sraiw        a5, s7, 20
                  mulh         a3, a5, t0
                  lui          t1, 116391
                  slli         ra, t4, 46
                  ori          s7, sp, -1098
                  xor          s7, s8, zero
                  sraw         t4, s2, s1
                  addw         a7, a3, tp
                  div          gp, zero, sp
                  xori         gp, t5, 645
                  mulw         t3, s5, t6
                  nop
                  slti         s9, s4, -128
                  mulhsu       s6, a3, zero
                  sll          t2, s11, gp
                  remw         s10, t4, a2
                  and          s10, s9, t1
                  sra          t1, t6, t3
                  lui          a5, 173322
                  divuw        s11, t3, t4
                  divuw        t4, s8, s2
                  andi         t5, s8, -953
                  sltiu        t2, sp, -1203
                  xori         s1, t0, -352
                  mulw         s9, a1, s11
                  sra          a1, a0, t4
                  sraiw        a6, a3, 4
                  slli         s11, gp, 5
                  remuw        t4, zero, t4
                  xor          a2, a5, s0
                  addi         a0, s1, -1480
                  sllw         s1, a2, a2
                  lui          t1, 624224
                  srli         s9, s11, 8
                  remw         t3, a5, s11
                  slti         s11, s8, -888
                  auipc        s5, 557305
                  sub          s4, a2, ra
                  xor          t6, a6, zero
                  divuw        t6, s5, s6
                  div          t5, s5, a5
                  slli         a7, t5, 40
                  divu         tp, t4, gp
                  mul          tp, zero, s6
                  lui          t3, 252135
                  subw         sp, t6, s2
                  sraiw        t1, sp, 11
                  mul          t0, zero, tp
                  andi         s11, a1, -361
                  div          s2, s4, t5
                  remw         ra, a1, tp
                  mulw         t1, t4, s6
                  slti         s1, s9, 1302
                  or           t0, a2, s0
                  div          s11, a1, s2
                  xor          s4, s4, t0
                  subw         t3, gp, s4
                  srlw         ra, a0, t4
                  div          s9, t1, a2
                  srai         s1, s6, 36
                  auipc        sp, 489411
                  divu         s7, t6, a5
                  addw         gp, sp, gp
                  sllw         zero, s10, gp
                  srlw         tp, s9, s1
                  divuw        t5, s5, a7
                  slti         s7, zero, 1150
                  slliw        a5, zero, 10
                  divu         s5, t5, s6
                  addi         t6, a7, -1320
                  auipc        a0, 750177
                  xor          ra, t4, a3
                  sltiu        t3, s1, -1538
                  remuw        s10, s8, ra
                  srai         a5, s5, 50
                  lui          gp, 889620
                  mulhsu       s5, sp, s4
                  sltu         t1, sp, s1
                  and          a0, s9, ra
                  sra          tp, a7, s4
                  srl          gp, t6, t5
                  slliw        s10, s9, 13
                  mulw         t1, a5, t2
                  srl          gp, gp, a0
                  mul          a1, t4, t4
                  sra          t0, a4, t3
                  mulhu        s6, t1, t5
                  add          t3, zero, a2
                  srlw         t1, s0, t1
                  auipc        a4, 493730
                  srl          a4, s7, t5
                  mulw         t0, ra, a7
                  sra          t2, t0, s0
                  addi         s9, s7, 887
                  rem          a7, t0, t2
                  mulw         t6, a0, a6
                  sub          a3, zero, a2
                  sra          a0, a2, a2
                  mulh         s9, s0, a1
                  sraw         a0, a1, ra
                  or           tp, t6, a6
                  slti         a1, s1, 1970
                  addi         a4, a6, -1524
                  remu         a7, tp, a3
                  srai         t5, s7, 58
                  ori          t1, s10, -116
                  remuw        a7, s6, a7
                  slli         s7, s6, 24
                  xor          s2, t3, s7
                  or           s11, a2, s7
                  rem          a3, zero, a3
                  sraw         s11, s7, t2
                  slli         a6, s4, 39
                  or           t5, t3, s4
                  xor          t1, s1, sp
                  sraiw        a7, zero, 13
                  divw         a6, sp, a2
                  mul          s5, sp, a6
                  srai         a5, s4, 62
                  divuw        a7, s9, s6
                  rem          t4, a7, t3
                  remu         zero, a7, a7
                  srai         a1, s7, 50
                  nop
                  slt          a7, s5, t2
                  or           s1, s2, a1
                  andi         a5, s1, -1903
                  lui          a4, 666516
                  div          s10, s1, s4
                  xori         t1, t4, 1034
                  xor          tp, s8, ra
                  sub          zero, a0, t2
                  div          sp, s9, a1
                  slliw        t1, sp, 16
                  srli         s1, t6, 25
                  xor          s5, s3, s11
                  srliw        t0, s5, 5
                  nop
                  divw         sp, a6, t0
                  addiw        a0, s7, -15
                  sra          a4, a2, s7
                  nop
                  mul          s9, s11, zero
                  divuw        sp, a4, s6
                  mulhsu       a4, s5, t5
                  srai         zero, t4, 40
                  lui          s2, 25724
                  mulw         s6, a4, a4
                  and          t2, tp, s8
                  add          ra, zero, s8
                  subw         t1, t3, s6
                  slt          t3, s0, gp
                  sraw         ra, a6, a6
                  add          s7, gp, a5
                  sra          zero, s11, s4
                  nop
                  or           a0, sp, s6
                  slli         s4, tp, 46
                  rem          ra, a6, s9
                  mulhu        a7, ra, s9
                  sll          a0, t5, s6
                  div          a5, s1, a7
                  andi         t2, s0, -570
                  srlw         a7, a4, a0
                  mul          t3, t2, a0
                  addiw        s2, a2, -14
                  sltiu        sp, s2, 1852
                  remu         s9, s8, t5
                  remu         t0, t4, t6
                  mulhu        s1, sp, t0
                  remw         s11, s0, s1
                  remu         t6, ra, t4
                  sraw         gp, a6, t0
                  subw         t1, s7, gp
                  addiw        gp, t5, -1423
                  mulh         ra, s7, zero
                  andi         t4, sp, 642
                  mulhsu       ra, s3, t2
                  slli         t4, a4, 25
                  mulw         gp, a0, a5
                  add          s6, a6, t5
                  sraw         a3, s0, s10
                  remu         t1, t6, a3
                  sub          t4, t3, t4
                  slt          s4, a6, zero
                  andi         s4, t6, 876
                  subw         s9, gp, s9
                  remu         s11, t3, s8
                  lui          a6, 496025
                  ori          gp, zero, -1373
                  divuw        s7, sp, a4
                  xor          a6, s11, sp
                  slt          a7, s2, s11
                  rem          a7, a0, s7
                  auipc        s2, 391121
                  sllw         t5, s10, t1
                  sub          s10, t6, a0
                  srl          s11, s4, t1
                  sltu         a6, s8, s5
                  div          t3, s2, s2
                  addiw        zero, ra, -601
                  srai         t6, a7, 0
                  sub          s5, t1, s4
                  slt          t0, s4, s8
                  rem          zero, a5, a5
                  nop
                  divu         t1, s5, a0
                  sraiw        t4, t4, 13
                  sll          s4, s4, a2
                  mulh         s10, t1, s9
                  srlw         t4, t2, gp
                  sra          a1, t5, t3
                  slti         s9, s1, -95
                  sllw         zero, t1, s10
                  sltiu        s2, a6, 1052
                  andi         a4, a1, -1728
                  add          s11, a7, t5
                  lui          a5, 1006939
                  srai         gp, s5, 54
                  sll          a6, a1, a7
                  xor          a0, a6, t3
                  rem          a3, s4, t6
                  slti         s9, t0, 1113
                  auipc        s7, 692863
                  remw         ra, s8, a1
                  addw         t6, s0, s7
                  sub          a3, t6, s8
                  sraw         t0, t3, s2
                  slti         a6, t6, 1703
                  mul          gp, t3, a1
                  remu         a3, s2, a4
                  sraw         a6, gp, s0
                  slli         a1, t6, 23
                  srai         s11, t2, 16
                  slti         a7, s7, 1151
                  sraw         gp, gp, ra
                  mulw         s4, s8, t5
                  sltu         gp, gp, tp
                  slti         s6, a4, 318
                  xori         a6, s8, 167
                  addw         s10, a4, s3
                  addw         a0, a5, a6
                  mulh         ra, a4, s8
                  remuw        s9, s10, a0
                  auipc        sp, 939889
                  slli         sp, s1, 29
                  remw         s1, t1, s8
                  srl          s6, tp, t6
                  srl          s5, s10, zero
                  slti         s7, t4, 1560
                  ori          t6, s7, 1318
                  slliw        a7, a2, 15
                  divu         zero, s9, s1
                  andi         s10, a3, 833
                  slliw        s2, s10, 19
                  sllw         gp, s5, s5
                  sraw         gp, t0, s7
                  auipc        ra, 353817
                  auipc        a7, 811968
                  slt          a7, s3, sp
                  mulhsu       a5, tp, t6
                  divuw        s1, s10, s6
                  mulhu        s5, a6, t5
                  addi         a3, a1, 1696
                  and          s10, s7, t5
                  mulhsu       s10, s5, s6
                  sraiw        t5, s7, 29
                  srli         a2, t2, 22
                  srlw         a2, a4, sp
                  mulhsu       t4, t6, s6
                  xor          tp, a2, t4
                  div          ra, zero, a4
                  xor          ra, t5, ra
                  divuw        zero, a0, t4
                  srliw        s6, ra, 1
                  mul          a7, t3, s8
                  slli         s11, s4, 26
                  srliw        s6, t3, 28
                  slli         a0, s6, 6
                  and          t1, t1, t4
                  slli         s4, t0, 43
                  sltiu        a5, a1, 1937
                  mul          zero, t0, t4
                  sra          a2, t4, s2
                  divuw        a4, a0, s5
                  sub          gp, s11, t5
                  sltu         s4, t3, s7
                  srlw         gp, zero, s6
                  sraw         sp, s0, s9
                  srai         s4, s2, 25
                  div          a2, s3, gp
                  div          a5, ra, s10
                  slliw        a1, a2, 28
                  mul          s6, t3, gp
                  slti         a5, a7, 424
                  srai         ra, t0, 43
                  slt          sp, t2, s3
                  srlw         s10, t5, s5
                  remw         a5, tp, t2
                  slti         zero, s11, -1466
                  remw         s11, s1, s1
                  sltiu        tp, t6, 1719
                  sllw         t6, a1, a1
                  sltiu        s5, s2, -1015
                  slli         s6, s5, 3
                  and          s7, s3, s5
                  sllw         s7, a1, tp
                  srai         s4, s9, 36
                  sub          a0, a2, s5
                  slt          s4, a0, s10
                  remw         t3, s7, t2
                  remuw        s10, a6, s6
                  andi         a7, a1, -613
                  rem          t3, s1, a1
                  srai         a3, a5, 5
                  mulh         t2, t3, a3
                  addw         s2, t4, a4
                  srlw         t6, s0, t0
                  srli         s11, a0, 61
                  mulh         a3, s7, ra
                  andi         t0, s1, -751
                  sllw         t2, a1, t3
                  mulw         t5, s7, s1
                  remw         zero, s0, a0
                  slti         s11, s10, 530
                  srl          t3, s11, s10
                  rem          s6, s6, s4
                  divw         s9, s5, s7
                  addw         sp, t3, t5
                  lui          t2, 1002658
                  divw         t4, t0, tp
                  remw         t1, s11, a2
                  sub          s11, t4, a5
                  andi         s7, a6, 1452
                  ori          sp, a1, 543
                  srl          a7, t0, t2
                  sub          gp, s11, a7
                  addw         zero, s4, a5
                  mulhu        t6, a5, s6
                  slt          s4, gp, sp
                  mulhsu       s7, t5, a4
                  nop
                  addw         s5, s4, sp
                  and          a1, s8, t1
                  mul          s10, s11, ra
                  or           s10, ra, s8
                  mulhu        s4, a4, t1
                  addiw        a3, a3, 738
                  remuw        s11, t2, a0
                  divuw        t2, tp, zero
                  ori          s5, s3, -312
                  sllw         s2, a0, tp
                  divuw        s10, s4, gp
                  div          t0, t6, s7
                  addi         a2, a7, 284
                  or           tp, s2, s10
                  rem          s10, s9, s3
                  ori          a5, s3, 248
                  nop
                  sra          tp, a4, ra
                  xor          t1, ra, sp
                  divu         s2, t0, t0
                  or           a2, a0, t6
                  sraiw        t3, sp, 11
                  srl          s2, t3, a0
                  addiw        s1, t3, 1405
                  addi         tp, a4, -181
                  auipc        a3, 677643
                  divuw        s1, t2, t2
                  and          s11, ra, a3
                  sra          t1, t6, s11
                  srai         t5, a5, 36
                  srlw         t6, t2, t1
                  sllw         s7, ra, a6
                  addiw        s10, s6, 599
                  addw         s7, t5, s5
                  remuw        ra, t6, s11
                  srl          s5, a7, s5
                  sraiw        a2, s3, 8
                  rem          tp, t2, s11
                  remw         zero, zero, t5
                  sll          t6, a1, zero
                  addw         t1, s9, s4
                  add          s5, a2, s0
                  and          s6, a4, a1
                  srliw        s5, s0, 2
                  divuw        s4, s4, t5
                  sra          s7, s3, s1
                  mulw         sp, s6, gp
                  nop
                  slt          t6, s7, a5
                  mul          t0, t6, s0
                  sltu         tp, t6, t3
                  or           s9, s2, gp
                  slli         t4, t0, 46
                  mul          a6, s1, t4
                  and          s10, s8, s3
                  mulhsu       t1, zero, a4
                  mulhu        a2, a4, a0
                  sllw         sp, zero, s4
                  srai         a5, a1, 4
                  rem          a7, s8, t0
                  nop
                  slt          a2, ra, s9
                  add          t0, t3, s7
                  xor          a2, s7, t5
                  rem          ra, a0, t0
                  auipc        s9, 729697
                  mulw         a0, t0, s10
                  sub          s11, a3, gp
                  lui          s7, 871616
                  ori          t0, s0, -235
                  slliw        a2, sp, 5
                  srlw         a6, t3, s9
                  sraiw        gp, t4, 17
                  sltiu        t5, t3, -1653
                  sub          s1, s2, t2
                  or           a3, s3, t5
                  remuw        a5, s3, t4
                  srai         gp, s11, 55
                  nop
                  mulhu        s6, s9, s3
                  slliw        a6, t4, 17
                  addi         s6, ra, -1383
                  xor          a7, s2, t4
                  srliw        t1, t3, 5
                  srlw         sp, sp, a5
                  mulhsu       t3, gp, s11
                  srliw        a1, a2, 9
                  slliw        ra, a2, 1
                  ori          a0, a6, 1202
                  sltiu        sp, s8, -1009
                  nop
                  mul          t4, t2, a3
                  addw         zero, tp, zero
                  andi         a4, sp, -1784
                  addi         t3, a0, 1648
                  divu         tp, a6, s3
                  divw         sp, gp, ra
                  rem          a3, s8, s11
                  srl          s9, s10, tp
                  xori         a5, s3, 1623
                  remu         s11, s3, s5
                  auipc        s7, 652857
                  xor          t3, a5, a5
                  srl          a0, a2, t6
                  mulhsu       a3, t0, a1
                  mulhu        s6, s4, t6
                  sub          s6, t4, s11
                  ori          zero, s8, 401
                  addiw        s10, t5, -1544
                  or           s2, t1, s3
                  sll          t2, sp, zero
                  add          s1, t0, a7
                  sraw         s5, a6, a0
                  mulhu        t4, s7, s7
                  sllw         t5, gp, a5
                  addi         ra, ra, 863
                  mulhsu       t4, s11, s10
                  divu         s10, t6, t1
                  rem          a6, s5, s7
                  sll          a3, tp, a2
                  xori         a0, s10, 325
                  or           sp, s8, zero
                  sltu         tp, a7, a2
                  remuw        s11, s4, gp
                  xori         a0, t4, -687
                  mul          ra, s2, s5
                  mulh         ra, s10, t1
                  sllw         zero, a0, t4
                  addiw        t5, s8, 1349
                  addi         a7, a4, 1924
                  srlw         s11, a7, a1
                  mulhsu       t2, tp, s4
                  remu         a4, a5, t4
                  sll          s5, s1, s3
                  xor          s6, a3, s8
                  xor          s1, s6, a0
                  subw         t5, gp, t2
                  andi         s10, s10, 1556
                  xori         a0, s8, -1092
                  divuw        s1, t6, a2
                  sllw         s2, a0, s4
                  mulhsu       t2, s5, t5
                  divw         a5, s6, a3
                  sll          a4, s4, a0
                  sll          ra, t1, zero
                  sub          s5, s8, a5
                  or           ra, s8, s1
                  srliw        a5, zero, 31
                  srlw         t6, a6, t3
                  and          ra, s11, s3
                  sltu         a6, t0, a4
                  andi         tp, s8, 717
                  xor          a6, s4, s0
                  subw         t0, a6, a5
                  subw         s10, t3, a2
                  sltu         t2, t2, t3
                  add          a3, t4, t1
                  srliw        s2, s4, 10
                  ori          t2, s1, -1365
                  divu         a4, t5, s3
                  slli         s1, a3, 8
                  sraw         t3, a1, s3
                  sll          a6, s7, a4
                  div          t2, s5, t0
                  mul          gp, gp, tp
                  sraw         s7, a3, s8
                  div          t3, a5, t1
                  and          a0, s4, ra
                  srliw        a5, a5, 18
                  srliw        t1, a4, 27
                  slt          a0, t3, s3
                  divu         sp, s6, t6
                  xori         t3, a2, 370
                  srlw         a5, t1, s5
                  subw         a2, ra, zero
                  mulh         ra, a3, s10
                  subw         a1, a2, s6
                  add          tp, t6, s6
                  remw         gp, a5, s0
                  divu         s11, t2, s7
                  ori          a2, s9, 1559
                  slli         t2, a7, 38
                  subw         s5, a1, a5
                  srliw        ra, t2, 17
                  add          s7, s4, s1
                  xori         a3, s10, 737
                  sll          a6, t0, s2
                  mulhsu       t2, s11, t3
                  sub          t0, s1, sp
                  sll          s7, s1, a1
                  auipc        t0, 398682
                  slti         a6, a4, -387
                  srliw        a4, a1, 29
                  slti         ra, tp, 203
                  ori          s2, t4, -1189
                  sltu         s7, ra, t2
                  slti         s11, t4, 1972
                  srli         a6, tp, 41
                  mulhu        s4, s5, t6
                  and          a2, s11, t4
                  xori         a2, t5, 1384
                  srai         sp, s4, 60
                  slti         tp, a6, 1097
                  srl          t1, s3, t3
                  lui          a0, 71015
                  sraw         s6, t5, a3
                  slli         tp, gp, 22
                  slt          a1, a2, sp
                  or           s5, s7, t1
                  divw         s11, a2, s11
                  rem          a0, a4, s1
                  srlw         sp, a1, zero
                  sll          t1, s7, ra
                  sub          gp, a4, a2
                  nop
                  slliw        sp, a5, 6
                  divu         a0, tp, t2
                  nop
                  sltu         s4, s11, t4
                  subw         a3, s6, t0
                  srli         t4, tp, 19
                  addw         t6, s6, s9
                  divw         a7, a0, s8
                  mulhu        a5, a1, s6
                  srlw         a0, a7, zero
                  remuw        t2, a0, t6
                  divu         gp, a7, sp
                  slt          s1, s11, s8
                  rem          a5, sp, s4
                  addw         s10, t5, s7
                  remuw        a1, a4, s5
                  addiw        t1, a7, 366
                  divu         s7, s9, s10
                  mulh         s5, s4, t0
                  srl          a1, s4, s2
                  mulhu        t4, s9, ra
                  divw         a2, ra, s8
                  sraiw        s1, s4, 17
                  addiw        s4, t6, 1372
                  slti         tp, s7, -50
                  mulhsu       t5, a2, s10
                  lui          t6, 382172
                  mul          t2, s2, a0
                  sll          s6, s11, gp
                  divw         t3, a5, tp
                  divw         t5, s1, a7
                  addw         s7, t6, a5
                  slt          t4, a3, s2
                  rem          s10, a5, s8
                  mulhsu       t6, a2, t3
                  sltiu        s4, s10, 470
                  slt          t2, a5, s8
                  remu         t3, a3, a6
                  nop
                  srlw         s4, gp, t5
                  slliw        t1, s5, 13
                  remuw        a0, t0, ra
                  ori          t0, s10, -1155
                  div          t2, s9, t5
                  mulhu        a0, s9, a3
                  divu         zero, t3, t6
                  ori          t6, s6, 365
                  mul          a6, s9, a1
                  div          t0, s0, sp
                  addi         a4, s10, -137
                  mulw         s1, a5, a7
                  mulw         a5, s9, s3
                  sraw         s6, t1, a4
                  sltu         t4, zero, s7
                  add          a7, gp, s0
                  slli         sp, sp, 63
                  auipc        t2, 555877
                  slt          t4, s9, s3
                  sraw         tp, s5, a6
                  auipc        a0, 876825
                  or           gp, t1, s5
                  addiw        gp, a7, 23
                  divu         a2, t1, s7
                  slti         a7, s8, -56
                  slliw        t2, s5, 15
                  rem          t4, s11, zero
                  sraiw        t3, a0, 9
                  sll          t3, a2, t3
                  remuw        a2, sp, s4
                  rem          s2, a4, s10
                  xor          ra, a0, s3
                  mul          ra, t0, s8
                  div          a2, s10, a1
                  nop
                  mul          t4, s4, zero
                  slli         s1, s6, 20
                  rem          s10, tp, s0
                  remw         tp, t4, s8
                  andi         s7, s11, -541
                  srliw        ra, a2, 18
                  mulw         s9, s8, t0
                  slli         gp, s0, 17
                  slliw        s6, s5, 28
                  slt          a6, t3, s5
                  rem          s10, zero, a1
                  remuw        gp, s3, a7
                  mulw         s1, a4, t3
                  andi         t4, ra, -1001
                  ori          a3, t3, -1964
                  sllw         a0, t1, a4
                  addi         s4, s5, -43
                  srlw         ra, s6, a2
                  add          a3, s8, gp
                  srlw         zero, s9, s3
                  and          s1, a0, gp
                  mul          a1, zero, s1
                  nop
                  rem          tp, a3, s10
                  slliw        s2, t6, 31
                  slt          s10, a7, s3
                  srli         a1, t0, 53
                  mulw         s9, s5, sp
                  mulw         a1, a6, ra
                  sraw         s7, zero, a6
                  and          s6, s6, a2
                  addiw        a6, sp, 1703
                  mulhsu       s10, t5, a4
                  add          a4, t3, a3
                  srlw         s11, s3, sp
                  mulhu        t5, a2, s3
                  mul          a2, s4, s7
                  ori          s1, t4, 491
                  divw         sp, a0, t2
                  sraw         a2, a0, s6
                  srl          s10, t6, ra
                  sub          tp, a4, s6
                  slti         t3, a4, 1694
                  srlw         a5, s7, s3
                  mulh         t2, a4, t1
                  and          t1, zero, s6
                  slti         sp, s8, 735
                  mulhu        t3, a1, s3
                  slliw        zero, s1, 17
                  lui          sp, 289782
                  auipc        a2, 829931
                  xor          a1, s9, t6
                  addw         s9, a6, a4
                  sltiu        s9, s3, 204
                  addiw        gp, a0, 975
                  mulhsu       s7, a6, a5
                  lui          a7, 155220
                  xori         s11, a3, -231
                  div          s10, a5, ra
                  div          s1, s8, s2
                  divuw        s11, a1, gp
                  divuw        s10, t4, a6
                  sub          s11, a4, s6
                  add          s10, a6, gp
                  ori          s10, t1, -1737
                  and          t1, s0, a4
                  mulhu        t1, s4, s3
                  srliw        a2, s0, 20
                  add          t6, s3, a0
                  mulh         t2, a1, a2
                  add          t5, t3, s4
                  xori         ra, a4, -200
                  ori          a2, s6, 453
                  div          a1, s5, s11
                  nop
                  sraw         a1, a6, t3
                  sltu         a0, ra, s7
                  addiw        zero, t5, 447
                  xor          a6, a1, a6
                  mulhu        sp, sp, t5
                  srlw         s10, a4, a2
                  divw         t4, a7, s4
                  mulhsu       a4, s4, s8
                  xori         s7, s2, 1564
                  sll          s4, a0, t0
                  divu         s4, s9, s5
                  srlw         a1, gp, t4
                  sraiw        t4, s11, 27
                  xor          s11, ra, a4
                  sraw         t0, a5, s11
                  srlw         t5, s2, s1
                  addi         a1, ra, 761
                  remuw        s6, t4, s5
                  sllw         t6, a3, ra
                  ori          t2, tp, 1441
                  mulhu        t3, s9, s4
                  srl          s6, s1, tp
                  srai         sp, a1, 12
                  addi         t3, s6, -1636
                  rem          t6, a5, a3
                  div          a5, s2, zero
                  divu         s11, tp, s0
                  or           t2, t4, s8
                  sra          t2, zero, tp
                  slli         t0, t3, 48
                  mulw         a4, s2, ra
                  rem          ra, t4, a6
                  divw         s2, zero, s3
                  slti         s7, s3, -1783
                  divw         s7, s10, a7
                  mulhu        tp, a7, a3
                  sub          sp, s0, a1
                  sltu         s1, s6, s0
                  mul          gp, a5, s9
                  divu         s9, t1, s4
                  slt          a3, a5, a7
                  slliw        s2, t3, 17
                  div          tp, a3, a4
                  mul          t1, a4, s4
                  div          s7, sp, a1
                  divu         t5, a4, s3
                  divw         s7, a6, s9
                  remuw        s7, t1, s9
                  sraiw        t2, t2, 1
                  sltu         ra, t4, t1
                  mulh         s7, s4, s2
                  remuw        s9, s1, t2
                  remuw        a1, ra, t2
                  slti         s1, a2, 664
                  sraw         t5, s0, t4
                  remuw        zero, sp, sp
                  srliw        a5, s8, 16
                  or           a6, ra, s9
                  ori          a0, s6, -1712
                  mulhu        a7, zero, gp
                  ori          s10, t4, -1456
                  subw         a5, a0, a2
                  mul          sp, a5, t0
                  mul          t4, a6, t0
                  auipc        s9, 770176
                  divw         s6, t0, a4
                  addw         a0, s11, t2
                  divu         s1, t0, s2
                  divw         t6, s7, a0
                  remu         s2, t6, t0
                  and          s2, s1, a6
                  sraw         sp, s11, s7
                  srli         ra, tp, 43
                  sraiw        a6, a4, 18
                  divu         ra, t5, t2
                  sltiu        t1, s6, 1830
                  sra          t6, s4, a6
                  auipc        s6, 824900
                  remuw        t3, t3, s1
                  and          s7, s10, tp
                  mulhsu       a7, t0, t3
                  nop
                  divw         ra, s2, s11
                  addi         s10, s1, -1534
                  sltu         s11, s8, s10
                  remw         t3, tp, a4
                  srai         s1, s6, 31
                  divu         s6, sp, s8
                  srlw         a0, a5, a2
                  rem          s5, a0, a2
                  sraw         ra, t2, s0
                  addiw        a5, sp, -567
                  sraw         t6, a1, a2
                  div          a2, a6, t0
                  auipc        t3, 936891
                  mulhsu       a4, s0, s5
                  div          t2, t3, gp
                  sltu         gp, a4, t1
                  sltiu        tp, s7, 1705
                  sub          a2, s5, t1
                  sraw         t0, t0, t6
                  slliw        s9, a0, 21
                  add          s2, s3, s8
                  auipc        t0, 581417
                  lui          s2, 341965
                  divw         s1, t5, zero
                  mulhu        s6, s4, s3
                  divuw        s6, s9, s6
                  remuw        s11, t6, ra
                  remu         s7, a0, s2
                  andi         a4, t0, 768
                  nop
                  remw         s7, sp, a4
                  mulh         s1, ra, a4
                  subw         tp, a6, s3
                  subw         t6, s9, a0
                  xori         tp, s0, -910
                  divw         s11, s8, s5
                  sltiu        t6, s1, -1665
                  ori          sp, a4, -1352
                  mulw         t3, s9, s0
                  addw         gp, t1, t4
                  srlw         tp, s8, t1
                  auipc        a2, 53808
                  xori         t3, s1, 1052
                  srli         t3, s3, 37
                  sra          t4, t4, a1
                  addw         s1, tp, t3
                  remu         tp, sp, sp
                  rem          s10, s2, s7
                  slt          s6, a1, s8
                  slliw        s9, zero, 2
                  divuw        sp, s9, sp
                  mulw         s2, s3, s6
                  sll          a7, t3, s9
                  sub          s6, t5, s11
                  divw         t3, s2, s10
                  sltu         a1, a2, s4
                  mulw         t5, t4, t3
                  addiw        t3, t5, 944
                  addw         t6, s1, s11
                  srli         a0, a7, 46
                  and          gp, a0, s1
                  slliw        t2, t4, 11
                  mulh         a6, tp, gp
                  sraiw        s4, t0, 10
                  subw         t4, s5, s6
                  remuw        zero, a0, s10
                  slti         t0, s0, 1738
                  and          gp, a1, sp
                  remu         s2, a5, gp
                  mul          a5, s0, t1
                  ori          t4, gp, -1251
                  addw         gp, t2, s9
                  add          s2, s10, a4
                  sraw         a5, zero, tp
                  remuw        a0, zero, s5
                  divu         s9, s0, sp
                  auipc        s2, 341065
                  remw         a2, s11, zero
                  srli         a4, s6, 56
                  divu         t3, tp, sp
                  addi         t3, zero, 1747
                  addiw        a2, t3, -43
                  mulw         t2, gp, t5
                  xori         a4, a4, 2014
                  mulhsu       t0, a0, t1
                  sra          t0, t3, ra
                  addiw        tp, a6, 973
                  xor          a4, t1, a5
                  mul          a7, gp, s9
                  mulhsu       sp, t1, a7
                  xori         ra, s3, -1723
                  subw         s11, s11, gp
                  nop
                  divw         s7, a6, s9
                  addiw        t5, s10, 505
                  nop
                  sraw         t3, s8, a5
                  divw         t2, sp, s5
                  addiw        t6, t0, -1822
                  mulhu        t4, ra, s10
                  rem          t2, t1, gp
                  lui          t3, 471802
                  srl          t3, s9, t4
                  sltu         s1, t6, sp
                  div          s2, t4, s2
                  andi         s6, t6, 1836
                  srliw        s4, tp, 19
                  mulhu        a2, t5, sp
                  ori          s4, s9, -470
                  sraw         t6, sp, t5
                  rem          s2, s1, a7
                  divw         s10, s7, s2
                  auipc        t6, 223273
                  remw         s1, t6, s10
                  add          a4, a2, s10
                  add          a6, gp, a4
                  sltiu        s10, s0, -128
                  srliw        t0, s4, 12
                  or           s4, t4, gp
                  sltu         tp, t5, s8
                  addiw        s4, tp, 1392
                  divu         t3, s0, t5
                  srliw        s5, s9, 5
                  srlw         zero, s10, t4
                  sraw         s2, s9, s0
                  xori         a2, a4, 515
                  mulhsu       a0, a4, s10
                  addi         ra, s2, -1201
                  addw         s1, a1, s0
                  xori         s4, tp, -426
                  ori          t5, s5, -1608
                  srlw         t4, gp, s3
                  mulw         s1, s1, a0
                  lui          zero, 155443
                  addi         a3, a6, 1939
                  srli         s7, t2, 20
                  sltiu        s7, s5, -1882
                  mulh         a6, a4, a3
                  auipc        s5, 259526
                  subw         a1, t6, ra
                  srliw        a5, s5, 2
                  sltiu        s9, a5, -724
                  srai         a7, s0, 41
                  sllw         ra, s10, s10
                  slli         s2, t2, 0
                  sub          a0, t0, s4
                  rem          s1, t2, s9
                  andi         s10, a6, -1476
                  slt          gp, ra, ra
                  srliw        a5, a6, 28
                  srli         a5, s9, 15
                  sraiw        s11, t4, 15
                  divw         zero, t3, t2
                  addw         a3, a5, s3
                  sraw         t5, gp, t5
                  srlw         gp, t2, sp
                  sll          s6, s8, t3
                  srai         a4, a5, 44
                  and          t5, a5, a6
                  sltiu        t3, a7, 668
                  sub          s4, s2, s11
                  sra          s9, s9, t3
                  addi         a3, tp, 1040
                  or           t4, t2, s5
                  mulh         t0, t3, t0
                  lui          zero, 100490
                  srai         a3, s6, 43
                  div          a7, s11, t4
                  srliw        t5, tp, 14
                  xor          a5, gp, t2
                  sra          tp, s4, t6
                  divw         s5, a5, gp
                  mul          zero, gp, a7
                  divuw        a5, a6, s6
                  div          sp, s8, t6
                  auipc        s1, 207604
                  add          tp, t2, t3
                  or           a3, s2, a0
                  sraw         t5, zero, s9
                  mulw         s1, t2, t0
                  srli         t0, gp, 51
                  subw         ra, tp, s11
                  or           s5, s4, s3
                  mulh         gp, gp, ra
                  rem          t0, s1, ra
                  slliw        a6, s10, 14
                  auipc        s11, 709892
                  sltiu        t2, a7, 1938
                  slti         zero, s1, -442
                  sub          t0, a7, t6
                  mul          s6, t3, s11
                  subw         t0, s3, a0
                  lui          a6, 456733
                  addi         t4, sp, 1920
                  andi         gp, a1, 1648
                  sltiu        s1, gp, -1805
                  or           t3, s0, t2
                  srliw        t3, t6, 8
                  divu         s1, a2, s7
                  slliw        t3, s2, 21
                  slt          ra, s1, s3
                  sltiu        a3, s2, 531
                  divw         t0, s11, s5
                  divuw        s7, t5, sp
                  sraiw        a3, a3, 9
                  xori         a6, gp, 1995
                  srliw        gp, tp, 28
                  mulhu        zero, t4, a0
                  sltu         a0, tp, s9
                  sltu         tp, s11, a4
                  slli         s4, t0, 24
                  and          s9, s11, t6
                  addiw        s7, t6, -106
                  mulhu        a1, s1, s9
                  remw         zero, s2, s8
                  subw         t2, t2, s9
                  sllw         gp, a2, sp
                  sll          t5, s3, s0
                  mulh         t0, s10, s4
                  or           t2, s5, s0
                  nop
                  srliw        s2, a1, 16
                  divu         t4, t1, a0
                  slti         zero, a0, -434
                  lui          a3, 512777
                  andi         a3, s5, -1727
                  sraw         s10, a0, a3
                  xor          t2, t2, t0
                  remuw        a1, zero, t2
                  subw         a6, s4, zero
                  divw         a1, a6, a6
                  ori          s11, s7, 1854
                  mulhsu       t0, t3, s6
                  and          t6, s2, a5
                  divuw        s4, a1, s6
                  ori          sp, t4, -1919
                  divuw        a3, s11, tp
                  lui          s1, 901050
                  mul          tp, s3, s0
                  sltiu        t4, s5, 861
                  mulh         tp, zero, s0
                  sraw         s2, s7, s11
                  remuw        a4, a3, sp
                  xor          s2, t2, t5
                  divw         a3, t5, t4
                  sltu         t1, s9, s4
                  mulh         a7, s1, a3
                  sub          t0, a4, a5
                  divw         s9, t1, a4
                  srli         a0, a1, 55
                  subw         t0, t0, gp
                  slti         s7, s7, -567
                  addiw        s7, a4, -309
                  lui          a4, 601985
                  sltu         a4, t4, gp
                  sllw         t3, zero, s5
                  sltu         t5, t1, t0
                  xori         sp, a4, 760
                  sltu         t5, s8, s3
                  sltiu        a6, s8, 1100
                  ori          a2, a2, 839
                  and          a5, gp, s3
                  sltiu        s6, a3, 1962
                  mulhu        t6, a3, s1
                  srli         a0, s11, 51
                  sra          t3, sp, t6
                  sltu         t0, ra, s11
                  sub          t4, s11, s7
                  mulhu        s10, a0, s6
                  mulhu        t5, gp, s8
                  xori         s9, a2, -1681
                  div          tp, s11, a2
                  slli         s5, a2, 8
                  sltiu        ra, s6, -1132
                  divuw        a3, t2, s1
                  mul          zero, s10, s3
                  mul          a3, a0, a2
                  ori          sp, a6, -1091
                  xor          a2, t5, a3
                  mulhu        s2, s10, gp
                  srli         s1, a4, 17
                  xori         s9, s1, 1459
                  lui          s7, 432671
                  lui          t0, 940988
                  remu         t2, a6, s2
                  slliw        t0, s8, 19
                  remw         s6, a5, t1
                  sltu         sp, s3, s6
                  or           t6, sp, s7
                  srai         a6, zero, 11
                  andi         s10, t1, -340
                  lui          a0, 803597
                  slliw        s5, a1, 19
                  sub          t1, s4, t3
                  addiw        a2, s7, 1925
                  sraw         a3, t6, tp
                  nop
                  lui          t4, 698748
                  sub          s7, t4, zero
                  srli         t6, tp, 62
                  sltiu        s4, a3, 402
                  auipc        a2, 882128
                  slli         a6, sp, 48
                  remu         a3, s1, s11
                  addw         tp, t1, a1
                  srai         t5, t4, 40
                  divuw        t3, t5, tp
                  mul          a1, s1, s4
                  subw         tp, t3, t2
                  mulhu        a0, s11, a6
                  sraiw        t1, a4, 21
                  divu         a4, tp, t5
                  srai         s4, zero, 43
                  sub          t6, s0, zero
                  slti         a4, s0, -557
                  mulw         zero, a1, a0
                  lui          t5, 310934
                  mulw         a0, tp, zero
                  divuw        a3, t6, tp
                  sllw         zero, s10, a0
                  slliw        a6, s7, 21
                  auipc        s10, 189049
                  slli         a5, a1, 31
                  sltiu        s11, a3, 1865
                  remw         gp, a4, zero
                  slli         s6, s9, 26
                  or           zero, ra, s9
                  lui          a2, 683819
                  divu         t4, s10, s5
                  sraiw        sp, a7, 13
                  mulhsu       a3, t5, t6
                  xor          gp, s5, a7
                  ori          tp, a1, 1372
                  srai         a5, s10, 11
                  slli         s1, t4, 61
                  sraiw        a4, gp, 22
                  divu         s2, s0, t0
                  add          a5, t3, s9
                  or           s6, gp, t6
                  rem          s2, s3, s2
                  mulh         a3, s1, s7
                  mulw         ra, a6, t2
                  div          t2, s11, zero
                  sltu         s4, s11, a6
                  mulw         a6, t5, tp
                  slli         zero, s8, 47
                  rem          s10, s7, tp
                  andi         t2, t1, -1317
                  divuw        s10, ra, s6
                  slt          t3, s1, s7
                  sra          s2, s3, t1
                  mulhsu       t5, t5, t3
                  andi         tp, a0, 473
                  or           s7, s5, tp
                  srliw        a6, t6, 7
                  subw         s1, t2, t5
                  nop
                  rem          s2, t2, a3
                  sltu         a7, s7, s3
                  and          zero, t6, t5
                  subw         t3, t6, s8
                  slli         s11, t0, 44
                  ori          tp, t6, -834
                  srliw        s10, t4, 22
                  mulhsu       a1, s10, zero
                  mulw         a6, s4, t6
                  ori          t3, t5, 15
                  slt          a1, s11, s9
                  srai         t0, s10, 13
                  auipc        a2, 638961
                  sltiu        s4, ra, 1120
                  addi         s1, s7, -1239
                  sllw         t1, t3, t2
                  divw         t4, a3, tp
                  mulh         s4, a0, t4
                  mulh         a0, gp, t3
                  xor          ra, t1, a3
                  srliw        gp, a6, 21
                  sltiu        gp, t3, -428
                  auipc        s10, 895949
                  srli         ra, s7, 15
                  sra          a2, a6, a7
                  divu         t4, s6, s9
                  sltiu        t2, t5, -1268
                  xori         s5, s1, 218
                  xor          s6, s0, zero
                  sub          t3, sp, s2
                  mulhsu       a7, ra, t6
                  nop
                  ori          t6, s4, 1439
                  addi         s2, s0, 617
                  mulhu        t4, a1, s0
                  divuw        tp, sp, zero
                  srai         sp, a5, 58
                  or           t1, s1, s2
                  xori         sp, s0, -1555
                  subw         a6, t2, a4
                  lui          s1, 736002
                  remw         s11, s3, t6
                  sraiw        s11, s7, 3
                  ori          a2, s8, 1106
                  sra          a2, a7, s3
                  or           a7, a6, a1
                  srliw        a1, s1, 30
                  sltiu        s11, s0, 103
                  srl          a4, s11, t2
                  sub          t3, t1, t1
                  divuw        t3, a6, a4
                  auipc        ra, 330432
                  remu         s2, ra, s8
                  xori         a7, a0, -1511
                  remw         s4, a2, gp
                  addi         s5, s11, -919
                  add          tp, t5, a4
                  mulh         a5, zero, sp
                  mulhsu       t6, s7, a6
                  mulw         s7, s3, tp
                  sll          a6, s1, s8
                  sra          tp, t6, a4
                  mulw         t3, a7, gp
                  ori          s2, a1, 1116
                  mulhu        t1, s2, a5
                  ori          s6, t5, -301
                  remu         ra, t6, zero
                  srai         a7, a5, 26
                  and          s1, t4, ra
                  srl          zero, a7, s9
                  subw         a7, s6, a3
                  srliw        s10, t5, 28
                  xor          s1, a6, t1
                  srli         s9, s5, 55
                  remuw        a2, t0, zero
                  slli         t2, a0, 42
                  subw         s11, s6, s9
                  sra          sp, s4, s0
                  addi         a6, a3, 1334
                  div          a0, s1, t4
                  div          a0, sp, s7
                  auipc        t4, 806795
                  nop
                  addiw        zero, s8, -1786
                  slliw        t6, s10, 1
                  remw         t5, s0, t1
                  slt          s2, a1, a5
                  srli         s2, s1, 33
                  mulh         t0, gp, a5
                  mulw         a2, ra, s1
                  mul          s6, s1, a0
                  addiw        a0, s10, -1840
                  sra          a2, s0, a5
                  auipc        a4, 843027
                  remw         a7, s1, a2
                  addw         t3, a5, s5
                  addi         a3, t1, -211
                  srai         s1, s1, 32
                  ori          s10, s4, 1661
                  sraiw        s9, s2, 23
                  add          zero, a7, t0
                  xori         a2, s9, 469
                  mulw         s11, s5, a5
                  divuw        a6, a0, a7
                  divuw        a3, a2, s5
                  mulh         a6, t1, s7
                  sltiu        a3, a1, 794
                  ori          s6, gp, 986
                  or           t3, gp, t0
                  rem          s7, t5, gp
                  sltiu        gp, s10, 408
                  xor          s10, s0, zero
                  addi         ra, s7, -1103
                  slti         s10, s5, -1732
                  mulw         s10, a1, s10
                  srliw        s10, a4, 20
                  sll          s11, tp, a2
                  sraiw        a7, s9, 23
                  divw         t3, t5, a3
                  slliw        a4, s9, 16
                  addiw        a0, a1, 1102
                  sltiu        zero, s8, 212
                  andi         zero, a3, -1613
                  add          t4, s9, t0
                  sraw         a2, s10, t0
                  lui          t3, 509633
                  slti         a4, sp, 1813
                  mulh         t0, s5, s0
                  srai         gp, t3, 8
                  add          t3, s4, a5
                  or           s10, t4, s10
                  rem          a4, s7, s1
                  mulh         s11, sp, s9
                  sllw         tp, a0, tp
                  srl          zero, s5, s4
                  addw         a7, t6, a6
                  mulh         a5, s4, a3
                  remw         a0, s3, a6
                  srli         a0, t3, 46
                  sltu         a6, a6, a5
                  and          a5, t0, a2
                  mulhsu       s9, s8, s3
                  sltu         s10, a4, t0
                  sltiu        t5, gp, 1478
                  slli         t3, t3, 57
                  remu         t2, zero, s9
                  add          t1, s5, s9
                  sll          sp, a4, t2
                  xori         a6, s9, 1317
                  xori         t3, tp, -252
                  sub          ra, s3, s7
                  sllw         t0, t2, s6
                  slti         s7, zero, 1646
                  divu         a3, s3, a3
                  add          s7, a6, s4
                  mulhu        a5, t6, a5
                  divu         a6, s2, t2
                  xori         a4, ra, 1859
                  divu         t3, t3, sp
                  slliw        t2, t4, 20
                  nop
                  divw         t1, a7, a1
                  remw         t4, t5, s2
                  and          s11, s8, t6
                  mulhu        s6, s9, a2
                  divu         s11, a6, a4
                  mulhsu       a5, t0, a3
                  divu         a3, s0, s7
                  mulhsu       s5, ra, zero
                  remw         a1, t4, s0
                  divw         s11, a3, t5
                  sraw         ra, a5, s6
                  slt          t4, a7, gp
                  remu         s11, s1, t5
                  lui          s7, 774371
                  ori          a0, t2, -459
                  slli         zero, t0, 34
                  addi         a1, s9, 1601
                  subw         a0, s3, a0
                  sll          gp, s4, tp
                  and          ra, a0, t6
                  andi         s4, a3, -257
                  add          s10, s11, a7
                  addi         a7, s9, -1817
                  auipc        s7, 151641
                  divuw        t0, s8, s5
                  sraiw        t2, s10, 7
                  sltu         s4, ra, a7
                  addw         tp, a3, a5
                  sltu         a7, t4, s0
                  divu         s5, t5, t3
                  srliw        a1, s1, 26
                  slli         s10, a6, 42
                  div          s10, gp, s8
                  srl          s11, a4, a3
                  lui          gp, 548432
                  slt          a2, a3, s5
                  xor          a6, ra, a2
                  sraw         gp, sp, s9
                  divw         t3, s4, s11
                  mulhu        gp, s10, s6
                  div          a5, t0, s0
                  srli         t4, a4, 2
                  sll          t6, s0, sp
                  sltu         s6, a1, ra
                  slli         sp, ra, 47
                  rem          a1, a4, t6
                  divu         a1, s6, s6
                  addw         a5, s6, s6
                  and          zero, s0, a7
                  srl          s10, s6, a2
                  srliw        a4, a6, 7
                  lui          a5, 277346
                  divuw        a0, s6, a4
                  slli         a7, sp, 42
                  srliw        a3, t5, 29
                  divw         a0, s8, a6
                  addw         t4, a6, a5
                  sllw         a7, t6, s4
                  nop
                  addi         sp, s5, 1558
                  div          ra, t4, s4
                  ori          s5, t4, -1432
                  xor          a4, a3, ra
                  rem          s9, t0, a1
                  lui          a3, 204085
                  lui          s9, 339743
                  sll          tp, a4, s6
                  divuw        s11, a0, s4
                  sraiw        s7, a0, 5
                  add          s9, t5, t2
                  sllw         s2, s1, a1
                  addiw        a7, t0, 1633
                  mulhsu       s9, tp, t2
                  slliw        t3, t4, 19
                  remuw        gp, sp, a4
                  rem          t3, s11, tp
                  add          a6, ra, t2
                  addi         s9, a7, 219
                  srlw         a2, a7, t1
                  divw         a0, t5, a6
                  mulw         t2, t4, ra
                  addw         s1, t6, a5
                  remu         tp, t5, s7
                  sll          a7, s3, s7
                  mulh         t5, zero, a1
                  sllw         t5, a7, t5
                  slti         s2, s7, 1421
                  srai         t6, a6, 38
                  nop
                  and          t4, s7, t4
                  srliw        s6, t5, 3
                  rem          s1, s9, s8
                  sub          t3, a0, t0
                  srai         s2, s0, 46
                  remu         s10, s0, s3
                  addiw        a3, s8, 1018
                  slti         gp, s7, -679
                  add          s5, s0, ra
                  slt          s11, s11, t6
                  div          a0, s1, s3
                  mulhsu       tp, a2, t4
                  srai         s11, t3, 39
                  sltu         t5, a6, s9
                  and          a7, a7, s1
                  sltu         gp, s4, s10
                  mulhu        s7, t4, a2
                  slliw        t4, zero, 5
                  srli         s9, a3, 49
                  rem          a5, ra, sp
                  srai         zero, a6, 53
                  sll          t6, a5, a4
                  srai         t5, s1, 37
                  rem          s4, s1, a4
                  slliw        s11, s9, 5
                  slti         t0, t5, -1566
                  divw         t3, sp, t1
                  sub          s9, s8, a1
                  slliw        s10, s5, 28
                  lui          ra, 2016
                  sub          t6, t4, s7
                  mul          s4, s11, t5
                  lui          s5, 253356
                  div          a4, s1, t0
                  nop
                  slli         s6, ra, 30
                  slti         a2, s10, 817
                  ori          s1, s2, -858
                  srl          s10, a1, t3
                  srai         a5, s3, 35
                  mulw         t2, gp, t1
                  slti         a2, s1, -1151
                  addw         a6, s4, s2
                  rem          t6, s10, s8
                  sltiu        s11, s5, 972
                  sraw         sp, s1, s5
                  sllw         gp, t3, a0
                  remuw        t1, t1, a0
                  srliw        s7, a7, 30
                  auipc        a6, 483049
                  div          s2, s8, t2
                  srai         t4, zero, 16
                  sltu         a7, s8, sp
                  lui          s5, 597234
                  mul          a1, t2, a1
                  mul          sp, zero, s9
                  slti         s7, sp, -757
                  slli         s7, ra, 33
                  div          s1, a5, t4
                  divu         a0, t2, a1
                  addi         s6, tp, -1678
                  mulw         s1, t0, a4
                  remuw        s9, a5, t1
                  addw         a3, a1, a3
                  srli         s5, t1, 1
                  sub          s2, s0, zero
                  rem          s4, s6, gp
                  lui          s10, 534499
                  ori          s2, tp, 939
                  slli         s4, t6, 5
                  sub          t3, t2, t1
                  slli         t0, a2, 32
                  mul          s9, a1, a7
                  srliw        a3, t3, 12
                  ori          t5, t1, 1427
                  srlw         s9, s0, t0
                  slli         a3, t4, 10
                  ori          a2, ra, 1075
                  add          t1, t2, a5
                  sub          s1, ra, s11
                  sltiu        s11, a2, 1969
                  ori          t0, a1, -1067
                  xori         tp, a4, -1280
                  divuw        a3, s10, s11
                  lui          s2, 872541
                  srl          a0, ra, t0
                  srai         t3, tp, 44
                  divuw        t3, s3, s11
                  subw         s2, s11, t6
                  srli         gp, a4, 55
                  divu         a4, s8, gp
                  and          sp, sp, s11
                  addw         s10, s10, a1
                  remuw        zero, s3, zero
                  subw         zero, t2, s5
                  mulhu        a5, a4, s6
                  mulhu        s1, gp, a4
                  remu         a2, s2, s4
                  mulh         t3, s0, a4
                  mulhsu       s4, s3, a6
                  sll          s6, a5, s8
                  addw         t5, t5, s0
                  srl          t3, t6, t5
                  addw         t6, s8, zero
                  auipc        s1, 444879
                  auipc        s7, 845380
                  mul          a3, zero, t4
                  sraiw        ra, a1, 22
                  divw         s10, s7, a5
                  slli         s11, s0, 22
                  mulh         t4, s9, s3
                  sltu         s9, t3, s7
                  sra          a4, t4, s8
                  srl          s2, a5, t2
                  mulh         t2, a6, a6
                  remu         a7, s5, a5
                  sltiu        zero, t1, 364
                  xor          a7, t0, s3
                  sub          ra, s2, s3
                  sraw         a5, a4, s7
                  mulhsu       s2, s9, s2
                  mulh         t6, t3, s3
                  xori         t6, s10, 389
                  add          sp, a5, tp
                  remu         gp, a0, s2
                  sltiu        a3, s11, 1471
                  remw         t6, a2, s9
                  slt          a2, s11, t6
                  mulhu        a6, a3, t1
                  addiw        t5, s8, -556
                  lui          s10, 1008684
                  auipc        t4, 693633
                  and          s5, s7, a0
                  remu         s10, a1, ra
                  and          ra, t0, s8
                  and          a3, s5, s8
                  and          a7, t6, a0
                  slliw        a0, t3, 30
                  mulh         t1, t2, t3
                  srl          a2, sp, zero
                  mulhu        tp, a1, s10
                  addw         t5, a4, a0
                  sraiw        s1, s1, 30
                  remw         s9, s8, a7
                  remuw        s11, a5, t3
                  mul          t3, t2, t2
                  xori         t5, s3, -32
                  rem          a3, a1, sp
                  xori         zero, zero, -1184
                  or           sp, s6, t0
                  divuw        s1, ra, s10
                  srli         s1, a5, 16
                  sltiu        s7, a5, -363
                  sltu         t4, t2, ra
                  div          a2, a6, s2
                  xori         ra, t5, -1934
                  divu         a5, zero, a2
                  sraw         a5, t4, a2
                  srl          s2, s10, s9
                  divw         s9, s2, s0
                  remu         t3, gp, s0
                  sraiw        t5, ra, 15
                  sltiu        s2, zero, -162
                  and          tp, s7, s0
                  auipc        tp, 644807
                  sra          ra, s1, t4
                  addi         s1, t6, -882
                  andi         t3, t5, 516
                  and          s10, a6, ra
                  or           t6, gp, s7
                  sll          t6, t2, s4
                  mulhsu       t4, a4, s3
                  divuw        gp, s5, a7
                  mulhu        s4, t3, t6
                  remuw        t4, t6, zero
                  addiw        t6, t6, -35
                  srliw        t3, s6, 20
                  xori         a1, s3, 769
                  xori         t5, a6, 500
                  divw         s11, a6, gp
                  divu         t3, ra, t5
                  mulw         zero, a6, s10
                  srlw         s9, zero, a6
                  addi         t5, s11, -1501
                  srlw         s1, s1, t1
                  addiw        a3, a3, 1770
                  srlw         t1, t4, s3
                  sltiu        tp, s8, -974
                  remu         a7, t6, a1
                  slliw        a3, a2, 15
                  sraiw        t3, s4, 12
                  sra          gp, s9, s1
                  xor          t6, s5, a5
                  srliw        a7, s9, 16
                  sll          zero, tp, a0
                  ori          t2, a0, 35
                  srliw        s5, s9, 1
                  srl          a6, s7, s10
                  sltu         zero, t2, tp
                  div          a7, t3, s3
                  sra          a0, s0, s1
                  slti         a6, s2, -1718
                  remuw        a1, s10, s8
                  xori         s4, s0, 532
                  div          s4, a3, s2
                  srlw         t1, s1, a2
                  mulw         t5, s7, ra
                  mulw         t5, zero, a4
                  subw         a7, sp, s1
                  sll          s1, s6, sp
                  sllw         t5, t1, s1
                  addi         t3, a0, 665
                  xori         s6, a3, 632
                  mulhsu       s1, a7, a3
                  mul          s5, tp, a5
                  sraw         s2, s8, t2
                  mulhu        t4, s9, a6
                  slt          a0, s3, gp
                  addw         s1, a6, s5
                  mulhu        a4, t6, a2
                  sll          gp, s11, s1
                  divw         a2, t0, t2
                  divu         t2, sp, s1
                  lui          a7, 522812
                  srai         t4, tp, 33
                  divw         s10, a4, s7
                  srai         t5, s1, 19
                  sltu         a2, a1, t3
                  sraw         a1, t3, t0
                  sraiw        ra, t6, 3
                  sub          tp, a1, s1
                  mulw         gp, a7, s6
                  div          s7, t1, s8
                  slli         t0, a3, 25
                  slti         t3, s9, 1412
                  mul          a0, s2, a1
                  or           a4, t6, s5
                  divu         a5, zero, s8
                  sltu         s11, s3, t2
                  slt          gp, s9, a3
                  srlw         t2, s2, t4
                  or           s1, gp, s4
                  mulw         a2, s11, t2
                  remu         s11, s10, t6
                  slt          s11, a5, a3
                  sltiu        ra, t6, 525
                  mulhu        s4, t0, gp
                  mulw         t2, sp, a2
                  and          s7, s2, s1
                  nop
                  sltu         sp, s4, t6
                  slli         ra, a6, 38
                  addiw        gp, tp, 152
                  srlw         t4, t2, a3
                  sllw         s7, s5, t1
                  srai         t0, a0, 63
                  mulhu        s7, t6, gp
                  sub          tp, s1, s0
                  sltu         a5, a4, s6
                  or           t3, s4, s10
                  sraiw        s11, a0, 12
                  srliw        s7, s0, 22
                  srai         sp, t3, 32
                  mulhsu       s1, a6, s0
                  slliw        a2, s2, 27
                  sllw         a4, s10, gp
                  mulw         zero, t1, a0
                  addiw        t0, t1, -1305
                  and          t5, a2, t4
                  mulhu        t6, s9, gp
                  mulhsu       s2, s8, a4
                  remw         s11, s4, t0
                  sltu         s2, t3, a1
                  divuw        sp, t2, s5
                  slliw        t0, a6, 17
                  addw         a3, s7, s9
                  add          a7, s5, t2
                  mulw         s2, s4, t3
                  addw         s11, s3, t5
                  addiw        t0, a6, 221
                  or           t4, s5, a4
                  sltiu        t6, ra, -1542
                  sraiw        a5, a5, 16
                  sll          tp, s8, ra
                  remu         a6, s5, t4
                  sra          t4, s8, s4
                  andi         t2, s1, 1532
                  divw         s7, s3, s1
                  sra          t1, a4, a2
                  sltiu        a4, t1, -326
                  addiw        t0, s7, 652
                  srlw         t3, a5, t6
                  mul          s9, s7, s10
                  or           s11, t1, a0
                  div          a2, t6, ra
                  srl          tp, a3, a4
                  slliw        sp, a0, 23
                  or           t2, t3, a2
                  andi         a3, t2, -838
                  or           s1, a3, a4
                  srai         t4, a7, 30
                  addiw        t3, s0, -812
                  sll          zero, tp, a4
                  divuw        s1, s7, t0
                  sltu         a0, t6, a5
                  mulw         s4, t0, gp
                  andi         t3, a4, 70
                  divw         t0, s4, s4
                  sra          s9, gp, a7
                  srli         t6, a3, 43
                  nop
                  subw         s5, s8, a0
                  andi         a6, s0, 1369
                  andi         t0, a5, -1866
                  xor          tp, ra, a2
                  sra          s5, t0, a3
                  sll          a0, s10, t5
                  slt          s2, gp, t5
                  mulh         a7, s11, t2
                  auipc        gp, 579769
                  div          t2, a2, a7
                  addw         zero, s10, s0
                  xor          s1, a1, s9
                  sub          t3, s9, s5
                  auipc        ra, 333365
                  srliw        gp, tp, 12
                  sraw         s2, t4, a5
                  sraiw        t1, s2, 13
                  ori          s1, a7, -1718
                  mulw         s4, s8, s10
                  slti         t6, s10, 423
                  srl          s5, ra, s6
                  sllw         a6, s3, a1
                  mul          t6, a2, a5
                  mul          s7, zero, s9
                  srl          a4, t5, s1
                  xor          s6, s9, s6
                  subw         s2, s8, a4
                  auipc        s11, 759229
                  sub          s2, tp, t2
                  sraw         a7, s3, a7
                  or           a4, t3, a7
                  addiw        t6, s4, -1375
                  mulhsu       t6, s10, s6
                  sub          tp, a1, t1
                  mulw         s10, s1, tp
                  divuw        a4, tp, s7
                  mulhu        gp, s11, zero
                  srli         t2, t3, 22
                  sltiu        s7, zero, 433
                  mulw         a0, a4, t4
                  remu         t6, tp, s10
                  xori         a7, t5, -470
                  sltiu        t5, s0, 1196
                  divuw        a6, s1, s3
                  and          sp, s10, a7
                  srli         s7, s3, 43
                  slti         s10, a2, -1172
                  ori          t4, a5, 1500
                  srl          a0, a3, s8
                  mulhu        a7, gp, zero
                  addi         t3, a2, 1636
                  mulhsu       a6, s7, s1
                  mul          s6, t5, a2
                  remu         s1, t4, s5
                  addi         gp, a6, -173
                  div          a4, a2, t0
                  add          t3, t1, s3
                  andi         a7, a2, 400
                  sltiu        sp, t6, -1074
                  srai         s2, a4, 50
                  divuw        s2, t0, a4
                  remw         s6, s10, s7
                  xori         t0, a1, 381
                  slti         s4, s9, 694
                  lui          zero, 474352
                  slliw        a1, s6, 27
                  sll          tp, ra, t4
                  mulhsu       tp, a6, s3
                  mulhu        gp, a7, s1
                  remu         s11, t1, s5
                  andi         a5, s7, -1429
                  addi         a4, t2, -976
                  srliw        s2, a4, 10
                  addw         a3, s6, a6
                  mulhu        a6, a3, s6
                  sllw         t4, a7, t5
                  and          s2, s7, a2
                  divw         zero, t4, t0
                  slliw        ra, a0, 19
                  remu         a2, s6, s10
                  andi         s7, a0, 549
                  remw         s1, a5, s9
                  auipc        s2, 196107
                  sllw         s1, s11, zero
                  xor          s4, s11, a2
                  subw         a0, a1, s11
                  addiw        s1, s2, -1942
                  or           a6, s8, s10
                  slti         zero, s0, -1133
                  addiw        s4, t2, -1298
                  subw         s9, a3, s0
                  sllw         s2, t0, a4
                  mulhu        a4, ra, a3
                  srli         s10, sp, 2
                  div          t5, s11, t4
                  sllw         a6, t1, s5
                  addi         sp, a4, -1403
                  sltu         t1, s8, gp
                  nop
                  div          a3, a6, t6
                  addi         a6, gp, -927
                  sllw         t6, s6, t2
                  slti         t3, t6, 564
                  srliw        a3, a0, 26
                  xor          a3, sp, s4
                  subw         s11, a1, s11
                  slliw        s5, gp, 30
                  lui          s7, 763555
                  and          s5, t3, gp
                  srli         s10, a6, 8
                  ori          s4, zero, 453
                  srli         zero, t4, 9
                  srl          gp, s7, s1
                  slt          s11, s1, s3
                  srai         s11, t5, 27
                  srlw         s9, tp, s5
                  add          s2, a1, a7
                  remw         a0, s3, gp
                  mulh         s9, tp, a4
                  div          s9, s0, s0
                  mulhsu       s9, s5, a4
                  sltiu        t4, a7, -172
                  divw         s1, a2, a6
                  remw         t1, a4, s7
                  add          s10, t4, a7
                  sltu         s9, gp, s1
                  xor          ra, t4, s0
                  ori          t1, a1, 1248
                  sub          a1, t6, t0
                  subw         a6, s6, s5
                  slt          a0, s5, s0
                  srliw        s11, s7, 4
                  slliw        t4, sp, 25
                  ori          t5, a2, 1709
                  srai         s10, s11, 63
                  sra          gp, t5, a1
                  remuw        t5, t1, s5
                  ori          a1, s9, -1446
                  mulhu        s5, s3, tp
                  nop
                  ori          tp, s4, 30
                  sltu         a5, a7, s10
                  slt          t6, s7, a1
                  divuw        t2, ra, t6
                  lui          s6, 821028
                  sll          a6, a0, s4
                  sub          a2, a4, t3
                  subw         s6, t0, a2
                  addiw        gp, gp, 1817
                  mulw         gp, t6, a1
                  xor          t1, a7, a0
                  slt          s6, s9, t3
                  xor          tp, a0, s9
                  remu         s1, t0, a1
                  subw         a6, s7, s1
                  srl          zero, s2, t6
                  sra          s4, a1, t4
                  slt          t5, tp, a1
                  mulw         sp, a5, s11
                  xor          a6, zero, t0
                  and          a4, a0, a0
                  div          a4, a6, s0
                  divu         s2, t5, a0
                  srai         zero, t6, 59
                  sltu         s10, s4, a2
                  remu         a2, a6, s10
                  remw         s7, s6, zero
                  divuw        t5, s4, s8
                  xor          s6, a4, a7
                  div          a5, a3, zero
                  or           a7, s3, s4
                  ori          s6, a1, 1481
                  sltu         zero, ra, a0
                  sra          s11, sp, a4
                  addw         a2, a3, s9
                  xori         s7, s4, 641
                  nop
                  andi         a1, s6, 1693
                  nop
                  auipc        zero, 79125
                  subw         a7, s7, a3
                  sllw         t2, a0, s4
                  or           s4, a6, s9
                  slliw        t1, tp, 16
                  srl          t1, ra, t5
                  sraw         a0, t5, s11
                  srliw        t4, s0, 17
                  andi         s11, a4, -605
                  sra          a2, s7, t3
                  sraw         sp, t6, a7
                  divw         a2, ra, a4
                  rem          a2, s9, t6
                  slli         t6, sp, 8
                  auipc        tp, 74147
                  srl          zero, ra, s8
                  srli         s6, s7, 7
                  andi         s1, s6, -1052
                  slliw        t6, s9, 17
                  remuw        t1, s2, s5
                  addiw        s10, s10, 93
                  remuw        gp, t6, a6
                  sll          t1, t2, t4
                  mulh         s1, s4, zero
                  mulhu        s5, s0, t5
                  sllw         gp, t3, s0
                  slt          s2, s4, tp
                  srlw         s5, sp, gp
                  and          s4, s4, zero
                  sraiw        t0, s3, 9
                  srl          s5, ra, a2
                  rem          s1, gp, a4
                  mulw         s6, a2, a6
                  sra          s10, a7, t0
                  divu         s10, t1, zero
                  slt          t0, t3, t2
                  remu         s11, s10, t2
                  nop
                  srlw         s10, a1, s11
                  divw         t0, s6, a5
                  sltu         a1, t1, zero
                  sll          a2, gp, s2
                  srai         a3, t1, 51
                  or           s1, s4, t1
                  slli         ra, zero, 60
                  divu         s2, s4, s10
                  mul          ra, t0, s5
                  sltu         zero, t2, t6
                  sllw         s1, s11, a5
                  mulw         a1, ra, t3
                  mul          sp, a0, s6
                  mulw         t2, s7, t4
                  andi         sp, t6, 381
                  subw         s11, t1, a2
                  auipc        s1, 312950
                  srliw        tp, s9, 23
                  srliw        s7, s1, 24
                  remw         zero, s5, t5
                  ori          s1, s1, -1976
                  remuw        s10, t2, tp
                  addi         a6, t1, -542
                  slli         a1, tp, 8
                  slt          s2, t6, tp
                  rem          t3, t4, s11
                  mulw         s6, t2, t4
                  mulh         a2, t6, ra
                  sltiu        tp, s6, -1379
                  srliw        t5, tp, 23
                  sraiw        a7, tp, 6
                  sra          a6, s10, t4
                  mul          t2, s3, ra
                  subw         s2, gp, a0
                  nop
                  slliw        a6, a7, 9
                  add          s1, t0, ra
                  lui          a3, 271279
                  sub          a4, a5, t1
                  slti         a7, s2, -1815
                  srliw        t0, s8, 29
                  ori          a7, s10, -1639
                  sltiu        tp, a2, -189
                  sll          sp, tp, t4
                  addiw        gp, a0, -1398
                  mulhsu       t0, a0, zero
                  or           t3, gp, a2
                  addw         a3, a2, s0
                  divuw        a3, tp, t1
                  xori         a6, s3, 1004
                  lui          a7, 259992
                  slt          a7, s1, a6
                  and          t1, a5, t6
                  lui          s6, 522513
                  div          t1, t3, t1
                  sltiu        a7, s5, -1193
                  rem          zero, t6, t2
                  sub          t6, t2, zero
                  divu         a1, a2, s7
                  sraw         s9, a1, t1
                  slliw        s4, gp, 25
                  srli         a7, gp, 2
                  nop
                  xori         s11, t5, -251
                  sraw         s9, s8, t3
                  slt          sp, a1, t0
                  divw         a5, a7, s10
                  and          s10, t3, a3
                  sll          s6, s0, s1
                  or           tp, a1, t4
                  xori         s6, sp, 804
                  auipc        gp, 216645
                  slli         sp, a6, 47
                  mulh         s1, sp, t5
                  addw         t4, s2, t6
                  srli         zero, s0, 46
                  addiw        a6, a6, 703
                  andi         s7, a7, 987
                  auipc        t2, 64029
                  div          a1, s1, s4
                  sra          a2, sp, s3
                  andi         ra, s0, -68
                  srai         a4, t6, 51
                  sra          a2, t5, s0
                  lui          t0, 982624
                  sub          ra, a2, a7
                  addw         ra, ra, a6
                  addiw        s5, a1, 2020
                  sra          s1, s9, s5
                  add          t5, a1, t4
                  xori         s10, a1, 280
                  sltu         a0, s7, s6
                  sraw         t1, s5, a4
                  remw         s11, s11, s7
                  sra          t5, s10, ra
                  sra          t5, s7, a7
                  or           a6, s11, a6
                  mul          t4, s0, t4
                  sltu         a6, s7, a1
                  addi         s11, s6, -1114
                  slt          tp, t6, s7
                  addw         a1, t4, s9
                  lui          a3, 936889
                  div          a4, gp, s1
                  mulhu        t3, s7, zero
                  slliw        s1, ra, 10
                  mulhsu       t3, a7, t4
                  slliw        a5, s3, 1
                  nop
                  or           a2, s3, a3
                  srli         a3, s0, 42
                  srl          a2, a0, a2
                  sub          a4, t6, a3
                  remw         zero, s5, a5
                  sub          t2, t0, a4
                  divuw        gp, s9, t1
                  and          s6, ra, t1
                  sllw         sp, s3, s8
                  nop
                  addiw        s7, a7, 2000
                  srli         t3, zero, 14
                  srl          t4, t2, s7
                  srai         a0, s3, 57
                  srai         a7, a1, 39
                  addw         zero, t2, s0
                  addw         s11, a6, t6
                  subw         a2, zero, t5
                  srli         sp, s7, 6
                  sltiu        s5, s1, 1199
                  sra          t2, zero, s3
                  div          s2, s9, s6
                  xor          s6, gp, a5
                  mulw         a7, s1, s2
                  slti         a4, t0, -1106
                  slli         s5, t0, 47
                  srai         s7, s8, 11
                  lui          a7, 134436
                  sub          s9, a3, ra
                  srl          t6, s6, s2
                  slt          s9, s5, gp
                  sraiw        sp, s8, 5
                  srlw         s5, a0, s7
                  mul          t0, a5, tp
                  subw         a0, zero, s2
                  remw         zero, t0, a5
                  mul          ra, s7, s9
                  and          s11, a6, s4
                  sub          a0, t3, s8
                  divu         tp, s1, s8
                  sraw         tp, t0, s5
                  ori          a0, a7, -1766
                  srli         gp, sp, 3
                  addw         t6, s5, s8
                  mulhu        s6, a7, t0
                  srlw         t1, a7, t5
                  addw         a0, s2, t5
                  sub          a7, s2, s2
                  mulh         tp, zero, s2
                  srlw         a3, a0, s10
                  divu         a7, a6, s11
                  subw         a3, gp, t0
                  xor          s5, s1, s0
                  sltu         a1, gp, tp
                  auipc        gp, 162849
                  mulhsu       a6, zero, s10
                  mulw         s9, t3, a7
                  srli         t3, s11, 20
                  srai         a6, a2, 46
                  slliw        t6, t2, 11
                  sltiu        s11, a5, 568
                  slt          s11, tp, a1
                  slli         a4, t6, 15
                  ori          t3, t6, -980
                  srliw        s5, sp, 15
                  nop
                  or           s2, a7, sp
                  xor          a0, s10, zero
                  slli         s4, ra, 37
                  srli         tp, a3, 35
                  mulw         a3, t5, a4
                  ori          t1, zero, 612
                  or           s9, a6, sp
                  lui          ra, 919059
                  nop
                  andi         gp, a2, -1090
                  addw         t1, s0, s0
                  mulhu        s11, t5, s10
                  srlw         gp, zero, zero
                  addi         s4, gp, -522
                  div          a6, gp, s11
                  or           s11, a5, s4
                  xor          a6, t5, s10
                  lui          a2, 468957
                  sllw         s7, zero, s2
                  slti         t1, t6, 1544
                  sltu         t4, a6, t2
                  or           a2, tp, s6
                  slli         s5, gp, 60
                  sub          s5, a0, s8
                  add          t5, a7, t5
                  sltu         s9, s2, tp
                  sltiu        a2, t1, 1398
                  divu         s2, a4, s9
                  addw         t2, s0, s4
                  sub          t0, a7, a1
                  mul          a3, a7, ra
                  sraw         a6, s4, t5
                  sltu         s1, s8, t5
                  mul          gp, t4, t0
                  sraiw        gp, t2, 15
                  slti         zero, s1, -489
                  srl          s5, s3, a7
                  srlw         s5, t6, a2
                  remu         s7, s5, a2
                  srl          t5, s5, s6
                  srlw         s7, a1, a3
                  sltu         s7, s10, t4
                  addi         tp, s3, 1148
                  slliw        t0, sp, 23
                  addiw        ra, a2, -980
                  sraiw        t3, a3, 28
                  sraw         a6, sp, a4
                  rem          t5, a3, t0
                  nop
                  slli         s1, t2, 43
                  remu         a1, a5, a2
                  divu         a6, tp, tp
                  rem          a4, a1, t6
                  slli         tp, s1, 1
                  add          a6, a7, t0
                  sll          t3, s4, a7
                  mulhsu       s2, s2, s1
                  xori         a3, s1, -339
                  xori         t6, t0, -1515
                  rem          ra, s7, gp
                  mulhsu       a2, sp, a5
                  auipc        s10, 549420
                  add          s2, t6, s0
                  slti         gp, ra, -1825
                  xor          t2, tp, ra
                  mulhsu       s4, s8, a6
                  div          tp, s1, s1
                  sub          t6, a1, gp
                  sltu         s9, s7, a3
                  sraiw        s11, t2, 26
                  xor          a0, a2, s9
                  divu         gp, a1, s8
                  divw         tp, s3, ra
                  srli         t0, ra, 11
                  srai         a1, t2, 37
                  xor          a0, a4, s11
                  srlw         a2, a1, a4
                  xori         s5, s6, 367
                  divu         zero, a4, s3
                  mulw         t0, t5, a4
                  subw         t2, s3, ra
                  sra          t6, t0, gp
                  sra          a1, s2, a1
                  andi         a4, a4, -747
                  srl          a4, s11, t5
                  slti         a6, a5, -517
                  slti         s6, s8, 713
                  srliw        a5, zero, 6
                  rem          t2, t1, a6
                  divuw        s7, t2, t5
                  slliw        a0, t1, 11
                  sltu         t0, ra, s8
                  mulhu        a3, s3, s0
                  mulhu        t3, s2, sp
                  xori         t3, t5, -344
                  divuw        zero, s10, a1
                  add          t1, a5, s8
                  divuw        a7, zero, s11
                  sraw         s5, s10, a4
                  srli         gp, ra, 63
                  andi         s11, s3, 299
                  or           s6, t0, t6
                  lui          s6, 545567
                  and          a0, s11, a6
                  add          s7, sp, s7
                  or           s1, s1, a0
                  slli         a2, a2, 19
                  mul          t0, gp, a3
                  xori         a7, t2, -459
                  mul          s10, s3, s1
                  addiw        a0, a2, 0
                  andi         tp, s3, -1098
                  divuw        gp, a3, s4
                  auipc        s7, 520882
                  andi         s1, a5, 1211
                  div          s11, a2, ra
                  sraiw        s6, s1, 25
                  div          a6, s8, s3
                  sll          t1, a4, s5
                  remw         s10, gp, a4
                  mulhsu       zero, t2, t3
                  xori         s6, s2, 87
                  slli         a1, s10, 48
                  srai         t1, s11, 52
                  sltu         s5, t5, sp
                  srai         s6, s2, 37
                  srliw        gp, a2, 31
                  auipc        s4, 521060
                  remu         ra, a1, s4
                  lui          t6, 1045200
                  rem          s11, s0, s4
                  sraiw        a6, s5, 10
                  mulw         a3, a0, a2
                  nop
                  mulhu        t5, ra, a3
                  sub          s2, t1, a2
                  andi         zero, gp, -1386
                  mulhu        s10, a5, s1
                  remu         s1, a3, t2
                  sltiu        s11, s3, -888
                  sraw         t0, a0, a0
                  divuw        s5, s3, t1
                  subw         s6, t5, t1
                  remu         s10, s4, s7
                  sltu         ra, a4, zero
                  slt          s11, s1, t1
                  mulh         s9, a5, sp
                  srli         zero, a3, 49
                  subw         a0, s5, ra
                  rem          s11, s0, s11
                  sllw         t0, s3, s10
                  rem          s1, t6, tp
                  addw         a6, t5, s0
                  div          a2, s6, s9
                  remw         t1, t2, t2
                  sraiw        zero, t3, 22
                  sra          s10, t5, a5
                  rem          s4, t3, sp
                  mulh         a6, zero, a5
                  sraiw        gp, t6, 31
                  subw         a3, s9, t0
                  auipc        ra, 757623
                  add          t4, s0, s2
                  sltiu        a7, a2, 1552
                  addw         s6, s3, t5
                  remuw        a6, a4, a4
                  srl          s7, s6, a2
                  srlw         s10, ra, t2
                  slliw        t1, a7, 3
                  srai         a2, a6, 33
                  mulh         a3, t3, s7
                  addiw        t6, s11, 1175
                  div          s5, a1, tp
                  mulhsu       s9, a3, t3
                  sra          a5, a4, a4
                  mulw         s7, t4, s11
                  or           s1, s7, t6
                  srai         t1, a1, 2
                  rem          s9, a3, a4
                  rem          t5, s1, a5
                  slliw        s2, s0, 26
                  divw         tp, a0, s0
                  addw         gp, s3, tp
                  ori          s10, s5, 103
                  rem          a6, t6, a3
                  lui          t3, 469710
                  remuw        a4, t2, a0
                  sll          zero, s11, t5
                  or           s6, sp, t5
                  or           s7, s1, s2
                  slliw        a3, a7, 16
                  srai         a4, s0, 48
                  add          a5, t1, s8
                  sllw         a5, tp, s5
                  add          a0, s8, t0
                  srai         zero, s6, 5
                  sll          zero, a0, s8
                  divu         a0, t6, t6
                  or           t4, zero, a4
                  addiw        s2, t5, 1865
                  sra          s2, a3, s3
                  subw         gp, a0, a2
                  rem          s4, t1, s8
                  lui          a6, 961273
                  sraw         s5, zero, s2
                  sllw         ra, zero, s8
                  or           sp, s3, zero
                  sllw         t3, t1, s10
                  divu         s10, zero, s0
                  slliw        a1, s7, 14
                  divu         t1, t6, t3
                  sltu         sp, sp, s2
                  sraiw        tp, zero, 31
                  sraw         tp, t2, s0
                  slliw        s2, a5, 3
                  sub          a1, a1, s3
                  subw         t0, a0, a1
                  divw         a2, a3, a5
                  slt          t4, t2, a1
                  divw         t2, t2, s4
                  sraw         s5, s0, a0
                  lui          s6, 872830
                  lui          tp, 465849
                  srliw        a3, gp, 16
                  sltiu        s7, sp, 1353
                  sra          ra, a7, s5
                  srai         gp, a0, 55
                  sll          t2, s0, t6
                  xor          s1, sp, tp
                  divw         s10, a1, s3
                  divu         a1, s1, s10
                  slt          s7, a6, s6
                  srliw        s2, t2, 2
                  sltu         a7, s9, sp
                  srlw         zero, t3, s10
                  mulh         ra, s4, t1
                  sraiw        s6, a3, 17
                  rem          ra, t2, s3
                  divu         sp, t3, t0
                  slliw        s5, t0, 10
                  mul          t0, t0, s7
                  mulh         t4, s8, s8
                  divu         t1, a4, s1
                  slli         a0, a3, 10
                  srl          s10, s9, s7
                  subw         s4, t3, s6
                  slt          t1, s11, s6
                  sllw         s1, t5, a3
                  and          a6, t5, s7
                  sraiw        s5, s8, 13
                  remw         tp, s4, s5
                  slt          a7, a7, t1
                  srl          a6, s9, a6
                  mul          t4, s7, tp
                  mulhu        gp, a3, s3
                  addi         a6, a0, -1
                  sraw         a1, a1, s0
                  ori          t3, ra, 996
                  ori          t2, s5, -1483
                  lui          a0, 957057
                  addw         a0, zero, zero
                  mulh         t1, s8, s11
                  or           a7, s2, t6
                  sllw         s11, s7, s5
                  mul          a2, s10, t4
                  srliw        a2, s11, 13
                  srli         zero, a4, 44
                  srliw        t2, a3, 19
                  and          tp, s4, t4
                  rem          t3, s10, t2
                  lui          a0, 610695
                  remw         s9, s11, s0
                  slliw        s9, s9, 7
                  remuw        a3, t1, a2
                  div          tp, s7, s9
                  sltu         s1, t6, zero
                  mulhu        s10, s11, a3
                  addi         tp, sp, 7
                  subw         a0, s2, s3
                  sraw         a6, a7, s2
                  srliw        t4, ra, 6
                  addiw        a7, s0, 1015
                  sraw         gp, s6, sp
                  div          s10, t4, s10
                  lui          s6, 812435
                  sllw         ra, a7, t5
                  slti         s10, a0, 523
                  addiw        t3, a1, -635
                  lui          a1, 979970
                  mulw         a6, a6, t1
                  remw         tp, zero, s6
                  remw         a5, a1, a2
                  or           s9, s0, s4
                  sub          t5, t6, s3
                  addw         s4, t4, s5
                  divw         t1, s11, t6
                  remw         t4, a2, t6
                  or           t3, tp, s1
                  andi         s11, t5, 8
                  subw         t1, s1, t4
                  and          s9, ra, s6
                  mulw         s7, s9, s2
                  xori         t6, gp, -228
                  mulhsu       sp, t6, t3
                  mulhsu       a1, s1, s10
                  add          a3, t5, t1
                  srlw         sp, t4, t4
                  srli         a6, s1, 26
                  mul          t2, t2, t0
                  srai         t1, zero, 4
                  slliw        s5, t2, 14
                  nop
                  mulhsu       zero, gp, s7
                  srl          a6, a2, t5
                  mulhu        zero, t5, s6
                  andi         a1, t2, 719
                  mulhsu       a2, a6, gp
                  srai         t5, s5, 39
                  sraw         s11, a1, s0
                  srl          sp, gp, t1
                  srl          t1, gp, tp
                  mulh         t1, s7, gp
                  mulw         gp, ra, a0
                  sltiu        s10, a2, -1780
                  addw         a5, s4, a0
                  remuw        a1, tp, a2
                  srai         a5, s3, 59
                  addi         s5, gp, -866
                  sub          zero, t5, s10
                  xori         s7, a0, 1872
                  subw         a1, s10, gp
                  divuw        a5, a0, s9
                  divuw        a0, s0, t6
                  mulhsu       t4, s5, t4
                  srlw         sp, t6, s5
                  ori          s11, s6, -953
                  auipc        t1, 267485
                  nop
                  srlw         a1, s8, s8
                  srli         t5, sp, 57
                  mul          s2, t2, t5
                  ori          t4, ra, 1402
                  andi         s11, t3, 83
                  rem          s10, t3, a3
                  add          a1, s3, s10
                  addi         a0, s10, -634
                  mulhsu       ra, sp, s6
                  ori          t0, s3, -694
                  addi         tp, a3, -805
                  remu         t4, zero, t1
                  addw         s2, s1, s6
                  divuw        a5, t4, s4
                  sltu         t1, s9, s10
                  sltiu        gp, s3, -813
                  srlw         t1, tp, zero
                  mulw         a5, s6, s10
                  lui          a3, 773860
                  mulh         t4, sp, t1
                  addw         a1, s3, t5
                  mulhu        s6, t6, s1
                  remw         s2, ra, s10
                  remw         ra, a4, s9
                  addi         s4, t3, -736
                  remu         s11, a6, s7
                  mulhu        s9, sp, s3
                  lui          s2, 321709
                  mul          t1, s0, t0
                  add          sp, s1, t2
                  ori          t2, s8, 805
                  mulhsu       s5, ra, s11
                  or           t2, a7, s0
                  div          s9, t6, s8
                  addi         t1, a3, 1089
                  mul          s11, s10, a6
                  mulhu        s1, t1, gp
                  remu         gp, ra, s3
                  sltu         s9, sp, t5
                  mulh         t1, t1, t2
                  divu         ra, sp, sp
                  div          t3, a4, t2
                  mul          s7, t5, s4
                  and          s1, t6, s2
                  slliw        s1, a0, 27
                  sll          s6, a1, t3
                  nop
                  srlw         a0, t6, s5
                  sra          a7, a0, a7
                  xor          s4, a2, s4
                  or           tp, a2, s9
                  divw         gp, a0, a2
                  xori         s2, t5, -1216
                  sllw         t5, a1, a3
                  sub          t6, tp, a4
                  mul          a6, ra, t2
                  sraw         a5, s0, s9
                  mulhu        t4, a0, ra
                  remuw        t2, ra, a0
                  div          s4, s3, a4
                  divw         s11, a7, t2
                  lui          a5, 992762
                  sraw         a3, t5, t5
                  xori         s5, s7, 144
                  auipc        s4, 777337
                  xor          s10, gp, a5
                  div          gp, s1, s4
                  mulhsu       a0, a7, s8
                  and          ra, tp, t0
                  sub          a7, s6, zero
                  add          s10, s5, s7
                  remuw        s10, zero, a6
                  addi         gp, a0, 1933
                  sraw         a7, s1, s4
                  sraw         s11, a3, s2
                  sub          s4, t3, s11
                  xor          t6, s9, s8
                  divu         tp, s0, s7
                  slt          s9, t5, a3
                  slliw        a7, s3, 9
                  rem          a0, tp, t2
                  divw         s7, s7, s6
                  auipc        a4, 998047
                  srli         a3, s9, 57
                  srlw         s9, s6, sp
                  divw         t3, a6, a1
                  slt          zero, s6, a5
                  srai         t0, s9, 62
                  divw         a6, s1, t2
                  rem          s5, t2, a1
                  div          a1, tp, s5
                  srli         t4, t0, 51
                  addw         s11, s4, a2
                  lui          gp, 563263
                  sra          t5, sp, a1
                  sllw         s7, tp, s7
                  mulhsu       s2, s0, s8
                  srai         t6, s3, 4
                  addiw        s1, s9, -1605
                  mulhu        a2, t6, zero
                  or           s2, t1, s1
                  subw         gp, s2, t5
                  sltiu        t1, zero, 1096
                  add          s7, gp, t2
                  andi         gp, a3, -1724
                  divw         s10, t1, s2
                  sraw         a1, s6, s0
                  ori          a6, t3, -1289
                  remuw        a0, s10, a3
                  addiw        a7, t3, 1055
                  mulhu        t1, t4, tp
                  srai         zero, s0, 14
                  mulw         a1, sp, s0
                  remu         s7, a0, a5
                  subw         zero, s3, ra
                  add          a7, a2, t2
                  slliw        ra, zero, 30
                  xori         s6, t3, 277
                  remu         tp, sp, s8
                  remuw        t3, s0, s8
                  xori         t3, s2, -204
                  sllw         a3, a6, t3
                  slli         a2, a6, 6
                  srli         s7, ra, 6
                  slliw        tp, s3, 9
                  div          s4, t1, a2
                  slli         s2, zero, 50
                  sraiw        t0, s5, 3
                  sll          a5, s9, a7
                  slt          tp, s1, a0
                  sll          a2, s10, a4
                  andi         gp, t1, -561
                  sraw         t3, a1, t1
                  mulw         a7, t3, gp
                  slli         a4, t6, 35
                  xor          t5, a0, s5
                  sraw         a5, t3, s2
                  add          a5, s5, a4
                  subw         a7, t5, a4
                  addi         a1, t6, -545
                  sra          tp, a4, t0
                  addw         t2, a2, s4
                  la x8, test_done
                  jalr x0, x8, 0
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
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x3f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x19, x19, -4
                  sd  x24, (x19)
                  add x24, x19, zero
                  addi x24, x24, -256
                  sd  x1, 8(x24)
                  sd  x2, 16(x24)
                  sd  x3, 24(x24)
                  sd  x4, 32(x24)
                  sd  x5, 40(x24)
                  sd  x6, 48(x24)
                  sd  x7, 56(x24)
                  sd  x8, 64(x24)
                  sd  x9, 72(x24)
                  sd  x10, 80(x24)
                  sd  x11, 88(x24)
                  sd  x12, 96(x24)
                  sd  x13, 104(x24)
                  sd  x14, 112(x24)
                  sd  x15, 120(x24)
                  sd  x16, 128(x24)
                  sd  x17, 136(x24)
                  sd  x18, 144(x24)
                  sd  x19, 152(x24)
                  sd  x20, 160(x24)
                  sd  x21, 168(x24)
                  sd  x22, 176(x24)
                  sd  x23, 184(x24)
                  sd  x24, 192(x24)
                  sd  x25, 200(x24)
                  sd  x26, 208(x24)
                  sd  x27, 216(x24)
                  sd  x28, 224(x24)
                  sd  x29, 232(x24)
                  sd  x30, 240(x24)
                  sd  x31, 248(x24)
                  add x19, x24, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x26, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x26, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x26, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x26, x10, ecall_handler
                  li x10, 0x1
                  beq x26, x10, instr_fault_handler
                  li x10, 0x5
                  beq x26, x10, load_fault_handler
                  li x10, 0x7
                  beq x26, x10, store_fault_handler
                  li x10, 0xc
                  beq x26, x10, pt_fault_handler
                  li x10, 0xd
                  beq x26, x10, pt_fault_handler
                  li x10, 0xf
                  beq x26, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x26, _start
                  sd x0, 0(x26)
                  sd x1, 8(x26)
                  sd x2, 16(x26)
                  sd x3, 24(x26)
                  sd x4, 32(x26)
                  sd x5, 40(x26)
                  sd x6, 48(x26)
                  sd x7, 56(x26)
                  sd x8, 64(x26)
                  sd x9, 72(x26)
                  sd x10, 80(x26)
                  sd x11, 88(x26)
                  sd x12, 96(x26)
                  sd x13, 104(x26)
                  sd x14, 112(x26)
                  sd x15, 120(x26)
                  sd x16, 128(x26)
                  sd x17, 136(x26)
                  sd x18, 144(x26)
                  sd x19, 152(x26)
                  sd x20, 160(x26)
                  sd x21, 168(x26)
                  sd x22, 176(x26)
                  sd x23, 184(x26)
                  sd x24, 192(x26)
                  sd x25, 200(x26)
                  sd x26, 208(x26)
                  sd x27, 216(x26)
                  sd x28, 224(x26)
                  sd x29, 232(x26)
                  sd x30, 240(x26)
                  sd x31, 248(x26)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
                  mret

load_fault_handler:
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
                  mret

store_fault_handler:
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x24, x19, zero
                  ld  x1, 8(x24)
                  ld  x2, 16(x24)
                  ld  x3, 24(x24)
                  ld  x4, 32(x24)
                  ld  x5, 40(x24)
                  ld  x6, 48(x24)
                  ld  x7, 56(x24)
                  ld  x8, 64(x24)
                  ld  x9, 72(x24)
                  ld  x10, 80(x24)
                  ld  x11, 88(x24)
                  ld  x12, 96(x24)
                  ld  x13, 104(x24)
                  ld  x14, 112(x24)
                  ld  x15, 120(x24)
                  ld  x16, 128(x24)
                  ld  x17, 136(x24)
                  ld  x18, 144(x24)
                  ld  x19, 152(x24)
                  ld  x20, 160(x24)
                  ld  x21, 168(x24)
                  ld  x22, 176(x24)
                  ld  x23, 184(x24)
                  ld  x24, 192(x24)
                  ld  x25, 200(x24)
                  ld  x26, 208(x24)
                  ld  x27, 216(x24)
                  ld  x28, 224(x24)
                  ld  x29, 232(x24)
                  ld  x30, 240(x24)
                  ld  x31, 248(x24)
                  addi x24, x24, 256
                  add x19, x24, zero
                  ld  x24, (x19)
                  addi x19, x19, 4
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
