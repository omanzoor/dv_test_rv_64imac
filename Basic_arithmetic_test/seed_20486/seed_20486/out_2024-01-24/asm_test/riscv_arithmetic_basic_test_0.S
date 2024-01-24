.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x23, 0x8000000000001105
                  csrw 0x301, x23
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x81800
                  csrw 0x300, x23 # MSTATUS
                  li x23, 0x0
                  csrw 0x304, x23 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf8852bf1
                  li x2, 0x80000000
                  li x3, 0xd2be14b5
                  li x4, 0x80000000
                  li x5, 0x4
                  li x6, 0xd
                  li x7, 0xe
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x1d21874a
                  li x12, 0xcb3f919
                  li x14, 0xf3c48d87
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x8670b01c
                  li x18, 0xfd702b7a
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xf428cd28
                  li x23, 0x0
                  li x24, 0x290f6562
                  li x25, 0xd
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x8732881e
                  li x30, 0x8
                  li x31, 0xff95135f
                  la x13, user_stack_end
main:             mulhsu       s5, t4, t4
                  sraiw        tp, a7, 26
                  addi         s7, s1, 1031
                  sub          t3, sp, s2
                  sltu         t1, a5, a6
                  ori          a4, s8, 20
                  ori          s9, a0, -760
                  srliw        a7, t2, 18
                  sll          s5, t5, t0
                  sra          s11, s9, zero
                  slliw        tp, s10, 29
                  mulh         a0, gp, sp
                  mul          tp, a7, a0
                  sra          a5, s10, t4
                  addw         t1, s2, t6
                  divu         s9, zero, s4
                  srliw        t6, s3, 28
                  div          zero, ra, a4
                  srlw         s4, a1, s3
                  srai         t6, s11, 14
                  mulw         a5, a4, t2
                  srli         a2, t2, 40
                  remw         a0, a7, s10
                  slli         a5, s2, 1
                  and          a4, s11, gp
                  xori         t6, s9, -796
                  slli         t3, t6, 42
                  subw         t1, t5, t4
                  lui          s0, 65778
                  mulhsu       s11, t1, a7
                  lui          s8, 1045767
                  add          a4, sp, s9
                  sub          a5, s8, t3
                  addw         s8, t2, s6
                  add          t6, t1, s1
                  srliw        s10, s3, 6
                  divuw        sp, s1, s6
                  divw         s1, s8, t2
                  auipc        zero, 362518
                  slt          t6, s5, tp
                  srlw         s4, s6, gp
                  srl          s5, a7, s2
                  divw         s7, t0, a6
                  remu         s6, s10, t4
                  mul          t0, s3, a2
                  div          gp, t4, s10
                  addi         a7, zero, -1873
                  divu         t4, a4, a1
                  remuw        t6, t3, a0
                  divu         gp, a5, s7
                  remuw        t4, s2, t4
                  srlw         t5, s5, s4
                  srlw         a7, s3, a5
                  remuw        s1, s2, s3
                  mulhu        a2, t2, sp
                  rem          a4, s2, s0
                  sltu         a0, s6, s10
                  addw         t5, a2, s5
                  remuw        s11, t5, t2
                  sraw         t0, a3, a0
                  addw         s7, a4, t6
                  lui          a5, 823568
                  slli         s1, s2, 50
                  srlw         s8, s11, s11
                  sraw         s7, s2, t2
                  remuw        a0, t4, a1
                  slti         t5, t5, -1457
                  sub          ra, s6, tp
                  ori          s4, s2, 1706
                  sltu         a0, a5, a0
                  xori         s7, a7, 1110
                  srlw         t6, a7, a3
                  sltiu        zero, zero, -1566
                  slliw        t2, a4, 30
                  divu         t1, s3, t1
                  sll          a0, a5, s2
                  mulh         s2, s11, s3
                  mulh         s8, t3, a4
                  xori         gp, gp, -590
                  sraiw        a7, a4, 7
                  divu         zero, s9, gp
                  lui          s1, 903252
                  add          a2, a1, a0
                  ori          t4, s8, 1675
                  slt          s2, tp, t2
                  andi         t0, s8, 1627
                  divw         t6, s2, s6
                  addw         s6, a6, a6
                  addiw        a2, zero, -282
                  rem          s6, s1, a7
                  sub          a4, t2, t5
                  remu         zero, s11, ra
                  subw         s4, t0, a4
                  add          s3, a6, a6
                  addw         s8, a5, s1
                  addi         s11, s4, -1073
                  sra          s5, t1, a2
                  addiw        tp, s11, -174
                  mulhsu       s3, a1, sp
                  mul          sp, s6, t1
                  add          t4, s1, sp
                  addi         s1, ra, 25
                  andi         t4, s7, 1309
                  subw         t3, s7, a1
                  nop
                  srai         s2, t1, 17
                  subw         s11, gp, t0
                  sub          s9, s7, s0
                  and          tp, a4, s4
                  srl          gp, t0, s6
                  slt          a0, s9, a3
                  auipc        zero, 730660
                  divuw        ra, s7, s5
                  xori         s6, t2, -8
                  srliw        t3, s6, 7
                  add          a2, zero, s4
                  auipc        zero, 732001
                  add          ra, a3, s0
                  andi         a5, sp, -1093
                  rem          ra, a7, gp
                  div          ra, a7, a3
                  divuw        a7, a5, t4
                  subw         s2, s3, zero
                  div          t6, tp, t6
                  divuw        a7, s4, ra
                  rem          s8, s6, a3
                  subw         s9, s10, a3
                  srli         tp, s4, 25
                  mulhsu       s5, sp, t2
                  remuw        t4, s0, t4
                  srai         s4, t0, 0
                  div          ra, s8, gp
                  and          tp, t5, s11
                  remu         s2, a6, s4
                  slti         zero, s4, -1149
                  sub          s2, t0, ra
                  addw         sp, s7, t6
                  lui          sp, 798573
                  addi         s7, s6, -675
                  sraiw        s3, s10, 21
                  nop
                  mulhu        t4, s9, a1
                  sll          s10, s5, a1
                  lui          a0, 832445
                  divu         s1, s5, s3
                  sraiw        t4, s4, 27
                  subw         t3, a6, t4
                  sllw         t3, a3, t0
                  div          t0, s2, a4
                  mulw         s0, s8, sp
                  addiw        tp, a7, -304
                  slliw        t3, s9, 1
                  xori         t3, t3, 1772
                  slli         s4, s2, 39
                  divw         t1, s6, t2
                  sllw         s0, s8, t0
                  xor          a0, a1, s3
                  divw         a5, tp, s6
                  addw         zero, t4, zero
                  sraw         a0, a4, s5
                  sraw         s9, t2, a7
                  divw         a7, zero, t1
                  auipc        s2, 988899
                  remw         s9, t2, t0
                  xor          a4, s2, t2
                  slli         a5, t2, 27
                  add          a2, s2, a4
                  sltiu        t5, zero, 700
                  srliw        zero, t5, 29
                  slt          s2, a3, s0
                  add          s6, s4, t3
                  rem          tp, s4, s2
                  andi         a0, s7, 1737
                  divw         gp, t2, s8
                  addw         t6, s0, s4
                  srl          a2, t5, tp
                  sraiw        tp, a0, 5
                  slti         s5, gp, -1010
                  add          tp, s10, t6
                  remu         s9, s1, a1
                  remu         ra, t4, a2
                  sub          s11, a0, zero
                  ori          s0, ra, 801
                  divuw        s11, s11, s11
                  sltu         zero, s5, t6
                  nop
                  sltiu        a7, ra, -1858
                  srai         s0, s7, 26
                  sra          s9, sp, s2
                  sraw         t6, s2, s10
                  divuw        s2, s3, a2
                  mulhu        s9, s3, s4
                  sltu         s1, t4, t4
                  addiw        tp, s3, -1094
                  divu         s10, s10, t5
                  remw         a7, zero, gp
                  lui          a5, 51354
                  nop
                  sraw         t2, a3, s8
                  nop
                  ori          sp, s6, 1422
                  or           t5, zero, a7
                  srai         a4, a4, 24
                  xori         s1, a6, 551
                  lui          s5, 72909
                  nop
                  or           s2, s8, a4
                  srlw         s11, s10, s10
                  srai         t6, sp, 33
                  mulh         t1, tp, t0
                  addw         s8, a4, t1
                  add          ra, s6, s0
                  sraiw        s9, t6, 13
                  or           a2, s1, s4
                  mul          tp, t1, s0
                  srlw         s7, a5, s9
                  mulhsu       t0, ra, s5
                  sraiw        s8, s0, 30
                  addiw        t2, a0, -571
                  subw         t0, t5, t3
                  mulh         a5, a0, t6
                  sll          t6, a4, tp
                  slti         s0, a4, 1124
                  addw         a0, s3, a2
                  remu         sp, sp, zero
                  addi         a5, t4, -513
                  rem          s2, s11, a7
                  slliw        a5, a0, 5
                  srli         a2, s7, 47
                  xor          s6, sp, t6
                  addiw        s8, s9, 1186
                  remw         s8, a7, a1
                  ori          t6, s10, -150
                  divu         a5, s6, a5
                  xori         t4, t0, -759
                  mulhsu       s2, ra, s4
                  sll          t5, s6, a1
                  divw         gp, ra, gp
                  xori         zero, s10, -1883
                  remuw        s4, t5, t0
                  sll          s4, a4, t0
                  mulhu        gp, s6, s10
                  sub          s10, s1, s11
                  addi         gp, a2, -354
                  andi         t2, zero, -1155
                  remw         tp, t3, a5
                  xori         t4, s8, -1867
                  srliw        s4, t0, 21
                  mulw         s9, s7, a1
                  mulh         tp, s10, sp
                  srl          a0, s7, a7
                  sub          s8, zero, s4
                  slt          a5, s1, t1
                  mulw         s10, s6, sp
                  srlw         s7, s11, s7
                  rem          s5, a2, s1
                  mulhsu       s2, s5, t0
                  sltu         s5, s1, ra
                  or           a0, t5, t6
                  mulhsu       s11, a3, a6
                  remw         a0, s10, a0
                  slt          t3, sp, sp
                  mulw         a0, s9, a5
                  xori         a5, s11, 1964
                  lui          t3, 125091
                  srli         s3, s11, 50
                  slt          ra, s7, t3
                  divu         s6, s9, a6
                  ori          s5, s1, -1500
                  srli         s11, s0, 43
                  sra          ra, s4, s5
                  srl          t2, t3, a3
                  remw         t5, a0, s7
                  slti         s6, t0, 1122
                  sraw         ra, s9, t0
                  slli         s0, s10, 54
                  divuw        s3, s11, a5
                  andi         s8, a3, -1437
                  sltiu        tp, t5, -1505
                  addiw        s5, a7, -1700
                  xori         t5, a7, -1214
                  or           a2, s11, ra
                  add          a7, a3, s4
                  slliw        t2, a5, 26
                  srliw        s4, a7, 22
                  auipc        s11, 14295
                  addiw        ra, t3, -1766
                  srai         gp, gp, 51
                  rem          s4, s9, s10
                  mul          gp, t5, zero
                  mulw         tp, t5, t6
                  andi         s11, t4, 1692
                  divu         t6, a2, gp
                  addw         s4, t6, gp
                  divw         s7, gp, t3
                  andi         a2, ra, 389
                  addi         s9, a1, -1759
                  sraiw        gp, t0, 28
                  sraiw        gp, a2, 27
                  srliw        a5, tp, 13
                  srlw         s11, tp, s6
                  addi         a0, sp, 902
                  slt          a2, t4, t6
                  mulw         t5, s5, a7
                  addw         a0, t0, s11
                  ori          s10, sp, -1626
                  sll          tp, t4, a5
                  xori         s7, gp, -1751
                  divw         t2, s4, s2
                  ori          a2, t4, -1986
                  andi         s10, zero, -1161
                  srlw         s0, a5, t4
                  auipc        t6, 893591
                  and          t2, s4, a6
                  ori          t4, t6, 1054
                  addw         gp, a2, a1
                  remuw        s11, zero, s3
                  divu         ra, t5, s7
                  andi         a2, s8, 1692
                  slti         s0, a5, -132
                  auipc        t5, 82022
                  div          t4, zero, gp
                  mul          s10, s11, zero
                  srlw         t6, s2, t5
                  divw         t0, t2, s4
                  mulw         s6, a2, zero
                  mul          s10, s5, s7
                  or           tp, t1, s8
                  srli         s7, s7, 23
                  rem          zero, sp, s3
                  srl          s6, gp, s10
                  and          a2, s11, zero
                  mulh         s5, s10, gp
                  srai         gp, a2, 57
                  divw         tp, a0, t0
                  andi         sp, a7, -895
                  remuw        s5, s1, s6
                  addi         t6, s5, -1687
                  srai         s7, t0, 38
                  addw         zero, tp, s4
                  sub          t0, s7, a1
                  mulhsu       t6, sp, s8
                  sraw         t2, a1, a1
                  srai         ra, s5, 24
                  divu         s0, t3, t4
                  remu         t5, a4, zero
                  slt          s8, sp, s4
                  slli         a7, s2, 30
                  mulhsu       s3, s1, s6
                  divw         t4, t3, a2
                  add          t1, s1, a3
                  auipc        s1, 348506
                  divu         s6, s8, s8
                  auipc        a2, 155228
                  divw         tp, sp, a2
                  mulhsu       s10, tp, s6
                  addw         s0, ra, a2
                  sub          zero, s10, s9
                  mulhsu       s10, a3, s10
                  sll          s3, t6, tp
                  mulh         t2, t4, t2
                  sllw         s8, a2, t1
                  mulhu        t3, s2, t1
                  mulhu        t4, a0, a4
                  remw         a5, a5, ra
                  addw         t3, s8, s9
                  and          s4, t2, t6
                  srli         t4, t2, 40
                  nop
                  slti         tp, tp, 324
                  sll          s3, s10, s1
                  xor          s5, a4, s8
                  auipc        a7, 501007
                  sra          a2, s1, s7
                  andi         a7, t1, 854
                  remw         t3, ra, sp
                  subw         t2, s3, s7
                  divuw        s0, s0, gp
                  sub          s4, tp, a3
                  sraiw        a0, s4, 24
                  divw         t5, s8, a1
                  subw         s6, s3, s4
                  mulhsu       gp, t5, s11
                  sltu         s2, s0, a7
                  divw         t6, s10, s7
                  srli         a5, a6, 29
                  srliw        t5, a5, 31
                  srl          s0, s11, gp
                  add          s9, sp, tp
                  addi         a2, t2, 575
                  srai         s2, a6, 43
                  divuw        t3, s2, sp
                  divuw        s8, a1, s11
                  srli         tp, s5, 16
                  sllw         gp, gp, s1
                  sll          t2, zero, a0
                  mul          t4, s1, t0
                  andi         a7, s2, -186
                  xor          s0, a2, a3
                  sltu         s0, a2, a2
                  sllw         s2, t6, t6
                  srl          t1, t0, a6
                  mulw         a0, t1, t4
                  andi         a0, sp, 1576
                  divu         a2, a4, a1
                  div          ra, ra, s5
                  sll          s2, t0, a7
                  mulhu        sp, t1, a7
                  lui          a2, 902265
                  rem          s7, s10, s9
                  subw         a4, a1, s3
                  addw         s11, zero, zero
                  div          t0, s9, t2
                  srl          s7, t3, a7
                  addiw        zero, a0, -242
                  sraw         s9, a2, s10
                  mulhsu       t2, t3, s11
                  srl          t6, sp, t3
                  rem          t6, s2, a4
                  divu         s5, a1, a4
                  subw         s6, a6, t2
                  slliw        a7, s10, 22
                  sub          s1, s9, t4
                  xor          s0, s2, a2
                  divuw        t4, a0, t3
                  div          t4, s5, t2
                  lui          s5, 450919
                  slli         a0, s1, 44
                  mulh         s7, a4, a3
                  divuw        t3, t6, a3
                  slt          zero, a4, a3
                  slli         s11, a2, 18
                  sltu         s2, s8, t0
                  divuw        s0, s1, tp
                  addw         a4, a5, s5
                  srlw         t5, s7, s10
                  sltiu        zero, a4, -967
                  subw         s10, a6, sp
                  add          tp, zero, s0
                  sll          tp, a3, ra
                  sub          a2, s3, a3
                  sub          sp, t4, a5
                  and          a0, t6, ra
                  mulhsu       zero, s7, tp
                  addw         s9, t4, s11
                  remuw        s5, t4, s4
                  sltu         s0, sp, a1
                  slt          t0, a7, a1
                  sub          t2, t6, s3
                  srai         t0, s2, 31
                  slti         s2, zero, -1890
                  sltiu        s9, t6, 440
                  and          a2, s7, a6
                  sltiu        a0, a3, 514
                  mulhu        a0, s6, s1
                  slti         a4, t5, 188
                  div          t1, tp, s2
                  andi         a5, a5, -1576
                  ori          s9, a6, 1877
                  srli         gp, a1, 49
                  addiw        gp, s11, -1518
                  div          t1, gp, s5
                  srai         a0, t2, 31
                  slt          s7, s7, s11
                  srai         t6, ra, 15
                  mul          tp, s5, t2
                  slliw        tp, t1, 21
                  add          tp, s5, s5
                  srl          s11, ra, gp
                  mulh         t4, a1, s10
                  or           s6, t4, s6
                  sltu         s0, s3, a0
                  addi         t2, a6, -2020
                  or           t0, a0, gp
                  remuw        s10, s10, a5
                  mulhsu       sp, t6, s1
                  sraiw        t0, a1, 3
                  rem          t2, a3, s0
                  divu         t1, s0, zero
                  div          s1, s1, a2
                  srliw        t2, a4, 6
                  divuw        s11, a1, gp
                  srli         s1, t0, 14
                  lui          zero, 126504
                  mulhu        t4, s11, t5
                  srlw         t4, a7, s10
                  lui          t1, 852408
                  sraw         s9, s3, ra
                  sraiw        zero, s4, 4
                  andi         sp, a3, 310
                  sltu         t3, a4, s0
                  sll          tp, t2, a5
                  mul          t3, a6, s10
                  rem          s10, a6, s7
                  lui          s11, 987699
                  lui          zero, 88810
                  srlw         a5, t0, gp
                  div          t2, s9, s2
                  slliw        gp, gp, 20
                  addi         s2, s1, -1653
                  addi         s8, s6, -1231
                  rem          s4, a2, t3
                  addiw        s3, t4, 587
                  ori          s6, s6, 1499
                  add          s8, s6, a0
                  mulhsu       s1, a1, tp
                  srliw        a2, sp, 2
                  sra          sp, s0, t2
                  or           t0, a2, s0
                  rem          s3, ra, t1
                  sltiu        s4, a3, 180
                  ori          t1, tp, 701
                  slliw        s6, a7, 29
                  xori         s4, t1, 1718
                  srlw         zero, s8, t3
                  add          t5, s4, ra
                  sltu         a2, sp, t1
                  slt          t4, a6, a3
                  divu         s1, s5, a1
                  srlw         s3, t0, t5
                  addiw        t3, zero, -783
                  slli         s5, s6, 4
                  slliw        t4, s0, 12
                  mulhsu       zero, s7, s1
                  srli         a7, sp, 62
                  sltiu        t6, s0, 868
                  sllw         s8, t1, a7
                  slti         zero, s7, 1549
                  andi         s2, t4, -1620
                  sraiw        gp, t3, 29
                  divuw        s3, t3, s0
                  sll          t4, a1, s6
                  addiw        s10, s2, -672
                  mulhu        s3, s7, t1
                  xor          s2, s8, s3
                  srlw         s8, s11, a1
                  addiw        s5, s7, 258
                  sraw         t1, s5, s9
                  mulhsu       s3, t6, s11
                  srl          s10, s0, zero
                  srliw        a0, t4, 30
                  rem          a7, zero, s7
                  sllw         t5, t1, s1
                  add          gp, gp, a2
                  sra          t3, a7, t4
                  remu         s3, s10, a1
                  div          s10, s3, s10
                  remuw        a0, a3, sp
                  rem          t1, s10, zero
                  divu         t1, a3, t3
                  andi         s1, s11, 1059
                  sraw         t4, ra, t2
                  srai         s2, t5, 43
                  mulw         t6, s7, t6
                  addiw        s10, sp, -1774
                  subw         ra, a7, zero
                  sllw         a0, s3, a5
                  addiw        s3, a6, -465
                  addw         s3, s6, a1
                  sub          t0, tp, s10
                  divw         t1, t1, s3
                  or           s2, s9, s0
                  srliw        gp, s4, 6
                  auipc        s8, 362425
                  srai         ra, a1, 16
                  srl          a2, a6, gp
                  srli         sp, s5, 52
                  slt          s5, a5, t6
                  mulw         a0, s5, s5
                  srai         s4, s7, 39
                  ori          a0, s3, 472
                  nop
                  rem          s6, t3, t6
                  auipc        s2, 486203
                  divuw        a7, tp, s7
                  sraiw        a7, s0, 29
                  sub          a5, s7, s8
                  sraw         s1, a3, zero
                  mul          s7, s6, gp
                  remw         t3, a5, s1
                  sra          s0, t6, s0
                  addiw        t5, sp, 1324
                  remuw        s11, s6, s2
                  andi         t2, a0, 1158
                  slliw        t0, a3, 20
                  mulh         t6, gp, s5
                  sraw         s4, s4, t3
                  andi         gp, s3, -599
                  xor          t4, gp, s7
                  ori          a5, s2, -687
                  srl          s11, gp, s11
                  remuw        a2, t5, a0
                  xor          t4, s8, t0
                  sra          s3, s6, t3
                  andi         a0, s8, -1615
                  rem          s11, s3, a5
                  xor          s9, t4, s4
                  divw         t4, s11, s4
                  slt          s3, sp, s7
                  addw         t2, s4, s11
                  srlw         s9, tp, a2
                  lui          t4, 649687
                  divu         a2, ra, t6
                  sraw         s3, t4, a6
                  xor          s0, sp, s2
                  mulh         zero, sp, a4
                  sltiu        s1, s8, -605
                  or           zero, sp, s10
                  divuw        s11, s8, gp
                  sraw         a5, s9, s0
                  sra          s4, a1, t2
                  mulhsu       a5, t1, s9
                  addi         s9, s9, 61
                  addw         zero, s5, a1
                  mul          s9, s1, tp
                  mulhsu       t1, t5, a1
                  slt          s5, t5, t4
                  srai         t0, s6, 27
                  sub          zero, t6, s6
                  or           s1, s1, t5
                  slliw        t4, s3, 4
                  sra          s2, s7, a5
                  slti         t6, s2, 1254
                  mulhu        s3, a4, s2
                  auipc        a5, 672830
                  addw         s1, a4, s5
                  nop
                  sra          zero, s3, t2
                  mul          tp, a0, s4
                  addw         s5, tp, s6
                  srliw        s1, a5, 30
                  add          t6, t4, a2
                  ori          a4, zero, 624
                  sll          s4, t6, tp
                  srl          t2, s11, t4
                  auipc        zero, 346019
                  srai         t2, t2, 23
                  mulw         s5, s7, zero
                  slliw        s8, s10, 18
                  rem          a5, s11, s11
                  srliw        ra, a4, 15
                  sraiw        s10, s4, 11
                  mulhsu       a4, a1, t0
                  srli         s11, s9, 61
                  remu         s4, t4, s6
                  sllw         s6, s3, s10
                  srlw         s2, sp, s6
                  subw         s0, s11, a1
                  mul          sp, s4, a4
                  remw         s2, gp, s6
                  or           zero, ra, t1
                  addi         a5, t2, 460
                  mul          a2, a2, s2
                  mulhsu       s4, t1, s8
                  sraiw        a7, s9, 28
                  slti         tp, s10, 1461
                  sllw         s9, s7, sp
                  divuw        gp, s4, s10
                  sllw         s3, t3, s2
                  srl          s2, a0, s3
                  addiw        gp, s10, -1337
                  remu         t2, t3, a4
                  sltu         a5, s7, t3
                  remuw        t6, t3, s2
                  mulhu        s0, s3, s5
                  sraiw        s1, t6, 16
                  sll          t3, s4, t3
                  sub          t6, t3, t1
                  mul          s0, s3, s8
                  lui          a7, 239609
                  divuw        a4, s3, tp
                  or           zero, s4, t5
                  addiw        s11, s4, -589
                  ori          t1, tp, 1559
                  andi         a0, t3, 1111
                  sra          sp, a6, s2
                  slt          s1, s10, tp
                  srlw         s3, s4, s9
                  sllw         s1, zero, s5
                  addi         s6, a2, 1780
                  mulh         a0, t4, zero
                  slliw        gp, t2, 25
                  mulw         a0, a6, s1
                  slli         a4, a5, 15
                  addi         t5, a3, -1564
                  rem          t6, t0, s6
                  srlw         t3, sp, s10
                  remw         s11, s10, gp
                  lui          tp, 396489
                  sltiu        s7, s2, -83
                  sllw         s8, a6, t0
                  mul          ra, s6, s1
                  mulhu        zero, a0, t2
                  divw         gp, s9, s4
                  remw         s8, a0, a3
                  divw         tp, tp, s7
                  nop
                  slliw        t6, gp, 6
                  slliw        s11, a5, 4
                  divw         a2, gp, a2
                  mul          a4, s3, tp
                  slti         t3, t4, -442
                  srlw         t4, a3, a1
                  sll          s1, gp, a3
                  mulhsu       ra, a1, t3
                  sll          a7, t2, s4
                  srlw         t1, t6, t5
                  auipc        zero, 67727
                  add          s2, sp, s11
                  sraw         t1, tp, t0
                  srlw         s2, zero, t1
                  andi         s8, s11, 1056
                  and          tp, t2, a4
                  srai         t2, tp, 15
                  divu         a5, a7, s11
                  sltiu        s4, s10, -947
                  remuw        a2, s4, s1
                  srai         gp, zero, 56
                  subw         a0, a6, ra
                  sltu         s2, s1, a3
                  addiw        s2, a0, -137
                  slti         s5, t1, -258
                  sltu         s2, a0, t5
                  subw         t0, s6, sp
                  srlw         sp, t0, s11
                  andi         t2, s10, 429
                  auipc        a4, 568472
                  sll          s9, zero, t6
                  addiw        t5, s11, -880
                  srli         s8, t4, 51
                  srai         a2, a7, 29
                  divu         gp, a1, a7
                  subw         s3, sp, s4
                  or           a2, s11, s2
                  srli         t4, a3, 44
                  slti         s7, a7, -430
                  sra          a5, s7, s6
                  srl          tp, zero, gp
                  lui          s5, 719453
                  and          t0, t0, s8
                  addi         s11, a0, -431
                  sraiw        a4, s0, 12
                  srl          a5, a5, s4
                  slt          s1, s6, a2
                  remuw        s2, s3, a5
                  mulw         t2, t4, a5
                  subw         a7, s8, t0
                  mulhu        s8, a4, s11
                  divw         a5, s2, a1
                  div          t6, s9, t2
                  ori          gp, a4, 616
                  divuw        s6, s5, tp
                  srlw         ra, t2, ra
                  srli         s4, s2, 62
                  addiw        a4, ra, -718
                  divw         t5, t5, t2
                  srl          s4, t5, s5
                  rem          a5, sp, zero
                  or           t2, sp, s1
                  sll          s6, s1, s10
                  rem          s5, s11, a4
                  remw         a2, s4, gp
                  addw         t4, t4, s6
                  or           gp, a6, a7
                  mul          s5, a2, s10
                  mulh         s9, t1, s1
                  divu         s1, gp, a6
                  addiw        s2, t0, 1540
                  or           t0, t1, s8
                  srliw        sp, gp, 11
                  sllw         a0, a4, t0
                  sll          s3, t5, a6
                  sraiw        t3, a6, 6
                  sub          s2, t0, gp
                  mul          t3, a4, t2
                  divu         t4, t2, a1
                  remuw        a7, a0, a6
                  remw         ra, t2, t0
                  mulhu        s3, t0, s7
                  addi         a0, s4, -667
                  nop
                  mulh         a2, sp, s11
                  xori         s7, gp, 1661
                  sltu         t5, a6, ra
                  sltu         t3, a6, s4
                  and          t4, s6, a5
                  srliw        s0, t6, 28
                  auipc        s3, 925639
                  sll          s3, t0, t0
                  remu         s3, t3, sp
                  sraiw        s8, s9, 16
                  divw         tp, s0, a3
                  slli         s2, a3, 31
                  rem          t6, t1, a3
                  sraiw        a2, zero, 26
                  remw         t2, s5, s2
                  rem          s1, s0, a6
                  ori          s1, t6, 371
                  divu         t0, s0, s9
                  auipc        a5, 697307
                  nop
                  addw         a5, s5, a1
                  or           s6, s9, a4
                  xori         t2, s3, 2021
                  srli         a5, gp, 62
                  rem          s5, a6, tp
                  addw         s5, s4, a2
                  auipc        a2, 78693
                  addw         a0, s7, tp
                  xor          s6, sp, a3
                  slli         s11, t5, 53
                  nop
                  mulw         s5, s6, a5
                  sraw         s4, t1, t2
                  mulhsu       tp, a0, s10
                  slti         s6, gp, 1263
                  divw         s3, zero, t0
                  addi         a2, t5, -379
                  subw         zero, t3, s8
                  slti         t5, s11, -1599
                  andi         zero, a5, -1158
                  slliw        sp, s9, 23
                  slti         a0, a3, 1199
                  andi         a7, a0, -1598
                  sraiw        sp, s3, 29
                  ori          zero, s2, -208
                  mulhu        s9, a2, t1
                  auipc        gp, 992026
                  mulw         t0, a3, s3
                  srl          t5, s1, t2
                  lui          t0, 995596
                  slliw        a2, tp, 15
                  ori          s3, a4, 1088
                  mulhsu       a5, a0, s10
                  addiw        s3, t2, 1074
                  addw         t1, s0, a3
                  mulw         gp, s0, a3
                  or           s8, sp, s5
                  add          t3, t4, t5
                  srliw        s5, s4, 16
                  divuw        t4, tp, a5
                  sub          gp, s5, a6
                  subw         s10, zero, t6
                  slt          s3, ra, a2
                  sltu         a5, s3, s2
                  lui          s9, 137517
                  slli         t2, sp, 44
                  xor          a0, t4, s6
                  addi         s2, a7, -233
                  sraw         a5, s11, s2
                  mulhsu       t5, t4, sp
                  addi         t2, s7, 804
                  addw         s0, tp, a4
                  xor          gp, a1, s7
                  mulw         t4, a2, s3
                  xori         a5, a0, 795
                  slliw        t3, a5, 30
                  lui          s7, 199375
                  and          t4, t6, gp
                  nop
                  sllw         s1, t1, a7
                  nop
                  addi         a5, a1, 644
                  sra          gp, s3, s0
                  xori         a7, s0, -1207
                  sra          a0, s9, a4
                  ori          a2, t0, -1314
                  mulhu        s10, s7, s0
                  mulhsu       a5, zero, s8
                  sltiu        s9, gp, -2045
                  divu         t1, s7, t0
                  slli         s4, s6, 19
                  lui          s0, 117756
                  sra          s1, a1, s3
                  srlw         s8, t4, sp
                  remu         t5, a7, s10
                  divw         s0, s0, a4
                  ori          gp, t2, 1919
                  or           s10, s6, s0
                  subw         s5, s3, a4
                  remuw        ra, s7, zero
                  xor          s4, t4, t0
                  sltiu        s10, t4, -1341
                  sllw         t0, a2, a6
                  sltiu        s5, t1, 594
                  subw         t0, gp, s7
                  divw         s8, a7, s11
                  addiw        t6, s6, 1329
                  sltu         s11, zero, a0
                  mulhsu       s9, zero, s8
                  addiw        s6, t3, -1891
                  sltiu        a4, s8, 520
                  lui          a0, 1017817
                  divuw        t4, s11, t4
                  remu         t4, s0, t5
                  ori          s5, t5, -1419
                  nop
                  remuw        t4, ra, s7
                  ori          a2, gp, -1511
                  add          gp, s1, t4
                  or           s6, a3, a7
                  xori         t0, a3, 1136
                  auipc        s0, 374200
                  xori         s1, t6, 1645
                  nop
                  addw         t0, t5, s6
                  srl          s2, a4, t1
                  srai         sp, s9, 35
                  addw         a4, a6, s3
                  slt          a2, s2, s0
                  sltiu        t1, a6, 1195
                  srliw        t0, s4, 3
                  andi         t2, a5, -1767
                  nop
                  sub          s1, s0, a1
                  sll          s8, gp, a0
                  add          s3, s3, a0
                  add          s0, sp, a0
                  srlw         t3, s6, a0
                  xori         t1, a3, -356
                  addiw        s11, a6, 1232
                  div          s4, s1, t1
                  nop
                  slliw        s5, a3, 17
                  and          s2, a7, ra
                  addw         a0, s9, s11
                  add          s10, a5, t0
                  srliw        ra, t0, 15
                  auipc        s9, 1018825
                  addi         a4, ra, -1083
                  sltu         tp, s9, gp
                  mulhu        s11, s4, s4
                  xori         s7, s2, 1613
                  ori          t2, a4, -680
                  divw         s10, s3, s9
                  mulhsu       s9, t2, ra
                  andi         s10, tp, 1860
                  nop
                  sll          s1, sp, gp
                  remu         a2, tp, t3
                  ori          s1, s10, 935
                  and          s11, a4, a6
                  nop
                  slliw        t0, tp, 12
                  add          s5, ra, a0
                  mul          t2, a1, t1
                  divw         t4, a6, s10
                  sraiw        t0, s0, 16
                  rem          t1, a3, s0
                  div          s2, gp, t2
                  rem          t1, t3, s3
                  addi         a0, s0, -1149
                  add          t3, a5, gp
                  sraw         s4, s8, t5
                  mulhu        t4, s11, s9
                  rem          a4, a5, t5
                  mulh         s8, zero, s4
                  mulhsu       t2, ra, s0
                  srlw         gp, sp, s10
                  or           s9, t4, s0
                  remu         t1, a2, tp
                  add          s3, a7, s1
                  sraw         s6, a3, a0
                  andi         s8, t4, -41
                  sltiu        s0, t1, 1384
                  and          s2, t0, t1
                  lui          a5, 718773
                  slliw        s9, zero, 17
                  addi         s6, s3, -70
                  srl          t4, t5, t6
                  srli         t1, s4, 12
                  rem          s3, s2, s2
                  rem          s9, sp, zero
                  mulw         t5, t5, s1
                  andi         t6, a0, 444
                  auipc        a0, 271798
                  add          s4, t2, s3
                  divu         sp, s1, a0
                  sra          gp, t1, a1
                  divuw        zero, sp, a0
                  and          t6, s3, s5
                  rem          s4, zero, sp
                  rem          a5, sp, t3
                  mulw         s4, s8, a0
                  slt          a2, s5, t0
                  srlw         s7, s2, s7
                  divw         a2, zero, t2
                  slli         s11, s0, 39
                  mulhu        t6, s0, s4
                  mulw         a0, s1, s11
                  sraw         s2, s7, s9
                  srli         t4, s6, 62
                  subw         a4, s2, s1
                  srlw         a7, s4, a3
                  srl          s4, t2, a2
                  sll          ra, s9, s9
                  andi         s8, s1, -1029
                  auipc        s6, 361394
                  sltiu        t2, t4, 1266
                  xor          ra, a4, ra
                  divw         t2, a3, tp
                  sub          sp, sp, s3
                  slti         s5, t6, 1264
                  addw         t1, t2, a7
                  slt          t1, t6, s9
                  srli         ra, s11, 9
                  slliw        a2, s0, 10
                  andi         s4, s10, 1418
                  add          gp, a6, a4
                  mulw         sp, s0, s2
                  slti         s2, s11, -1798
                  lui          s3, 912295
                  mulhsu       s2, a2, s2
                  srlw         t4, s1, t3
                  sll          gp, s0, s9
                  slli         s0, a5, 30
                  div          zero, a6, t4
                  divw         s8, ra, a6
                  divw         s11, s7, s5
                  divuw        a2, a0, a1
                  and          s11, a6, t1
                  xori         s3, t6, -1334
                  xori         gp, s4, 1280
                  addi         t4, t4, -885
                  sltiu        s7, s9, 1073
                  remuw        zero, a4, s8
                  mulw         s9, a7, t2
                  addw         s9, s0, a2
                  divw         t0, s7, s0
                  subw         gp, s5, s8
                  srl          a5, s8, s5
                  xori         t5, t3, -796
                  div          ra, zero, s1
                  divu         a0, zero, s11
                  andi         zero, s5, -1883
                  srliw        t4, a0, 9
                  sllw         s10, tp, s3
                  sll          ra, a3, a2
                  divuw        s10, gp, tp
                  mul          t4, s1, t5
                  mul          a7, a2, s4
                  mulw         a4, a6, a0
                  remuw        t1, a7, t1
                  xori         tp, a7, 1474
                  sll          s6, s4, t5
                  remuw        t1, ra, gp
                  ori          s11, s6, 532
                  sltiu        s1, t3, 1269
                  sltu         tp, t0, t6
                  sraw         zero, a6, s7
                  auipc        t5, 512851
                  slti         a7, s2, 1199
                  remuw        a5, t4, s9
                  mulw         t2, s6, t3
                  divu         s3, t1, s6
                  sltu         t0, s8, a2
                  divuw        s5, tp, s4
                  mulhu        s6, a6, gp
                  divu         t6, a3, a3
                  srliw        a7, t5, 13
                  sraw         s1, s11, s10
                  add          a4, s5, sp
                  sra          t1, sp, t6
                  srai         gp, s4, 13
                  remw         a4, a2, s2
                  div          t4, a3, sp
                  and          t4, s11, ra
                  srliw        zero, s6, 13
                  addw         s2, zero, t3
                  div          s10, a1, a4
                  sltu         tp, a2, s9
                  addi         a0, t1, 602
                  sra          sp, s8, t5
                  remuw        s2, s2, t6
                  remuw        a7, s0, sp
                  divuw        a4, t6, s7
                  sraw         a7, t6, s1
                  divu         s0, gp, a2
                  lui          tp, 135461
                  or           gp, s5, s2
                  add          s4, t5, s9
                  remuw        s0, s1, gp
                  remuw        s5, t4, sp
                  div          t4, a7, a2
                  srliw        s7, t0, 30
                  rem          s9, t3, t0
                  remu         t1, s3, s10
                  ori          s1, s11, 1894
                  and          s6, s10, a3
                  remuw        s7, t6, ra
                  srliw        s5, s10, 26
                  mulhu        a7, s0, s7
                  nop
                  divuw        t6, zero, a7
                  sraw         s6, a5, s2
                  slt          s10, a2, s7
                  andi         t4, tp, -201
                  slti         t0, s3, -1449
                  mulhsu       ra, t1, ra
                  add          s3, a1, a1
                  srliw        s8, t3, 15
                  srai         a2, s2, 33
                  srliw        zero, sp, 24
                  sub          sp, t4, s10
                  mul          s7, s8, s5
                  srlw         s5, s3, t6
                  xori         tp, zero, -1899
                  sll          t0, a4, s8
                  lui          s1, 1032663
                  addw         a0, a6, t6
                  sltiu        s4, a5, -1925
                  auipc        t6, 645636
                  remu         t6, a3, ra
                  srl          t6, a3, gp
                  or           s5, s2, gp
                  mulhu        gp, t3, a5
                  and          t5, t1, t2
                  srai         a2, s4, 20
                  addi         s1, a5, -1999
                  sra          t0, a5, ra
                  srlw         s9, a2, s7
                  mulh         tp, sp, a7
                  mulhsu       a7, s4, s1
                  rem          t4, t6, a2
                  mulh         zero, s8, ra
                  mulw         zero, a6, a1
                  remu         s0, a2, s0
                  subw         s4, s0, sp
                  remw         gp, t4, s2
                  srli         t6, s5, 36
                  and          s7, a0, a1
                  divuw        a0, gp, a5
                  mul          t6, a6, s6
                  addi         s1, s6, -696
                  rem          s4, s8, t6
                  and          a2, s11, s1
                  or           t3, t2, s7
                  subw         a0, s6, t4
                  div          s3, s11, t3
                  sraiw        tp, zero, 12
                  sllw         t4, s4, s3
                  subw         t4, ra, s9
                  slli         s5, s6, 56
                  subw         t1, tp, a0
                  rem          t0, t3, s8
                  sub          s2, s11, s9
                  srai         s11, s11, 59
                  slliw        s5, a0, 17
                  remu         t5, s1, a3
                  mulh         s7, ra, s3
                  divw         s11, s1, zero
                  xori         s9, a2, -38
                  divw         s0, s5, t1
                  srl          s10, a4, s5
                  slt          t5, a6, s6
                  sra          s3, s11, a4
                  divu         s2, a2, a0
                  mulw         s8, t1, sp
                  srli         s7, s7, 58
                  subw         tp, a4, t6
                  and          a7, s10, gp
                  ori          t3, t4, -929
                  addw         s0, t0, t4
                  auipc        s2, 876353
                  divuw        t0, t0, s3
                  and          a5, t1, a4
                  or           a7, a7, tp
                  xori         a7, zero, -969
                  mul          a2, a3, s1
                  slti         t6, s0, 932
                  sltiu        zero, s0, 1879
                  andi         ra, sp, -1438
                  subw         s6, s3, sp
                  mul          s4, t1, a7
                  remw         a2, s6, a7
                  xor          t3, s4, ra
                  sraw         s2, a1, ra
                  srli         s4, s4, 36
                  divu         gp, s6, s10
                  sra          s0, a3, s5
                  sraw         a7, a3, a5
                  slli         t4, t5, 46
                  mulw         s4, a3, t4
                  srlw         t0, t4, s5
                  rem          s11, a7, sp
                  sllw         s4, s8, t0
                  andi         a2, a4, 1266
                  remuw        t2, t6, a2
                  div          t2, a1, t6
                  mulhsu       s2, s7, a0
                  mulh         s11, s6, a4
                  add          a0, t5, a6
                  slliw        t4, gp, 14
                  or           s3, t6, t1
                  rem          t6, s5, a6
                  ori          s7, t4, 1759
                  srliw        ra, s3, 23
                  sllw         t4, gp, s2
                  srlw         sp, tp, s6
                  mulhu        s9, s3, s4
                  rem          s1, s2, s9
                  mulw         sp, ra, s4
                  subw         a0, s3, s11
                  divw         ra, sp, s0
                  mulh         a4, a7, t0
                  slli         a5, s11, 6
                  xor          s10, t1, t0
                  sraw         a2, a3, t5
                  remu         t6, tp, gp
                  auipc        t6, 335822
                  addw         a0, a1, zero
                  addi         s10, s7, 1266
                  sra          tp, s7, a6
                  sltiu        a2, s10, -74
                  subw         a5, s11, a4
                  mulh         s2, t4, s11
                  sltu         t6, s1, t2
                  mulh         s2, s0, t2
                  ori          a7, tp, -1931
                  rem          s9, s6, tp
                  slli         s11, a7, 61
                  mul          gp, s1, tp
                  mulhu        ra, s9, sp
                  slti         zero, t1, -2043
                  sll          a2, a6, s11
                  divu         t4, s3, s10
                  sra          s5, t2, s2
                  slt          t0, s0, s4
                  divw         s5, s2, zero
                  addiw        a2, t0, -1375
                  srli         a7, s10, 29
                  srli         t5, s11, 41
                  srlw         a4, tp, s5
                  ori          a5, a1, 1174
                  addi         t1, s11, -1036
                  srai         t2, s5, 55
                  mulh         t4, a3, s6
                  sllw         s2, a5, s8
                  mulh         t4, t2, s1
                  divw         a5, s11, s4
                  sub          s9, s3, t3
                  srai         s10, s9, 0
                  sllw         a2, s3, s4
                  slt          s1, sp, t6
                  remuw        s8, tp, a5
                  auipc        s7, 653729
                  slli         s4, tp, 38
                  and          t0, t5, s2
                  sub          s9, zero, a2
                  divuw        tp, t4, ra
                  lui          t6, 462929
                  andi         t3, t4, 348
                  add          a5, t0, a4
                  sra          s11, s1, a4
                  divuw        a2, a0, a4
                  sltu         a7, tp, t5
                  auipc        t6, 162497
                  subw         tp, a4, t3
                  lui          tp, 581129
                  slti         t2, s9, -1420
                  ori          a0, t5, 1678
                  addiw        t3, s8, 725
                  sra          s5, a1, a6
                  slti         s11, t3, 1834
                  slti         t3, s11, 1910
                  subw         a5, s2, a4
                  rem          a2, a0, s9
                  add          s10, s0, s2
                  addiw        a5, s7, 2027
                  srliw        s10, s7, 29
                  slliw        sp, s9, 20
                  remuw        gp, s8, tp
                  rem          s7, a3, s1
                  or           a0, a0, s9
                  mulw         a4, t1, s11
                  rem          s0, s1, s10
                  divw         a0, zero, s0
                  sraiw        a2, tp, 5
                  rem          ra, t0, a1
                  addiw        s9, a4, -1322
                  divuw        s3, s9, gp
                  and          a0, s7, t0
                  srlw         s4, zero, t4
                  nop
                  mulw         ra, s4, s6
                  remw         s4, t2, a3
                  add          s8, t1, sp
                  slli         t4, a5, 51
                  mulhu        a2, s7, a7
                  sraiw        s10, s5, 0
                  sltiu        t2, t6, 1761
                  sll          t4, s7, t2
                  ori          s0, s10, 991
                  mulh         t0, s7, s3
                  divw         t1, ra, t1
                  srlw         gp, tp, s10
                  mulhu        t0, a7, a5
                  andi         s1, s4, 187
                  sltu         t5, a0, t1
                  remu         t0, a1, sp
                  sltu         s11, s1, a0
                  sub          sp, gp, a0
                  div          a4, s9, s2
                  lui          a0, 578489
                  slt          t6, sp, s9
                  sltu         s9, a2, s3
                  divuw        a2, s8, s3
                  and          a0, a4, s7
                  xor          gp, t6, t2
                  divu         t5, sp, s1
                  slli         s4, s0, 12
                  mulh         tp, a7, a7
                  sllw         s11, s9, s7
                  nop
                  sraw         t0, ra, s2
                  sltiu        t3, t1, -482
                  remu         s6, t5, t3
                  div          t2, s4, a1
                  andi         s2, zero, -543
                  remu         ra, a5, s0
                  srliw        t3, sp, 11
                  slliw        s5, t2, 0
                  srliw        s4, s9, 7
                  sra          s4, a7, a3
                  slti         s6, sp, -552
                  srai         t3, a0, 30
                  srl          s1, a6, s10
                  divuw        t2, zero, a5
                  sub          t0, ra, gp
                  remu         t5, t2, s7
                  addw         s3, ra, ra
                  rem          s6, a2, s4
                  divuw        t0, ra, s5
                  ori          s9, s11, 1328
                  slt          a2, s9, gp
                  sraiw        a2, s8, 26
                  mulh         a2, t1, a5
                  lui          t5, 878179
                  sllw         t2, zero, a7
                  srl          s7, t3, a6
                  remu         t4, t2, gp
                  srliw        t0, s11, 0
                  auipc        a5, 419701
                  lui          t2, 392945
                  sltu         s4, s8, zero
                  div          s2, gp, s5
                  rem          a5, s6, s10
                  sltu         s4, s3, t5
                  andi         t6, s4, 1153
                  remu         a2, a1, a5
                  sraiw        t1, s5, 21
                  lui          s11, 486046
                  sltu         s0, s7, s4
                  divw         gp, s3, s2
                  slliw        s6, t3, 2
                  srai         s2, s9, 25
                  remuw        a7, s4, t1
                  remw         t0, t5, a3
                  nop
                  auipc        ra, 248496
                  mulhsu       s9, tp, gp
                  remuw        t1, a1, t1
                  mulw         s5, s6, t5
                  slti         s1, t2, -582
                  or           gp, s11, a3
                  andi         a7, a7, 1063
                  ori          t2, s1, 1114
                  addi         t0, sp, -1739
                  ori          s7, t2, -603
                  addi         gp, s11, -1719
                  lui          t0, 363627
                  remu         t3, s2, t4
                  srliw        tp, a5, 15
                  slt          s3, t2, t1
                  subw         ra, a3, gp
                  and          zero, s11, t1
                  add          s6, s9, a0
                  ori          a7, s2, 1090
                  slti         t5, t3, 310
                  xori         sp, t5, 1852
                  remu         t6, ra, a2
                  srlw         gp, s5, a7
                  nop
                  xori         gp, zero, 103
                  mulhsu       t2, a3, s10
                  lui          a4, 475330
                  slliw        t1, t6, 21
                  sraiw        a0, t6, 3
                  or           a5, s0, a2
                  sraw         s3, s7, t2
                  xori         a7, ra, 221
                  sltiu        s0, t4, 1881
                  slliw        a7, a3, 0
                  srai         a2, a6, 37
                  slti         s4, t2, -68
                  sra          s2, s5, s8
                  divu         zero, s4, gp
                  lui          s8, 396483
                  srliw        tp, a0, 18
                  remu         ra, zero, a6
                  and          a7, s3, s0
                  sub          s3, t0, a2
                  and          s9, s4, t1
                  sltu         t3, zero, s7
                  lui          s1, 571911
                  remu         t2, a4, s9
                  sll          s0, t4, a2
                  remu         a5, s7, a3
                  slliw        s5, s2, 0
                  slli         s11, a0, 17
                  xori         s11, s10, -208
                  mul          a2, s2, a2
                  and          t6, a7, a7
                  srlw         a4, t6, s9
                  sraw         t6, s0, s1
                  subw         s6, zero, sp
                  sraiw        s7, s1, 17
                  mul          s3, a6, s11
                  rem          s6, s2, t4
                  sra          s10, zero, s0
                  mulhu        t4, s5, s11
                  xori         a4, s2, -996
                  xor          s11, s3, t5
                  andi         s11, a4, 278
                  lui          t1, 937710
                  xori         t1, s6, 1559
                  remw         s6, t6, sp
                  mul          gp, a6, s8
                  lui          sp, 994718
                  add          t2, s11, s9
                  srai         gp, s1, 37
                  slt          s0, t3, a5
                  mulhsu       s2, t0, gp
                  addi         a2, s4, -1987
                  lui          s1, 224994
                  sub          s1, s0, t3
                  ori          a7, s7, 988
                  remuw        a5, t6, s11
                  srlw         s2, s2, zero
                  srl          ra, a4, s9
                  xori         s0, tp, 780
                  slli         s10, s5, 57
                  srliw        t6, s3, 28
                  ori          a2, s3, 1474
                  mulhu        s1, a2, a3
                  subw         t5, a6, a4
                  mulhu        t3, s8, s7
                  sltu         gp, s7, t0
                  remw         a7, s1, ra
                  sll          a2, a1, zero
                  andi         s11, s0, -340
                  addw         s0, t2, zero
                  subw         s11, t4, t4
                  srl          gp, t5, ra
                  rem          a7, a3, s4
                  ori          t2, s11, 1917
                  sraiw        s1, a4, 3
                  srai         s4, a0, 7
                  mulhsu       a7, a6, a6
                  xori         zero, s11, 822
                  mulh         t1, s6, zero
                  remuw        s10, sp, gp
                  add          t0, s3, a0
                  mulhsu       s2, s2, t3
                  add          s7, zero, s5
                  andi         s4, s5, -347
                  addw         s4, t2, a7
                  sltu         a0, t4, a6
                  ori          s4, t0, 1375
                  xor          ra, a2, s7
                  divuw        t0, t6, t2
                  andi         a0, s7, 774
                  srai         s0, t3, 26
                  and          a4, s1, s10
                  addiw        s4, a0, 35
                  mulw         t6, a5, a0
                  xor          ra, a5, a5
                  mul          s6, a4, t5
                  divw         s10, ra, s3
                  sraw         s1, t4, sp
                  mulhsu       a5, s4, s7
                  slti         a2, t6, 480
                  divw         s4, zero, s7
                  srlw         s5, a6, s7
                  srliw        s10, t6, 15
                  slt          s0, t5, s4
                  sllw         s0, s3, t0
                  sraiw        a5, gp, 17
                  addw         s2, s4, a7
                  auipc        s10, 210632
                  mulh         sp, tp, s9
                  sll          a0, a4, t1
                  slliw        t1, s10, 2
                  sub          s8, a3, a7
                  subw         t5, t3, a7
                  srliw        ra, a2, 31
                  sraw         s11, s4, gp
                  srai         s9, s11, 34
                  divuw        t1, a7, s8
                  mulh         t2, a7, sp
                  divuw        s11, t6, gp
                  rem          a2, s8, s11
                  sll          t5, a7, s11
                  divw         sp, a7, zero
                  auipc        t3, 689568
                  or           s6, a7, t6
                  remuw        s8, t1, t5
                  sraw         s2, gp, t0
                  sraiw        a4, s11, 9
                  srlw         s4, t6, a1
                  srli         s2, tp, 12
                  nop
                  srai         s3, t3, 19
                  lui          s5, 713465
                  divw         a2, a7, t1
                  sll          tp, s9, zero
                  mul          s1, t5, a2
                  sll          sp, a6, s10
                  divu         a4, s7, s8
                  slt          a7, zero, s9
                  srlw         a4, tp, s1
                  srl          zero, ra, zero
                  mulh         t3, a5, t1
                  slti         s8, s10, 1528
                  sraiw        t1, t1, 15
                  and          s6, t4, s0
                  xor          s3, gp, sp
                  srliw        s1, s9, 15
                  sltu         t2, a0, a4
                  slli         a0, s1, 63
                  divu         s3, s4, a6
                  divw         sp, zero, s9
                  and          t4, a5, s8
                  sraiw        s8, a5, 26
                  divw         a0, s3, s6
                  slti         a4, s0, -1111
                  addi         s3, s11, -1520
                  nop
                  slti         ra, s8, 427
                  srl          a4, s3, t1
                  mulh         sp, s7, gp
                  remw         t3, s10, t5
                  slli         zero, sp, 39
                  auipc        a0, 1088
                  slti         t5, a7, -235
                  sraiw        a2, s8, 10
                  remw         s3, s7, s1
                  sll          tp, zero, gp
                  mulhsu       s8, t4, a7
                  srli         t4, a0, 54
                  divu         zero, a4, t5
                  divu         t4, t2, ra
                  mulhsu       t0, zero, s7
                  sraiw        s5, sp, 26
                  or           s6, s4, ra
                  addiw        t4, ra, -808
                  slliw        a2, t6, 19
                  srliw        a2, t6, 15
                  sll          gp, s5, zero
                  remw         gp, t4, ra
                  srlw         gp, a2, s10
                  lui          t6, 305031
                  srli         sp, s8, 17
                  remuw        t0, s6, t6
                  sub          ra, s7, ra
                  sra          t3, zero, zero
                  subw         t0, a4, sp
                  addw         t1, a1, t1
                  mul          tp, a6, s10
                  slli         ra, s4, 33
                  and          ra, s11, s4
                  slliw        t3, s8, 26
                  lui          zero, 337223
                  remu         tp, s3, s11
                  remw         a0, a4, t4
                  and          zero, t6, t2
                  remu         t1, s7, s0
                  add          a0, s10, t5
                  divuw        t5, t6, s7
                  auipc        s10, 152922
                  mulhsu       s2, a3, s1
                  mul          s3, a1, t4
                  mulw         t6, t3, s9
                  sltiu        t6, a4, -1772
                  addiw        t1, t4, 1759
                  div          t4, a5, a0
                  subw         s2, s6, s3
                  addiw        t0, sp, -27
                  add          a2, s5, zero
                  div          s8, s0, t1
                  addw         zero, s6, sp
                  andi         s4, s0, -299
                  addw         s2, s9, tp
                  sra          a7, t0, s5
                  or           s7, t2, t0
                  sra          t4, a2, s0
                  srl          sp, s8, sp
                  rem          s4, s8, s4
                  auipc        tp, 794843
                  remu         zero, s0, ra
                  add          s0, s2, t3
                  div          s11, gp, s3
                  remuw        s2, sp, a3
                  lui          s9, 687312
                  srliw        s9, t3, 7
                  sraw         s5, a0, a0
                  sltu         a7, s11, s2
                  slliw        t4, a0, 7
                  mulh         a7, gp, s1
                  sll          a7, t1, s4
                  divuw        s10, s7, t4
                  slliw        sp, s3, 11
                  xor          t3, t3, a5
                  remw         s10, s9, t3
                  div          ra, a1, t1
                  addiw        s10, s0, -1634
                  addw         a7, a5, t1
                  sra          t2, s11, t2
                  addiw        a4, a1, 426
                  and          t5, a2, s0
                  xori         s10, s6, -312
                  remuw        zero, a1, s6
                  slli         zero, s4, 5
                  slti         a2, s5, -1530
                  srliw        t4, t3, 27
                  mulhu        t5, a3, sp
                  slti         a4, s5, -1449
                  addw         a4, s5, tp
                  nop
                  remuw        s10, ra, s7
                  mulh         a4, t1, t3
                  rem          t1, ra, s6
                  nop
                  xori         t5, t0, -1106
                  slt          a5, a7, s2
                  sraiw        s2, t0, 23
                  sraiw        ra, gp, 31
                  mulh         s5, s11, ra
                  xori         a5, tp, 1881
                  sra          a2, s1, sp
                  sltu         a0, zero, s6
                  mulhsu       s3, s11, a0
                  ori          s0, tp, 1860
                  srlw         s4, s2, a0
                  sraw         tp, a4, a0
                  sraiw        s10, s8, 12
                  add          t1, t5, s8
                  sltu         a4, a7, s8
                  andi         t4, a4, 1282
                  addi         t2, a5, 1243
                  sltu         a7, s10, s9
                  sll          t5, t6, a3
                  sllw         s4, sp, tp
                  or           t5, sp, a6
                  and          a0, s10, s4
                  srlw         a7, t4, t5
                  sraw         t1, zero, a3
                  srli         s2, zero, 25
                  srl          a5, zero, s8
                  rem          zero, a5, sp
                  addiw        s9, a4, 435
                  mulw         s0, a0, s10
                  addw         t4, a5, s6
                  srlw         a7, t3, a3
                  auipc        s8, 222563
                  slt          a0, a7, a5
                  srai         t2, s9, 37
                  lui          s5, 998986
                  sraw         s8, s8, t5
                  srlw         s4, a0, s0
                  ori          t0, ra, -577
                  xor          a0, a3, tp
                  divw         tp, s0, s8
                  sraiw        sp, s11, 4
                  sub          s2, gp, t1
                  mulw         t5, t6, s8
                  rem          tp, zero, ra
                  sraw         s2, s2, s1
                  divuw        s9, t3, s0
                  sub          a0, s4, s0
                  remuw        ra, sp, s10
                  divu         a5, zero, t6
                  mulh         s5, tp, s2
                  and          sp, s1, a3
                  srliw        tp, s0, 0
                  remw         s10, a7, s1
                  sraw         t3, s8, s4
                  slliw        gp, t3, 5
                  divuw        s4, s8, sp
                  slli         a0, s10, 3
                  mulhu        gp, s8, s9
                  slt          s2, s5, t6
                  xor          s4, t5, s8
                  add          s9, s1, gp
                  srai         a0, s7, 9
                  xor          s2, t2, t0
                  lui          t5, 732473
                  addi         ra, gp, 133
                  ori          s8, a3, 442
                  or           s1, a6, a6
                  slli         s8, t2, 10
                  srlw         s0, t2, s9
                  remu         tp, s10, s8
                  mulhu        sp, s8, s7
                  subw         t0, s7, a6
                  divw         s4, t1, a0
                  addw         ra, s8, a0
                  mulhsu       s0, s8, a7
                  or           a2, s6, a1
                  srl          s1, s1, s9
                  sraiw        s7, tp, 20
                  srl          t0, t4, t3
                  rem          s1, t3, zero
                  add          a0, tp, t6
                  div          a4, sp, s9
                  addiw        s10, s2, -479
                  and          zero, a3, t5
                  srl          t3, s2, t5
                  or           s11, t6, ra
                  srli         tp, s8, 6
                  sltu         a0, a1, s11
                  sub          t4, s2, t5
                  sraw         a7, gp, t5
                  divuw        s0, tp, a6
                  xori         a5, a3, 130
                  andi         a2, tp, -1276
                  addiw        t0, s7, 184
                  sll          t1, a4, s0
                  srai         t0, s8, 39
                  lui          a0, 855230
                  xori         s6, s8, -596
                  slt          a0, s10, s7
                  xori         ra, ra, 1407
                  mul          a4, t2, s9
                  div          t5, s4, s0
                  sraiw        s0, s4, 23
                  andi         s9, s2, 872
                  andi         t2, ra, 768
                  add          s2, t3, s7
                  nop
                  divu         gp, tp, a1
                  and          a7, a2, t4
                  sraiw        s11, s10, 0
                  or           s10, a7, s9
                  slliw        a4, t2, 21
                  remu         sp, s8, t0
                  sraw         gp, s6, tp
                  subw         t1, t4, zero
                  auipc        t1, 961955
                  remu         s7, a3, s2
                  auipc        t4, 39901
                  addi         s11, s5, 381
                  sltiu        t6, a5, 1199
                  ori          s1, a4, -132
                  remuw        a2, zero, a3
                  divu         zero, a4, s3
                  remuw        s8, t5, s11
                  and          s2, t2, s7
                  auipc        t0, 513246
                  sllw         s0, t0, t0
                  andi         s8, ra, -763
                  mulhu        t5, t6, tp
                  srl          s8, t6, sp
                  mul          t6, t1, s9
                  divuw        s3, s8, s0
                  srliw        s5, a7, 10
                  and          a5, a3, s5
                  sraiw        s2, s6, 5
                  srliw        sp, t1, 10
                  divu         s6, a2, t4
                  ori          s6, s6, 215
                  lui          zero, 197878
                  slliw        s10, a4, 18
                  remuw        t5, s7, zero
                  sllw         sp, zero, a5
                  srli         t2, s5, 28
                  divw         a2, t6, t5
                  srliw        s5, s7, 10
                  nop
                  slli         t4, t1, 55
                  srliw        t0, s8, 13
                  slli         s1, s1, 55
                  srli         gp, s5, 9
                  divu         s0, s1, t0
                  sra          sp, t6, s4
                  remu         a0, t1, a0
                  sraiw        s5, s4, 0
                  slti         s2, a5, -1882
                  srai         sp, a0, 63
                  sub          s6, s2, a3
                  andi         a5, a7, -1450
                  srai         s4, zero, 2
                  lui          zero, 861503
                  addiw        s4, zero, -1186
                  mulhu        t4, s2, t5
                  and          t1, s8, sp
                  mulh         s9, tp, a1
                  addi         s2, s9, 1923
                  or           t4, t6, t6
                  addiw        ra, a2, -697
                  srliw        a7, s2, 19
                  srl          s4, tp, sp
                  ori          a7, s0, 552
                  lui          t0, 744028
                  divu         t5, t1, t1
                  mulhu        zero, s11, a7
                  srliw        ra, s2, 12
                  add          a2, s2, t1
                  remw         s1, a0, t4
                  sllw         zero, s11, zero
                  sraiw        s0, t3, 30
                  auipc        a5, 95296
                  or           a2, s10, s2
                  remw         t2, t6, s8
                  add          s6, s1, a5
                  srliw        zero, s6, 26
                  sra          s11, gp, s8
                  remuw        t2, a0, a5
                  sraw         a4, sp, t4
                  add          ra, t3, a2
                  rem          s3, a3, a1
                  sltiu        s4, t4, 1592
                  divw         s9, s2, t0
                  sltiu        s1, gp, 1959
                  rem          s11, s2, s8
                  and          s9, s1, t3
                  sraw         s7, s10, s2
                  xor          s1, s10, s4
                  remuw        s6, t4, a7
                  sra          s2, s8, t5
                  mulh         a2, t2, t3
                  sll          s5, a0, a5
                  srliw        a0, t3, 3
                  divw         gp, a5, a4
                  srliw        s11, ra, 0
                  ori          s3, s7, 270
                  addiw        t4, s1, -1919
                  sraiw        a2, zero, 31
                  auipc        a0, 800929
                  sraw         t6, s9, a3
                  mulh         s2, s6, t2
                  srai         s8, t2, 1
                  divu         t4, sp, t3
                  srliw        s1, a3, 28
                  divw         sp, s3, s5
                  srlw         t0, s5, sp
                  mulhsu       s6, sp, t4
                  andi         s9, t5, -450
                  rem          t5, t5, a0
                  xori         s9, s8, 1480
                  mulhu        s9, t2, a3
                  remw         s4, s8, t6
                  sll          zero, a6, s1
                  srlw         t6, a7, gp
                  sub          s2, s6, t5
                  andi         t3, t4, 1485
                  addi         a2, s4, 1805
                  sraiw        s1, a5, 26
                  nop
                  mulhu        a4, s11, t1
                  addw         a0, tp, t2
                  srlw         s4, a7, t3
                  mulh         s7, gp, t1
                  remw         s7, s4, t6
                  div          s3, a0, t2
                  xor          t6, a1, ra
                  xori         s11, zero, 380
                  remw         s1, s9, t0
                  sltu         t1, s8, s10
                  remw         s8, tp, a0
                  lui          s10, 586004
                  remuw        s3, a3, s8
                  mulw         t3, tp, s7
                  sra          a7, s2, t3
                  sltiu        s9, s6, 1725
                  srai         s0, t5, 35
                  auipc        s5, 278885
                  and          s7, t4, t4
                  sub          t3, s3, zero
                  slliw        s0, gp, 15
                  sltu         t4, a1, a2
                  sraiw        t2, a2, 30
                  mulw         tp, t3, sp
                  slli         ra, tp, 43
                  andi         s4, t1, -594
                  xori         s5, s5, 966
                  srliw        s0, t0, 1
                  sra          sp, s3, t1
                  addw         s6, zero, t3
                  slti         gp, t4, 780
                  mulh         s2, s11, a7
                  xor          t6, t5, s3
                  remu         t3, s9, t3
                  subw         s5, t3, t6
                  remu         t5, t3, s11
                  xor          a0, t1, s7
                  div          s8, t6, s8
                  slliw        gp, s0, 17
                  remuw        s1, a3, a2
                  or           s5, s5, t2
                  and          a5, s4, t6
                  divuw        t4, s3, t5
                  srl          s1, s3, s0
                  sll          t2, a7, s10
                  srlw         s0, gp, gp
                  sll          s3, t1, sp
                  divu         t6, zero, s2
                  srl          s5, s1, s6
                  remu         ra, s6, ra
                  slliw        sp, a6, 21
                  sltu         s8, a2, t1
                  ori          tp, a7, 1326
                  sltu         t5, ra, gp
                  and          t5, ra, t6
                  mulh         t6, s7, s10
                  or           s0, s4, s11
                  srliw        s4, s2, 24
                  sll          s1, s1, sp
                  mul          zero, s6, sp
                  andi         s8, t4, -1598
                  nop
                  divu         s1, s6, a5
                  remu         s6, a5, s6
                  ori          s6, gp, -566
                  slt          a0, t4, s1
                  sraiw        a5, a7, 28
                  mulhsu       t4, a7, a2
                  srl          a4, s3, tp
                  mulhu        s7, s10, s3
                  divw         t0, a2, a5
                  srli         s8, t6, 5
                  subw         gp, t4, s6
                  srliw        t0, a1, 23
                  andi         a5, s3, 877
                  sll          t6, a5, t4
                  mulhu        a0, t4, s9
                  slli         a2, a0, 25
                  addw         s8, a5, s9
                  slli         s3, a1, 5
                  addi         s2, s2, -892
                  ori          s7, t4, 605
                  slt          s2, s6, a4
                  sll          s2, s6, zero
                  mulhu        a4, a5, t6
                  srl          s5, t5, s10
                  remu         s11, s9, s9
                  sltiu        s8, gp, 1820
                  slt          s4, zero, s11
                  addw         s8, tp, zero
                  div          t0, sp, t2
                  and          s1, ra, s1
                  divu         t3, s3, t5
                  nop
                  remuw        t6, s0, t2
                  remu         t6, s9, s8
                  slt          a0, t5, s6
                  nop
                  mulhu        s8, a5, a7
                  mulhu        t0, s2, ra
                  and          a5, t6, a5
                  remuw        s1, a0, t4
                  srai         t0, s2, 42
                  srai         s1, a5, 54
                  slli         a7, gp, 29
                  ori          t2, t4, -954
                  xori         a5, s4, -2007
                  sltiu        t1, a0, 1684
                  mulhsu       s8, tp, t4
                  sltu         t2, t2, t3
                  srai         s8, s5, 38
                  addiw        s1, t4, -780
                  mulhu        s2, s0, a7
                  sll          t2, s6, s0
                  xori         gp, t0, -385
                  sllw         t1, t4, s2
                  slli         t0, s9, 46
                  andi         s2, s4, 871
                  rem          t1, s2, s10
                  slliw        s7, a0, 2
                  auipc        t5, 441265
                  add          a5, t3, s6
                  sub          s3, zero, sp
                  subw         s4, s6, a3
                  auipc        tp, 262451
                  addi         t5, s0, 1439
                  sraiw        a0, a7, 20
                  andi         t5, s9, 2015
                  addw         gp, a2, a0
                  srl          a0, t6, a2
                  slli         t4, gp, 48
                  slt          s7, a5, s4
                  ori          s11, t3, -177
                  mulh         s9, tp, ra
                  ori          a5, s7, 935
                  sll          s5, s10, a4
                  rem          gp, s4, tp
                  srli         ra, a3, 56
                  sll          s9, t2, t6
                  subw         s8, t1, s6
                  slliw        s1, a1, 10
                  subw         gp, a0, a3
                  sllw         s2, s5, s5
                  mulw         t3, t1, s8
                  srliw        tp, t2, 12
                  lui          a5, 928657
                  nop
                  slti         s7, t2, -1305
                  srliw        s7, t0, 19
                  addw         gp, gp, t5
                  xor          t1, a2, s3
                  sllw         s7, a0, zero
                  auipc        gp, 853896
                  sra          s7, s4, t4
                  slti         a2, s2, 1572
                  mulhu        s1, s3, sp
                  subw         a5, tp, s4
                  lui          tp, 46936
                  srli         s10, s2, 6
                  addi         tp, s6, -874
                  sub          s10, s8, gp
                  srli         t6, ra, 44
                  div          a7, zero, s1
                  srai         s5, s1, 63
                  nop
                  slt          s1, t1, s6
                  srli         s9, s3, 57
                  mulw         s8, a1, a1
                  mulw         ra, a5, s0
                  lui          s5, 775800
                  sra          t0, s6, zero
                  slt          s4, a7, s0
                  srliw        a5, t4, 6
                  sub          t5, a5, s8
                  div          a0, t4, t3
                  sllw         s1, s11, t6
                  addw         t5, a4, t1
                  sltu         t0, t4, a3
                  srai         s7, s7, 14
                  mulhu        t0, ra, t5
                  ori          t1, t3, 1860
                  lui          ra, 961733
                  slliw        a7, s11, 20
                  mul          tp, a7, s10
                  div          t4, zero, t4
                  nop
                  lui          s10, 585861
                  slt          t3, zero, a6
                  sra          zero, s2, ra
                  ori          s0, s7, -1890
                  nop
                  remuw        t1, s5, gp
                  or           t4, s1, t0
                  and          s9, a5, zero
                  sraiw        s7, gp, 23
                  subw         zero, a6, a4
                  auipc        a4, 334883
                  mulhu        ra, s9, a5
                  mulhu        a2, a7, a4
                  srliw        sp, s6, 4
                  addiw        ra, sp, -731
                  lui          s4, 410194
                  addi         sp, s5, -1665
                  add          ra, a1, tp
                  subw         tp, t6, a2
                  mul          s7, a5, t6
                  mulhu        s10, s5, s4
                  addw         s2, a5, t5
                  add          s11, t6, t0
                  mulhsu       s11, a7, s11
                  mul          s1, t2, sp
                  slliw        gp, s2, 27
                  or           t3, t6, s10
                  sltiu        a2, zero, 1664
                  ori          s8, s3, -1459
                  sra          a5, s9, t6
                  slti         a4, s0, -337
                  remuw        tp, s11, s11
                  remu         t6, t1, t5
                  nop
                  sra          a0, s9, s7
                  sltiu        s6, zero, -1062
                  divw         s11, s9, a7
                  sra          s6, s0, a4
                  srl          ra, s9, gp
                  sra          s4, a2, a2
                  remuw        gp, a3, a1
                  slt          gp, a2, s10
                  sllw         t2, a4, t0
                  lui          sp, 687449
                  remu         t5, s9, s1
                  mulhu        s4, s5, s8
                  remuw        sp, a6, s4
                  sltiu        s5, s9, 1073
                  sltiu        s11, s11, 219
                  srai         t2, a5, 5
                  remuw        a5, s4, a3
                  or           sp, t4, s2
                  xori         s3, t6, 267
                  and          s7, s0, s3
                  slli         a5, s3, 29
                  andi         t5, t1, 1829
                  rem          t2, s1, t4
                  and          sp, a6, t6
                  auipc        s8, 176675
                  srlw         s3, t2, t5
                  xor          t4, ra, t4
                  andi         s1, ra, -177
                  addw         t4, a4, s0
                  andi         t2, s8, 862
                  ori          s0, s11, -1253
                  add          s4, s4, sp
                  srli         s2, s6, 15
                  sllw         ra, s4, s5
                  sraiw        t1, sp, 31
                  mulhsu       t5, s10, s10
                  mulw         s2, t2, a0
                  or           t1, t5, sp
                  srai         s9, a4, 7
                  add          s11, t3, s5
                  or           t4, a4, t3
                  div          a5, s5, s6
                  mulh         s9, t2, t4
                  add          s7, tp, s0
                  remuw        t0, t6, t0
                  mul          t2, a6, gp
                  sraiw        t6, ra, 30
                  remu         a0, t1, sp
                  sraw         t5, a5, ra
                  auipc        sp, 416908
                  sraw         s3, tp, s1
                  srl          s5, sp, a4
                  mulhsu       s3, tp, a4
                  ori          s1, t2, -2045
                  slt          s8, s8, s0
                  remuw        t1, a1, s10
                  srl          a4, s9, a2
                  rem          s1, t5, tp
                  sltu         t5, a7, zero
                  slliw        t6, t2, 21
                  div          s0, s3, a4
                  xor          t5, s8, s7
                  xor          a5, s5, s0
                  subw         t1, a4, a0
                  remw         tp, gp, ra
                  divuw        s3, a6, a4
                  xori         a0, t3, -1592
                  slliw        s11, t3, 7
                  xor          t0, s3, tp
                  srai         t2, a0, 21
                  addw         ra, sp, tp
                  remu         s9, s10, s11
                  srai         a5, a6, 29
                  nop
                  or           sp, t1, t0
                  divw         t6, t5, s3
                  sra          a7, a1, s11
                  sra          s2, zero, a5
                  sllw         a5, a6, s3
                  ori          s4, a2, -1003
                  lui          gp, 859008
                  remuw        s3, s0, a7
                  slti         a2, t4, 1781
                  add          t6, a6, s7
                  sraw         ra, a6, s10
                  slti         s0, s6, 67
                  mulw         t1, s1, t3
                  lui          s5, 174373
                  auipc        a5, 323313
                  nop
                  rem          a5, a3, s9
                  addw         s2, s5, a3
                  slli         s6, s9, 58
                  slt          s0, t0, tp
                  remu         s0, s4, t3
                  sltiu        s11, a5, -96
                  mul          s3, t6, t6
                  addiw        a2, t3, -298
                  sraw         gp, a1, s3
                  sraiw        t2, s10, 28
                  srli         a7, s0, 26
                  lui          ra, 670121
                  divuw        a7, s0, s10
                  srli         a7, sp, 35
                  rem          s9, s9, tp
                  srl          zero, s2, t1
                  addi         a5, tp, 1059
                  addi         s3, a6, -868
                  addiw        t6, s4, -1418
                  divuw        s7, s2, a4
                  srai         s2, zero, 24
                  slt          s9, s9, a6
                  sllw         a0, t5, s2
                  divu         s7, zero, s11
                  sltiu        s9, s4, -1730
                  sllw         zero, s6, s5
                  xori         a7, t3, 1165
                  mulh         t4, ra, a5
                  ori          ra, a4, 1540
                  lui          a2, 646812
                  srai         ra, t3, 34
                  sra          a2, t1, s1
                  divw         t2, zero, sp
                  mulh         a7, a6, a6
                  nop
                  addw         s11, s0, t5
                  subw         s1, a4, s11
                  rem          s1, s11, s7
                  sllw         s5, a1, t4
                  nop
                  divuw        s7, a2, t0
                  lui          s1, 544698
                  sra          s0, s3, t1
                  sltiu        s6, a2, 118
                  srai         t5, s2, 53
                  srai         s3, t2, 40
                  lui          a4, 565378
                  ori          ra, a3, 1890
                  slti         s3, a0, 778
                  mulw         sp, a3, tp
                  mulhsu       s5, t6, a2
                  and          t2, sp, t0
                  addiw        s8, t6, -1235
                  divw         a0, gp, s4
                  slt          tp, tp, s5
                  xori         zero, a7, -121
                  addiw        t5, t4, 1691
                  slti         gp, a7, 1294
                  srliw        s4, t4, 8
                  add          t3, a0, s0
                  add          s6, t3, s7
                  sllw         s8, s5, gp
                  mulhsu       t2, s9, a0
                  srliw        t4, s2, 13
                  and          ra, s6, a5
                  sraiw        sp, t0, 11
                  sll          s6, s7, s0
                  xor          zero, s6, t1
                  sll          ra, s4, t3
                  mulw         t3, s11, ra
                  div          s9, a2, t2
                  srliw        a5, t3, 8
                  slliw        t5, a4, 1
                  divuw        zero, sp, s7
                  sltu         sp, tp, a5
                  sra          sp, a6, a6
                  addiw        a2, t0, -1003
                  andi         a0, s3, 1953
                  slliw        s8, s0, 0
                  divuw        s3, sp, s3
                  mulh         s10, t2, sp
                  remw         s3, s5, a7
                  addiw        ra, t1, 1427
                  slt          ra, a1, a6
                  sll          s2, ra, ra
                  addw         zero, t0, s6
                  srli         s2, a4, 61
                  and          t5, s1, t6
                  addw         gp, s5, t1
                  lui          t1, 543026
                  add          sp, a2, a1
                  sub          s0, ra, t6
                  nop
                  nop
                  addiw        a4, s0, 591
                  slti         a2, t2, 1612
                  subw         s8, s4, t3
                  sltu         a4, s4, a1
                  xori         tp, t5, -1056
                  lui          gp, 1028015
                  slliw        s2, a6, 17
                  mulh         s7, s11, s1
                  addi         s2, s2, 660
                  sltu         s11, gp, s0
                  srl          tp, a0, s8
                  sllw         s4, t3, s4
                  srliw        s1, ra, 22
                  remw         s0, s2, t6
                  ori          ra, t0, 520
                  addi         a0, t1, -1279
                  sll          t3, t5, a3
                  subw         sp, t0, s0
                  nop
                  xor          t3, t0, sp
                  sll          s2, s9, a0
                  srliw        a5, t0, 23
                  slt          a5, s6, s1
                  mulw         s11, a6, s10
                  mulhsu       t0, sp, s0
                  xor          gp, ra, s10
                  addw         a7, s2, zero
                  addw         gp, s10, t3
                  srl          a5, t3, a3
                  sltiu        t1, t6, 103
                  mulw         s10, tp, a1
                  srai         tp, t2, 14
                  sll          t3, s0, a0
                  subw         a0, t2, tp
                  lui          s7, 910292
                  slli         a2, a5, 56
                  mulhu        a4, tp, s9
                  sllw         s7, s9, s3
                  div          gp, t3, s11
                  xor          s11, a5, a1
                  srlw         s2, a5, s3
                  sraw         s1, s2, s8
                  srai         a4, t3, 5
                  nop
                  srl          s2, sp, s6
                  slliw        gp, zero, 26
                  xor          a0, s3, t4
                  mulhu        a0, s9, t6
                  slliw        s8, t1, 1
                  srlw         t1, a1, a6
                  and          s3, ra, a3
                  mulw         ra, s5, t2
                  mulh         sp, tp, s0
                  sll          tp, gp, s5
                  sra          t4, a5, a2
                  and          s0, gp, s3
                  andi         ra, a0, 1634
                  srli         t5, s5, 40
                  rem          s2, s10, gp
                  auipc        s8, 795687
                  slt          tp, s3, s10
                  sraw         s11, a5, a3
                  sltu         s6, a2, tp
                  sraw         s2, a1, t5
                  ori          s2, t1, 1310
                  slli         s9, s4, 12
                  sraiw        t4, s0, 29
                  mulhsu       s6, s3, s1
                  div          a4, s9, a1
                  sra          a2, s7, ra
                  remu         t4, s2, t0
                  or           a5, t6, s2
                  addi         a4, t6, 702
                  and          s1, a7, t2
                  addw         a5, a5, s0
                  add          a5, zero, a1
                  slt          tp, t4, a0
                  or           s7, s8, s1
                  or           s8, s9, t3
                  srli         a5, s3, 26
                  add          s7, s4, t4
                  sllw         t0, a3, a3
                  subw         a0, t2, s1
                  mulhu        t3, s10, t5
                  slli         a7, s7, 5
                  mulhu        a2, a5, a3
                  sraiw        s8, a0, 23
                  divw         s10, a0, s10
                  lui          s0, 131359
                  add          t0, s4, t3
                  sraw         s8, tp, a2
                  divuw        a7, s6, s0
                  lui          a5, 73130
                  srlw         t1, s8, s1
                  sltu         t0, t3, s8
                  and          t0, tp, a6
                  sraw         tp, s8, a2
                  srai         s1, a7, 57
                  or           a0, s1, a7
                  subw         t0, t1, s7
                  mulhsu       s7, tp, a3
                  divuw        tp, gp, t5
                  xori         t2, a0, -1821
                  slli         s11, a5, 34
                  lui          a5, 999573
                  add          gp, zero, s8
                  slli         a0, s5, 20
                  addw         t6, t6, gp
                  addw         s4, t6, t5
                  or           t4, t6, t0
                  auipc        s4, 852860
                  remu         s6, t4, t3
                  xor          t2, s5, gp
                  subw         gp, s1, s7
                  mulhu        s10, a6, s7
                  slliw        tp, a7, 25
                  lui          s11, 216420
                  mulh         s3, a2, s7
                  ori          sp, s4, 729
                  sraiw        gp, a2, 12
                  mulhu        t0, s10, a4
                  sllw         s2, a5, s2
                  sll          t0, s11, t3
                  slli         s7, a2, 33
                  sraiw        s7, s3, 18
                  divu         s1, t6, a4
                  div          zero, a5, a2
                  xori         s0, t2, 1691
                  ori          t2, a7, -1843
                  sllw         t2, gp, gp
                  nop
                  add          gp, s11, s6
                  srlw         ra, t4, s9
                  addiw        s5, gp, 527
                  nop
                  srli         t4, a7, 46
                  sraw         s11, t1, s7
                  mulh         t0, s3, zero
                  sltiu        t0, s4, -1588
                  or           s4, t0, t3
                  srlw         s9, s11, a7
                  sltiu        s1, s5, 717
                  sltu         s10, s1, a5
                  remu         s8, gp, s5
                  subw         s4, a6, t6
                  slti         t1, a5, 1577
                  srlw         s7, s9, gp
                  nop
                  sll          s10, s11, a7
                  sllw         t6, t1, t0
                  mulh         gp, a2, s8
                  addi         s8, s7, 160
                  remw         t3, s11, s8
                  mulhu        s2, s6, sp
                  nop
                  sraw         tp, t4, s10
                  divw         ra, ra, t5
                  rem          s4, s3, s10
                  xor          s6, a2, zero
                  remu         s6, gp, a4
                  xor          gp, tp, s7
                  xori         s11, s5, 822
                  divu         ra, a6, t6
                  ori          s5, s10, 883
                  srai         s8, a2, 60
                  mul          s2, t6, s5
                  divuw        s7, a5, t5
                  sra          s8, a7, t3
                  srai         s4, sp, 36
                  mulw         s2, a3, s2
                  addw         t1, s4, a5
                  remuw        t0, a3, s9
                  slli         s0, a4, 29
                  rem          s6, gp, s4
                  slliw        s0, sp, 25
                  add          t2, s5, gp
                  lui          s8, 189115
                  ori          t6, s2, -1264
                  xor          s7, s0, tp
                  sll          t4, s1, t1
                  mulhu        a0, a1, a1
                  auipc        a0, 309065
                  divu         s9, t4, s11
                  sra          t0, a4, gp
                  divw         gp, t4, s3
                  rem          s7, s4, a6
                  subw         a0, t4, a4
                  xor          a0, t4, s8
                  addi         s4, sp, -192
                  mulh         s1, s10, a2
                  addw         s1, s6, a3
                  addw         s1, t0, t6
                  and          a7, s1, s11
                  srai         t4, s2, 34
                  remuw        s3, t1, t1
                  andi         t3, t4, 550
                  sub          s1, a5, t4
                  srliw        s11, t4, 5
                  divuw        zero, a4, t1
                  xor          gp, t1, a2
                  slt          ra, s9, s0
                  divw         t3, t6, s5
                  ori          sp, s11, 1956
                  addiw        tp, t4, 1033
                  mulhsu       gp, s6, a2
                  slt          s1, s3, s1
                  div          s11, a7, t3
                  srl          s0, s8, a5
                  remuw        a0, s10, s9
                  nop
                  ori          t2, a5, -207
                  sllw         t6, s5, s0
                  and          a2, s7, s7
                  mulhsu       s3, a3, ra
                  mulhsu       s11, a0, t1
                  srai         t2, a0, 29
                  divuw        a2, t1, s9
                  sraw         t6, a2, s3
                  and          a4, t4, s3
                  slti         s4, a5, -523
                  ori          t3, s3, 1769
                  slli         t0, t2, 58
                  auipc        s8, 844800
                  remw         ra, s9, t6
                  mulh         t2, s3, t5
                  addi         s4, a2, -954
                  slt          s3, t4, a0
                  sraiw        t5, t2, 22
                  slli         t5, t2, 49
                  remu         t2, s8, t6
                  div          sp, tp, a3
                  srli         sp, ra, 34
                  ori          s4, t6, 650
                  and          s8, a7, s10
                  addiw        t3, sp, -1400
                  sll          t5, a6, s4
                  subw         t0, a7, t4
                  srliw        s1, zero, 4
                  slliw        t3, t3, 2
                  xor          a2, t0, a7
                  sraw         a5, t0, a5
                  addw         tp, a6, a6
                  lui          s6, 974488
                  and          t0, gp, s3
                  slli         t2, s1, 21
                  divuw        s8, t0, s6
                  mulh         a5, a2, t6
                  sltiu        zero, ra, -454
                  divw         a2, s11, s11
                  and          sp, t0, sp
                  addw         t6, a0, zero
                  srl          s10, s10, t4
                  nop
                  xor          s7, s1, a6
                  slliw        tp, s0, 4
                  remu         t5, s2, s6
                  sll          gp, t4, t2
                  xor          a4, tp, t4
                  srl          s7, s8, a6
                  xor          s11, s5, s0
                  srai         s3, s0, 0
                  mulh         a7, s7, a6
                  srliw        t3, s11, 2
                  sltu         s11, s1, s10
                  sltu         t4, zero, s11
                  sllw         s4, s5, t5
                  srlw         s8, s8, a0
                  divu         s7, s1, s1
                  and          s1, s11, s3
                  or           s7, t0, t6
                  divw         t3, tp, t3
                  divu         s0, s8, t3
                  addi         a5, a3, 264
                  xor          t5, t1, s4
                  slliw        ra, a1, 1
                  add          t5, s6, t6
                  xori         gp, tp, 1884
                  sll          ra, a3, t1
                  addw         s0, s8, s8
                  sltiu        s0, s8, 1718
                  slt          sp, s10, s7
                  auipc        a2, 335414
                  add          a0, a1, a2
                  addw         t5, s10, s11
                  sllw         s11, a2, t3
                  add          s2, t0, s9
                  sllw         gp, zero, s11
                  divu         s9, s11, a2
                  nop
                  or           s1, s4, s11
                  divu         t1, s1, s2
                  subw         tp, s4, s6
                  xor          s1, s1, gp
                  or           s9, t3, s5
                  rem          a2, t1, a2
                  lui          s10, 386218
                  mul          tp, a0, t5
                  and          s5, t4, a3
                  srlw         ra, s11, s1
                  mul          s8, zero, s7
                  divw         a5, s5, s4
                  div          s10, s3, s6
                  xor          a7, s1, s4
                  or           s6, a3, t2
                  lui          a2, 132315
                  addiw        t4, a3, 281
                  and          t2, a5, s3
                  or           s9, ra, tp
                  divu         a0, t6, a2
                  srliw        s8, s10, 10
                  mul          s8, t5, s11
                  divw         s9, s5, a7
                  mulw         s6, gp, s7
                  ori          a2, s6, -1322
                  sltu         t5, s9, a2
                  addw         gp, s9, s8
                  sllw         a0, s11, s2
                  divu         s5, a5, t6
                  slti         s11, t5, -1929
                  div          a4, gp, t5
                  sll          tp, s5, t6
                  divuw        s11, s1, a1
                  sub          s11, t5, t2
                  srl          t4, s11, a3
                  slliw        t1, zero, 20
                  srliw        a7, a4, 19
                  div          s8, s9, a7
                  slti         zero, t5, -939
                  divw         s3, t0, t4
                  addw         s4, t6, t6
                  ori          a5, a2, -87
                  addiw        s4, s9, 579
                  div          t4, s10, s1
                  sraw         s9, s11, tp
                  srlw         a0, tp, t3
                  mulhu        s0, gp, gp
                  rem          t3, a4, s9
                  lui          s8, 988240
                  addw         s3, t1, t1
                  slti         s8, s1, -601
                  ori          s0, s6, 1624
                  divuw        t5, s5, s0
                  rem          s5, s1, a7
                  xor          t6, s0, a3
                  srl          s11, t6, sp
                  slliw        sp, t4, 15
                  srai         t2, a2, 42
                  remu         tp, a1, a2
                  srai         s11, t5, 16
                  sraiw        tp, t0, 11
                  sra          gp, s4, gp
                  sraw         tp, s5, s7
                  ori          s0, t4, -1922
                  add          s1, s5, a5
                  nop
                  sll          zero, t6, a0
                  or           s1, ra, s9
                  or           t0, a7, s5
                  xori         s4, s8, 774
                  sraiw        s5, s7, 13
                  divw         s1, t4, s4
                  slli         s6, a3, 1
                  srlw         s11, t1, a5
                  slli         s2, s8, 39
                  sltiu        s4, ra, 284
                  srai         s9, a2, 35
                  rem          s6, t1, s4
                  and          s11, t1, a4
                  divuw        t0, t1, s3
                  divu         s3, s11, s11
                  div          s4, s5, t3
                  slli         gp, s1, 23
                  div          a5, zero, s2
                  sub          tp, t3, t4
                  sll          t4, tp, tp
                  slti         t6, a5, -738
                  mulhsu       t0, t0, s9
                  divw         tp, s8, t0
                  srliw        s4, t1, 11
                  mulhsu       t1, zero, a7
                  auipc        t6, 622838
                  or           t3, s10, t3
                  sll          s0, s4, a5
                  mulhu        s5, s1, s5
                  addi         t0, tp, -732
                  srlw         t0, s8, ra
                  srli         t6, a6, 2
                  srai         gp, a7, 45
                  auipc        s4, 601685
                  subw         gp, s10, a6
                  srli         s5, s2, 8
                  xori         zero, s4, 1819
                  sltu         t0, a1, s10
                  mulhsu       t3, s9, s1
                  sltiu        a5, a0, 35
                  mulhu        a0, t4, t6
                  srai         t2, t5, 18
                  divu         t3, s10, gp
                  srli         zero, a7, 50
                  mul          zero, a6, s4
                  srai         s8, s1, 36
                  mul          t5, s4, s10
                  xori         s8, t1, -837
                  andi         s6, a5, 7
                  ori          t1, sp, -1865
                  div          s4, a4, t1
                  and          s1, a5, s1
                  mulh         t3, s11, s9
                  auipc        s6, 568485
                  slt          s9, s7, s2
                  srai         a4, a6, 37
                  srai         s4, a1, 11
                  sraw         t0, s5, s4
                  andi         a7, a0, -1157
                  mulh         a7, s4, s5
                  remuw        t3, s9, a2
                  mulhu        s10, s7, t1
                  mulhsu       s1, a6, t6
                  mulh         s1, s8, t5
                  mulhsu       t3, t2, t0
                  srli         s4, a5, 44
                  xor          s6, s10, a4
                  xor          sp, t3, a6
                  xori         t4, s6, 483
                  andi         s0, a7, -403
                  add          tp, t6, a7
                  mulhu        a0, a6, a4
                  slti         t2, s3, -462
                  andi         s8, ra, -1298
                  sll          t5, s5, s7
                  lui          s8, 880629
                  srlw         gp, s9, t3
                  sub          s4, a7, s3
                  or           s1, a5, t1
                  addw         a5, t6, t4
                  sll          a4, tp, s4
                  srliw        t2, s2, 31
                  mulhsu       s6, t0, ra
                  andi         s5, s7, 989
                  add          s5, tp, s6
                  xori         t0, s8, 1616
                  mul          a5, t6, gp
                  remuw        s5, t6, t2
                  subw         sp, a5, ra
                  slli         s8, t2, 23
                  sll          a0, tp, a1
                  addi         s1, t6, -512
                  srlw         t0, t2, s11
                  sll          tp, s4, a1
                  sraiw        a7, s9, 30
                  sub          s10, s11, t4
                  and          s3, t6, gp
                  sltiu        s1, s7, -984
                  sub          t2, s9, s0
                  subw         t4, t4, s11
                  remu         zero, a5, s11
                  andi         sp, a5, 1103
                  nop
                  remuw        s1, a0, t3
                  addiw        s8, s2, 908
                  slli         a7, a6, 5
                  ori          s0, a1, 1824
                  nop
                  mul          a2, t5, tp
                  sllw         t1, a1, t0
                  xori         s3, t6, 877
                  srlw         a0, t1, a4
                  remuw        t2, s7, tp
                  add          a4, sp, sp
                  ori          zero, a0, -1586
                  rem          s6, ra, s3
                  srli         s5, s5, 4
                  mulw         s1, t2, a2
                  addiw        gp, a2, -1797
                  srliw        s9, t2, 11
                  div          s1, a6, a4
                  mulhsu       tp, s6, t5
                  addi         t3, a6, 711
                  sraw         t1, a1, a5
                  nop
                  srai         s9, s2, 12
                  mulw         t4, s11, t1
                  addi         a2, a5, -1751
                  slli         a0, a7, 53
                  slliw        t4, a1, 15
                  xor          t4, a7, s3
                  sraiw        ra, s6, 27
                  and          ra, a3, s2
                  srlw         t1, zero, t0
                  andi         sp, ra, -866
                  mulhu        s9, s6, s1
                  and          t0, t6, s2
                  slliw        a7, t1, 10
                  remu         s7, a5, t2
                  xor          t5, a7, a5
                  slti         s0, s8, 211
                  srlw         s11, t3, a1
                  srai         s8, t0, 48
                  or           s3, t4, s2
                  mulw         a4, t2, s3
                  mulh         a5, a1, t3
                  nop
                  subw         zero, t4, s5
                  srliw        s1, s4, 26
                  sltu         s10, t1, s10
                  srli         t2, s2, 52
                  xori         sp, t5, 143
                  and          t1, s9, s6
                  add          a4, tp, s8
                  sll          a7, a3, t0
                  srliw        s4, t0, 27
                  srlw         s4, t1, s9
                  auipc        s9, 53234
                  ori          ra, a4, 416
                  mul          a2, s1, a0
                  mulw         a5, t6, t6
                  srliw        tp, a7, 28
                  sltiu        s11, ra, 1317
                  divu         s0, sp, a2
                  slti         zero, t4, 311
                  subw         t4, s10, a1
                  addi         t5, a5, -1614
                  sltu         a4, t1, t3
                  srl          s11, t6, s11
                  mulw         a4, t3, t5
                  slt          sp, s3, t1
                  divu         s3, s2, tp
                  mulhsu       zero, s4, a4
                  sraiw        a0, t0, 4
                  remu         s6, s7, s0
                  xor          s2, s8, t4
                  slti         s2, zero, -1400
                  xori         t2, t5, 1655
                  addi         tp, a1, -1966
                  srli         s5, s3, 22
                  xori         a5, t4, -259
                  addiw        zero, s3, -1975
                  srl          s3, a5, s5
                  slt          s8, s6, zero
                  srai         gp, a1, 10
                  sra          a5, t3, s8
                  divu         s6, zero, s1
                  mul          s8, s4, t3
                  addw         gp, s3, tp
                  xor          a4, a7, a4
                  sltiu        a5, t0, 1101
                  mulhsu       a4, t5, s9
                  divu         t2, a5, t2
                  addiw        s2, a4, 283
                  divuw        sp, t2, s4
                  srai         t0, s3, 63
                  srl          s1, s8, a7
                  subw         a2, t6, a4
                  sll          s3, sp, s0
                  mulhu        s7, a0, a6
                  divu         a5, s9, a3
                  mulhu        s8, s6, s11
                  lui          s5, 356658
                  subw         t4, s3, t3
                  remuw        t2, s4, ra
                  ori          s4, a2, -927
                  sllw         a5, a1, gp
                  srai         tp, a3, 34
                  andi         t4, s2, 1418
                  srli         s1, s4, 27
                  slti         sp, s0, -273
                  ori          s1, t2, -229
                  addi         s0, a3, 1952
                  srliw        s8, s3, 10
                  srai         sp, t4, 50
                  addi         t0, s7, -2031
                  andi         t5, s8, 1907
                  sra          t4, t6, sp
                  mulw         s10, s2, s1
                  ori          s3, a0, -494
                  remuw        s11, gp, t2
                  remuw        s4, sp, a1
                  sra          s6, t5, a1
                  sltiu        s1, a7, 292
                  andi         t0, a6, -643
                  and          ra, s5, zero
                  srl          s6, s7, t2
                  sltiu        t4, a6, -1841
                  lui          s0, 514423
                  srl          s6, t4, sp
                  subw         s9, s1, s5
                  mul          t5, a5, t4
                  srai         a0, t1, 58
                  ori          s11, s7, -1394
                  divw         a5, s8, a6
                  auipc        s11, 272472
                  slliw        t6, a2, 20
                  and          s11, a6, s4
                  ori          t4, tp, -1593
                  srai         a2, s7, 17
                  divw         t6, a6, s11
                  srliw        t4, ra, 13
                  addw         s1, tp, ra
                  rem          a2, s2, ra
                  rem          t2, t2, t1
                  sraiw        s9, ra, 7
                  mulw         a4, a4, t4
                  addiw        t5, t0, 1283
                  rem          a5, a6, a5
                  nop
                  sltu         s11, ra, sp
                  divu         sp, a3, s1
                  ori          s0, s11, 1867
                  slt          gp, ra, sp
                  mulh         gp, s3, t6
                  sltu         s11, s2, s9
                  mulw         tp, s9, a3
                  slli         s11, s8, 37
                  xori         a4, s8, 405
                  addi         t5, a0, -1205
                  remuw        tp, s1, s5
                  slliw        s10, s7, 25
                  div          t5, t0, a6
                  mulh         s6, s5, s4
                  srl          t5, gp, s5
                  sraw         a5, s11, sp
                  addw         s2, s8, s11
                  addi         s8, s7, 973
                  sra          a2, a0, sp
                  addi         zero, s6, 185
                  sraiw        s5, t1, 6
                  sll          t4, s7, tp
                  subw         s6, t4, a3
                  mul          zero, s1, gp
                  div          t6, sp, s5
                  remu         s6, t5, t1
                  mulw         t3, s11, zero
                  sllw         s6, t4, t0
                  andi         s0, s0, 1178
                  srai         s7, s8, 39
                  lui          s4, 848539
                  or           a2, t4, a5
                  sll          s2, a3, a5
                  srlw         s10, a7, ra
                  remu         s6, s4, ra
                  subw         s5, s2, s5
                  slt          a5, s0, t0
                  mulh         s2, t6, zero
                  srai         tp, a5, 38
                  subw         t4, a6, zero
                  lui          sp, 438706
                  lui          s10, 463089
                  xor          a7, gp, t2
                  xor          s10, a7, s7
                  sltu         t1, a0, s0
                  add          a7, s10, s2
                  addw         s10, a2, a6
                  nop
                  srliw        a5, gp, 4
                  mulh         s11, s10, t3
                  or           a2, a5, a7
                  sltu         s4, gp, s8
                  sllw         a2, t4, a4
                  srai         t3, t2, 59
                  addiw        s7, a3, -1388
                  add          s0, t6, s9
                  addi         t5, s10, 1421
                  slliw        s10, ra, 19
                  slt          a5, a0, a5
                  srlw         a2, a2, gp
                  nop
                  mulhu        s9, a2, s10
                  mulw         gp, a0, t0
                  sllw         s1, a5, t5
                  slli         a0, s3, 47
                  sltiu        t3, t2, 1929
                  mul          t2, s11, a6
                  srlw         s9, a7, t5
                  subw         s4, t3, a2
                  ori          t6, a0, 280
                  divu         s7, a2, s5
                  srai         t5, s8, 13
                  divu         zero, a2, tp
                  subw         s11, s6, zero
                  addiw        sp, s6, -794
                  subw         s1, sp, a7
                  lui          s8, 929871
                  sra          t1, t3, t3
                  divuw        t2, a3, t3
                  divu         s2, s5, a6
                  srliw        s10, ra, 30
                  mulw         s0, a6, a2
                  mulhu        s6, a0, gp
                  andi         t4, s4, 413
                  divw         s8, a7, s1
                  rem          s1, s0, zero
                  srliw        s3, s2, 30
                  xori         a5, t1, 1142
                  nop
                  mulhsu       s3, gp, s9
                  mulhu        s3, t6, s11
                  subw         t3, s2, s4
                  mul          s11, s2, sp
                  add          a0, a1, s9
                  addw         s4, a1, zero
                  and          s9, s5, a5
                  remw         s4, a0, a0
                  slliw        s11, t6, 15
                  mulw         s8, s9, t6
                  remw         s7, t3, s5
                  xor          ra, t3, t1
                  sllw         s11, s4, a4
                  mulhu        s6, s6, a0
                  slliw        a5, s0, 9
                  divuw        s9, t4, t1
                  divw         a0, a4, a2
                  rem          t1, s8, s10
                  and          t6, a3, t6
                  slli         t1, t2, 46
                  and          s4, s1, a5
                  sll          a5, sp, zero
                  ori          a5, s11, -832
                  addw         s1, a6, t1
                  auipc        t3, 492086
                  xor          s0, s4, s1
                  or           t0, s5, s3
                  sraw         s11, t4, a5
                  andi         t2, s8, 1714
                  andi         t5, s4, 1083
                  and          t1, a6, s2
                  sllw         t1, tp, t5
                  mulw         a7, a6, zero
                  nop
                  xor          a4, a5, s0
                  mulhsu       s9, zero, t3
                  srl          s0, a5, a3
                  divu         s10, t5, t6
                  srlw         s9, s4, t1
                  remw         t1, t0, s5
                  subw         s3, t0, s4
                  sraiw        t0, s11, 8
                  auipc        t5, 212399
                  auipc        a0, 462499
                  rem          s3, s11, s2
                  mul          s6, gp, s2
                  remu         ra, t1, s9
                  slt          s4, s11, a2
                  addw         s8, a7, s9
                  slli         a4, t2, 13
                  xor          s1, a7, s8
                  sraw         s9, s2, s3
                  slli         s11, s4, 28
                  slt          s5, s4, s3
                  srliw        s3, t2, 20
                  mulw         gp, zero, s6
                  add          a7, a2, s4
                  xori         s7, s6, -1478
                  sra          ra, s7, a3
                  or           t5, s5, t4
                  ori          s2, a6, -16
                  remu         s2, s6, tp
                  srl          tp, t0, s1
                  divu         t6, s0, s2
                  remu         s1, gp, sp
                  srlw         s6, ra, s1
                  srliw        t1, a1, 9
                  divuw        zero, s2, s10
                  mul          t4, s5, s11
                  mulh         a4, s4, s5
                  sraw         gp, s5, t1
                  add          s1, a5, s5
                  sll          tp, s5, t4
                  sllw         sp, a3, t2
                  mulh         a2, gp, a1
                  sra          s10, a3, s3
                  auipc        sp, 293966
                  srai         tp, a6, 31
                  sraiw        s2, a6, 31
                  srl          a7, s2, t1
                  andi         sp, sp, -105
                  sll          t4, zero, a3
                  subw         s10, s0, t3
                  mulw         s11, t1, s5
                  sltiu        s0, a4, -2002
                  subw         t1, a5, t3
                  addi         zero, s2, 1262
                  sllw         s8, a5, t3
                  sll          ra, s2, a2
                  slti         gp, a5, 1254
                  addiw        s4, s8, -1566
                  srlw         s0, tp, s0
                  sll          tp, a0, t1
                  add          t0, t3, a1
                  sra          s1, t2, a6
                  sraw         s5, s6, a0
                  sub          t4, s7, a2
                  sltiu        t6, t2, -602
                  andi         s9, s5, 1226
                  div          s0, sp, t5
                  srl          s9, s5, gp
                  div          s11, s9, sp
                  and          s1, t5, ra
                  ori          s4, ra, -1158
                  andi         s8, t2, 449
                  mulhsu       zero, s10, a4
                  mulhsu       t6, s5, t0
                  lui          t1, 617604
                  divuw        s6, a6, a3
                  srl          a2, s9, t6
                  slliw        s5, a0, 7
                  xor          t1, ra, s10
                  div          s0, a3, t6
                  srl          s4, tp, t0
                  addi         t1, t4, 1568
                  srl          a0, a6, sp
                  sub          s5, s3, s10
                  remu         zero, s5, a3
                  ori          s5, s4, 769
                  xori         t1, s2, -554
                  slliw        a2, s11, 3
                  ori          a0, s9, 874
                  addw         s8, t6, s7
                  srai         t1, gp, 16
                  sltiu        t0, a3, 1825
                  srlw         a0, t4, sp
                  srli         s7, a3, 27
                  divw         s5, a1, s1
                  xor          t5, s11, a5
                  andi         t1, s4, 1199
                  rem          t3, sp, t1
                  sra          t4, zero, s6
                  srliw        s8, a5, 30
                  sub          sp, t0, t4
                  subw         s1, s2, s1
                  ori          s4, t0, 395
                  sraiw        a0, t1, 27
                  divuw        s1, a1, a2
                  subw         s11, ra, s9
                  ori          s9, a2, -800
                  mulh         s7, s7, s11
                  mulhsu       t5, a5, s8
                  andi         s5, a2, 1463
                  lui          s3, 739232
                  mul          s10, t0, sp
                  andi         tp, s0, -1759
                  subw         t1, a4, s7
                  lui          s7, 298800
                  srl          a7, t4, s7
                  srliw        t3, t4, 21
                  slti         t4, s2, -1045
                  sllw         a0, tp, a4
                  remw         s1, t0, s7
                  xori         s9, t5, -1470
                  mul          s0, s4, s8
                  sll          s9, s5, a3
                  lui          sp, 58938
                  mul          a0, s10, sp
                  slliw        a5, s10, 16
                  srai         s1, a7, 55
                  subw         s8, t2, s5
                  div          t1, t0, t5
                  divw         a0, s4, t1
                  slli         t2, a1, 34
                  ori          a5, sp, -904
                  add          t5, sp, tp
                  add          s5, a3, a2
                  sltiu        s0, a0, 103
                  subw         t5, t3, gp
                  addi         s6, s7, 474
                  andi         s2, s9, 188
                  divw         sp, s6, a6
                  sllw         t3, s2, gp
                  sra          s2, t4, t3
                  sltu         s1, s11, s3
                  remuw        t5, a3, a2
                  slli         s6, a2, 21
                  addi         zero, zero, -570
                  or           zero, a6, a3
                  sraiw        t4, t0, 23
                  srliw        a7, ra, 25
                  andi         s1, a1, -830
                  subw         s6, a1, s6
                  sllw         gp, sp, s2
                  srlw         t1, a7, t5
                  sll          ra, a4, s3
                  sltiu        s11, s11, 1059
                  srli         t6, s5, 52
                  subw         a0, t2, s0
                  srliw        t5, ra, 9
                  sll          t2, a2, sp
                  sraiw        zero, s2, 7
                  xor          t6, t3, a3
                  srli         t4, s2, 8
                  andi         s6, s7, -955
                  srliw        s6, s6, 28
                  addi         t3, zero, -482
                  sraw         a7, t1, gp
                  sltiu        t2, sp, 386
                  mulhsu       t2, s6, t2
                  div          t0, s10, s0
                  or           a0, sp, t6
                  sra          ra, s3, t6
                  remuw        zero, sp, s5
                  sraiw        s11, a7, 13
                  srliw        s11, t1, 8
                  divuw        a0, a0, t5
                  divw         t6, t0, s4
                  addw         s6, sp, s0
                  srli         s1, s1, 60
                  sltu         s3, a3, a5
                  add          s8, a5, t1
                  addw         gp, t3, s3
                  mulhu        sp, s11, a7
                  auipc        s8, 703150
                  slliw        t2, t0, 9
                  subw         a7, ra, a7
                  ori          a5, tp, -1514
                  divw         a0, s2, s11
                  remu         s9, t0, s11
                  divuw        s9, s1, a0
                  slti         s8, s3, 1482
                  xori         s9, t6, -414
                  sltiu        sp, ra, -1495
                  subw         gp, ra, t0
                  addiw        s5, a0, 1696
                  divu         t4, a6, a4
                  sra          t6, a0, s7
                  srlw         t2, t1, ra
                  divuw        t0, s9, s8
                  rem          t0, a6, s11
                  mul          sp, s1, gp
                  and          s1, a5, a6
                  mulw         a5, gp, a7
                  srlw         t0, a5, a7
                  slt          t1, t2, t1
                  sraiw        tp, ra, 18
                  ori          a5, t6, -1323
                  sra          a7, zero, a2
                  andi         zero, a6, 1082
                  slti         s4, s10, 1004
                  addw         s6, a6, a5
                  sltiu        t1, s11, 1468
                  addiw        t0, a4, 1202
                  srliw        zero, a0, 27
                  addiw        ra, s1, 1381
                  sraiw        ra, a4, 31
                  slliw        t1, s4, 8
                  remw         ra, a6, t6
                  and          t3, a6, t6
                  xori         t2, gp, -189
                  nop
                  or           s10, t3, a3
                  slliw        t4, zero, 17
                  mulh         s2, s1, s4
                  mulh         s8, t1, a2
                  srli         s1, s3, 12
                  addi         s0, a6, -1463
                  mulw         s0, s5, t4
                  xor          gp, a5, t2
                  lui          s11, 995157
                  mulw         t4, t3, tp
                  sll          ra, t2, ra
                  rem          s5, s11, s5
                  subw         a7, t1, s8
                  mulw         t1, a0, s8
                  addw         s8, a2, a3
                  add          s11, t3, s11
                  xori         a5, s5, -1330
                  sub          s1, t4, t0
                  srai         a7, tp, 10
                  auipc        gp, 861021
                  xor          s4, s3, ra
                  mulw         a2, a7, s11
                  sllw         a0, s7, a2
                  xori         s9, s9, 942
                  slt          s11, t2, t2
                  divuw        s3, s9, sp
                  slt          s10, a7, a2
                  srl          t6, ra, s6
                  subw         t4, ra, t6
                  srliw        s0, zero, 12
                  subw         s2, a3, s5
                  srliw        zero, s6, 9
                  srl          tp, s5, t0
                  mulhsu       gp, s4, a0
                  remu         t6, a1, t3
                  srli         t1, tp, 18
                  sra          s9, s5, t0
                  slti         t2, a7, -168
                  div          a4, t3, a6
                  xor          t2, s5, a0
                  sraw         s0, gp, t6
                  ori          t4, ra, -384
                  slliw        s4, s7, 2
                  addi         zero, s0, 1632
                  add          a4, t1, a2
                  and          gp, ra, s8
                  lui          t4, 279545
                  xori         s2, a6, -1195
                  sraiw        s6, s10, 12
                  sraw         a4, s1, t6
                  add          t6, zero, gp
                  sraw         zero, s7, a7
                  remuw        a7, t5, s5
                  slliw        a0, s4, 18
                  addw         t6, t5, s9
                  div          s0, s7, s1
                  xor          s2, s10, s8
                  srli         s2, t3, 46
                  slti         s9, s11, 818
                  mulw         t6, a6, gp
                  lui          a5, 759987
                  lui          t4, 886624
                  slli         a4, s7, 6
                  divu         s9, t6, s9
                  divw         a5, s10, s0
                  divuw        t1, a2, s9
                  srli         a5, t2, 22
                  addi         ra, zero, 809
                  mulhsu       a5, s4, s1
                  slt          s9, t6, s9
                  srlw         a4, t3, s3
                  srli         a5, sp, 43
                  sllw         s10, a2, t4
                  mulw         t2, s3, a1
                  srlw         t6, s8, t6
                  slt          zero, a1, s8
                  nop
                  auipc        a0, 691876
                  rem          t4, ra, t0
                  srl          s7, t3, s0
                  lui          gp, 147258
                  slli         a5, a0, 1
                  sllw         t1, t2, s0
                  sraiw        a5, s2, 17
                  remu         t5, s7, a2
                  srlw         t4, s8, s10
                  slli         s6, t2, 7
                  sub          s1, t3, t0
                  divuw        s0, a0, a4
                  lui          t0, 137793
                  srliw        s2, ra, 5
                  sltu         a7, t5, s0
                  andi         s6, s8, 1923
                  subw         s5, s2, s10
                  sltu         t3, a1, s5
                  sra          t5, a7, s5
                  mul          a4, a3, s0
                  mulhu        s10, a1, a2
                  and          s4, t3, a0
                  srliw        tp, s1, 0
                  sub          t2, a0, t5
                  sraw         t5, gp, t5
                  addi         gp, s0, 950
                  or           t4, tp, s0
                  add          s10, sp, t4
                  and          t1, s2, t5
                  remu         t1, a2, t5
                  mulh         s10, a0, s11
                  sltu         s9, s8, s0
                  rem          a5, s8, t4
                  auipc        ra, 717186
                  sllw         s8, a6, sp
                  divuw        a2, sp, t6
                  lui          a5, 637221
                  slliw        t0, s10, 1
                  xori         s9, s9, -1611
                  divu         s5, s11, a5
                  srl          gp, s2, a6
                  slliw        a7, a1, 18
                  sraw         a7, s2, s5
                  mulh         s8, t2, s4
                  sub          a5, s0, a5
                  remu         gp, s6, s6
                  addi         t5, a3, -628
                  rem          t0, s2, t2
                  slli         sp, zero, 17
                  sraiw        s1, zero, 17
                  remu         s0, a4, a5
                  srl          s1, ra, s2
                  slt          s4, s7, t1
                  mulw         tp, t5, a3
                  mulw         s1, s3, sp
                  sll          t3, s6, s11
                  sltiu        s5, s4, 370
                  or           a2, s9, a5
                  lui          ra, 766309
                  sll          sp, a1, a5
                  srlw         ra, a3, a6
                  sllw         s10, t3, gp
                  mulh         s11, s5, t3
                  divuw        s7, t0, s8
                  sraiw        t2, s4, 19
                  addi         t1, s9, 1133
                  slt          ra, a6, a5
                  mulhsu       s10, t2, s10
                  ori          t4, s4, -204
                  sltu         s8, gp, t5
                  sltu         s8, a0, s6
                  div          a7, s9, a5
                  add          s7, s6, t4
                  addw         a2, s6, a6
                  divw         s7, zero, s0
                  mulh         ra, s4, t2
                  xor          s6, s5, zero
                  or           s3, a2, s3
                  mul          t6, a7, t6
                  and          ra, s1, s4
                  srlw         t3, t5, s1
                  sraiw        t2, a1, 12
                  mulh         s6, a5, s0
                  slli         s3, s2, 41
                  srl          tp, s0, sp
                  andi         zero, t5, -1763
                  sltiu        s6, s5, 1232
                  subw         t2, s8, t0
                  remu         t0, t3, a5
                  mulhu        s4, a5, s8
                  remw         s1, a6, s4
                  and          s10, t0, s2
                  xori         t6, s10, -1655
                  sltu         s2, s9, s1
                  sub          t5, t5, s2
                  sub          s11, a5, s8
                  divuw        t0, tp, t2
                  mulh         a7, s5, a1
                  sraiw        s6, s0, 12
                  remw         t5, s8, sp
                  mulhsu       s4, a3, t3
                  andi         s1, s2, 1976
                  sltiu        gp, a0, -1156
                  sub          s1, a5, a6
                  slti         t6, a6, -1147
                  slti         t1, t1, -1884
                  add          s1, s3, t2
                  sltu         s0, t0, s11
                  slt          sp, s6, t3
                  divu         t3, s1, a0
                  ori          a5, a2, 317
                  ori          s1, s0, -730
                  remu         a2, t6, a3
                  remu         a7, a2, s0
                  add          s6, s11, t5
                  sra          s8, sp, a4
                  srl          s6, a1, a0
                  remu         t0, t5, a1
                  addw         s11, s1, zero
                  mulhu        s2, a0, t4
                  slli         a2, s11, 42
                  sub          a7, ra, t2
                  sltiu        t3, a1, -1317
                  divu         t3, a2, s8
                  sraw         s2, s1, s7
                  rem          t3, a0, zero
                  nop
                  div          a7, s0, gp
                  sllw         a0, t4, ra
                  div          t3, zero, zero
                  addw         s11, a4, t5
                  andi         a4, t5, 291
                  sraiw        t1, t4, 7
                  srli         s7, t1, 39
                  sll          zero, ra, t1
                  sltiu        a4, t3, -1233
                  slliw        s1, s6, 27
                  nop
                  xor          a5, a5, ra
                  remw         a4, a5, s10
                  div          a0, t1, s8
                  andi         s2, a3, 413
                  xori         s1, s1, -1495
                  mulw         a2, s1, sp
                  slli         s1, gp, 13
                  srli         sp, zero, 25
                  andi         s6, a0, -153
                  srl          s7, t1, s9
                  sraiw        s2, tp, 28
                  slliw        sp, t2, 24
                  addiw        ra, ra, 1840
                  lui          tp, 72272
                  div          s6, a7, sp
                  srlw         a4, s2, tp
                  mulh         s1, s9, s8
                  and          zero, t6, t3
                  srai         a5, s9, 28
                  add          a0, zero, t0
                  nop
                  and          s0, t6, gp
                  srli         a5, t5, 41
                  mulhu        a7, s10, a3
                  mul          t5, s1, s9
                  srliw        t4, t0, 27
                  srl          gp, t2, sp
                  add          s3, zero, t6
                  srli         s5, t1, 50
                  slti         sp, a7, 1070
                  remw         t6, s4, ra
                  mulh         s3, s1, s1
                  sltiu        gp, a2, -1568
                  sraiw        a0, t1, 9
                  slti         t4, ra, 1055
                  or           a0, a2, a7
                  addi         t0, s2, -324
                  srai         s4, s0, 34
                  addi         zero, s2, 1304
                  srlw         a4, t2, ra
                  mulhu        t5, s2, s0
                  sraw         t0, a6, t2
                  ori          s0, ra, 1898
                  srliw        s5, a0, 2
                  slti         a5, s2, -247
                  sll          a0, t3, a6
                  remw         s2, s3, t3
                  sub          s11, s8, t5
                  sll          s4, t1, t4
                  srli         a5, gp, 6
                  slliw        s8, s2, 1
                  remu         s7, s8, zero
                  slli         t2, s8, 51
                  addiw        tp, t0, -1147
                  srl          a2, s11, tp
                  addi         t6, s4, 1441
                  slli         zero, s9, 51
                  divuw        t4, a1, s4
                  sub          t0, s10, s0
                  subw         tp, s8, tp
                  divuw        s6, a0, t5
                  sltiu        s5, s10, -2005
                  divu         s8, sp, zero
                  andi         gp, ra, 315
                  slli         s3, t1, 21
                  mulhsu       sp, s5, t3
                  sraiw        sp, a2, 4
                  divu         a2, s1, t0
                  sraiw        t5, tp, 8
                  sub          zero, ra, a2
                  sllw         t6, s9, t2
                  sltiu        ra, a4, 1780
                  ori          s4, s11, 824
                  divuw        t2, ra, ra
                  mul          sp, t6, t3
                  mulhu        a0, a7, t0
                  remu         s0, s5, s9
                  addiw        t5, sp, -671
                  mulhsu       tp, s10, s2
                  remu         s2, a3, s7
                  slliw        sp, t6, 25
                  srliw        t4, a0, 13
                  srl          s11, s11, s10
                  lui          s4, 381061
                  mulw         s2, a0, a5
                  divw         ra, gp, s3
                  auipc        t0, 531162
                  srai         t5, a5, 41
                  auipc        tp, 398930
                  andi         t0, s8, 832
                  auipc        ra, 1005872
                  divu         a5, s11, a4
                  srai         t4, tp, 15
                  mulw         t5, t0, s9
                  slliw        s8, a7, 26
                  slti         t4, tp, -1632
                  and          s0, zero, sp
                  rem          s7, s6, a6
                  slt          tp, s9, a7
                  mulhsu       s10, a1, t4
                  or           s5, t2, s9
                  slliw        s0, s10, 1
                  srlw         a0, t1, t3
                  slti         s1, t6, -1564
                  add          ra, ra, s9
                  and          t1, ra, t2
                  divw         s11, s6, zero
                  addi         a5, a4, -1021
                  slliw        t3, t4, 5
                  sltu         s11, t6, sp
                  srliw        s11, s9, 28
                  sraw         t5, t1, gp
                  divu         s10, tp, a5
                  addw         t2, t1, t4
                  sra          t3, s1, s5
                  auipc        s0, 518482
                  sraw         s10, t4, ra
                  addiw        s4, s10, 1071
                  addi         t4, s8, -591
                  addw         s3, t4, s6
                  srai         sp, s11, 61
                  slt          a7, s6, t4
                  auipc        s1, 173607
                  sraw         s2, s7, a7
                  remu         t3, sp, s10
                  sub          s6, s10, s5
                  srlw         s5, a0, a7
                  mulw         t5, s2, a3
                  slti         a0, s7, -246
                  remuw        t5, tp, a2
                  divu         s7, zero, s9
                  srliw        tp, s10, 1
                  rem          gp, s3, a6
                  sub          tp, a0, s7
                  subw         s2, a2, t1
                  srai         s10, t5, 60
                  mulw         s5, a1, s9
                  sub          ra, zero, s6
                  slliw        t4, s6, 10
                  slliw        ra, s1, 20
                  sub          t2, s7, tp
                  rem          s9, s8, t6
                  div          s2, s11, s8
                  lui          s1, 165393
                  mulhu        s11, s4, s11
                  lui          s11, 565435
                  slli         zero, zero, 19
                  srlw         t2, zero, a7
                  ori          ra, a5, 467
                  mulh         s1, tp, s1
                  xori         s9, a1, -164
                  mulhu        a7, s9, s11
                  slli         ra, t5, 5
                  sltu         s8, s8, s7
                  and          s3, a2, sp
                  xor          s7, ra, a0
                  ori          s10, a6, 1332
                  divuw        s10, s10, s11
                  slti         s5, sp, -144
                  auipc        t0, 489037
                  and          a0, s9, s5
                  auipc        t6, 214228
                  remuw        t6, a4, t0
                  slti         t6, a0, 1116
                  sllw         t1, t2, s3
                  rem          ra, a2, t6
                  srl          t5, s9, t4
                  sraiw        s6, t6, 9
                  srai         a7, s7, 18
                  srl          t4, a4, s9
                  xori         s2, a6, 1822
                  subw         t0, a3, s10
                  srliw        a7, a2, 18
                  sll          a4, a6, t3
                  mulhu        a0, s11, t1
                  sra          sp, a3, s3
                  or           a5, gp, t2
                  remu         t3, t5, zero
                  sraiw        tp, a3, 24
                  divu         t2, a4, t5
                  andi         tp, t1, 46
                  addw         s6, s1, t1
                  srl          t0, s1, t6
                  mulhsu       gp, s8, s10
                  slti         a2, s10, -1033
                  divu         s5, a1, s9
                  remuw        s10, s2, t4
                  mulhsu       a5, a6, a2
                  divu         s7, s3, zero
                  subw         zero, s1, a5
                  divuw        a5, s0, tp
                  srli         s9, t4, 41
                  srl          gp, a4, s11
                  sltu         a0, gp, t6
                  slt          a5, tp, s11
                  xori         t4, t2, 236
                  mulhu        t1, s1, a7
                  divu         a4, a2, s4
                  addi         zero, a6, -1829
                  lui          s2, 716914
                  sraiw        s9, s8, 5
                  subw         t2, s8, s10
                  div          s11, s9, s10
                  srlw         s2, a1, a6
                  addiw        t5, s5, 702
                  sll          t6, s2, a3
                  divu         t4, t0, a2
                  ori          t5, s1, -1401
                  sltiu        a2, gp, -1788
                  divu         a0, s1, s9
                  divuw        a5, s1, s2
                  nop
                  remu         s1, s0, tp
                  sltiu        s8, t6, -762
                  remu         sp, t0, s7
                  or           s9, ra, s0
                  div          sp, a0, s8
                  xor          s11, t2, t4
                  mulh         s1, t4, s10
                  mulw         t4, a7, ra
                  andi         s2, s5, 1479
                  sltu         a2, s5, t3
                  lui          a4, 258185
                  lui          t1, 85139
                  auipc        zero, 230605
                  mulhsu       s11, zero, s5
                  sub          zero, a1, s8
                  mulw         tp, t1, t4
                  andi         a7, s6, -205
                  mulw         s1, ra, a5
                  mulh         s7, s8, t2
                  auipc        t3, 551878
                  mulhsu       s7, a0, t2
                  remuw        s8, a7, a3
                  addi         gp, gp, 1428
                  sltiu        s8, s2, 876
                  mul          s5, s2, a6
                  srli         a7, s6, 3
                  nop
                  or           s5, s2, t5
                  mulhsu       sp, s8, a4
                  srlw         t3, zero, tp
                  srai         t0, a2, 15
                  andi         a0, s2, -925
                  sra          s9, t0, t2
                  xori         s0, s9, 954
                  nop
                  slt          ra, t4, ra
                  mulh         t4, t6, t0
                  slti         ra, s3, -806
                  slt          s1, ra, sp
                  slli         t2, zero, 40
                  slt          zero, t6, t2
                  mulhsu       s8, t0, t3
                  sltu         t3, t1, a4
                  srliw        s2, a7, 8
                  ori          gp, s2, 1338
                  remuw        a7, t0, a7
                  divuw        s7, t6, s11
                  sll          s8, s8, s6
                  sub          a0, a1, tp
                  mulhu        s8, a5, s11
                  lui          a2, 179141
                  lui          a5, 799781
                  addi         gp, t5, 1696
                  sltu         a5, s10, a5
                  nop
                  divu         s8, t1, zero
                  slti         s11, s10, -170
                  lui          s9, 400747
                  srliw        zero, sp, 19
                  mulh         a0, s9, s3
                  remuw        t0, ra, s4
                  sltu         t3, s1, sp
                  divw         s2, s4, sp
                  divuw        a5, s8, gp
                  srlw         t4, a7, t0
                  mulhsu       a2, t1, a5
                  divu         t5, a2, sp
                  sll          s3, a3, t6
                  mul          a0, a2, s2
                  auipc        a7, 263455
                  srlw         s1, a5, s1
                  xori         tp, s4, -544
                  mul          t6, tp, s9
                  auipc        sp, 1043674
                  auipc        s6, 270328
                  lui          t4, 774410
                  auipc        t6, 194284
                  subw         a0, t1, a5
                  sll          tp, zero, a6
                  divw         a5, t6, s10
                  slli         s1, s0, 40
                  addi         s2, s11, -357
                  divu         s1, tp, a1
                  lui          t3, 202393
                  sraiw        s10, s5, 29
                  lui          gp, 272546
                  sltu         a2, tp, a2
                  srli         s8, a6, 61
                  sra          sp, s1, sp
                  srliw        a7, s7, 4
                  add          a2, zero, t3
                  slliw        a4, t0, 29
                  add          s11, t5, a7
                  srliw        s6, s3, 25
                  sllw         t4, a6, s3
                  mulhsu       s9, t5, s1
                  nop
                  remu         s2, gp, s3
                  and          a4, a7, tp
                  div          t6, a2, a4
                  sra          s2, t3, t5
                  add          s8, a5, t2
                  addi         s10, s0, 1632
                  lui          gp, 993576
                  sltu         t5, a1, a1
                  div          t3, t5, a7
                  srliw        s4, s4, 18
                  andi         t6, s2, 152
                  srli         s8, s8, 19
                  sltiu        t5, gp, 984
                  divu         t2, s6, t0
                  divu         zero, s7, t5
                  addi         s8, a6, -240
                  remw         s6, t4, s9
                  xori         s6, s6, 1739
                  mulhsu       s8, tp, s8
                  mulhu        a5, t6, t5
                  slli         a0, tp, 59
                  mulhsu       s1, t0, s8
                  remw         a5, a7, a4
                  sra          s4, a7, sp
                  slti         ra, s11, -344
                  xori         t4, a1, -417
                  srliw        s3, s7, 22
                  remuw        s6, s3, s11
                  mul          ra, t6, a6
                  sraw         t3, t0, a4
                  remuw        sp, t0, sp
                  andi         t2, t4, 1134
                  sra          a0, a3, a3
                  srlw         t5, s8, a1
                  remw         s5, s5, t5
                  sllw         s11, s7, ra
                  sltu         s2, ra, s7
                  mul          s8, a2, a1
                  srliw        t2, a5, 4
                  divw         t6, sp, s0
                  srai         t1, s7, 31
                  ori          s9, ra, -911
                  div          tp, s5, t2
                  addw         sp, s6, t2
                  remuw        t1, s2, s10
                  rem          tp, a0, t1
                  xor          a7, s1, s0
                  addw         t1, s7, ra
                  div          a0, s8, a1
                  mulh         s0, a2, sp
                  sltiu        s9, a7, -1340
                  mulw         a7, t0, s9
                  sraiw        s2, a6, 3
                  auipc        a7, 849956
                  srli         s5, a0, 63
                  lui          t0, 916265
                  remw         gp, a7, a2
                  divuw        t5, t1, a4
                  lui          a0, 576586
                  mul          ra, t0, s1
                  divu         s6, a0, a5
                  or           t3, s2, zero
                  div          gp, ra, a2
                  divu         a5, a3, t1
                  remu         a0, s4, a7
                  srl          s10, s10, t6
                  slli         tp, s1, 7
                  auipc        s9, 154233
                  or           s3, t6, a0
                  subw         a2, t0, a6
                  mul          t6, s0, t5
                  divu         ra, tp, t5
                  subw         s7, a0, s5
                  or           s3, s3, zero
                  remu         s0, s9, a4
                  mulw         s8, tp, a6
                  mulw         s8, a2, gp
                  sraw         s9, a0, s7
                  mul          a0, a6, s0
                  sraw         tp, a6, s9
                  sraw         t0, t6, s4
                  subw         s6, t6, s10
                  slt          s2, t3, s0
                  sltiu        s10, s8, -541
                  remu         a4, s1, s9
                  srl          t0, t2, a5
                  sltiu        s7, s6, 1739
                  srliw        s9, s6, 15
                  div          a7, s6, zero
                  div          a4, t3, a6
                  subw         sp, sp, s3
                  remuw        t3, t3, a7
                  mulh         a5, s1, a5
                  addiw        t2, tp, -1792
                  sltiu        s11, sp, 1765
                  sraiw        t0, a4, 24
                  xori         s0, s3, 1901
                  slli         s11, s7, 48
                  slli         a4, ra, 56
                  srli         s2, a7, 33
                  auipc        a2, 393451
                  subw         s3, a3, t5
                  lui          s1, 576278
                  sraiw        gp, a3, 22
                  mulh         s10, s2, s6
                  add          ra, sp, a3
                  or           a5, s10, t4
                  auipc        zero, 16740
                  mulhu        gp, a2, s1
                  nop
                  or           s11, a3, s3
                  subw         s4, t3, a4
                  addiw        s8, a4, -1773
                  and          a5, t3, t6
                  ori          s10, t3, 1740
                  andi         s10, s11, 530
                  div          s6, a3, a6
                  divu         a5, a2, a0
                  mulw         s1, a6, a7
                  mulw         s1, tp, t1
                  mul          s4, sp, sp
                  sraw         t3, a0, a4
                  mul          t4, s3, t2
                  sraiw        s11, gp, 7
                  sraw         s8, s10, s9
                  srai         s10, a7, 33
                  xori         zero, s11, -735
                  sraw         t0, t5, t2
                  slli         s2, t0, 30
                  sllw         t2, s7, s7
                  sllw         s3, s6, s1
                  slli         s5, a4, 39
                  sraw         zero, a7, t3
                  slti         s0, tp, 823
                  auipc        a4, 88752
                  sraw         a2, t1, ra
                  xori         t3, s5, 555
                  rem          a4, a5, a2
                  addw         t5, a4, s1
                  slli         a0, s5, 45
                  lui          sp, 675035
                  lui          s11, 946906
                  remw         t5, a3, sp
                  xori         t1, s0, -948
                  slliw        a0, tp, 20
                  xor          t5, s11, tp
                  addw         a2, t2, a1
                  divw         a7, a3, s4
                  sra          zero, a1, t3
                  mul          t2, a5, gp
                  mulh         s0, sp, t1
                  divuw        a0, a2, a3
                  auipc        ra, 613783
                  sraiw        s2, s2, 17
                  remw         s2, s10, s10
                  srl          ra, t0, a0
                  auipc        a0, 206471
                  ori          a2, s2, -1077
                  remu         a4, s4, t6
                  and          t5, ra, s0
                  slli         t2, s3, 13
                  sltiu        s11, s2, 6
                  sraiw        a0, sp, 14
                  andi         t5, t3, 76
                  nop
                  xor          s8, s4, s7
                  sub          a5, s4, t4
                  remw         ra, a0, t0
                  nop
                  sllw         s1, t4, a0
                  sll          a5, t5, a6
                  sub          s9, t6, s3
                  slliw        a4, t3, 30
                  xor          t5, a3, a4
                  srai         gp, s5, 0
                  mulw         t4, t0, a0
                  sraiw        s2, a3, 6
                  mulh         t0, t6, gp
                  slliw        s8, s2, 0
                  remuw        t4, t2, a1
                  sll          s7, t1, a1
                  remw         s5, a0, zero
                  srlw         a5, s1, s7
                  rem          t5, a1, zero
                  srli         gp, s10, 10
                  sltiu        s7, t0, 1011
                  mulh         s1, tp, s2
                  srli         ra, zero, 45
                  srli         zero, a7, 16
                  mulhsu       s8, s8, zero
                  xori         s8, t3, 1514
                  slli         s8, t5, 49
                  and          a7, s6, s6
                  sllw         t6, s8, s5
                  remu         t0, zero, s3
                  srai         tp, a5, 46
                  srli         s6, tp, 26
                  lui          a7, 862763
                  mulw         ra, t4, t3
                  remu         s1, t1, s11
                  or           s10, s6, t4
                  sub          a0, sp, t2
                  sub          t0, t0, s6
                  div          t5, s7, ra
                  sub          t0, t1, sp
                  addiw        sp, s1, 1845
                  sll          s6, s11, s5
                  sraw         t4, a1, s3
                  sltu         ra, t3, t2
                  mulh         a5, ra, a7
                  nop
                  addi         a4, a4, -545
                  xor          t5, a4, zero
                  addi         s8, zero, 1323
                  slli         a4, s7, 14
                  and          s7, t6, a1
                  addi         t5, t0, 1339
                  mulhu        zero, a7, s3
                  sraiw        s2, t4, 18
                  slliw        t4, t1, 23
                  sll          s9, zero, t4
                  slliw        zero, s7, 0
                  divu         s2, t1, a0
                  srlw         a0, s9, tp
                  sraiw        s11, ra, 23
                  slti         t3, sp, -253
                  srai         t6, s7, 13
                  lui          s4, 556250
                  srliw        a5, s2, 17
                  srli         t4, a3, 52
                  mulhsu       a5, s7, s3
                  sub          s1, t1, gp
                  divuw        s1, a1, t0
                  mulhu        zero, t3, a3
                  remu         tp, s4, a0
                  sll          a0, s0, a6
                  mulh         t2, gp, s5
                  slli         zero, t0, 36
                  divu         s11, a0, t3
                  div          s9, s1, s10
                  srli         t1, a1, 57
                  sub          s11, a4, s1
                  sltu         s3, s3, t0
                  xor          ra, s2, s6
                  mulhu        sp, gp, t6
                  div          s7, a4, a4
                  sra          s7, t1, t6
                  sub          s6, a3, t2
                  and          s9, s4, s2
                  sraiw        s6, s9, 17
                  slt          t5, s1, a2
                  srli         ra, s5, 28
                  lui          a7, 165026
                  remu         s1, s11, t3
                  andi         zero, ra, -1552
                  slt          s1, s7, a4
                  and          a0, gp, a1
                  ori          sp, a4, 747
                  addi         a0, s1, 669
                  slli         t4, sp, 41
                  mulhsu       t2, s7, sp
                  srli         t2, t1, 29
                  remuw        s5, s10, a2
                  divuw        ra, a6, t4
                  srl          s0, s0, a6
                  auipc        s2, 830150
                  lui          a4, 703500
                  srliw        a0, tp, 29
                  sltu         a5, t6, a4
                  div          t4, s3, s8
                  sll          t1, tp, zero
                  andi         t4, s8, 1344
                  srlw         t2, s6, zero
                  addiw        t0, t5, -682
                  sub          t0, s1, s10
                  divu         t2, s1, t1
                  subw         tp, t3, a4
                  mulh         s3, a3, sp
                  sraiw        a0, s6, 17
                  srli         zero, tp, 23
                  auipc        a4, 290043
                  addw         t3, a2, s7
                  addi         s2, s6, -415
                  ori          s9, sp, -1766
                  remu         s6, gp, zero
                  srl          a7, t0, a1
                  mulh         s4, s3, s2
                  auipc        a4, 105046
                  mul          s1, s9, s8
                  mulhu        tp, a6, s3
                  sraiw        t4, s11, 30
                  ori          zero, s6, 1428
                  sraw         a7, s4, s1
                  add          s7, gp, t3
                  addi         s5, tp, -1006
                  auipc        a5, 148093
                  mulw         a0, a0, gp
                  slt          s0, s0, t0
                  divu         s1, gp, s5
                  add          tp, s4, tp
                  andi         s9, s8, -927
                  divw         a2, s11, a1
                  slliw        t4, s3, 15
                  mulhu        zero, t4, t5
                  slt          s9, a5, t0
                  addiw        s3, t2, -159
                  sra          s9, a1, s0
                  divuw        a4, t3, a5
                  sll          a2, s1, t2
                  divu         s4, s9, t5
                  sraiw        s10, s4, 24
                  srli         t4, t4, 49
                  sra          t1, tp, gp
                  srlw         s3, ra, s4
                  nop
                  slli         s1, a4, 26
                  srliw        s10, a4, 31
                  divuw        s4, sp, s1
                  slt          t2, zero, s7
                  srl          a5, a6, t6
                  rem          t2, s8, s2
                  mulh         s10, s5, s11
                  mulh         s1, t2, t6
                  slliw        t1, s5, 9
                  remu         s3, a0, a2
                  slliw        t0, a4, 31
                  addw         zero, t1, s3
                  nop
                  addi         zero, s8, -1568
                  sltu         s0, t5, s8
                  slli         s1, a3, 12
                  addiw        t6, gp, -1618
                  slt          gp, s2, a4
                  addi         sp, s3, 82
                  sltiu        s8, s5, 393
                  nop
                  srli         t3, t4, 26
                  rem          tp, zero, s2
                  andi         s7, s3, -1001
                  mulh         s1, t2, s8
                  divu         s0, t4, sp
                  sraiw        ra, s9, 16
                  add          t1, s1, zero
                  or           t3, t0, a7
                  xori         t2, s3, -456
                  sll          a5, sp, tp
                  ori          a5, a7, 1814
                  subw         s6, s3, t2
                  sub          t0, t6, s6
                  xori         s1, t5, 55
                  subw         t1, s3, s5
                  slti         a7, t1, -1246
                  divu         s7, s5, t3
                  slli         zero, t6, 6
                  slt          a5, a1, t0
                  rem          t3, s5, t6
                  srl          s9, a1, a6
                  remw         t1, t6, s3
                  mulhu        t3, a7, s1
                  sraw         t6, s8, s5
                  mulhsu       s8, s6, ra
                  sllw         s9, a1, ra
                  and          s8, s4, s3
                  ori          s1, ra, -1027
                  rem          t5, a0, tp
                  sraw         a7, sp, s2
                  mulhu        a2, a0, ra
                  lui          t2, 542919
                  remu         t4, a1, s10
                  sllw         s0, t1, s11
                  srl          zero, s6, a6
                  sraiw        zero, tp, 5
                  and          t5, a7, s8
                  slli         s0, s8, 40
                  sraiw        zero, a6, 7
                  sraw         s7, sp, s3
                  divuw        s5, t6, s0
                  srl          s2, a5, s0
                  ori          s5, s1, -922
                  rem          s4, s7, s5
                  remw         s3, t6, t4
                  divuw        a2, t0, a5
                  slli         tp, s4, 8
                  sll          s9, s11, a4
                  srai         s1, s2, 33
                  add          a0, a4, t1
                  divuw        t1, t2, a4
                  divu         gp, gp, s3
                  slliw        s0, s1, 23
                  auipc        a5, 311045
                  remu         tp, s0, zero
                  mulh         s11, s3, a4
                  sll          gp, t2, t3
                  or           s8, t6, t3
                  slti         tp, t3, -1209
                  remw         a0, gp, t6
                  sltiu        t2, s10, 803
                  mulw         t3, s11, a0
                  divw         s5, s7, t1
                  remu         s11, t4, t3
                  lui          t6, 559758
                  mulw         s5, s5, t1
                  divuw        s10, a1, t4
                  sll          a5, a6, t5
                  divuw        t2, t3, s7
                  remw         a0, s9, a1
                  divu         a2, s2, t3
                  sll          ra, a7, a0
                  slli         s2, s3, 5
                  nop
                  slliw        a0, a3, 15
                  mulhsu       s8, tp, t4
                  addw         s3, s10, s4
                  srli         t5, s10, 20
                  remw         t6, a0, s4
                  divw         t0, s8, a3
                  srliw        s5, s5, 30
                  rem          s2, a7, zero
                  mulh         s5, sp, sp
                  div          t5, s0, s0
                  ori          ra, s3, 1956
                  divu         s3, s4, s4
                  sllw         s3, tp, a5
                  xori         s10, t2, 1651
                  sraiw        s7, s4, 7
                  divu         a2, t2, s7
                  sub          t1, a2, s1
                  andi         sp, s5, -727
                  divw         s6, t5, zero
                  sllw         s0, s11, s10
                  slt          a0, s3, s11
                  mul          a7, t5, gp
                  slliw        s9, s5, 22
                  mulh         sp, t5, s0
                  sraiw        zero, s10, 14
                  add          a5, s10, s6
                  andi         s7, s1, -192
                  slt          s7, s7, t0
                  divu         t3, s9, t0
                  div          t2, gp, s2
                  srai         gp, a5, 51
                  div          t3, s7, s2
                  srl          s2, s3, a5
                  slli         t4, t6, 37
                  mulh         t3, a1, a1
                  auipc        s4, 25255
                  mulhu        s11, s4, s11
                  addi         s10, s9, 843
                  sub          tp, s5, zero
                  div          gp, s2, s3
                  sub          s4, tp, a1
                  slt          s4, a3, a2
                  addiw        s1, zero, -646
                  slt          s10, s7, s2
                  and          a7, t6, ra
                  sraw         a5, sp, s0
                  addiw        tp, tp, 1256
                  slliw        s11, ra, 18
                  srai         t3, a0, 45
                  addi         t2, s11, 440
                  auipc        s1, 177135
                  mulhu        tp, sp, t4
                  and          s8, zero, s9
                  addw         a0, s2, tp
                  remw         s11, sp, a7
                  auipc        a2, 585014
                  mulhu        gp, s2, t0
                  sraiw        s4, tp, 13
                  lui          t4, 344121
                  xori         s0, s5, 1886
                  mulw         t3, t1, s6
                  sltiu        s0, gp, 415
                  slt          s8, t6, s6
                  lui          t5, 915738
                  remu         sp, s5, t4
                  slliw        s7, a0, 18
                  subw         a5, s7, t1
                  mulh         t2, t5, t2
                  srai         zero, s8, 27
                  addw         ra, a2, t1
                  divuw        s11, a3, a4
                  sltu         s6, zero, t2
                  mulhu        s4, s3, s8
                  auipc        s0, 70999
                  lui          a2, 118158
                  lui          gp, 462177
                  mulhu        s1, s4, s3
                  slliw        t5, s11, 9
                  mulhu        ra, zero, t2
                  slli         s4, t3, 1
                  add          a5, s3, s3
                  divw         t6, t3, s9
                  xori         ra, s5, -1875
                  div          tp, a2, gp
                  divuw        s3, s1, s0
                  sra          a4, s7, t1
                  addiw        s7, sp, 591
                  divuw        a7, s3, s9
                  nop
                  subw         s1, tp, a0
                  mulh         s2, s0, s6
                  slliw        s11, s2, 22
                  mulhsu       s11, sp, s7
                  slli         a7, a7, 34
                  xori         sp, a4, -1866
                  slt          t1, a4, s10
                  slti         s11, tp, 310
                  mul          s1, zero, s2
                  and          a4, a7, a2
                  sll          zero, s6, s5
                  remuw        s3, s3, t5
                  sll          gp, s6, a5
                  lui          sp, 46991
                  divw         tp, s10, s8
                  and          a4, s8, a6
                  sltu         a5, t5, tp
                  divu         tp, t6, a2
                  auipc        a2, 207339
                  sll          s6, a1, sp
                  sltiu        t4, ra, 386
                  lui          s8, 820138
                  subw         t0, a2, t1
                  sllw         s2, tp, sp
                  remuw        s4, a1, s2
                  sra          s7, zero, s0
                  slti         a4, t4, 1485
                  sllw         s6, a3, sp
                  slli         s11, s0, 1
                  mulw         zero, s0, s10
                  xori         s6, a4, -2
                  xori         s3, s11, 418
                  srlw         t0, zero, a7
                  mulh         s8, s2, t6
                  srliw        t3, a6, 14
                  sra          t5, t6, gp
                  remu         gp, s4, a6
                  mulh         t0, t4, a4
                  sra          a4, t3, s1
                  sra          s7, a7, t3
                  subw         t6, zero, a5
                  sllw         t2, t1, s5
                  mul          a5, t5, t3
                  mulw         a0, s6, a5
                  add          t1, a1, a4
                  srai         s9, t2, 32
                  and          t5, a1, t2
                  remuw        s11, a4, a7
                  nop
                  sraiw        t0, s1, 13
                  slt          zero, t4, t1
                  srl          a2, t1, s5
                  nop
                  xori         a7, gp, 845
                  mul          ra, gp, s10
                  sll          s2, a4, sp
                  slli         s10, ra, 4
                  divu         s1, t3, a0
                  slt          zero, a5, s10
                  nop
                  mulh         s1, s6, s10
                  sll          s3, s3, a5
                  or           t1, s0, tp
                  rem          t4, s11, a7
                  subw         s4, t2, a4
                  sll          s5, s0, ra
                  sll          s1, gp, t5
                  and          t3, t0, t6
                  addw         s1, t6, a0
                  and          a0, a1, a1
                  addiw        s9, a4, 323
                  divw         sp, s0, t6
                  divuw        s3, s1, s4
                  srlw         t0, s10, a2
                  sraw         s0, s7, t3
                  addiw        t4, s6, 459
                  sraw         a0, a1, gp
                  sllw         t3, a4, t2
                  slliw        s2, a2, 11
                  sra          s10, gp, t4
                  slti         s11, a1, -131
                  divuw        a7, ra, s10
                  auipc        t3, 187691
                  sraw         zero, a0, s1
                  mulhsu       a7, s10, a3
                  mulw         a7, s8, t4
                  add          a2, a6, s4
                  slt          a4, s0, t5
                  divu         a5, a1, sp
                  addi         t1, t1, -1455
                  divu         s8, s2, a5
                  ori          t1, s5, -233
                  lui          a7, 299693
                  sraw         s4, a1, gp
                  sltiu        a5, a4, -1886
                  remw         s10, s6, a6
                  mulhsu       s1, s11, s10
                  andi         t6, s3, -1195
                  sllw         s11, a0, t1
                  mul          a7, s0, s2
                  andi         a0, a1, -361
                  sltiu        a4, t0, 1372
                  srai         s3, s9, 16
                  div          s3, tp, t4
                  slli         a2, s10, 29
                  remw         s4, s6, s10
                  srli         t6, s2, 0
                  subw         s4, a6, s7
                  sraw         s9, s8, a3
                  auipc        a7, 812771
                  mulw         t1, sp, s5
                  mul          a5, a5, t1
                  slti         s11, s3, 468
                  sltiu        s6, t3, -1872
                  mulhsu       t6, t2, t5
                  remu         a5, t2, a6
                  addi         t6, s1, 1927
                  lui          tp, 480660
                  addi         gp, s5, 84
                  mulhsu       t3, s11, tp
                  remuw        a2, s8, t4
                  sll          a2, s3, a0
                  sra          t6, s6, a2
                  xor          a0, s11, a1
                  srl          t2, t0, s1
                  addw         s4, a4, a2
                  or           zero, s11, a2
                  slliw        a4, t1, 0
                  mulhsu       t5, a5, s11
                  andi         s0, a1, 770
                  srli         s0, gp, 58
                  remu         t1, a5, gp
                  mul          a5, t4, a2
                  addi         a7, s6, -323
                  xori         s11, a5, 1794
                  add          a0, a6, t3
                  lui          a2, 919689
                  nop
                  xori         zero, s2, -559
                  lui          s4, 824541
                  rem          a7, s3, a6
                  nop
                  auipc        t0, 850977
                  andi         sp, t0, -336
                  xori         t2, tp, 1251
                  ori          gp, a4, -1989
                  remw         sp, a3, s11
                  add          s7, s8, ra
                  mulh         s7, a1, a7
                  sraw         sp, a7, s10
                  mul          tp, t2, sp
                  divuw        t4, a3, a7
                  nop
                  mulhu        t6, ra, a4
                  xori         s7, a6, -122
                  remuw        s2, s10, s11
                  sraiw        sp, t1, 16
                  divu         t2, t3, tp
                  mulh         zero, a1, a6
                  srai         s1, s3, 22
                  or           gp, s10, s3
                  and          s10, s1, gp
                  srai         zero, s3, 16
                  remu         t1, s7, s6
                  auipc        s4, 84370
                  addiw        s6, a4, -239
                  slti         t6, s2, 1299
                  sraw         s6, s2, tp
                  add          ra, a1, t6
                  mulh         t3, sp, ra
                  slliw        t5, s11, 0
                  remw         s5, s4, s3
                  srai         a2, s7, 36
                  sltiu        t1, s9, -511
                  sllw         t5, a1, t0
                  addiw        t3, t2, -1203
                  xor          s4, t1, t2
                  remw         t1, a2, gp
                  lui          a2, 586737
                  srliw        s1, s1, 8
                  mulh         t3, s3, gp
                  slti         s1, s9, -479
                  srai         s11, t6, 16
                  srliw        tp, s1, 27
                  srli         s3, a3, 19
                  mulh         zero, tp, s2
                  sraw         t1, t3, zero
                  add          s11, s1, t6
                  mulw         s3, s10, gp
                  srli         tp, sp, 27
                  sllw         s5, t5, s8
                  mulhu        t0, s10, s10
                  subw         s2, t0, t5
                  div          ra, s7, a0
                  sltu         s11, a5, ra
                  slti         zero, a2, 580
                  divu         gp, t3, a1
                  remuw        t0, a4, s7
                  or           s2, s7, a4
                  sltiu        s11, gp, -93
                  divuw        s2, t6, s7
                  srli         tp, s9, 27
                  sub          s8, t6, s10
                  slli         a5, t0, 35
                  mul          s4, a4, a4
                  andi         s1, a1, -402
                  sll          a5, gp, s2
                  mulh         tp, s2, a4
                  mul          s2, a2, t1
                  rem          sp, a3, s7
                  ori          a7, a6, 1525
                  slt          s2, s5, s5
                  lui          s0, 489435
                  remu         s11, s6, t6
                  sll          s7, a4, t2
                  lui          t0, 152878
                  div          t1, tp, s0
                  slli         s1, zero, 19
                  andi         s9, s3, 383
                  mulw         s7, gp, s0
                  srl          a7, a6, a7
                  srl          s4, s5, a3
                  remuw        a2, s1, s11
                  mulw         s3, a2, t3
                  sraiw        gp, t2, 10
                  xor          gp, a3, s10
                  mulw         s8, t1, a5
                  nop
                  add          s10, s1, a6
                  xori         a7, s2, -360
                  sub          s0, s2, t0
                  divw         s0, t2, a4
                  slli         t2, a5, 37
                  rem          t4, s7, t5
                  add          t0, t2, sp
                  sraw         a7, a3, s8
                  srli         s3, a6, 22
                  add          s11, a6, zero
                  rem          ra, t2, ra
                  mulhsu       s10, s2, zero
                  andi         s3, s2, 1938
                  sraw         s3, ra, tp
                  ori          s3, sp, 801
                  and          s11, t4, s3
                  sll          s4, s3, s6
                  mul          a0, a7, t4
                  remw         s6, a4, tp
                  remuw        t4, a5, t2
                  sraiw        t1, s11, 19
                  sub          s8, s7, s6
                  mul          s11, s1, t2
                  slli         t6, a3, 44
                  sllw         s10, a1, a5
                  sltu         s11, t5, gp
                  slliw        t4, s11, 15
                  mulw         t5, s1, s1
                  srlw         s1, a7, a0
                  addiw        s3, t0, -1229
                  addw         t5, a6, s10
                  slliw        s4, a7, 10
                  lui          zero, 992875
                  nop
                  div          s5, s11, s10
                  srai         t0, s7, 11
                  ori          a4, s7, -311
                  mulw         zero, s3, s6
                  divu         t5, a3, zero
                  srliw        s10, a3, 21
                  srli         a5, zero, 3
                  srlw         s11, t5, s4
                  srliw        s8, s0, 17
                  sllw         s7, gp, t0
                  add          t5, tp, t2
                  srliw        s3, s10, 17
                  sltiu        t2, zero, 469
                  mulhu        s2, s1, s6
                  sraiw        t1, t3, 1
                  mulw         a4, s7, a0
                  addi         s5, t1, 1904
                  addiw        s6, t5, -1279
                  sltiu        t0, gp, 977
                  slt          a7, s3, a7
                  remu         gp, s4, a5
                  sltu         s8, a6, s0
                  srliw        s3, t6, 1
                  sub          s3, t1, a6
                  andi         t3, s2, 1819
                  addiw        sp, s9, 157
                  slti         a0, t3, 457
                  divuw        tp, ra, a4
                  mulh         a4, s8, t2
                  div          s4, a7, a4
                  sll          s8, s6, zero
                  and          t4, s7, t0
                  subw         s8, s2, a1
                  mulw         t1, s9, a4
                  slti         sp, s4, 2026
                  or           s5, t3, a7
                  srli         s8, t6, 63
                  srlw         a5, gp, sp
                  lui          s1, 323197
                  divw         t4, s4, s0
                  srlw         t6, a0, s7
                  srlw         s3, a6, s5
                  lui          a2, 700996
                  sub          tp, gp, s3
                  sll          s10, s10, zero
                  divu         t2, s9, s1
                  srlw         tp, t2, t2
                  sraiw        t0, t4, 21
                  slt          s5, t4, t4
                  sraiw        s3, a2, 27
                  sll          a7, sp, a6
                  add          tp, t4, t6
                  mul          ra, tp, a5
                  remuw        sp, zero, t2
                  slti         t0, t3, -12
                  sub          a4, t0, s3
                  addiw        tp, s7, 1422
                  sraw         s5, s6, a4
                  sraw         s8, t4, a7
                  ori          tp, s11, -304
                  ori          t2, s6, -960
                  sllw         s8, s8, s2
                  remw         s2, s9, tp
                  divu         t2, a4, s11
                  sltiu        gp, ra, 525
                  sll          s4, s4, t3
                  divw         s5, t2, a4
                  sraw         a0, s6, s8
                  div          t2, a3, t5
                  xori         a0, ra, -930
                  add          s9, t5, gp
                  srl          tp, s1, sp
                  srli         s7, ra, 62
                  srl          t4, t5, t0
                  and          s1, a2, a6
                  divuw        s0, s1, tp
                  srai         sp, a2, 56
                  srl          a2, a0, t1
                  srli         s1, a6, 39
                  srliw        s3, a4, 27
                  andi         a2, s4, -192
                  mulhu        t3, s4, s1
                  mul          a0, a6, s3
                  sraw         t0, s10, t0
                  remuw        s8, gp, a7
                  srl          a4, a7, a1
                  srlw         s10, ra, s9
                  div          s3, t5, a4
                  subw         ra, s4, a6
                  rem          zero, s6, a7
                  lui          a2, 267300
                  srli         t0, a1, 45
                  slli         t6, s4, 34
                  sllw         t0, ra, gp
                  auipc        tp, 251225
                  rem          t5, s11, s3
                  sllw         s5, s1, a0
                  slti         tp, a1, 917
                  xori         t6, t2, 1852
                  or           t3, zero, s5
                  lui          tp, 534282
                  slt          a0, a3, s11
                  remu         a0, s10, s11
                  divw         s8, s11, t4
                  mulw         t0, t2, s10
                  mul          ra, t3, s3
                  mul          s7, t6, a6
                  mul          a2, s8, a4
                  slti         s11, t5, -413
                  remu         tp, a0, a3
                  remuw        gp, s7, ra
                  mulhsu       s2, sp, s6
                  div          s2, s5, s11
                  remu         gp, s2, t0
                  auipc        s5, 721865
                  divw         gp, t5, t6
                  xori         ra, a6, 580
                  slli         s10, s1, 25
                  div          s11, s2, s10
                  subw         tp, a1, a0
                  remuw        s1, s1, t6
                  slli         zero, s7, 54
                  slt          s3, gp, s2
                  andi         s10, zero, 1064
                  nop
                  ori          t5, t5, -1009
                  mul          s3, s10, a6
                  srli         tp, s4, 6
                  slliw        t4, a0, 25
                  srl          a2, gp, t3
                  remw         tp, gp, s1
                  slt          a0, s9, zero
                  sraw         sp, a7, s3
                  remuw        s0, s10, s5
                  srai         t4, t3, 32
                  divw         s11, zero, a0
                  and          sp, t2, s8
                  andi         zero, t1, -1534
                  srl          a7, t4, gp
                  xori         t4, gp, 249
                  ori          s7, zero, 1637
                  remw         s5, s3, s2
                  div          s11, a5, t1
                  or           a4, a0, s2
                  sltu         s1, a7, tp
                  sltiu        a7, t2, 906
                  mulhu        t0, a0, t0
                  div          a2, s10, s7
                  divw         s10, s11, t3
                  sltiu        gp, ra, -2007
                  slt          s8, s6, t1
                  mulh         s9, a5, t3
                  slliw        t5, a0, 16
                  srli         s3, ra, 60
                  lui          zero, 731221
                  mul          s3, a6, t6
                  mul          s11, t6, t5
                  remu         a2, s8, a3
                  remw         t3, sp, a4
                  srli         s1, a1, 19
                  mulw         t1, a7, s8
                  srl          a7, t6, t5
                  sll          a0, s7, s11
                  sltiu        s2, a2, -1716
                  sltiu        ra, t4, -432
                  remw         ra, a5, t4
                  divu         t4, gp, ra
                  sltiu        a5, s4, 1997
                  addiw        s3, a3, -578
                  srai         s7, s0, 57
                  slliw        gp, t3, 22
                  divu         s11, s10, t6
                  slti         a0, s0, -666
                  addi         t3, t0, 1205
                  slli         t4, s11, 38
                  slliw        a2, s8, 23
                  mulw         a7, s11, s10
                  mulw         s10, s0, s10
                  lui          t5, 543061
                  srliw        s3, t6, 25
                  ori          gp, t5, 1656
                  auipc        s2, 724878
                  mulhsu       t6, t5, t1
                  nop
                  mulw         gp, a5, t6
                  sra          zero, s1, s7
                  sllw         a7, ra, t3
                  remw         tp, s9, s0
                  remu         s7, t5, sp
                  mul          zero, s2, s2
                  slt          gp, a3, s11
                  mulhu        a7, zero, t6
                  or           s5, t0, a0
                  slli         t0, gp, 63
                  lui          gp, 287958
                  sub          t0, s9, a2
                  div          t5, s5, zero
                  mul          t1, t0, s10
                  remu         zero, s1, a0
                  ori          s2, s11, -1924
                  addw         a2, s1, t6
                  xor          gp, s5, t2
                  subw         s10, a6, a3
                  sra          a5, a3, sp
                  divuw        t1, s10, s3
                  andi         sp, s7, 909
                  slli         s0, zero, 38
                  sltu         s1, sp, a5
                  slli         a7, t6, 25
                  sra          s0, s2, s3
                  mul          a2, s9, s7
                  srai         s3, t4, 48
                  div          a2, ra, a3
                  srlw         t3, a2, s11
                  remuw        s5, t1, a1
                  andi         a7, a6, -1549
                  nop
                  xori         t5, s7, 577
                  remw         zero, s9, s1
                  sll          s6, s3, s8
                  rem          s6, a3, a6
                  mulhsu       s4, a6, a0
                  mulhu        t4, s9, t6
                  addi         s3, a2, -860
                  rem          t2, a1, s8
                  mul          zero, s0, a6
                  slli         t2, t1, 58
                  sll          gp, s3, s11
                  divuw        t3, s6, t3
                  sraw         s11, a5, s8
                  mulh         a2, a0, s6
                  slti         a2, t2, -1207
                  mulh         t4, s2, s5
                  slli         a4, s10, 24
                  sra          s4, s8, a0
                  divw         s6, s0, s4
                  nop
                  subw         s6, s1, s3
                  mulhsu       zero, a5, tp
                  sltu         a4, t2, s7
                  auipc        t5, 185989
                  divuw        s8, t2, s1
                  srliw        s0, t6, 3
                  subw         gp, t6, s4
                  divu         a7, s7, t0
                  addiw        s10, s1, 1666
                  srai         s9, s4, 28
                  sub          s6, t4, a4
                  addiw        a0, t0, -2030
                  divw         t4, t4, s0
                  remu         t5, a5, t2
                  or           s10, tp, gp
                  srl          s8, ra, s5
                  sllw         ra, a2, t6
                  remu         a7, s3, a1
                  auipc        t1, 763898
                  divuw        a7, gp, a7
                  mulh         s10, s8, s4
                  divu         a4, sp, t4
                  sltiu        s5, a7, -2005
                  subw         s1, t4, s9
                  sraw         sp, s4, s1
                  slliw        t6, zero, 28
                  sub          s3, s2, a5
                  sraw         t4, s1, s11
                  nop
                  mulh         t4, s11, a0
                  and          t3, gp, s1
                  xori         gp, s1, 1549
                  sltu         s1, s10, s5
                  remuw        a7, t1, s3
                  divw         a2, sp, gp
                  xor          s2, t5, a0
                  xor          s8, s2, t6
                  sllw         a0, t6, s8
                  srli         t1, a7, 31
                  lui          a7, 576243
                  mulhsu       s2, t4, a2
                  mulw         s6, a6, a3
                  sll          a5, ra, s9
                  divuw        s4, s8, a4
                  srlw         zero, t1, a2
                  and          t3, a2, s11
                  slti         a4, t2, -78
                  sll          sp, a2, t1
                  mul          a0, zero, t2
                  xor          a7, s3, a1
                  sraiw        tp, s2, 9
                  mulh         a5, s4, t1
                  andi         a4, t2, 1245
                  rem          a5, a7, t3
                  srl          s3, s5, a6
                  subw         t5, s8, a4
                  sub          a4, a6, s0
                  nop
                  remw         s10, a6, s3
                  sub          s4, t3, tp
                  and          s3, zero, a4
                  andi         zero, a1, 1569
                  add          t0, a5, a4
                  mulh         t6, a1, t5
                  remw         a0, zero, t2
                  srl          s1, s2, s5
                  sub          t4, s1, a7
                  mulh         s1, a3, s11
                  slti         s9, t1, 322
                  andi         t5, a2, 1416
                  or           t6, s10, a2
                  subw         tp, t2, a3
                  sll          s9, s11, s2
                  sraw         t1, sp, sp
                  mulh         zero, t2, s1
                  sll          a7, t5, s0
                  addi         s11, t1, -756
                  mulhu        s2, s9, s0
                  xori         s4, s7, 1387
                  mulhsu       s2, t0, a4
                  srliw        s7, t5, 17
                  sraiw        t6, s8, 7
                  divw         a0, gp, s3
                  remw         t0, t1, a0
                  xori         t1, a1, 1960
                  sraw         s4, s5, tp
                  andi         t1, t5, 1931
                  sllw         t0, s8, s6
                  lui          a2, 359005
                  remw         s11, tp, s6
                  xori         t5, s11, 1342
                  slti         t5, s1, 1950
                  mulh         a0, zero, s5
                  mul          a7, t2, s4
                  slliw        t4, t1, 0
                  sraiw        t1, gp, 13
                  lui          t4, 1000541
                  mulhsu       sp, a6, s5
                  mulw         s10, sp, a6
                  srliw        t5, t5, 27
                  remw         s11, s10, a2
                  remw         tp, a7, zero
                  addi         s10, tp, 235
                  mulw         a2, t2, ra
                  or           t4, sp, t4
                  rem          s2, s0, s0
                  add          s6, a3, a2
                  ori          a7, s9, 1420
                  rem          t1, a2, t3
                  srlw         a0, s3, s7
                  remuw        t0, s7, t1
                  add          s7, zero, t3
                  ori          s6, zero, -1049
                  divuw        a2, s11, t3
                  srliw        s10, t4, 2
                  nop
                  srl          a0, s2, zero
                  sub          a7, t5, a0
                  remu         s5, s6, a6
                  addi         tp, a5, 718
                  mulhu        s9, s6, t3
                  srliw        a5, a0, 6
                  srai         s4, t2, 37
                  andi         zero, t2, -1377
                  srli         s6, a1, 62
                  sub          t1, t2, s0
                  sll          s3, tp, s4
                  or           gp, s9, s7
                  remu         gp, s6, gp
                  remuw        s9, a4, a0
                  rem          s10, a5, ra
                  rem          a4, a3, s6
                  sub          s9, s9, zero
                  sltiu        s3, a5, 907
                  addw         t6, gp, t4
                  srli         zero, t3, 45
                  slli         tp, s7, 6
                  xor          s1, t0, s7
                  srliw        a7, s4, 18
                  mulhsu       t3, s1, a0
                  addw         sp, s3, s11
                  slli         zero, s2, 12
                  div          a4, a6, s10
                  sltiu        s1, a6, -143
                  sltu         gp, s0, s1
                  rem          t3, s1, t2
                  auipc        t4, 687451
                  sltu         a4, a3, s8
                  sra          sp, s11, gp
                  srai         s1, ra, 0
                  slt          t4, s5, s11
                  and          s9, s11, s8
                  lui          t1, 825272
                  xor          t0, a2, s4
                  auipc        s9, 95719
                  sltiu        s11, gp, 1691
                  remuw        a0, s6, t2
                  xori         s5, s9, -879
                  divuw        a2, s4, tp
                  divu         s1, s6, sp
                  mulw         t5, s0, a7
                  sltu         tp, a6, s5
                  mulhsu       a5, s11, sp
                  mul          tp, a7, s5
                  slti         s5, s6, 1402
                  lui          t1, 504140
                  divu         s6, s3, s2
                  slti         s0, a3, 120
                  mulh         a2, a6, s8
                  srliw        t0, s5, 15
                  remu         t4, t5, a2
                  divu         a2, t5, zero
                  divw         a4, s2, a5
                  divuw        s11, gp, a3
                  andi         s7, s1, 1528
                  divu         t6, s3, s8
                  remw         s3, a1, t5
                  mulh         t5, t6, t4
                  mulhu        s1, a1, gp
                  sraw         zero, t6, sp
                  addw         s10, s4, a0
                  slt          t4, tp, s7
                  ori          s2, s9, -540
                  lui          s1, 62417
                  addw         t4, gp, a4
                  add          t1, a7, ra
                  remuw        a7, t4, t6
                  slti         t4, t2, -1186
                  div          t2, t2, t6
                  addw         t2, t5, s7
                  sltu         a7, t2, a5
                  sraw         s9, t0, t6
                  addiw        s0, s6, 1332
                  xori         t2, s9, -1305
                  mulh         s8, s6, s6
                  slt          t6, zero, gp
                  remw         s5, s11, s4
                  or           t6, zero, a6
                  sub          t4, s4, t5
                  remw         s8, t1, s9
                  and          sp, a7, gp
                  addi         t5, s2, 796
                  ori          s11, t4, -1849
                  nop
                  sra          tp, s8, t6
                  slli         s1, s8, 25
                  or           t2, sp, s7
                  rem          t4, s4, a1
                  srl          s5, s1, s5
                  sra          t4, t2, a5
                  slli         s1, a0, 4
                  auipc        a0, 445
                  sub          zero, s8, t5
                  srlw         a4, t3, a2
                  srai         t0, a2, 44
                  div          s2, s11, t5
                  xori         a0, t1, 1284
                  sra          t1, t2, s8
                  xor          gp, a2, s10
                  auipc        t5, 1018392
                  divw         s4, a5, a4
                  auipc        s11, 80448
                  sltiu        s10, s3, 1707
                  lui          t4, 927360
                  remu         sp, s0, a3
                  addiw        a5, s6, -1530
                  rem          s2, s10, t6
                  subw         s11, s0, s10
                  divuw        s0, a3, ra
                  add          t2, t3, t6
                  srli         s11, a1, 15
                  add          s11, a0, s4
                  and          s8, a7, a1
                  andi         gp, a6, 229
                  mul          a5, a0, t0
                  srlw         gp, a0, s10
                  sra          s4, s2, s5
                  slti         a7, a2, 700
                  rem          a4, tp, a4
                  div          s10, a2, s4
                  xor          t4, sp, a6
                  mulw         s6, s0, a4
                  slliw        a5, a6, 21
                  remw         t4, s3, t5
                  slli         s0, t6, 40
                  div          s0, t2, t4
                  xor          zero, tp, s0
                  srliw        a0, s9, 31
                  srai         a0, t2, 17
                  lui          tp, 376573
                  or           a2, s6, s6
                  mulhsu       t0, s3, ra
                  sllw         t5, s11, t3
                  rem          t0, s0, a7
                  slt          s7, s8, s8
                  slti         t3, a7, 1404
                  slliw        s0, s2, 27
                  divuw        a0, zero, s1
                  addw         t2, t6, sp
                  addiw        s4, s2, -823
                  lui          s3, 21707
                  ori          t4, a6, -1780
                  mulhu        s11, sp, a3
                  remw         a2, a7, gp
                  ori          t1, a2, 241
                  sltiu        t0, s9, -237
                  mulh         s11, s9, zero
                  slliw        t2, a2, 7
                  rem          a4, ra, a3
                  slliw        gp, s3, 27
                  mulh         a7, sp, a7
                  srli         a2, s11, 45
                  addw         t6, t4, a4
                  slliw        s5, a2, 20
                  srl          tp, a3, zero
                  srliw        a7, s9, 8
                  slliw        ra, a2, 21
                  and          a2, s4, s8
                  mulhu        a4, a3, zero
                  divu         s0, zero, s9
                  sll          gp, a3, a7
                  addiw        t2, t3, 1031
                  sllw         s1, t1, a0
                  remuw        a0, t6, tp
                  mulhsu       t4, s7, a6
                  divu         zero, s11, s1
                  lui          a2, 395693
                  divw         a0, a5, t5
                  divw         s2, s11, s3
                  addw         s7, s1, s10
                  slti         tp, s3, -229
                  slliw        a4, a1, 14
                  divuw        t1, ra, s6
                  xor          tp, s6, s0
                  slti         sp, ra, -305
                  xor          s6, t0, t3
                  addw         gp, a0, a7
                  remw         s4, s7, zero
                  lui          s3, 1034492
                  srai         s9, t1, 50
                  mulh         a2, t0, ra
                  mulhu        s2, s2, sp
                  andi         s8, a5, 1615
                  and          a0, a1, a7
                  sltiu        t4, a2, -1014
                  srlw         s2, t1, a2
                  sltiu        s6, s11, -728
                  slli         t1, t1, 27
                  or           t4, s0, s6
                  sltu         s9, t0, s2
                  mulhu        s3, t5, a1
                  nop
                  sra          a5, a4, t6
                  slli         s11, ra, 59
                  subw         s2, a3, sp
                  sll          t6, ra, s5
                  remuw        s11, t3, sp
                  lui          s1, 193094
                  remw         t4, a6, s7
                  sltiu        s1, a4, -1199
                  mulw         t1, t3, t1
                  addi         s7, s10, 1342
                  and          gp, a4, tp
                  divuw        s8, t0, s1
                  sub          a7, a6, a4
                  mulw         t1, s1, t5
                  divw         tp, s2, a0
                  andi         t4, t0, -1823
                  divw         s9, s3, s0
                  addiw        s1, t4, 488
                  andi         t1, s9, 373
                  subw         t0, a2, t4
                  ori          s4, t4, 809
                  addiw        s4, s10, -1000
                  mulw         s5, a0, a4
                  slti         a5, s7, 959
                  xor          tp, t6, a2
                  remu         s0, a4, t0
                  addiw        s3, sp, 81
                  subw         a4, t4, s4
                  ori          gp, a4, 1809
                  xor          a0, s8, s10
                  mulhu        t1, s5, a3
                  sllw         s2, t5, t2
                  sraw         t4, a2, t0
                  div          s6, t3, t3
                  xor          t6, t6, t2
                  mulw         a5, s4, s10
                  sraiw        s11, t5, 14
                  ori          zero, a0, 663
                  remuw        a4, a3, s1
                  div          s6, tp, sp
                  or           s8, s7, ra
                  srli         a0, gp, 8
                  mul          a7, a0, s6
                  srlw         s5, t0, zero
                  divu         t4, t2, a0
                  mulw         a5, s6, t1
                  srl          a4, a1, s3
                  srl          a7, t3, a6
                  sraiw        t5, s10, 1
                  rem          s2, s0, a7
                  add          s3, sp, t4
                  slti         s11, a2, -1008
                  addw         t2, ra, t6
                  mulw         s0, s0, t4
                  sub          s5, a4, a7
                  srl          s5, s2, sp
                  srlw         t6, t3, tp
                  slliw        s2, t6, 0
                  add          a4, sp, sp
                  sub          a2, s4, a3
                  sra          t5, a4, t4
                  sll          zero, s11, a3
                  auipc        t5, 35875
                  srli         s0, t2, 18
                  add          a7, tp, t3
                  addi         ra, tp, -1524
                  sraiw        gp, t1, 15
                  srl          s8, tp, t1
                  addi         s2, s0, -1056
                  srl          s5, t4, a7
                  mulhu        a0, a2, t5
                  sra          s1, t3, a7
                  mulw         s3, a3, s0
                  divw         tp, a6, s9
                  sra          s9, s3, s4
                  lui          t0, 75789
                  or           s11, a4, t3
                  slti         a0, a2, -1296
                  sltu         s6, a2, s1
                  addw         a5, s1, t0
                  slt          s1, a1, tp
                  nop
                  divu         a0, a0, s3
                  slli         t3, s8, 62
                  sub          s9, sp, t2
                  and          s1, t4, ra
                  nop
                  mulhu        a4, s9, s9
                  slliw        s5, s0, 7
                  slliw        t5, t5, 30
                  addw         t3, zero, s1
                  sra          s3, sp, tp
                  mulhu        s7, a4, s4
                  addiw        t0, a2, 516
                  slt          t3, sp, t5
                  div          gp, s4, t6
                  srl          s2, a7, t5
                  sraw         sp, t2, gp
                  slt          t6, s1, gp
                  srlw         t0, s1, t5
                  mulhu        tp, zero, s1
                  slliw        a2, a1, 8
                  sltiu        a5, s7, 415
                  remw         a2, t4, a1
                  sllw         t6, t0, s3
                  sllw         t4, a3, sp
                  mulw         a7, a5, a6
                  div          gp, s6, s7
                  mulw         t3, zero, zero
                  sll          a2, s5, t2
                  slliw        s1, t2, 18
                  mulhu        s10, t5, a1
                  srlw         s10, t5, s9
                  slliw        t2, t6, 2
                  div          s6, s11, s9
                  mulh         ra, a3, a6
                  slti         s8, s5, -645
                  lui          sp, 974255
                  divw         ra, t5, gp
                  srlw         ra, t3, ra
                  or           s10, s9, t5
                  sltu         s5, s1, tp
                  divuw        s8, t0, ra
                  remw         a0, t4, s7
                  sllw         ra, t1, s1
                  lui          s1, 749817
                  mulw         s2, t2, s2
                  sltiu        t4, t4, 71
                  slti         t1, a4, -1198
                  xor          s7, t6, s9
                  subw         s6, s11, t4
                  mulw         t6, s11, s3
                  srliw        t1, a4, 11
                  and          ra, t2, s3
                  remu         s0, sp, a3
                  srl          tp, a2, a7
                  mul          t2, t1, t1
                  srai         s7, sp, 16
                  add          a4, a7, a0
                  slt          t3, s11, sp
                  mulhu        s11, ra, t3
                  slliw        s8, a2, 9
                  remu         a0, gp, s5
                  divuw        gp, t2, s8
                  srliw        tp, t1, 26
                  mulhu        s3, t4, s4
                  andi         a5, s4, -756
                  mul          a4, t5, zero
                  mulw         s5, a0, t1
                  div          a4, a0, tp
                  remw         s8, s6, s11
                  remuw        s3, sp, s4
                  srai         s5, s1, 36
                  addi         tp, s6, -177
                  ori          ra, s2, 561
                  slli         a2, a2, 51
                  sll          zero, sp, s5
                  ori          s1, s1, -222
                  mulw         t6, s1, t1
                  srliw        t6, a6, 7
                  sra          s5, a2, s2
                  sub          t0, t1, s5
                  rem          a2, t6, s1
                  remu         s2, t4, s5
                  or           t1, a1, a6
                  add          s6, sp, t2
                  remu         s3, s4, t5
                  div          s4, a4, a0
                  lui          s10, 378468
                  addiw        s1, a7, 787
                  xori         t5, t4, 445
                  srl          tp, t2, s3
                  or           sp, s2, t5
                  mulw         s8, t2, s10
                  mulhsu       s5, s7, s4
                  sraiw        s2, t5, 16
                  divuw        s0, s10, s6
                  ori          s9, a2, -870
                  mulhsu       t5, a6, ra
                  srai         ra, t6, 63
                  remw         sp, t0, s4
                  srlw         s2, tp, t3
                  andi         s1, a1, -282
                  srlw         s7, a7, a2
                  divw         t1, t1, s10
                  srai         gp, s11, 21
                  andi         s0, s4, 1113
                  div          t6, s11, gp
                  mulh         sp, a3, t2
                  xori         s2, s11, -586
                  mulh         t5, a4, a4
                  addw         t2, t6, s0
                  subw         ra, t3, t1
                  xor          tp, ra, a4
                  ori          a7, s9, 1959
                  mulh         s2, a5, s10
                  sra          sp, a7, s4
                  nop
                  xor          a4, a2, s3
                  sra          a4, a7, a7
                  srl          t0, a2, a0
                  slti         t1, s11, -1095
                  lui          a5, 364564
                  addw         s8, s7, t6
                  divuw        s2, s0, gp
                  mulh         gp, s9, s1
                  srliw        s6, s9, 7
                  divw         s2, s10, s8
                  add          t5, a6, t6
                  srlw         s6, sp, s9
                  subw         t1, a1, s3
                  sraw         s5, t2, a0
                  mulhsu       gp, tp, s8
                  sraiw        s2, t5, 24
                  srli         s3, a6, 11
                  add          a7, ra, t1
                  ori          gp, tp, 1897
                  addi         s2, a6, -187
                  auipc        a7, 1024694
                  and          a7, s4, s5
                  sllw         s1, a2, a7
                  sraiw        zero, a4, 26
                  andi         s4, s10, -887
                  remuw        s10, s5, s8
                  remw         t3, s4, sp
                  srai         s11, t1, 45
                  add          s0, s10, a4
                  auipc        t0, 301646
                  div          a7, t3, s10
                  sltu         tp, a6, a3
                  or           t2, t3, gp
                  sraw         gp, a5, t1
                  mulhu        a2, a2, a6
                  remuw        sp, s0, t2
                  srai         s8, t0, 13
                  sltu         t3, t2, s4
                  sllw         tp, a5, t6
                  slliw        s1, s11, 10
                  srliw        s8, t5, 11
                  sra          s2, s4, s0
                  xor          zero, s4, gp
                  divuw        tp, s3, a2
                  remu         ra, t2, zero
                  and          t3, a7, s0
                  add          s2, t2, s6
                  sltu         a0, t0, t5
                  slti         t1, s7, -1447
                  remuw        a5, t6, a0
                  srl          s7, s2, s9
                  mulhu        a2, s7, gp
                  remw         tp, s3, t1
                  srlw         t0, s5, t4
                  ori          t4, gp, 908
                  divu         s5, s7, s7
                  mulw         zero, a6, ra
                  subw         a7, t5, a7
                  divu         s5, a0, ra
                  mulh         t3, s10, s8
                  mulhsu       ra, ra, a3
                  sraiw        s3, s11, 0
                  addw         s8, a0, s1
                  slli         t2, zero, 12
                  slti         s7, s4, -1382
                  addi         s5, s3, -62
                  add          s10, s11, a7
                  srlw         a5, ra, s4
                  add          s7, s1, t1
                  nop
                  rem          s8, s1, t3
                  remuw        a7, a2, t6
                  sraiw        s8, s7, 19
                  mulh         t0, t4, a7
                  nop
                  divuw        s1, s0, gp
                  sra          s1, a6, a6
                  remu         s9, a1, t2
                  subw         a2, a1, s9
                  lui          zero, 358752
                  ori          a7, s1, -1330
                  slt          t3, a0, a7
                  addi         s7, s3, -1148
                  slliw        s1, s5, 22
                  add          a5, s5, t3
                  slli         t1, t1, 30
                  sllw         a7, s6, s7
                  addw         s1, t0, t5
                  ori          s6, t5, 1966
                  lui          t3, 724191
                  subw         t1, a1, s6
                  srlw         s1, s8, s11
                  andi         a2, tp, -1005
                  slti         a4, t2, 1865
                  mul          s2, s0, s8
                  add          a2, s11, t3
                  xor          a7, a7, s11
                  or           s2, t2, s11
                  sltiu        a2, ra, -1936
                  srai         s3, s8, 48
                  srlw         s4, t1, ra
                  andi         s7, t3, -1543
                  srliw        gp, s8, 22
                  div          s7, t5, a2
                  srl          a5, a6, s2
                  slt          s1, s5, s9
                  srl          a0, t4, s5
                  remu         s1, a7, t6
                  srai         s5, s0, 54
                  or           t2, t6, t2
                  slliw        t5, s2, 17
                  addw         t6, s1, t3
                  divuw        a0, a1, ra
                  srli         a5, s9, 26
                  mulw         s11, t3, t2
                  sra          s6, a0, a6
                  remw         s2, sp, a2
                  slli         t0, ra, 7
                  slli         s8, sp, 59
                  sraw         s8, s1, t3
                  divuw        s4, t3, tp
                  slliw        a7, s9, 6
                  divuw        s5, sp, s3
                  nop
                  rem          a5, t4, gp
                  sllw         s6, s6, ra
                  add          s11, tp, t6
                  and          s3, s4, a2
                  sllw         a4, sp, s2
                  div          a4, a3, a1
                  addw         s9, a7, sp
                  ori          a7, s6, -1973
                  subw         s4, t6, a1
                  div          zero, a7, a1
                  slliw        zero, gp, 24
                  divu         s1, t1, a1
                  sltiu        t0, s5, 234
                  remw         s11, s1, s11
                  and          s8, a2, a6
                  mulhu        t0, t0, sp
                  mulh         sp, t0, a7
                  slliw        s7, t4, 27
                  srli         s0, a7, 36
                  sltiu        sp, ra, 1910
                  sll          a5, s8, s5
                  ori          t2, s5, 1179
                  add          s1, s8, t0
                  div          s11, s3, ra
                  or           zero, t0, a6
                  nop
                  lui          s11, 367675
                  slli         t6, s4, 13
                  div          s7, a0, t3
                  slti         s3, s5, 182
                  sllw         s3, t3, a2
                  mulw         zero, s1, a1
                  sllw         s7, tp, s8
                  divw         s10, t5, s6
                  auipc        s0, 616461
                  mulhu        sp, a0, t2
                  sraw         t0, a3, a3
                  srli         s8, t3, 48
                  rem          s4, gp, sp
                  mulhsu       a4, zero, s11
                  or           t4, a0, t3
                  srai         a2, s8, 39
                  srai         t4, t5, 13
                  sraiw        t5, gp, 23
                  slti         t3, tp, 81
                  slliw        s7, s3, 19
                  mul          s6, a7, ra
                  sllw         s2, s7, s10
                  ori          t1, s2, 385
                  divuw        gp, a2, s0
                  slt          a5, a6, t4
                  mulhu        t0, s5, s4
                  mul          s0, zero, zero
                  add          s9, t1, ra
                  sraw         s6, tp, t4
                  remu         t5, s9, t3
                  srl          ra, s3, a1
                  remuw        t4, t3, a7
                  divw         s7, t0, s7
                  nop
                  slti         s6, a0, 321
                  addw         a2, zero, gp
                  auipc        s6, 754066
                  auipc        s6, 488256
                  addiw        sp, s3, 734
                  remu         a4, t1, a5
                  srl          a0, a3, ra
                  sltu         s6, s4, a6
                  or           t1, a6, a0
                  sraw         a0, s9, a7
                  div          s10, zero, a6
                  srliw        t3, s6, 10
                  mulh         s7, s6, a1
                  mul          s7, s2, s11
                  sll          a5, a0, s7
                  sub          s6, t5, a0
                  nop
                  remu         s11, s0, a1
                  sraiw        s1, t0, 8
                  sraw         s9, s2, a4
                  srli         a5, t3, 51
                  mulhu        s7, gp, t3
                  rem          s10, s7, s5
                  sltu         s9, s9, t0
                  remw         s2, s9, a0
                  xor          a0, t4, tp
                  auipc        t5, 980225
                  xor          s6, a1, s0
                  mulh         t3, tp, s10
                  subw         s4, t2, s9
                  sllw         a2, s3, sp
                  addi         a5, zero, 821
                  remu         a4, s8, s0
                  add          s4, s7, s10
                  rem          tp, s6, s2
                  divw         s8, ra, s4
                  mulhsu       t4, s11, s3
                  sub          a2, gp, a6
                  divw         s6, t3, s5
                  sllw         s4, s3, a6
                  divuw        t2, s5, t0
                  srliw        s7, sp, 16
                  sltu         s5, a2, s10
                  addi         t5, t1, 850
                  auipc        a5, 222066
                  or           s2, t3, a6
                  slti         s5, ra, -1498
                  mulhu        a0, sp, tp
                  slt          zero, a3, t1
                  ori          a7, a3, -1876
                  div          ra, s3, a4
                  slti         a2, ra, 87
                  mulhsu       a7, tp, tp
                  mulw         a7, s9, t0
                  mulhsu       a2, s0, t3
                  sltu         t3, a7, s9
                  mulhu        a5, s10, t3
                  rem          t6, s1, s7
                  xor          s1, s9, s1
                  slliw        t4, a2, 29
                  sltiu        s4, s0, 1282
                  or           s6, a2, a5
                  andi         s8, sp, 1537
                  srliw        a7, s8, 23
                  mul          t0, s5, gp
                  sra          s0, a7, a0
                  nop
                  mulhu        t0, a6, sp
                  sraw         s7, s6, t1
                  slliw        a5, a6, 2
                  ori          a7, a3, 1920
                  sltu         a4, s7, s5
                  ori          s11, s8, 321
                  or           t0, s11, t0
                  remuw        t4, t6, s9
                  mulw         zero, s7, s0
                  sra          tp, s7, t6
                  slliw        a7, a4, 12
                  andi         sp, a3, -1190
                  sub          ra, a6, s4
                  auipc        t1, 984382
                  srlw         s0, a2, s9
                  mul          s7, a0, t0
                  sllw         a4, t5, a0
                  and          t5, zero, a0
                  or           zero, ra, s7
                  sub          s1, gp, a6
                  srai         a5, t1, 23
                  sraiw        s6, a7, 30
                  or           gp, a0, a4
                  mul          t2, ra, s10
                  mulh         a7, ra, s8
                  mulhu        s8, s8, a7
                  divw         gp, s4, s3
                  addiw        a0, t4, -597
                  xori         t3, a2, 632
                  mulhsu       tp, s11, s4
                  srai         s1, s8, 50
                  srl          s1, t1, t2
                  mulhu        a2, t6, t6
                  addi         s2, t4, -666
                  and          s9, t0, a6
                  mulw         tp, a7, tp
                  sll          s2, s2, tp
                  lui          s7, 38294
                  divu         zero, a6, sp
                  mulw         s0, s11, a7
                  andi         s5, s6, 402
                  mulw         s5, s2, sp
                  sllw         s7, t5, a4
                  mulw         s7, s6, s10
                  nop
                  add          a7, a4, zero
                  or           t6, a5, zero
                  xor          t2, s4, sp
                  or           sp, a0, t4
                  mulhu        t5, s8, s8
                  slti         s2, s11, 0
                  srli         t2, a5, 18
                  addiw        a4, t6, 1412
                  xori         t6, sp, -291
                  auipc        t4, 871325
                  slt          s2, s9, a2
                  sltu         s9, a4, s7
                  slt          zero, s8, t6
                  slt          t3, t0, sp
                  remw         gp, a1, t6
                  div          a2, t1, sp
                  sltu         s0, zero, s9
                  remuw        t0, a2, s9
                  divuw        a5, s9, s3
                  sltu         s10, a6, a0
                  addi         s3, sp, -1193
                  div          s5, a0, s7
                  srai         t4, t6, 32
                  lui          s8, 74884
                  divuw        t3, t1, ra
                  mulhsu       ra, s10, a5
                  srli         t1, s6, 3
                  sra          s0, s5, a3
                  srlw         tp, a2, s11
                  div          t2, s9, ra
                  remu         t2, a7, s7
                  nop
                  slliw        s6, ra, 12
                  nop
                  mulh         tp, a2, t5
                  add          t5, t3, a1
                  or           s9, t3, t0
                  add          s6, s9, s6
                  sraw         t6, zero, t5
                  div          t2, t2, s8
                  slt          s11, a3, s8
                  mul          s2, s7, a0
                  divuw        t4, a5, s3
                  srlw         s7, tp, s9
                  slliw        a0, s8, 4
                  srlw         s6, a0, a4
                  srl          a2, a2, a2
                  sllw         s2, t1, s9
                  add          s2, s4, ra
                  srlw         t2, zero, s3
                  or           a0, s8, t3
                  srl          zero, s6, s5
                  auipc        s10, 783184
                  remw         t6, s5, s6
                  sllw         s2, a1, ra
                  sub          s5, tp, s1
                  srliw        s8, s6, 3
                  srai         ra, a3, 17
                  rem          gp, a6, t0
                  xor          s10, t1, gp
                  remu         s8, t6, ra
                  addw         s5, s7, ra
                  divuw        s9, s9, s11
                  addiw        a5, s5, -382
                  sltiu        a7, a0, -509
                  srli         s4, s4, 44
                  remuw        t0, t0, a7
                  and          a2, a2, t3
                  srli         a5, a1, 10
                  div          zero, t3, a5
                  xor          a0, ra, s6
                  slti         s8, t0, -1330
                  srai         s8, s1, 26
                  slt          tp, sp, a0
                  sltiu        sp, s11, -873
                  and          a7, s11, t1
                  remuw        t2, t3, t6
                  sll          gp, t3, a4
                  and          s10, s0, a1
                  srliw        s4, s11, 11
                  srliw        a2, t3, 0
                  div          a7, a7, s0
                  mul          s9, s8, s10
                  remw         ra, a1, gp
                  addw         tp, s5, a1
                  sltu         t0, t2, a3
                  sraiw        gp, a7, 11
                  sll          t4, s1, t5
                  ori          t6, s9, -1689
                  andi         t5, t0, -1724
                  srai         s5, a0, 53
                  rem          ra, t1, s0
                  sltu         a2, t4, t0
                  srai         s10, s10, 62
                  srlw         s2, t2, a7
                  sra          t2, t2, a1
                  srliw        t4, s6, 6
                  divuw        a7, t1, a7
                  xor          s6, s3, gp
                  mulh         t6, tp, s11
                  mulh         t0, s0, s4
                  remw         s5, a0, t3
                  addw         t3, s2, s6
                  mulhsu       a5, a4, s0
                  sll          a5, t3, s11
                  addiw        s11, a4, 659
                  remw         a2, sp, s10
                  sltiu        t4, a5, -911
                  sraw         s5, t3, gp
                  remu         a7, s1, s0
                  div          s10, t0, a0
                  sraiw        t5, t6, 28
                  srliw        zero, a7, 5
                  slti         s6, t2, -1069
                  remuw        a0, a6, ra
                  sllw         t0, sp, s6
                  remu         s3, t0, a3
                  or           t4, t6, a0
                  srliw        s7, sp, 8
                  slliw        a5, ra, 11
                  sra          a0, s8, gp
                  mul          gp, s0, t0
                  addw         zero, s3, s8
                  srai         s11, a2, 1
                  ori          s11, t2, 712
                  slti         t1, s6, -1175
                  sub          t2, s10, a3
                  sltiu        zero, zero, 442
                  nop
                  remuw        s9, s0, t3
                  slli         a2, a6, 63
                  divuw        s8, a3, a4
                  sltu         t1, t3, s0
                  slt          a5, t0, s7
                  andi         a7, t3, -171
                  remu         s10, s6, t3
                  addw         tp, a7, a1
                  remw         a5, t2, a3
                  or           a5, a5, s1
                  divu         t0, t2, s3
                  sub          zero, t3, tp
                  srl          a2, a2, s2
                  sltu         s0, a4, s8
                  remu         s4, s3, t0
                  sraw         s6, t0, s5
                  mulhu        s2, s9, ra
                  slti         s0, a2, 1694
                  srli         s8, s6, 62
                  sra          a7, zero, sp
                  remw         t4, sp, s0
                  addi         gp, t4, -1313
                  auipc        s1, 327351
                  mul          s9, a7, a7
                  rem          s10, a2, a3
                  srli         a4, tp, 57
                  nop
                  lui          s0, 739664
                  sra          s11, s10, t3
                  divu         a5, s5, t2
                  slti         a5, s0, 1344
                  sub          s8, a1, zero
                  sraw         t5, a4, s11
                  srli         a7, s3, 34
                  slt          zero, a7, zero
                  slt          t4, ra, a0
                  nop
                  srl          a4, a4, s10
                  subw         a5, s2, a1
                  nop
                  ori          s4, sp, -1166
                  slt          sp, a6, sp
                  srai         t6, s9, 33
                  div          s3, s2, s5
                  nop
                  xor          s7, s9, s3
                  sll          t2, s4, zero
                  remu         t4, t4, sp
                  andi         t4, t6, 41
                  srl          sp, gp, s2
                  sllw         t3, s7, s2
                  slliw        s6, a3, 12
                  div          s4, s1, a6
                  sltiu        a4, ra, 640
                  sllw         t3, a0, t3
                  divuw        t2, s2, a0
                  sll          a2, t3, gp
                  subw         s11, s9, t5
                  or           a0, gp, s8
                  divw         s9, sp, t1
                  and          s11, a5, s2
                  andi         zero, t5, 926
                  addi         s6, s9, -1208
                  srli         sp, s0, 6
                  srli         tp, s5, 10
                  rem          t1, a1, s2
                  divu         tp, s3, s11
                  srai         t4, s8, 3
                  subw         s1, t2, t0
                  mulw         a7, s8, gp
                  mulh         t0, s1, s5
                  srai         s10, t5, 1
                  auipc        tp, 655982
                  remu         ra, a6, a1
                  sraiw        s4, a5, 27
                  slli         s8, s1, 37
                  mulw         s0, a2, t1
                  sraiw        a2, t5, 18
                  sltiu        s2, s10, -1182
                  add          t1, sp, s5
                  srliw        s2, t1, 14
                  sll          s5, s5, s2
                  mulhsu       s1, t4, s8
                  ori          s11, s1, 683
                  mul          s10, a1, a1
                  auipc        a7, 1033479
                  mulw         s8, s0, s8
                  mul          s10, s1, a0
                  slt          s7, t4, ra
                  sltu         t2, t5, t5
                  sltu         a7, s8, s5
                  or           s10, t2, a5
                  subw         t5, ra, a3
                  and          a4, s9, s1
                  sltiu        tp, a0, 1831
                  mulhu        s6, t2, s3
                  lui          a2, 272962
                  sll          s2, a0, a3
                  sraiw        a0, t1, 21
                  mul          s5, t2, s9
                  xori         t1, a0, 774
                  nop
                  srai         a2, a2, 31
                  mulhsu       gp, s5, tp
                  mul          t3, t1, a4
                  addiw        s4, t1, 332
                  xori         s9, sp, 543
                  srlw         a2, t6, s0
                  sraiw        t0, s4, 24
                  remuw        s9, a7, s0
                  slti         s7, s10, 1358
                  slli         a7, s9, 14
                  nop
                  nop
                  auipc        ra, 268820
                  addw         a4, a7, a7
                  lui          s0, 66819
                  subw         a2, t1, s2
                  sra          t4, tp, a6
                  slli         s6, a1, 36
                  sraw         a0, t2, a6
                  srai         a4, gp, 23
                  mulhsu       s11, s9, a3
                  sll          s3, a1, a3
                  divuw        a5, a7, a6
                  xor          a5, s9, s11
                  sltiu        s1, a2, 1292
                  slli         s3, a3, 15
                  sltiu        t0, a0, -420
                  ori          s8, s2, -1092
                  divw         a5, ra, a0
                  mulw         a0, a7, zero
                  slli         t6, a5, 12
                  remu         t0, t3, s9
                  sltu         t5, s3, t5
                  slt          a7, t5, s4
                  div          t3, a0, s2
                  divw         s8, t5, sp
                  sltu         s3, a3, zero
                  sub          t5, a5, t6
                  slli         s4, t5, 15
                  rem          t6, t4, s2
                  srlw         s10, a0, a6
                  sraiw        ra, t0, 27
                  slt          ra, t2, s2
                  divu         s3, a3, t1
                  sltu         zero, s8, ra
                  slti         a4, a1, -1460
                  andi         s8, ra, -35
                  addiw        t3, a3, -1021
                  mulh         a7, t4, a7
                  mul          s2, ra, t5
                  sra          a4, a1, s8
                  remw         a5, s6, s6
                  auipc        t6, 273490
                  srliw        tp, a1, 21
                  xori         zero, a5, 43
                  mulhu        s0, gp, a6
                  sll          t5, a0, a1
                  srli         t6, s1, 1
                  div          a2, t1, s8
                  xor          s6, t4, gp
                  slliw        t3, t0, 4
                  divw         t0, s3, a6
                  xor          a7, s3, s1
                  sub          zero, a0, t1
                  remw         s1, zero, a0
                  divuw        s2, t5, s9
                  sll          zero, t2, t5
                  or           s4, s1, s3
                  sra          s6, t2, s7
                  mulw         a5, a4, a7
                  srlw         t5, s11, a6
                  mulhsu       s5, sp, t0
                  remu         s1, s3, s8
                  remw         s1, a6, t5
                  slti         a4, t5, 1968
                  divuw        t2, s3, ra
                  mulhsu       s3, s0, s6
                  andi         t1, a4, -1036
                  remw         s3, s11, s4
                  mulw         s11, t5, a1
                  srliw        s3, t1, 8
                  sraw         s8, s4, s0
                  or           t6, s5, s1
                  subw         a7, gp, ra
                  addiw        a7, t2, -1254
                  slli         a4, s2, 40
                  ori          s4, s8, -1391
                  slli         t3, s8, 10
                  divu         s11, s3, a5
                  srliw        a7, a7, 13
                  sra          a2, a6, a2
                  slli         t2, t1, 32
                  xor          t3, s8, tp
                  xor          s4, s1, zero
                  divw         s1, s8, ra
                  sltiu        t2, s5, -1058
                  mulhu        s2, s4, s10
                  sraiw        s5, s4, 14
                  addiw        gp, s1, -404
                  addi         s3, zero, 792
                  xori         s6, zero, 1855
                  sltu         tp, s11, t0
                  mul          s9, t6, a2
                  xori         s1, gp, 137
                  slliw        gp, s8, 28
                  nop
                  sltiu        t1, a5, -341
                  addw         s2, s6, ra
                  mulh         tp, t3, a6
                  auipc        s9, 555727
                  sllw         tp, a7, t3
                  and          s8, a2, s1
                  slt          s7, sp, t4
                  andi         s6, s10, -182
                  or           t0, sp, t5
                  mulw         a5, t2, t2
                  srliw        s6, t2, 1
                  sub          s6, zero, s10
                  addw         s3, s10, a0
                  sraw         s1, s0, ra
                  sltu         t4, a0, t2
                  sllw         t1, t4, t5
                  mulhu        s10, gp, t1
                  sltiu        t5, s5, 491
                  rem          t3, t3, zero
                  sra          s4, s4, s3
                  mul          tp, s2, s9
                  remu         s9, s8, s7
                  subw         s5, s6, a4
                  slli         ra, ra, 47
                  sll          t4, s10, s0
                  srliw        t5, s9, 21
                  xori         s11, s11, 1630
                  mulhu        s0, s7, s1
                  mulhu        s3, a4, t1
                  lui          gp, 392102
                  divw         zero, s4, t6
                  mulhu        s1, a6, a5
                  add          s8, sp, s7
                  mulw         a0, s4, s9
                  add          s5, s2, tp
                  divw         s11, t5, t5
                  xor          t0, zero, s1
                  slliw        s0, s8, 11
                  mul          a2, s2, t2
                  sra          t3, s5, tp
                  divuw        s0, gp, sp
                  subw         a7, s10, t2
                  addi         t2, t2, 1358
                  sltu         a4, t2, zero
                  or           s11, a5, s11
                  remu         s9, t0, t5
                  mulw         a0, a1, tp
                  slliw        s0, tp, 17
                  slt          s3, t2, t0
                  sra          t1, s2, a0
                  ori          s0, ra, -1484
                  remw         ra, a4, s3
                  srlw         s7, s5, a7
                  rem          a2, t2, zero
                  or           s6, ra, s8
                  srliw        s3, tp, 16
                  sltu         s11, a7, a1
                  ori          t5, a6, -88
                  srliw        a0, a7, 9
                  srai         t4, t6, 5
                  addiw        a0, gp, 961
                  sub          a4, ra, t6
                  srliw        t1, t2, 6
                  srlw         t2, zero, s9
                  sltu         a4, s10, gp
                  xor          t4, s9, a1
                  sub          s0, s2, s5
                  divu         t5, s4, a5
                  remuw        gp, gp, s5
                  sltiu        a2, t2, -1750
                  sra          s4, s11, t0
                  ori          s8, s0, -993
                  xori         a2, t0, -541
                  srai         s5, s0, 7
                  srl          s7, s9, t2
                  mulh         t6, gp, s0
                  slti         s11, s5, -1702
                  and          sp, t6, t5
                  srai         t2, s1, 54
                  srai         t0, t6, 63
                  div          s10, a3, a5
                  subw         a4, s0, a2
                  slti         s7, s4, -1214
                  sraiw        s7, a3, 16
                  slt          t6, s0, a6
                  lui          s3, 20
                  srliw        a0, s3, 9
                  mul          a4, s2, s6
                  sub          t2, s8, s3
                  srli         tp, s9, 58
                  sllw         a0, a1, s4
                  divu         s5, sp, t5
                  addiw        s10, t6, 980
                  slli         s7, sp, 49
                  nop
                  sra          s10, s1, a4
                  nop
                  xor          s1, t1, s4
                  mul          s11, a7, s8
                  slliw        a7, gp, 17
                  ori          s2, sp, -1904
                  slti         t5, t2, -730
                  remw         s8, s9, t4
                  srliw        t1, s10, 5
                  srli         t3, t2, 30
                  remw         t2, a0, t2
                  remw         a7, s8, a4
                  addi         t1, t0, -622
                  slt          gp, a0, t6
                  remw         s10, a1, s10
                  mulhsu       s0, sp, s1
                  lui          s8, 101177
                  remw         s10, s8, s8
                  and          a0, s2, s7
                  and          s5, a4, gp
                  addw         s3, s9, s5
                  auipc        t2, 14135
                  sra          s4, t5, a0
                  slti         a2, s1, 430
                  slliw        s10, t3, 31
                  sraw         a7, s0, gp
                  or           a4, tp, s10
                  mulhsu       s2, t6, s1
                  divuw        s2, s10, t3
                  div          s4, a5, a4
                  divw         sp, s11, s7
                  mulhsu       s3, a7, s8
                  xori         s11, s0, -1655
                  remuw        a4, sp, s9
                  ori          s2, a4, -257
                  sra          zero, zero, t3
                  slli         s3, a2, 38
                  sll          gp, t3, a0
                  addiw        a7, s10, 538
                  mulw         ra, s7, a7
                  srlw         t4, s0, s6
                  sraiw        s2, s6, 6
                  srai         t6, s9, 35
                  nop
                  sll          t2, a7, t4
                  mul          a5, zero, t4
                  or           s10, s3, t6
                  mulh         s4, s11, t6
                  lui          s5, 657152
                  divw         a2, t1, s3
                  sub          a2, s7, zero
                  div          s2, s2, a2
                  or           a5, s7, t0
                  ori          a4, a2, 138
                  rem          s8, s2, s10
                  mulhu        t4, a3, s11
                  mul          a4, ra, a5
                  xori         s8, a3, 1638
                  remuw        s3, s9, s5
                  remuw        ra, s10, a1
                  srl          s1, zero, a4
                  mul          t1, t0, a7
                  sraw         t6, t2, t6
                  slt          t0, zero, a7
                  slli         s7, a5, 29
                  remu         a0, a7, a3
                  remuw        t6, a0, s1
                  or           a2, s6, gp
                  srl          zero, t0, s4
                  lui          s5, 942917
                  srl          s8, t0, s9
                  mulhsu       s2, s2, s7
                  remw         t0, s0, t0
                  sllw         zero, s2, s11
                  slti         s5, s6, 2030
                  slti         t5, t2, -346
                  srl          s6, t5, s11
                  sll          sp, t3, t2
                  srai         zero, s3, 27
                  sll          zero, gp, a4
                  addw         t3, s5, a6
                  sra          s3, s1, s10
                  ori          a0, a4, 1691
                  srlw         s4, t0, t1
                  mulhu        t1, s11, s2
                  slti         t0, a4, 1876
                  srli         zero, t6, 28
                  sra          a7, s6, sp
                  srli         gp, s4, 24
                  srliw        a5, s9, 28
                  srl          s7, s0, s0
                  andi         t6, a3, -1284
                  mulhu        s11, s1, ra
                  srliw        sp, a4, 5
                  mulhu        s5, s5, t5
                  slli         s5, a0, 13
                  andi         s4, t1, 1197
                  mul          t5, s3, a7
                  sraw         s10, s11, s0
                  addw         s0, s3, t6
                  ori          t5, s10, -1801
                  sltu         s2, a7, a4
                  ori          t0, a5, 733
                  xori         ra, t4, -539
                  xori         s3, s8, -355
                  slliw        s6, s11, 12
                  add          s0, s10, t1
                  sll          a4, t1, s5
                  remuw        s8, s11, s11
                  srli         tp, a6, 26
                  addi         tp, a1, 600
                  slli         s8, s7, 34
                  mul          a4, a4, t6
                  mulw         t4, t5, s3
                  divuw        sp, s3, a3
                  addi         a5, t3, 17
                  slt          t4, a3, s5
                  sltiu        s4, s9, 804
                  sra          a5, a6, s9
                  sra          t2, s8, sp
                  nop
                  xori         sp, a4, 64
                  sll          s1, gp, ra
                  slliw        ra, a4, 12
                  addi         gp, s3, 1721
                  andi         t1, s1, -1114
                  mul          s8, s6, s6
                  srliw        t0, a6, 15
                  add          s2, a3, s2
                  sra          t5, a6, s10
                  sra          t6, s8, a6
                  divw         t2, t6, tp
                  slt          t1, s3, s1
                  addiw        s1, s8, 108
                  remw         s2, t6, s8
                  srl          s11, tp, a5
                  divw         t0, s11, s10
                  slliw        s7, sp, 1
                  divuw        t2, a0, tp
                  sltu         s1, s1, ra
                  sra          a5, s11, a3
                  xor          a5, s3, tp
                  addi         s7, t4, -35
                  lui          a5, 540470
                  addi         t2, a2, -1213
                  srli         zero, a5, 37
                  srl          t5, a2, s11
                  addw         t4, a5, s1
                  srai         t3, t2, 19
                  srli         s2, t6, 62
                  mulh         s2, t4, a1
                  addiw        a4, sp, 899
                  mulw         s4, tp, s7
                  sll          s11, a4, a5
                  andi         a0, s2, -1925
                  srai         s1, a3, 58
                  sll          s4, t0, sp
                  andi         s2, a7, 646
                  addw         t5, s0, s8
                  divu         s1, s8, a7
                  slti         tp, s0, 1605
                  sraw         t6, a1, s10
                  remw         s4, a7, s7
                  srai         s3, ra, 39
                  xori         s9, s5, 993
                  subw         tp, a2, s0
                  divu         s9, gp, t5
                  or           t6, a1, t3
                  xor          s2, t1, tp
                  mulhu        a7, t0, a6
                  mulh         s4, zero, a0
                  slt          ra, s4, a1
                  div          s8, tp, s4
                  addi         tp, a1, -26
                  sllw         s2, zero, a0
                  mulh         a5, t0, t6
                  remw         t0, s4, s4
                  slli         s11, s11, 35
                  sllw         a4, a5, a3
                  sra          s1, sp, ra
                  sltu         t4, t3, tp
                  srliw        s5, s3, 23
                  remu         t2, s2, s1
                  srliw        s8, a7, 18
                  nop
                  divuw        s11, s11, a3
                  and          t6, s10, sp
                  auipc        s0, 127363
                  srl          sp, s2, t4
                  slt          t4, t3, a2
                  divuw        s7, t6, a5
                  mulw         tp, s4, s8
                  srai         a4, s6, 8
                  sltu         s4, a3, sp
                  slli         s11, t2, 49
                  sub          a0, s4, s0
                  sltiu        a7, t1, -1954
                  addi         s11, t3, -133
                  addi         s8, ra, -1114
                  divw         s11, s11, s8
                  andi         t6, tp, 1728
                  divu         t0, a3, sp
                  addiw        gp, s9, -1959
                  rem          a0, a2, s4
                  slt          s1, s9, s11
                  addiw        sp, a6, 36
                  xori         sp, s5, -1498
                  divu         s1, s3, s10
                  addiw        s7, s11, -594
                  subw         a4, s5, a0
                  subw         t3, tp, s0
                  slt          a4, s1, a4
                  sub          a5, a6, a0
                  sraw         a0, gp, s6
                  srlw         s10, a1, a3
                  remw         t3, t5, a7
                  sraw         s7, t1, s8
                  slliw        sp, a4, 9
                  sra          a5, s2, ra
                  xori         s4, t4, 360
                  addiw        s9, s6, 126
                  add          s8, a1, s2
                  or           s6, s11, a7
                  mulhsu       t1, s4, t2
                  nop
                  sll          a2, a5, a3
                  slliw        t3, gp, 17
                  divw         s5, s8, s9
                  divu         t5, s1, a6
                  mulhsu       t6, s7, s6
                  slli         s1, a1, 50
                  ori          a5, s7, -2013
                  remu         s2, ra, a7
                  xori         s0, zero, -1906
                  divuw        sp, sp, a6
                  rem          sp, s8, t4
                  mulhu        s9, a6, tp
                  mulw         s1, s11, a7
                  srlw         s4, a5, t1
                  srl          s4, t2, t0
                  srli         s11, t3, 56
                  slliw        tp, s9, 17
                  nop
                  mul          a2, a3, s10
                  sraw         t4, zero, ra
                  slli         t4, a6, 59
                  srliw        s9, ra, 24
                  mulhu        a5, gp, s10
                  lui          zero, 28763
                  nop
                  divw         s5, s4, t0
                  remw         t5, s4, t6
                  sll          s4, s3, t3
                  divu         s7, a7, t5
                  subw         a2, t2, t6
                  mulw         t6, zero, a2
                  ori          t4, s8, -1442
                  slti         t1, s9, 549
                  xor          a5, s2, a4
                  remu         s1, zero, a0
                  srai         s1, s3, 19
                  sll          s4, a0, a3
                  remu         s8, t1, a3
                  or           s10, s1, s2
                  xori         a4, s2, 1185
                  andi         sp, s11, -1331
                  xori         a0, s1, 859
                  slli         zero, sp, 3
                  slt          s8, s3, t5
                  and          s9, s0, s4
                  mulhu        t6, gp, s8
                  slliw        t2, t5, 13
                  sraw         s4, a6, t1
                  divu         a5, gp, a6
                  divu         a5, t1, a6
                  sub          s9, gp, ra
                  sra          s10, ra, ra
                  srli         t6, t5, 46
                  sra          s1, s6, a3
                  subw         a4, t4, a2
                  sraw         s0, a0, a7
                  sraw         gp, s3, s11
                  andi         t2, s4, -1263
                  add          tp, a5, t1
                  sub          a0, a6, s11
                  sub          a2, s0, t1
                  slliw        t4, t5, 21
                  slli         s9, t1, 61
                  lui          s6, 38678
                  mulhu        a2, s10, s8
                  remuw        a5, t1, s2
                  xori         s8, t4, 1211
                  mul          t0, a4, s10
                  sltiu        gp, a5, -787
                  srl          s11, a0, sp
                  sraw         tp, a2, a2
                  xor          tp, gp, zero
                  sub          t2, t3, s1
                  sltiu        s0, t5, -14
                  slliw        ra, a6, 1
                  lui          tp, 399868
                  slti         ra, a1, 1171
                  andi         t4, a7, 1633
                  srliw        a2, s7, 6
                  sraw         t2, s11, t5
                  srli         ra, zero, 56
                  add          t5, a3, s3
                  mulh         s10, s8, a0
                  ori          s3, a4, 1363
                  subw         s4, sp, a2
                  slti         s2, zero, 385
                  remuw        a4, s10, s2
                  divuw        s4, t1, t6
                  xori         zero, zero, 1067
                  mulh         t1, t3, a6
                  mulh         t0, t6, a5
                  divw         a0, s6, t3
                  sll          s9, t0, t3
                  mulh         a5, t4, a1
                  sllw         a7, s3, s7
                  srli         a2, t4, 9
                  nop
                  sltu         a7, gp, t6
                  mulh         s10, t1, s10
                  slli         s2, s2, 62
                  remuw        t3, s11, t6
                  divw         a4, a0, t3
                  sub          a7, s8, s4
                  ori          s3, a7, 178
                  srlw         s0, a2, s1
                  srlw         a4, s5, a3
                  div          a2, s11, ra
                  sraiw        s1, t2, 3
                  auipc        s4, 196664
                  srlw         gp, s11, t6
                  sra          t4, a1, s2
                  srai         ra, t6, 4
                  srlw         a7, gp, s0
                  and          t4, s7, t3
                  srli         gp, zero, 48
                  remw         a5, s1, t2
                  mulhu        s11, t0, a5
                  mulhsu       s4, t3, ra
                  mulh         a5, a6, s5
                  rem          sp, s2, s0
                  srai         s1, t3, 60
                  mulhu        s0, a1, t1
                  andi         a2, s4, -846
                  ori          s3, a1, 641
                  sraw         s3, a0, t1
                  rem          s4, s0, s10
                  slliw        s3, ra, 24
                  mul          s7, s4, a5
                  xor          a2, t1, s1
                  and          t5, a5, a1
                  rem          s9, a5, a2
                  rem          s4, s2, t3
                  ori          tp, s7, -856
                  add          a7, t0, t2
                  divw         t4, a6, s3
                  addi         gp, s11, 951
                  addi         a4, a1, 637
                  srl          t0, t4, s11
                  xori         sp, s6, -684
                  sub          sp, a2, t5
                  srl          a7, a7, ra
                  srliw        a0, s7, 11
                  div          s2, t5, a0
                  xor          s5, t6, s6
                  mulhsu       s5, a3, a2
                  slti         t5, s1, 168
                  srlw         t5, ra, s4
                  mulh         t6, ra, s7
                  mul          a5, sp, s5
                  divw         s2, t1, tp
                  slliw        t3, sp, 24
                  ori          s5, ra, 1102
                  auipc        a0, 71957
                  auipc        a2, 928051
                  mulw         a7, a0, s10
                  xor          t6, gp, s0
                  andi         s1, a1, -1102
                  slli         t2, s11, 20
                  auipc        tp, 419240
                  sltiu        a4, s10, -580
                  remw         s7, a7, a2
                  mul          a7, a5, s9
                  or           t3, s11, s0
                  sraw         a4, a4, a6
                  divw         t4, t1, tp
                  mulh         t3, a3, s9
                  mul          s9, tp, a2
                  or           a0, s1, s7
                  remuw        gp, s4, s0
                  srlw         t4, s9, a6
                  sltu         a5, s11, sp
                  mulh         s7, sp, s8
                  divuw        t1, a6, a6
                  divuw        a5, s11, t4
                  sraw         s3, t5, a7
                  slli         s2, s7, 4
                  rem          t2, a2, a4
                  srai         t4, t6, 54
                  xor          a2, s9, a7
                  srlw         s1, a3, a5
                  rem          gp, t1, s7
                  mul          t3, a7, a1
                  slt          a2, t5, t3
                  xor          a5, a3, zero
                  and          s0, t5, a6
                  mulhu        t2, a0, s7
                  sll          a0, t3, tp
                  rem          tp, s9, s3
                  sra          s10, s9, t3
                  xor          t2, s6, a7
                  remu         a5, s4, t0
                  auipc        s5, 340314
                  sraw         s10, t2, tp
                  sraw         s6, s0, t3
                  andi         s11, a4, 1340
                  subw         a5, a6, zero
                  sub          a7, s1, s8
                  slliw        gp, s5, 28
                  sra          s9, t2, a6
                  mulh         s0, s1, sp
                  mulhsu       t4, s2, a0
                  divuw        sp, a0, s5
                  sraw         a0, a4, a1
                  sltiu        t4, a2, 1054
                  remw         s8, s11, a5
                  sllw         t2, s7, s1
                  xori         a5, zero, -1011
                  srai         s2, a1, 37
                  slli         a7, s4, 51
                  remuw        s11, s8, a4
                  div          ra, s3, s11
                  divuw        zero, s9, s6
                  xori         t0, s10, -1194
                  andi         a2, s11, 1615
                  slt          t0, a1, gp
                  andi         tp, a2, -1560
                  sraw         s9, a0, sp
                  sltiu        sp, s2, 310
                  xor          s11, t1, a6
                  remuw        s8, s6, zero
                  xori         s7, s5, -99
                  divuw        t4, s10, a2
                  mulh         a4, t2, t2
                  mul          s3, a6, s5
                  remw         ra, t0, s2
                  slt          t2, a0, t0
                  remu         s11, t6, s3
                  sll          gp, sp, s8
                  sra          s9, a1, s0
                  subw         t5, s10, t0
                  sll          t5, a1, s4
                  xori         a2, zero, -574
                  and          sp, a0, s9
                  remw         s2, ra, s7
                  sll          s11, s7, t2
                  addi         a0, a5, 1203
                  auipc        a7, 224123
                  sltu         zero, a5, s6
                  srli         t3, s4, 31
                  remuw        gp, s1, t0
                  slti         a5, a4, -609
                  srli         s0, s0, 34
                  mulhsu       s4, a1, t2
                  remuw        tp, s3, s1
                  xor          s10, s8, a4
                  slti         t1, a1, 936
                  auipc        a0, 941645
                  mulw         gp, t2, a6
                  slt          t0, t6, gp
                  or           t2, t1, t0
                  addiw        t3, t6, 1734
                  or           tp, a2, s1
                  xor          zero, t3, a4
                  divu         a2, a2, a3
                  xori         t4, tp, 2
                  auipc        t3, 713975
                  rem          s0, s11, tp
                  and          a4, zero, a1
                  srl          sp, a6, a1
                  remw         t6, s11, a6
                  subw         s10, sp, s7
                  remu         zero, t2, s8
                  divuw        s6, s8, s6
                  lui          t5, 195578
                  add          tp, t6, t4
                  xor          t2, t5, s10
                  sll          t3, a6, tp
                  sltiu        s10, t2, -1015
                  sltu         tp, a3, s7
                  divw         a7, tp, s5
                  nop
                  xor          s9, a5, a3
                  sltiu        s5, t6, -1871
                  srai         s9, t3, 40
                  xori         tp, sp, -314
                  xori         t1, s4, -1985
                  add          s5, a4, t6
                  ori          t0, s5, -1227
                  srli         tp, t0, 57
                  mulw         t3, a5, t5
                  divuw        s8, s2, t2
                  xori         s7, gp, 282
                  addiw        a5, s5, -417
                  addw         s7, zero, t3
                  remuw        gp, ra, zero
                  sraiw        t0, ra, 27
                  slt          gp, a2, a5
                  sraiw        t0, t6, 4
                  srliw        sp, a1, 9
                  sraiw        s6, ra, 4
                  slli         s11, t2, 19
                  mul          zero, s7, s0
                  srl          s11, t1, zero
                  slli         s11, s2, 60
                  slliw        gp, a7, 21
                  srai         t5, tp, 31
                  auipc        s8, 514927
                  slliw        s1, t3, 7
                  sllw         s11, zero, t1
                  sra          t0, a6, t5
                  div          a2, s1, t0
                  addi         t0, zero, -996
                  addw         s9, s9, sp
                  div          s6, s9, a7
                  mulh         s11, zero, s5
                  rem          t0, tp, t5
                  srlw         t0, t4, gp
                  addw         s5, t6, a4
                  xori         t2, t4, 609
                  divw         a5, zero, a0
                  srlw         t0, a0, a3
                  slli         a5, t3, 17
                  srl          s4, a7, s10
                  mulhsu       t0, tp, t6
                  sll          ra, s6, tp
                  subw         t3, a2, a5
                  srli         a4, a3, 6
                  xor          t1, s11, s8
                  slti         t5, s10, -360
                  mulh         a0, sp, a6
                  nop
                  subw         s5, s3, gp
                  addiw        zero, a4, 687
                  divw         zero, s3, s8
                  ori          s4, a7, -350
                  mulhu        s1, t0, s2
                  and          t0, s0, t4
                  ori          t3, s2, 1564
                  add          tp, a2, s10
                  addiw        a5, t5, 1852
                  rem          t4, s11, t4
                  sll          t4, t6, s9
                  sll          t6, s0, s5
                  or           gp, t2, t2
                  mulhsu       a5, zero, s4
                  slt          a0, t2, t1
                  addi         s11, tp, -1083
                  sra          s6, a2, t0
                  addi         s1, tp, -561
                  andi         a5, tp, -1421
                  mulhsu       s2, s1, sp
                  remu         s5, s8, s6
                  sltiu        s8, t1, -591
                  remw         s0, ra, gp
                  sllw         t2, s9, s0
                  srli         s0, s1, 58
                  sub          s2, a0, a5
                  sub          s2, s4, t3
                  srli         gp, zero, 19
                  auipc        s0, 282325
                  slt          tp, s5, s9
                  divuw        sp, s7, s9
                  remw         a7, t2, t0
                  add          t3, s9, a5
                  add          tp, s6, t6
                  slli         s3, s8, 36
                  addi         s9, s9, 1138
                  mulhsu       t1, t6, s6
                  sraiw        t4, t2, 26
                  slt          t3, s11, a4
                  slliw        t1, sp, 21
                  sll          s1, a3, a4
                  divu         s0, a2, ra
                  sltiu        ra, s8, 1670
                  sraiw        s11, s6, 18
                  div          s9, t2, a2
                  nop
                  remu         t3, t1, a6
                  srl          t5, a0, s11
                  sra          a5, gp, sp
                  auipc        t3, 801022
                  subw         a5, s8, a3
                  divu         sp, tp, s6
                  slti         tp, t4, 1479
                  sllw         t4, t1, s9
                  sll          a0, a0, t6
                  sltu         a2, a6, a6
                  xor          a2, zero, s11
                  lui          s7, 873109
                  slt          t5, s0, s0
                  srl          s9, t3, s5
                  andi         tp, s1, -279
                  slt          s5, s8, s1
                  divu         t5, s11, sp
                  sll          s5, a7, a2
                  div          gp, tp, s9
                  subw         zero, s8, s4
                  addiw        t5, t5, 1891
                  srai         ra, t1, 10
                  mulh         t4, s8, t5
                  lui          a5, 734511
                  divw         s8, s8, a1
                  mulhu        a5, t0, a1
                  srli         s6, s6, 21
                  addw         t6, a2, a6
                  subw         zero, a6, s2
                  subw         a4, a4, s4
                  srl          a7, s8, t5
                  and          s1, t0, sp
                  slti         s1, t5, 1815
                  sltiu        s4, a4, 114
                  addiw        t2, s11, 1238
                  slliw        a2, t4, 23
                  mulw         s4, t5, a7
                  sll          s10, a4, ra
                  slti         s7, s3, -608
                  srai         gp, t2, 23
                  nop
                  div          s3, s10, gp
                  divuw        a0, s2, s1
                  ori          a2, a3, -1897
                  subw         s4, zero, s0
                  srai         a0, s0, 19
                  auipc        a2, 178680
                  sraw         s3, s2, t5
                  sltu         s2, a4, a4
                  add          s11, s2, gp
                  divu         s7, zero, s5
                  rem          a4, tp, s9
                  addi         s0, s10, -1963
                  srlw         ra, tp, t1
                  srli         s2, s2, 43
                  mulhsu       a5, s9, s10
                  divu         s0, a2, s3
                  auipc        s5, 936756
                  divw         s11, s8, s8
                  sltu         t5, s6, s10
                  rem          s0, s2, s2
                  slli         zero, zero, 45
                  srai         gp, s6, 13
                  xori         t1, t3, -912
                  addw         a2, t4, s8
                  rem          s4, s8, s8
                  slti         a2, a6, -587
                  rem          a2, a3, a4
                  slti         a2, s0, -627
                  sltu         t2, s2, t1
                  slt          s7, s3, s5
                  div          t1, s9, t5
                  mulhu        ra, s9, t1
                  sltu         gp, s3, s0
                  sub          s11, sp, tp
                  slliw        tp, a4, 11
                  slli         t5, gp, 55
                  srl          s8, s6, sp
                  srliw        s6, a6, 8
                  divuw        s11, s5, t1
                  sra          t5, t3, s3
                  addw         s11, s9, a2
                  remu         a2, s1, a5
                  srli         s1, s3, 33
                  ori          ra, s8, -2023
                  slti         t6, t2, 911
                  andi         t3, t3, 1849
                  sltu         s10, a1, s7
                  slliw        s10, t6, 3
                  divw         s5, t4, sp
                  lui          t5, 372679
                  sub          t0, s0, a2
                  srlw         s7, gp, s10
                  remu         t6, s1, gp
                  lui          t6, 757778
                  add          s6, tp, t6
                  slt          a0, s6, t6
                  addi         t3, s8, -1390
                  mulhu        t0, s10, s11
                  sltu         s6, a2, gp
                  divuw        tp, ra, t4
                  srli         a5, sp, 1
                  nop
                  div          s11, s9, a2
                  xor          t3, a2, s6
                  addw         s6, s5, s1
                  addi         a7, a0, 143
                  addw         t3, s11, t3
                  xori         t6, t1, -573
                  xori         t2, a0, 1727
                  sub          ra, t5, s0
                  mulh         gp, a4, s11
                  slliw        a4, a4, 23
                  sllw         a5, a6, a3
                  divu         s6, t2, ra
                  lui          s0, 853346
                  remu         a2, a7, tp
                  srai         sp, s2, 63
                  mulhu        tp, t3, a1
                  sll          s6, s2, s7
                  divu         a2, gp, t6
                  rem          zero, tp, s8
                  remw         s3, zero, a7
                  sraiw        s8, s4, 4
                  mulw         t3, t4, t0
                  mulh         s5, s11, t4
                  auipc        ra, 837093
                  nop
                  divuw        a0, s6, s3
                  sraiw        sp, s4, 13
                  sltu         t0, s7, s2
                  mulw         t2, a1, s0
                  srliw        a2, a1, 21
                  ori          zero, s9, 1871
                  remw         zero, a5, sp
                  sll          t2, s9, s0
                  remuw        t3, zero, a2
                  srlw         s10, s3, tp
                  srl          a0, ra, a6
                  lui          s9, 86280
                  slliw        s10, t6, 6
                  sltu         s8, a3, a7
                  mul          s11, t2, a6
                  mul          a7, t1, t6
                  div          s10, a0, s10
                  srlw         s1, a2, s1
                  sra          s2, gp, t1
                  srl          a4, s4, t0
                  div          t2, s4, zero
                  mulh         a5, a5, s6
                  addiw        s0, s3, -582
                  slt          a5, t5, t2
                  div          tp, s8, s0
                  auipc        tp, 108104
                  subw         t2, a0, a5
                  slli         ra, ra, 49
                  mul          s7, sp, s5
                  or           a0, s10, s9
                  sra          a5, s11, s1
                  sllw         a5, sp, t2
                  srai         sp, s9, 21
                  subw         t4, t2, s8
                  xori         t5, s2, -790
                  addi         a5, s3, 388
                  sraw         s1, s1, t1
                  ori          s6, s0, 1094
                  sraw         s5, sp, sp
                  slliw        s0, t2, 30
                  and          s2, a3, s9
                  slt          t4, t1, a2
                  rem          s9, a4, s11
                  remw         t5, t3, s5
                  srli         t5, s4, 9
                  sltiu        s4, zero, -1581
                  sub          zero, a1, t4
                  xor          ra, s8, s3
                  ori          t0, s11, 121
                  sltu         s8, s3, a2
                  or           t5, a3, s8
                  slli         t1, s2, 3
                  ori          s4, a5, 70
                  addw         t3, gp, a7
                  lui          s1, 975704
                  ori          a0, a5, 758
                  div          t2, a1, s5
                  lui          t2, 687035
                  andi         a7, s5, -261
                  remu         a2, a2, s6
                  add          t3, t4, t6
                  divw         a0, t1, a7
                  auipc        s5, 60808
                  divu         s10, a2, tp
                  divw         s2, s11, a1
                  sllw         ra, sp, s10
                  srli         t5, a5, 0
                  andi         t2, t4, -1327
                  slliw        t3, ra, 30
                  sub          s10, t5, s6
                  remuw        t5, gp, t4
                  remw         s9, a1, a0
                  sltiu        t1, s9, 1060
                  divw         s6, a6, a5
                  or           s1, s4, s5
                  srli         ra, a3, 45
                  sub          zero, a5, s2
                  auipc        t0, 969829
                  ori          s1, gp, -973
                  mulhu        t2, a5, t1
                  xori         t5, t4, -45
                  sraiw        s8, t3, 3
                  srl          a5, gp, a6
                  lui          ra, 709485
                  slliw        s8, s0, 0
                  mulhsu       t0, a6, s6
                  slt          s8, s1, s0
                  andi         s1, zero, 1708
                  divuw        s9, s5, a3
                  and          gp, s11, a6
                  mulhsu       s3, a6, s5
                  sltiu        sp, s9, 112
                  sltu         s3, t5, s11
                  remuw        s0, s7, t3
                  slli         s4, s4, 47
                  divw         a7, a5, s6
                  slt          s2, a7, s9
                  addi         t0, s10, -183
                  addiw        s10, s2, 714
                  mulhsu       t1, s8, zero
                  mulhsu       t5, s11, a2
                  addiw        a5, s4, 548
                  rem          zero, s8, ra
                  remu         a4, a5, s1
                  sll          t0, sp, s5
                  sltiu        s0, a5, 519
                  div          s4, zero, s1
                  xori         t3, t1, 1638
                  sltiu        s5, s4, -1316
                  srli         ra, tp, 3
                  and          s7, a1, s5
                  rem          t6, a4, t3
                  nop
                  srliw        s8, a3, 28
                  or           a5, s9, a6
                  slti         ra, t4, 109
                  remw         s11, s6, ra
                  slli         t6, s10, 24
                  divw         s5, s5, gp
                  sllw         s2, s1, t3
                  addiw        t3, t4, -1629
                  addw         a2, a7, t1
                  div          zero, a3, a4
                  addi         t6, s8, 1242
                  or           t4, sp, s4
                  div          t5, a1, s11
                  and          a2, s1, t0
                  sllw         zero, a2, t6
                  andi         tp, t0, 1790
                  divu         s11, t4, s8
                  rem          t3, t3, s3
                  sub          sp, t4, zero
                  lui          tp, 938893
                  xor          a7, zero, zero
                  mulhsu       s4, s10, t0
                  xori         ra, t6, -1091
                  srliw        s1, s0, 12
                  xori         t3, s7, -635
                  srlw         s10, t3, a0
                  div          s10, s0, a4
                  mulhsu       tp, a2, t4
                  mulhu        s6, t5, t4
                  add          gp, a5, s11
                  xori         t6, s9, 347
                  addw         t5, s4, sp
                  slti         s4, t4, 1847
                  slliw        a2, a0, 30
                  divuw        s1, s3, a6
                  xor          a4, a0, s0
                  mulw         zero, zero, s11
                  slliw        s6, s11, 24
                  sll          a7, t0, s0
                  sraiw        zero, a1, 22
                  mulh         ra, ra, s0
                  srliw        sp, s0, 22
                  sllw         t3, a7, gp
                  mulh         t6, s9, a0
                  andi         s0, t1, 726
                  srliw        t3, a0, 0
                  mulhu        s1, s9, a5
                  sraiw        ra, a7, 11
                  ori          s7, t3, -100
                  sra          a7, s7, t5
                  nop
                  srai         a4, s5, 23
                  subw         t4, s2, a1
                  sll          ra, tp, s8
                  sraiw        a2, s5, 15
                  subw         s11, t6, t5
                  slliw        s9, t6, 12
                  slliw        tp, ra, 1
                  sll          s10, t6, a7
                  divw         s10, t6, a0
                  addi         t4, s3, -1781
                  sub          s8, t2, t2
                  sub          ra, a3, s10
                  sll          s3, a5, t0
                  sltu         t6, s2, t5
                  remu         t5, t6, s10
                  sltiu        s2, t1, 727
                  remw         a0, s8, s5
                  addi         ra, a3, -210
                  mulhu        s11, t4, t1
                  remu         s7, sp, t4
                  sraiw        zero, s6, 12
                  andi         s0, t6, 56
                  or           a7, t0, t1
                  addi         t5, s11, 182
                  srli         s5, s9, 52
                  ori          tp, t2, 1762
                  mulw         t4, t5, s4
                  srliw        s9, t5, 13
                  sra          a5, zero, a3
                  ori          a2, s3, 835
                  xori         t2, s8, 2031
                  sra          s4, a3, sp
                  addiw        s9, t0, -1652
                  srliw        s0, s9, 29
                  srl          s7, s9, s5
                  remw         s9, t3, s10
                  srl          a5, s5, zero
                  sra          a0, s5, t5
                  rem          s2, s9, t0
                  rem          s2, t6, ra
                  sltiu        a0, sp, 1218
                  mulw         t6, a5, a5
                  subw         t2, a3, t5
                  srai         s3, sp, 50
                  and          ra, s7, a5
                  rem          s6, s0, t1
                  remuw        t4, a0, s4
                  slli         tp, gp, 31
                  mulhsu       a4, s3, s3
                  srliw        t5, s3, 31
                  divw         zero, zero, t1
                  andi         tp, s7, -1296
                  divu         a4, s10, gp
                  xori         s11, a6, 1683
                  nop
                  mulw         a4, s2, a2
                  sltiu        s10, s8, -1735
                  or           gp, zero, sp
                  divu         s1, t3, s10
                  mulh         a4, tp, s8
                  sltiu        a5, a1, -1548
                  addw         s1, s11, t0
                  divuw        s3, a0, s7
                  or           t2, ra, a0
                  remu         t2, s3, s3
                  addw         t2, s8, t2
                  addi         s11, zero, -1318
                  sll          s1, zero, a2
                  srli         ra, s1, 54
                  and          s2, s0, s5
                  srliw        s9, a6, 13
                  sraw         s9, a4, t2
                  sltiu        t6, a3, -1613
                  xori         sp, s8, 910
                  or           a2, s2, s11
                  sltiu        a4, s6, -930
                  ori          t5, t3, -1309
                  nop
                  xori         t1, t6, -517
                  ori          a7, t5, 1572
                  srli         s2, s5, 59
                  sltiu        s3, a2, -692
                  mulw         s1, s1, s0
                  slt          a0, s2, a3
                  remuw        a5, s0, a6
                  lui          t6, 434507
                  xori         s0, s7, -1595
                  sllw         t0, zero, a1
                  add          t6, a2, a2
                  and          s1, t2, t4
                  xori         gp, a7, 656
                  slt          t0, zero, s0
                  srl          s8, a3, t4
                  mulh         a2, s9, sp
                  remuw        s4, s11, t6
                  remuw        ra, s4, a3
                  sub          t4, s7, a5
                  sltiu        a2, s7, 167
                  divu         s11, a4, t4
                  lui          s2, 190928
                  srliw        s0, a5, 26
                  subw         s6, s11, s2
                  and          s11, a3, a4
                  subw         s7, sp, gp
                  srai         s9, t1, 61
                  remu         s10, a5, s0
                  mulw         tp, zero, s9
                  addiw        zero, a7, 1575
                  mulw         t3, tp, a1
                  sltiu        a2, zero, -1055
                  sltiu        a7, s0, 1376
                  slt          s9, s11, s6
                  mulw         a5, s5, s5
                  lui          t3, 831766
                  mulhu        a4, a6, t2
                  srli         t1, a4, 42
                  andi         s8, t1, 713
                  mulhsu       t4, a0, a6
                  nop
                  divw         s11, t3, zero
                  mulh         gp, a2, t1
                  srl          t1, s6, s8
                  subw         s0, t3, ra
                  and          a0, a4, a1
                  srlw         s1, s5, t2
                  nop
                  divw         zero, gp, a1
                  sub          s8, t1, s9
                  auipc        s1, 37281
                  srliw        zero, t3, 15
                  mulw         s9, gp, a1
                  sra          s4, t0, a1
                  addiw        s6, s5, -1613
                  srliw        a0, a1, 24
                  srli         a5, gp, 27
                  andi         t2, sp, -1286
                  remu         sp, a0, s0
                  slliw        a4, s4, 7
                  addi         ra, gp, -1712
                  divu         t3, s8, t1
                  sraw         tp, s6, sp
                  srliw        a2, t5, 17
                  srli         t5, gp, 59
                  and          a5, t0, t5
                  subw         t0, gp, gp
                  subw         ra, t1, gp
                  mul          s11, a3, a0
                  srliw        a0, tp, 24
                  subw         t1, s0, s11
                  rem          s5, a3, s9
                  and          s9, a0, s7
                  mulhsu       a5, a5, s5
                  sraiw        gp, gp, 26
                  srli         ra, a7, 20
                  mulh         s9, t1, t1
                  xor          s11, a1, t3
                  slliw        t6, s8, 17
                  divuw        t1, tp, s5
                  srli         s7, t2, 30
                  mulhsu       ra, gp, gp
                  sltiu        a2, a4, 1435
                  mulw         t4, s1, a0
                  mul          sp, tp, a4
                  nop
                  divw         s10, tp, t3
                  mulw         t5, s11, s11
                  sll          a7, gp, t1
                  mulhu        s0, gp, s10
                  xori         sp, a1, 23
                  sltu         sp, t3, zero
                  srai         t3, a2, 61
                  slli         s1, s0, 53
                  and          zero, s6, s9
                  remuw        a5, s2, t0
                  subw         t0, s10, a1
                  xori         t5, s1, 243
                  remu         s1, s8, t0
                  subw         a2, s9, a6
                  remu         s7, a7, s1
                  nop
                  slt          t1, s2, a4
                  xor          t1, s6, t2
                  sllw         t4, zero, a2
                  mulw         s1, t2, s2
                  divw         a4, a1, t3
                  mulw         s2, t0, tp
                  addi         tp, gp, -697
                  slt          t1, tp, s10
                  andi         s4, t2, 686
                  or           a2, a3, tp
                  sraiw        a0, a4, 27
                  sraiw        gp, s8, 24
                  lui          a0, 1001094
                  addi         sp, a4, 1448
                  sltiu        a4, a4, 1225
                  slti         t6, ra, 461
                  mul          s11, a4, t0
                  addiw        a5, a4, -1603
                  sltiu        zero, tp, 1399
                  sltu         s10, t2, s6
                  or           s7, t0, s4
                  sltiu        t5, t4, 2012
                  addi         tp, t4, -470
                  lui          s9, 133660
                  xor          t0, tp, s0
                  subw         s9, a6, s11
                  divw         a4, s4, t6
                  mulh         s8, t1, s6
                  rem          a7, t2, a2
                  rem          ra, zero, s2
                  sraiw        a7, s3, 3
                  subw         zero, s11, t1
                  divuw        a0, t4, s7
                  andi         a5, t6, -638
                  mulw         t2, s1, s7
                  srliw        s4, s5, 10
                  mulw         t5, a2, a7
                  srl          tp, t6, t1
                  mulhsu       s4, s8, s3
                  xor          zero, a3, t1
                  nop
                  addi         ra, ra, -1119
                  lui          a0, 210072
                  rem          zero, a6, s4
                  ori          sp, sp, 132
                  lui          a2, 117325
                  srliw        t5, t0, 18
                  mulhsu       t1, a3, t5
                  nop
                  sraw         s11, s2, s2
                  addiw        s5, a2, 1970
                  andi         tp, t3, -947
                  slti         a2, t6, -243
                  srlw         t1, s11, gp
                  srliw        a2, ra, 22
                  and          t1, a1, t5
                  remu         a7, a4, s6
                  srliw        t4, s2, 22
                  or           s6, ra, a7
                  rem          t3, s4, s7
                  divu         s7, s7, t1
                  sllw         zero, s5, t3
                  div          ra, ra, a7
                  lui          zero, 643132
                  divw         a0, a0, t2
                  sltu         t0, tp, a3
                  remu         s10, s2, t0
                  rem          t3, s9, a5
                  slt          s8, a5, t2
                  slliw        s1, t2, 3
                  mul          zero, s0, zero
                  remu         s6, t6, s6
                  sraiw        s5, s1, 15
                  and          s7, s9, t0
                  sraiw        t6, s7, 20
                  auipc        t0, 829681
                  addi         ra, s1, 1132
                  srlw         s7, t5, t4
                  sra          a0, s7, s0
                  andi         a5, a5, -1269
                  mulhsu       t1, t1, t2
                  sll          tp, t5, t4
                  xor          t0, t3, s2
                  addiw        a5, a5, -1393
                  slt          a0, a3, s7
                  mul          s6, a1, tp
                  srlw         a5, s2, s8
                  slt          s8, s0, t6
                  subw         a0, gp, s10
                  nop
                  mulw         a2, s11, s3
                  nop
                  or           t2, t1, t0
                  addw         s11, t4, s10
                  xor          s0, s2, t4
                  slli         s0, s7, 28
                  nop
                  srai         s2, t6, 51
                  srli         s2, s9, 26
                  auipc        s11, 967949
                  mul          s9, s9, s10
                  xori         s5, a5, 1228
                  add          sp, ra, s5
                  addw         tp, s10, t3
                  remuw        s1, s6, t6
                  sra          t4, t3, s11
                  remw         a2, s9, s0
                  or           t4, s3, s10
                  slliw        s7, t0, 19
                  and          gp, s11, t6
                  slti         a0, a4, 2023
                  subw         s6, s9, t0
                  sllw         ra, s7, a6
                  slliw        s3, t0, 16
                  srl          s2, a6, s5
                  divw         s0, gp, tp
                  slt          s11, s0, s4
                  mulh         t0, t0, s9
                  remuw        sp, a7, s0
                  srai         t4, s0, 32
                  sllw         s4, s4, a1
                  mulhu        s1, a7, a6
                  remw         s7, s11, gp
                  sll          s4, zero, a1
                  auipc        s9, 390661
                  slt          s8, s4, s4
                  mulw         t2, t6, a5
                  slti         s1, s3, 1012
                  srliw        s1, a0, 21
                  addw         zero, a3, s11
                  srai         ra, t0, 9
                  sraw         a5, a2, s2
                  divw         s0, s0, tp
                  add          a5, tp, s3
                  slt          sp, s6, s4
                  sub          a0, t0, t1
                  rem          t5, t2, s6
                  sll          t2, t1, t0
                  srlw         sp, a5, a5
                  mulhu        a5, a5, t2
                  sltiu        a5, s5, 1256
                  addiw        s10, s8, 677
                  remuw        s2, a7, ra
                  slli         t6, s8, 39
                  sltiu        a5, s5, -150
                  div          s11, a4, sp
                  mulhsu       a5, s6, tp
                  addw         s0, t0, s10
                  subw         a5, t6, s7
                  rem          t3, gp, s0
                  srlw         zero, s5, a2
                  sllw         t1, s8, ra
                  sltiu        s9, t3, 1605
                  sll          t3, s5, gp
                  xori         a5, s3, -2031
                  mul          s8, s8, s2
                  sltu         zero, a0, s7
                  remu         s10, sp, s8
                  slliw        a5, s6, 18
                  slli         gp, s3, 59
                  xori         t1, s8, 1836
                  slti         a4, t4, -1215
                  sll          s6, s0, a1
                  mulhu        s10, a4, t1
                  sraiw        t6, s4, 0
                  divu         t6, s3, s0
                  mulhsu       s11, s10, t2
                  srli         a2, s9, 62
                  divuw        a0, a7, a2
                  mulhu        s11, zero, t1
                  sraiw        a5, s1, 21
                  srli         s10, s2, 62
                  or           s11, t0, t4
                  sll          s2, t4, ra
                  mulw         ra, a7, s11
                  sraw         s9, s8, s11
                  rem          s11, s6, t5
                  sub          a4, t4, s8
                  auipc        s0, 988413
                  mulhu        s0, t0, a4
                  srliw        t4, a2, 0
                  mulh         s2, s1, t4
                  srl          s1, zero, t6
                  sltu         s5, s6, a3
                  sra          gp, s1, s4
                  mulhsu       s8, t1, a3
                  add          s2, s0, zero
                  slt          gp, s8, a1
                  div          a2, gp, s5
                  sra          gp, t4, t4
                  slt          gp, zero, t3
                  sllw         s2, a6, ra
                  subw         zero, s8, ra
                  divw         ra, s8, a3
                  xor          a4, a6, a1
                  sraw         t0, a1, tp
                  remu         t6, a2, gp
                  mulhsu       a0, t2, tp
                  divuw        s4, a3, ra
                  addw         s8, t2, s5
                  slt          s4, a0, ra
                  remw         t6, gp, s7
                  remw         a4, a2, a5
                  sllw         s5, t5, sp
                  mulh         t4, ra, ra
                  srlw         s8, t4, t4
                  and          tp, s3, s9
                  sraw         s5, s5, a2
                  remw         s7, s7, s4
                  srli         s7, s9, 49
                  srlw         s8, a0, a1
                  divu         gp, s1, s10
                  and          t2, a3, a3
                  srl          ra, s3, s9
                  slliw        ra, s3, 9
                  add          a5, s11, s3
                  sll          s6, a7, t3
                  divu         a2, t5, s9
                  remuw        a2, s10, a5
                  sltu         s4, t0, t2
                  or           s6, s10, s5
                  slli         s10, a7, 2
                  divu         a0, s9, zero
                  divu         s4, a6, s8
                  addi         gp, sp, -1029
                  slti         sp, s9, 217
                  nop
                  sra          a0, a1, t0
                  srlw         s9, s11, t1
                  rem          t5, s0, sp
                  andi         a0, s10, 717
                  slli         s6, s4, 11
                  remw         t5, s0, t0
                  rem          s0, t2, tp
                  remu         a7, s2, s9
                  mul          t4, s1, a7
                  divuw        s10, t5, s7
                  lui          s2, 156759
                  xor          a7, s11, s0
                  addiw        s11, s2, 507
                  mulw         t3, a0, s0
                  or           s4, sp, a1
                  sraiw        t4, t6, 23
                  subw         s6, zero, tp
                  rem          s10, t0, a4
                  and          a0, a6, a3
                  remw         t5, s2, s3
                  xor          t3, s7, s0
                  addi         zero, s9, 655
                  addw         s1, s1, a5
                  andi         t3, t2, -1945
                  div          gp, s4, a3
                  mulhu        a4, s5, s0
                  div          t3, ra, s9
                  mul          t0, s7, t4
                  xor          sp, a2, s0
                  auipc        t3, 997643
                  slli         a4, t5, 17
                  srli         gp, s2, 31
                  xor          tp, s6, s1
                  div          t6, s8, a5
                  remu         s0, t3, s9
                  and          t0, sp, s11
                  ori          a7, s7, 551
                  srl          gp, t0, t2
                  addiw        s1, tp, 1607
                  divw         t6, a7, a5
                  xori         t3, t6, 603
                  or           a5, a6, t5
                  sra          s0, s7, a1
                  ori          s8, s8, -1936
                  sraw         tp, a3, t2
                  sraw         t0, a2, a0
                  nop
                  nop
                  auipc        a0, 848460
                  addiw        s8, t2, 1922
                  remu         sp, s0, t4
                  mulw         a5, t5, a5
                  mulh         gp, s3, s3
                  rem          s0, s6, a6
                  sllw         sp, ra, a2
                  divw         sp, t1, sp
                  sraw         a2, t1, ra
                  sllw         a7, s7, s0
                  subw         t4, sp, t4
                  srlw         s3, a4, a0
                  sra          zero, s2, t6
                  lui          s9, 603161
                  sllw         sp, tp, a7
                  sub          a7, s0, s6
                  mul          a7, t1, a2
                  remw         a4, sp, s1
                  addw         gp, s2, tp
                  lui          a7, 661808
                  remw         s1, s7, s0
                  andi         a2, s7, -160
                  lui          s10, 142889
                  addi         s8, t1, 1000
                  srliw        s8, t5, 11
                  and          t0, gp, t5
                  mulw         gp, s9, s10
                  srl          s4, s10, a2
                  remu         s11, a3, a0
                  addi         t0, s0, 1556
                  srlw         a0, s9, a7
                  addi         s8, a3, 1375
                  rem          a7, t0, s8
                  xor          a2, a2, t5
                  srliw        zero, a7, 28
                  nop
                  divw         t3, zero, tp
                  divuw        s2, t2, s7
                  remw         t2, s1, a0
                  subw         t0, a6, s7
                  subw         t3, zero, t0
                  addi         gp, t6, -1750
                  addw         a5, a4, s7
                  mulw         zero, a2, s11
                  sraw         s11, t5, s2
                  mulhsu       t0, ra, s8
                  slt          gp, s1, t3
                  add          s0, t4, t3
                  srai         s5, a6, 52
                  or           a0, s9, a5
                  div          a5, s1, t2
                  sltiu        gp, s5, -1719
                  div          t6, a1, a0
                  div          s8, a0, s4
                  srli         t1, s2, 41
                  slt          s5, tp, s7
                  srliw        sp, s0, 15
                  sltu         a0, a2, a0
                  sub          sp, s2, s4
                  srliw        s5, a7, 4
                  addi         t5, a6, -1167
                  srai         s3, t1, 25
                  srl          t6, a0, tp
                  xor          t4, s6, s4
                  srai         tp, s4, 1
                  nop
                  sraiw        s5, t3, 1
                  slli         zero, s2, 8
                  addi         s2, gp, -1827
                  mulw         s5, t0, t2
                  nop
                  divuw        s5, a1, s3
                  sraiw        t5, t1, 10
                  divu         s9, s10, a4
                  lui          s7, 622997
                  sllw         s0, t2, a3
                  sra          s7, s4, t3
                  addiw        tp, t6, -615
                  xori         ra, s5, -90
                  slliw        s6, t4, 29
                  srlw         s1, a1, a5
                  sraw         s4, a3, gp
                  xori         a5, s10, 698
                  sub          s3, s6, sp
                  ori          t2, a5, 1290
                  slli         a2, s10, 38
                  addi         s7, s8, 894
                  remw         ra, a6, t3
                  sra          a7, s6, s4
                  xori         s0, a6, 95
                  slt          s10, s9, t5
                  mulhu        a5, zero, a1
                  sra          t5, s10, s11
                  mulh         s2, a3, s2
                  xor          a5, a7, ra
                  srai         s6, s1, 4
                  remuw        a7, a7, t6
                  divw         s8, s0, sp
                  nop
                  slli         t5, s0, 37
                  srli         t6, a6, 19
                  divuw        a4, a4, a7
                  add          t1, t3, s6
                  remu         zero, s2, t5
                  rem          tp, s7, s9
                  and          a7, gp, s7
                  sra          s7, tp, sp
                  ori          sp, a7, -1205
                  mulw         zero, t2, s8
                  mulw         t1, t2, a5
                  auipc        s7, 1007646
                  auipc        s11, 827621
                  remw         s10, t2, s1
                  xor          a2, t5, s5
                  ori          s11, s10, -1595
                  remw         s7, s3, a6
                  mulhsu       s5, s9, a6
                  nop
                  slliw        t1, t2, 5
                  lui          s4, 947127
                  sra          t6, a7, s5
                  add          t0, a2, s7
                  xori         tp, a0, 795
                  rem          t2, s8, s3
                  remu         s6, a5, t1
                  sra          a7, s9, s5
                  mulh         s7, a3, s9
                  addi         s6, s4, -1551
                  mulhu        ra, s3, t4
                  xori         zero, a2, -1161
                  slt          a5, s1, s8
                  mulhsu       s11, a3, a5
                  mulw         s5, s5, zero
                  slliw        s8, a1, 12
                  srli         s7, s7, 53
                  rem          s4, ra, s6
                  mulhu        s11, a1, zero
                  slli         s8, sp, 19
                  ori          t5, t4, 1032
                  sraiw        s10, s4, 18
                  rem          t0, a0, s2
                  sub          a7, s6, t1
                  auipc        s1, 348442
                  divw         s4, s5, s1
                  sraw         a5, s5, s2
                  divw         zero, s3, s4
                  slliw        a5, a5, 25
                  mulh         a0, s8, t6
                  slti         s11, t6, -1681
                  xor          s9, a4, t6
                  srl          t5, t2, s1
                  rem          a0, t0, s0
                  slt          s2, s7, s5
                  sllw         s3, s8, t5
                  srli         s3, t4, 26
                  slti         a0, t3, 2025
                  auipc        s9, 12568
                  nop
                  and          gp, s10, a5
                  mul          t4, sp, s10
                  xori         s0, s3, 662
                  sll          gp, a6, s4
                  mul          s0, gp, a5
                  srli         tp, s2, 54
                  div          s8, s9, a4
                  divw         sp, a3, zero
                  divw         a0, s1, s6
                  mulhsu       t1, a4, t5
                  mulh         t2, s10, a5
                  ori          s9, s1, 1519
                  subw         s9, a5, a2
                  srliw        t3, s5, 31
                  ori          t0, a2, 925
                  slti         t3, s8, 871
                  mulw         s10, t4, sp
                  sraiw        s9, t6, 25
                  sllw         a2, a2, sp
                  mul          a0, a0, gp
                  xori         t6, s3, -694
                  ori          s1, ra, 326
                  srai         tp, a1, 0
                  subw         s2, gp, t3
                  sub          gp, zero, t2
                  slt          t4, tp, a4
                  sraiw        a5, s9, 10
                  sraw         t1, s6, s10
                  or           t3, s0, a0
                  sllw         ra, s10, a1
                  and          t6, s9, s3
                  auipc        s6, 91895
                  nop
                  lui          s8, 449611
                  sll          s0, a3, s1
                  rem          tp, a4, t1
                  divw         ra, s10, ra
                  or           s0, s8, t3
                  mulw         s1, s9, a3
                  andi         a4, a1, 1726
                  or           t3, s7, zero
                  and          s6, t6, t4
                  remu         a7, sp, s11
                  remw         s10, a2, s4
                  lui          t0, 1040536
                  divuw        t3, s0, sp
                  sllw         sp, s10, t3
                  xori         a7, t6, 671
                  sllw         s7, s7, s9
                  mul          s5, a2, s7
                  slti         s3, s9, -430
                  srai         t6, a4, 40
                  sltu         s2, s2, a0
                  div          t3, s6, s5
                  lui          s3, 473385
                  remuw        s0, gp, sp
                  xori         s1, sp, -312
                  xori         ra, a5, -1651
                  srai         s6, t1, 61
                  xor          s1, t4, a1
                  sllw         ra, s8, sp
                  srai         t6, t1, 8
                  slti         a4, s9, -249
                  mulh         a7, a3, a5
                  srlw         s5, t4, s8
                  sraw         s2, a4, s6
                  srliw        t3, s1, 8
                  srlw         s6, t2, s10
                  xor          a7, a3, s7
                  addiw        s4, a2, -239
                  sraw         a5, gp, a4
                  divuw        t3, s5, t6
                  sra          tp, s0, s7
                  addi         s11, gp, -1243
                  xori         tp, a4, 1484
                  mul          s5, a4, t6
                  div          s7, a4, t6
                  divu         t5, a6, sp
                  remu         ra, s3, s6
                  sraw         a0, tp, a7
                  sraiw        s2, t5, 9
                  slli         t4, s3, 33
                  slli         zero, s7, 3
                  srlw         t6, a3, s6
                  mulhu        s8, a0, t4
                  xori         t4, s11, -239
                  mulhsu       t0, sp, s0
                  sub          zero, a4, s7
                  addiw        s9, s4, 1595
                  sll          s1, tp, zero
                  remu         s2, a0, s3
                  subw         t5, sp, sp
                  slti         s11, s3, 34
                  sraiw        a5, s10, 3
                  and          s5, s5, t5
                  srliw        t5, s0, 17
                  subw         a0, a5, s8
                  slti         s8, s5, 1133
                  srai         s9, t3, 1
                  srai         s1, s6, 8
                  remuw        s3, s0, a4
                  andi         t3, t5, -1107
                  sub          a5, s8, s6
                  sra          a2, t5, s11
                  sub          s2, a2, zero
                  slt          s2, s9, s2
                  divuw        s8, zero, gp
                  srlw         gp, a4, s8
                  mulh         tp, a0, t1
                  ori          t5, t3, -1205
                  remw         t4, t1, ra
                  sllw         s2, t4, s10
                  subw         s9, t2, s0
                  sltiu        t1, tp, -1355
                  add          a4, ra, a6
                  divw         a5, t1, gp
                  sraw         s6, s7, t3
                  mul          a2, a4, t3
                  sltiu        tp, a1, 1454
                  remw         t1, t4, s11
                  sraw         t4, a6, sp
                  xori         t1, a3, 431
                  mulhu        a0, zero, s7
                  sra          t1, t0, gp
                  divuw        t4, s2, s11
                  addi         t5, s11, 1666
                  nop
                  div          t3, s3, t2
                  mulhu        s0, t2, a2
                  srliw        s7, a6, 17
                  slt          s7, s3, t6
                  xor          tp, s7, a1
                  sra          tp, a5, sp
                  srai         s11, s8, 21
                  lui          s10, 305245
                  mulhu        s4, zero, zero
                  sllw         ra, s11, a1
                  xor          a4, s0, ra
                  mulw         s4, s11, zero
                  xori         a5, a4, -590
                  sltiu        a0, s11, -253
                  mulhsu       s7, a1, sp
                  lui          a2, 470088
                  lui          t0, 410704
                  srliw        a5, t6, 19
                  div          s1, s10, t1
                  srai         t6, s9, 31
                  subw         t6, t6, t4
                  addw         t6, s10, s9
                  subw         s1, t0, gp
                  rem          zero, t4, s11
                  remuw        a4, s6, s2
                  slli         s5, tp, 11
                  divu         s3, a7, a3
                  auipc        s11, 877439
                  mulw         s5, s2, gp
                  sltiu        t0, tp, 1890
                  sraw         zero, a5, t3
                  sltiu        t2, s5, -1053
                  srl          t2, s0, a4
                  srli         s10, s6, 54
                  sraiw        t5, s1, 11
                  nop
                  mulh         s4, sp, t6
                  mul          s8, a3, s0
                  addw         a5, a4, s8
                  ori          t2, t2, -1730
                  srliw        s1, s7, 31
                  ori          s9, a0, -860
                  ori          t2, s4, 1491
                  remw         a5, t6, a3
                  slliw        sp, t6, 16
                  addw         a5, a3, s10
                  mulw         t6, a6, a4
                  sllw         s11, a1, tp
                  addiw        s8, gp, -1683
                  xor          s10, a0, t6
                  addi         s5, tp, -1291
                  mulh         a5, ra, s3
                  slliw        s8, s6, 1
                  divw         s6, s9, t0
                  addw         t6, t4, t1
                  divuw        s11, a2, gp
                  divuw        a2, a1, s6
                  srlw         s11, a1, t1
                  ori          a4, s2, 1914
                  sraiw        a0, a2, 1
                  sraiw        s5, gp, 16
                  srlw         t2, a0, a7
                  xor          t1, t1, ra
                  srli         s3, t6, 62
                  auipc        s8, 102342
                  sll          s5, t5, s6
                  mulhu        t1, tp, s0
                  srli         t4, a0, 37
                  mulhsu       t2, gp, zero
                  lui          a0, 378309
                  xori         zero, s9, 1332
                  srlw         t4, a6, a5
                  addw         a4, s11, s10
                  slt          ra, s3, s3
                  mulhsu       sp, s5, s11
                  addiw        gp, s10, -1470
                  ori          a0, t6, 800
                  mul          a7, t5, a4
                  addi         s7, gp, -277
                  srliw        a4, s11, 18
                  mul          a5, s9, gp
                  auipc        s2, 64104
                  sraw         s2, ra, t5
                  slliw        s0, a0, 5
                  sraiw        s6, t5, 29
                  sll          s8, t6, zero
                  addiw        a5, zero, 1461
                  slli         a7, a7, 13
                  sltu         t2, ra, a1
                  xori         s0, s2, -1535
                  and          s7, s10, s7
                  sra          s9, t0, a3
                  sub          s6, a4, t3
                  addw         a5, a4, a1
                  slt          s2, a6, zero
                  sra          a4, a7, a6
                  slliw        s9, t6, 6
                  mulhsu       s7, s2, t5
                  ori          ra, a2, 1650
                  ori          a2, sp, 1578
                  remu         t2, s7, s11
                  xori         t6, s9, -1381
                  remuw        s4, s9, s1
                  mul          s9, a6, sp
                  sltiu        a0, a3, -814
                  srl          zero, s2, s9
                  sllw         zero, zero, a5
                  auipc        s9, 1006691
                  remw         s11, a3, s5
                  nop
                  ori          sp, a5, -489
                  and          s1, s11, a5
                  srli         s4, a2, 59
                  sraiw        a0, a5, 20
                  mulhsu       sp, gp, zero
                  slti         tp, t2, -1744
                  srlw         s7, t1, a5
                  rem          zero, s11, t3
                  addw         s4, t6, s1
                  slti         s8, t2, 1376
                  sraw         s2, s11, s5
                  sra          a5, zero, s5
                  or           t5, a4, t2
                  xori         s7, sp, -1291
                  slt          s7, s1, t2
                  divw         gp, sp, s4
                  rem          a2, a2, s4
                  subw         s4, a0, a6
                  auipc        s4, 75806
                  sra          sp, ra, t0
                  sraw         s1, a6, gp
                  sltiu        sp, t6, -498
                  auipc        s3, 740288
                  sraw         s3, t2, gp
                  mulh         s3, s10, s4
                  divw         a4, ra, s5
                  remuw        s8, a1, t2
                  srlw         zero, s2, t1
                  auipc        t4, 161786
                  addiw        ra, s1, 70
                  sll          s3, s11, s7
                  slli         s2, sp, 59
                  sllw         s7, s8, a5
                  sra          a7, s1, s10
                  ori          t6, a6, 53
                  sllw         s11, a7, t1
                  mulhsu       s10, a5, sp
                  andi         a2, a6, -46
                  mulhu        a5, s9, t1
                  xor          s2, s1, t3
                  addi         s6, ra, -950
                  srliw        s3, sp, 2
                  srlw         t4, ra, a5
                  addi         ra, t4, 1036
                  rem          s8, s10, a2
                  remu         t1, a2, t0
                  addi         t4, t2, 1437
                  xor          tp, s3, a0
                  remu         a2, a6, s8
                  add          t2, t4, a6
                  slliw        s9, tp, 17
                  sll          s0, t0, s8
                  sllw         s2, t3, a6
                  xori         s8, tp, 491
                  sra          s2, t6, a5
                  divu         a5, s9, a0
                  remu         s6, s3, a1
                  mulw         s6, a1, a0
                  srl          s0, a3, sp
                  slli         s3, s9, 37
                  subw         a5, t3, t4
                  slli         s9, s8, 49
                  subw         a5, a5, tp
                  nop
                  andi         t5, a1, -1036
                  divu         s8, s6, a3
                  addiw        ra, s4, 251
                  sraw         s11, a2, ra
                  slli         a0, a5, 63
                  sra          s10, s2, t4
                  srliw        s1, s10, 25
                  sraiw        t3, s6, 11
                  divu         zero, tp, gp
                  srli         s4, s4, 26
                  andi         s0, s7, 1463
                  sll          s1, zero, s3
                  remw         s9, a3, t2
                  divuw        s7, a2, a1
                  sra          s4, s11, ra
                  srlw         t1, tp, t0
                  srl          s6, sp, s7
                  add          s5, t6, a0
                  addiw        s11, t0, -107
                  div          t4, s5, sp
                  addi         s4, a7, 1526
                  srli         t5, gp, 31
                  nop
                  remw         s11, s11, s5
                  srlw         a7, a0, s2
                  mulw         s6, sp, t2
                  nop
                  remw         a0, s2, s7
                  add          a5, sp, s2
                  slti         t0, t5, -1334
                  slti         t1, a5, 15
                  remu         t4, a7, s0
                  slt          a5, a0, s6
                  andi         t6, t3, 292
                  add          s0, t6, a3
                  srlw         a4, s10, s3
                  srliw        s7, a5, 6
                  sub          a2, zero, s3
                  addi         gp, s1, 497
                  srl          a4, t3, gp
                  slli         s4, s1, 34
                  srlw         zero, t3, t6
                  srliw        t4, s2, 12
                  remuw        s2, a2, s8
                  divw         s2, s11, a3
                  or           t6, t6, s11
                  div          t3, s5, a2
                  div          a2, a2, t1
                  slliw        s7, a1, 27
                  sraiw        t5, a2, 17
                  addiw        gp, s4, -554
                  divuw        s6, t2, a2
                  mulw         s1, t0, a6
                  divu         gp, t3, t2
                  mulh         t0, a6, tp
                  srliw        s0, a4, 22
                  srai         s5, tp, 35
                  nop
                  srai         s1, s9, 51
                  srai         t6, t4, 33
                  remuw        a5, s1, s2
                  slt          s0, t2, a4
                  slliw        a2, sp, 1
                  mul          ra, s10, sp
                  slt          a2, a4, a5
                  remw         a5, s8, t6
                  slli         a5, t2, 1
                  sllw         s11, s6, ra
                  addi         s2, ra, 1913
                  lui          s0, 297081
                  srli         s1, a4, 26
                  mulhu        s3, gp, s0
                  slti         t4, s8, 1445
                  slli         sp, s5, 50
                  divu         t3, zero, sp
                  srli         a2, s4, 4
                  remuw        t4, t4, a4
                  or           t4, s7, s8
                  srai         t4, zero, 57
                  sllw         sp, zero, s1
                  or           a4, s7, a4
                  lui          gp, 826581
                  div          t4, s1, s5
                  or           t4, s10, s6
                  lui          s5, 962136
                  mulh         a2, s11, a5
                  mulhu        s6, t6, a5
                  xor          s2, s3, t2
                  sllw         s0, t4, s5
                  srliw        zero, zero, 3
                  remw         ra, s11, s8
                  mulw         s11, s7, s5
                  sllw         t0, a4, t5
                  sub          s9, s2, a0
                  mulhu        t3, s4, t2
                  remw         a0, s6, s3
                  sraiw        a0, s11, 15
                  addiw        t2, zero, -416
                  remw         t6, t4, a1
                  nop
                  slliw        a5, t5, 15
                  andi         a0, a5, 1520
                  srliw        t4, gp, 13
                  divw         ra, s6, t2
                  sltu         s4, gp, t1
                  srai         a5, s0, 7
                  addi         s5, t2, -1513
                  divuw        s2, s3, s10
                  sltiu        t3, s1, -724
                  srli         gp, a6, 26
                  addw         s9, ra, a5
                  xori         a4, ra, 648
                  mulh         sp, a0, a3
                  srli         t0, s8, 41
                  srliw        a5, tp, 4
                  remw         s11, a4, s9
                  slt          s5, t4, a7
                  srai         gp, s5, 55
                  remw         s8, gp, a3
                  sltiu        zero, gp, 231
                  mulhsu       sp, s9, sp
                  remw         s3, s5, s5
                  srli         s8, t5, 61
                  nop
                  sra          s0, a2, s5
                  sra          gp, s11, s6
                  addi         t1, s8, 402
                  sltiu        s1, s5, 715
                  srl          t2, t6, gp
                  remu         t1, ra, t3
                  slt          s10, tp, t2
                  srai         s4, a5, 46
                  mulw         s6, s2, s1
                  srlw         t4, s3, a3
                  divuw        tp, t3, a4
                  sra          t2, s6, t4
                  mulhsu       s4, s10, s5
                  mulw         s4, s7, a7
                  sraiw        s11, a5, 21
                  divuw        tp, s3, t3
                  sraiw        s9, s6, 8
                  nop
                  sltiu        s1, tp, 1224
                  mulhsu       t6, s4, a4
                  srai         s1, s8, 36
                  ori          s0, s10, 679
                  sub          s1, sp, a3
                  divw         s7, zero, tp
                  mulhsu       s2, s11, s3
                  slt          t0, t0, s5
                  sll          t1, s8, tp
                  slt          ra, a4, a1
                  sll          a5, s5, a2
                  srli         s5, a5, 16
                  sll          s4, a1, a0
                  sra          a2, t1, s7
                  sub          t5, gp, ra
                  and          s3, a2, s1
                  remu         s7, s11, a0
                  remuw        a2, t6, s0
                  sllw         s5, t0, s1
                  sltiu        s3, t0, 307
                  sraiw        s9, a7, 6
                  rem          a4, a5, t5
                  slti         s7, tp, -909
                  sltu         t4, a1, s11
                  sllw         a4, s11, s11
                  sltu         a4, a7, a3
                  srliw        s8, s4, 5
                  addi         s0, s11, -1698
                  and          t0, s3, s2
                  xori         zero, s9, 1021
                  sra          a7, t0, s11
                  ori          a2, s5, -579
                  divu         a7, s8, s7
                  mul          sp, s8, s11
                  slli         a4, a7, 21
                  slt          gp, t6, s2
                  remu         a0, s1, s2
                  mul          t3, s0, zero
                  slt          s3, t5, s2
                  srli         s5, sp, 18
                  remuw        s3, tp, tp
                  andi         t5, ra, 244
                  sltiu        t3, t4, -1967
                  slt          s2, s2, a6
                  slti         s3, s6, 1790
                  sll          s1, sp, a2
                  ori          gp, t5, 1750
                  srliw        s5, s10, 22
                  div          zero, s7, zero
                  sllw         t2, gp, tp
                  srli         ra, a3, 3
                  sub          t0, a6, t5
                  addi         s7, a4, 1199
                  mulh         a7, t4, t3
                  remuw        gp, sp, s0
                  addiw        s5, a0, 446
                  remu         t6, s0, gp
                  divu         a7, a0, s1
                  mulhsu       a4, s8, a4
                  sub          s7, tp, s6
                  mulh         s11, t4, ra
                  add          s10, t6, zero
                  srliw        s11, s5, 16
                  ori          s3, a0, 524
                  addiw        t6, s2, 130
                  divuw        t3, s11, t0
                  rem          gp, a0, a0
                  and          a5, tp, a2
                  ori          s0, t4, 1980
                  or           gp, a6, a2
                  slti         a0, s10, -989
                  sraw         s5, s4, s7
                  mulh         s6, s2, a7
                  xor          a0, t4, zero
                  sub          s1, a7, s8
                  divw         a7, s6, t3
                  or           a4, t0, gp
                  sra          s10, s5, a2
                  slt          s8, s8, a6
                  sll          s7, s7, a1
                  andi         t3, t1, 825
                  remuw        gp, t5, s10
                  slliw        s8, t5, 24
                  mulhsu       s7, t0, s11
                  srai         a5, s4, 58
                  lui          t3, 520933
                  addw         t3, s8, t6
                  sub          s4, s4, sp
                  nop
                  div          a2, s4, s7
                  sraw         sp, s1, a6
                  nop
                  slti         t0, s4, 1133
                  add          t3, a1, a7
                  rem          sp, a2, a1
                  remuw        s8, s10, s3
                  srliw        s4, t5, 22
                  sltu         t0, a1, s2
                  srl          t5, s8, zero
                  and          a4, t1, tp
                  ori          tp, s10, -1676
                  and          t6, ra, s9
                  sll          a5, tp, s8
                  slt          t5, a0, t1
                  slliw        t5, a6, 30
                  divw         sp, sp, t1
                  add          zero, t6, t2
                  divuw        a7, s3, tp
                  mul          s2, a2, gp
                  xori         a4, a1, 732
                  lui          a0, 195443
                  rem          s11, t4, gp
                  remw         sp, t4, tp
                  slliw        s8, s11, 3
                  srliw        zero, s10, 27
                  ori          a4, s6, -1534
                  divuw        s0, t1, gp
                  andi         t0, t1, 881
                  srlw         s7, a0, s8
                  sll          a7, s4, s7
                  srliw        t1, s6, 1
                  slti         s5, a5, 1244
                  slli         t5, t1, 18
                  divu         a7, s3, t4
                  divuw        ra, s1, s11
                  auipc        s3, 16702
                  auipc        zero, 255345
                  div          a5, a1, a4
                  slli         s6, a1, 56
                  slliw        a0, s7, 25
                  slli         a4, t6, 1
                  auipc        ra, 615904
                  sltu         ra, a4, t4
                  div          s0, s3, a6
                  mulhu        s0, s6, t0
                  divuw        sp, t6, a0
                  mulw         t0, s11, s5
                  slliw        ra, s5, 24
                  addi         s6, gp, 199
                  srliw        s8, s6, 22
                  srliw        s6, a1, 3
                  sraiw        t2, a3, 6
                  sltiu        t0, a2, -1309
                  sllw         a0, s9, sp
                  mulw         gp, s3, gp
                  div          t1, a0, s2
                  ori          s2, a4, -637
                  sltiu        ra, s8, 1499
                  slliw        a2, t0, 1
                  and          s10, s6, t0
                  divw         a2, a1, a1
                  sraw         t2, a2, a6
                  nop
                  srlw         t3, a3, s11
                  remuw        s8, s11, t3
                  mulh         sp, t5, a1
                  srl          s11, t3, t5
                  mul          t1, gp, s3
                  auipc        s6, 560507
                  sltu         s4, zero, a2
                  addiw        t1, a4, 179
                  addiw        s8, a3, -980
                  subw         s9, s6, a1
                  mul          s11, a1, sp
                  mulh         s9, a5, sp
                  xor          sp, t3, t1
                  mulhu        s8, a2, a2
                  sll          s11, s4, t4
                  mul          zero, tp, t4
                  subw         s10, sp, t4
                  addi         t3, s4, -1893
                  ori          s11, s5, -812
                  slt          a5, ra, s1
                  srli         s2, s7, 56
                  and          s10, s3, s5
                  mulhsu       s1, s11, s10
                  rem          s7, gp, a6
                  div          a4, a2, t2
                  subw         t3, s8, s6
                  mul          gp, a7, a0
                  sraiw        a4, tp, 29
                  mulh         s9, a3, a4
                  divw         s2, a2, a3
                  divu         s10, t2, t1
                  mulhsu       s2, s5, s10
                  sllw         s0, s2, s6
                  or           s10, a6, s6
                  srliw        sp, t2, 6
                  slti         t2, a4, 184
                  mulh         s7, s4, a3
                  slliw        a7, sp, 22
                  divw         s9, a5, t3
                  srlw         s2, t6, a1
                  sra          s8, a7, t0
                  xor          sp, a4, sp
                  div          a2, s0, t1
                  and          s8, t3, a5
                  sraiw        a7, s8, 2
                  addw         t6, gp, s5
                  sllw         a2, a7, s11
                  lui          a2, 197736
                  sllw         s5, s7, s8
                  sltiu        s1, a6, 1637
                  divw         a0, s7, zero
                  subw         s1, gp, s7
                  remw         s2, s0, a1
                  sltiu        gp, s1, 229
                  nop
                  slt          t3, a2, gp
                  subw         s7, s7, zero
                  andi         a4, a5, 1743
                  ori          t5, t2, 1072
                  slliw        s0, a1, 17
                  mulhu        a0, s10, s8
                  addi         a4, gp, 1697
                  addiw        tp, s3, 870
                  remuw        s10, s8, a4
                  sltu         a4, s10, a6
                  divuw        s10, a1, a0
                  addi         sp, s10, 640
                  sltiu        a2, s2, -645
                  subw         s6, a7, a4
                  sraw         sp, s2, t1
                  divuw        t1, t2, s0
                  sltiu        a0, t6, -97
                  remw         ra, a2, t5
                  ori          a7, sp, -1840
                  or           a5, a3, s2
                  ori          s2, t0, 1984
                  xor          s1, gp, a7
                  sraiw        a7, s4, 2
                  addi         s1, s8, 324
                  divuw        t3, t1, a3
                  rem          t1, t4, s6
                  sraw         s0, s10, s3
                  srlw         s8, t2, s2
                  addiw        s9, s2, -1121
                  srli         t4, s5, 38
                  divuw        a7, s6, a0
                  xor          t4, t6, a7
                  divw         zero, tp, a2
                  addiw        a7, s5, -1493
                  xori         ra, s7, -1037
                  remu         t0, t6, zero
                  sltu         s7, a5, a7
                  sllw         a0, s0, t4
                  srli         a2, sp, 50
                  sltiu        s9, a0, 2002
                  auipc        s3, 325929
                  sll          a0, t4, tp
                  remw         t3, tp, s3
                  sltu         t2, s9, zero
                  slliw        t3, s0, 8
                  nop
                  or           s10, gp, zero
                  slli         a7, s0, 19
                  mulw         s8, s9, zero
                  div          a5, a2, a1
                  sllw         s7, s3, s3
                  subw         s6, a1, gp
                  srlw         s3, s0, t3
                  lui          gp, 785652
                  srli         gp, t2, 17
                  andi         sp, t5, -255
                  slli         a5, zero, 38
                  sraiw        a5, tp, 24
                  slt          s8, gp, ra
                  remuw        s9, gp, t3
                  sraiw        s10, s10, 31
                  remw         ra, t3, s0
                  mul          ra, ra, t0
                  mul          t3, s10, a6
                  xori         t1, s4, 592
                  subw         zero, gp, s4
                  div          t1, ra, sp
                  srlw         a5, sp, a0
                  mulh         t1, s2, s1
                  or           s3, a2, a6
                  nop
                  div          s2, a4, a2
                  mulhsu       s4, t5, ra
                  addi         t0, s8, 606
                  sll          s3, t4, s4
                  addw         t5, a3, s9
                  addiw        t4, a1, -1464
                  sltiu        tp, a3, 1727
                  srli         t1, a3, 26
                  mulh         t2, s4, s5
                  mul          s7, t1, s2
                  divw         a2, s3, a5
                  addiw        s1, s11, -37
                  mul          s2, s10, tp
                  sltu         a7, gp, t4
                  srl          s0, s5, s6
                  xor          s4, t6, a4
                  mulh         s2, a7, t3
                  addiw        s0, t2, -861
                  sltiu        s8, a5, -1429
                  sraw         gp, zero, s6
                  rem          t4, a1, s4
                  divuw        a5, s3, s6
                  xori         t6, gp, -1580
                  sub          s0, s10, a7
                  nop
                  srl          t2, s9, s4
                  srli         a0, t4, 16
                  sltiu        s0, t0, 990
                  sraw         t1, s6, s5
                  ori          s3, s10, 1616
                  andi         a4, a6, -745
                  addi         ra, s2, 303
                  sltu         s1, a2, a7
                  srlw         t4, a2, a4
                  sltiu        t2, t5, -1862
                  remw         s8, s7, s10
                  rem          t2, s8, s8
                  sltiu        a7, s0, -25
                  divw         s2, a0, t1
                  div          a2, a1, s0
                  add          a0, s0, s5
                  sltu         zero, t6, sp
                  slti         t4, s1, 1393
                  slli         s3, s9, 28
                  srai         t3, a3, 58
                  mulhsu       t0, a2, a4
                  sltiu        s9, s3, -1424
                  mulh         t3, t1, zero
                  srl          s6, s10, a4
                  srli         t3, s10, 21
                  sltiu        t4, t2, -572
                  slti         t6, a5, -439
                  xor          zero, ra, a7
                  subw         t5, t3, s11
                  sll          a5, a5, zero
                  div          t4, s0, t0
                  xor          s6, s2, t3
                  remw         s3, a7, s6
                  mulw         s3, a2, s0
                  slli         zero, s10, 42
                  slliw        t1, sp, 21
                  srliw        t6, s6, 11
                  mulw         s2, t1, t2
                  srai         zero, t3, 0
                  srliw        s11, a2, 29
                  divuw        s7, t4, s1
                  divu         a5, s6, s5
                  remw         t0, s11, a5
                  srli         s3, zero, 56
                  sub          a0, tp, a6
                  srlw         s2, s2, s8
                  slt          t0, s10, t6
                  and          a2, zero, s11
                  sub          t5, s2, t1
                  srl          t2, t1, t2
                  ori          s1, s11, -266
                  or           sp, t1, t3
                  andi         s6, a4, -643
                  divw         ra, s6, t1
                  sltiu        s1, a4, -453
                  slti         gp, a6, -225
                  srlw         zero, a5, t4
                  addiw        s6, s10, -55
                  sllw         gp, s10, s9
                  sll          t4, t2, s7
                  sub          s10, s11, a5
                  sltu         a0, s6, a7
                  mulw         sp, s5, sp
                  rem          a2, sp, t4
                  sltu         s0, t6, s4
                  sub          s10, a3, t6
                  addiw        t0, sp, -1867
                  addi         sp, s7, 2000
                  sraiw        tp, a0, 24
                  xori         t4, s6, -1809
                  slliw        zero, t4, 25
                  srl          s1, s0, a4
                  divw         s8, tp, s3
                  srli         s10, tp, 49
                  sltiu        sp, s1, -1034
                  slliw        s4, t0, 17
                  remw         a0, s11, a6
                  sraw         sp, s1, a0
                  xori         sp, s1, 1207
                  slt          t1, a6, t3
                  srai         s9, s4, 54
                  subw         a7, a4, s9
                  and          s5, s5, t0
                  srl          a5, gp, a1
                  andi         gp, t5, 1822
                  srai         s10, a6, 1
                  subw         tp, s0, ra
                  addi         t2, s7, 44
                  nop
                  srl          a4, s2, s9
                  slli         a4, s11, 57
                  lui          t1, 975242
                  divu         s7, t4, a2
                  mulhsu       t3, s5, s6
                  srliw        t2, s8, 19
                  srli         a7, s10, 42
                  sltu         s9, s10, t1
                  slliw        ra, a1, 11
                  srl          s7, t2, s7
                  sllw         tp, gp, s4
                  srlw         s11, s5, t5
                  srli         a4, s0, 49
                  sub          s4, ra, a2
                  slli         s9, s0, 45
                  slt          t1, s6, a3
                  addiw        a4, gp, -223
                  xor          s11, s0, gp
                  sub          a4, s9, t5
                  remuw        s8, s1, a6
                  addiw        s10, t2, 66
                  sraiw        t2, s1, 11
                  srlw         t0, t4, t4
                  slti         s8, tp, -778
                  add          ra, s4, s10
                  srl          a7, s5, a0
                  and          a0, s3, ra
                  slti         zero, s5, -1989
                  sllw         t1, s10, tp
                  divuw        s1, s6, a4
                  slt          tp, s11, ra
                  mulw         s2, sp, s8
                  addi         s10, s8, -1133
                  addw         t0, a0, s6
                  and          t1, s7, a3
                  nop
                  slliw        a7, t3, 28
                  mulw         s11, ra, t1
                  div          s9, s11, t1
                  sltu         s4, t4, a2
                  div          s8, s5, a5
                  auipc        a0, 841376
                  lui          s10, 137164
                  sub          s0, s7, gp
                  sllw         a2, s6, t6
                  and          s2, s3, t4
                  nop
                  mulhu        tp, a3, s7
                  sraw         s3, sp, s1
                  addi         t4, a2, 1498
                  addw         a2, a7, ra
                  mulh         gp, a2, a1
                  sraw         s7, a1, s2
                  srliw        tp, s3, 2
                  srli         a5, t6, 50
                  sraw         sp, a0, s10
                  sllw         a5, a5, t0
                  lui          s1, 519205
                  mul          t4, a4, s1
                  srlw         t1, s8, a2
                  srlw         s10, t0, s10
                  mulw         s3, s4, a1
                  remw         t6, a5, s11
                  andi         a2, t4, 1588
                  slli         s8, zero, 49
                  auipc        gp, 414991
                  sltiu        s7, s2, -781
                  auipc        s0, 929773
                  sllw         a5, s3, a4
                  srai         s4, s4, 54
                  sltu         s1, a5, t6
                  ori          s7, s11, -72
                  slt          t1, t2, t6
                  mulh         sp, a7, s6
                  and          tp, s9, zero
                  auipc        s7, 152598
                  srlw         a0, s5, tp
                  sll          sp, a1, t2
                  srli         tp, a3, 35
                  xor          gp, s8, s10
                  divuw        t4, s7, t0
                  andi         a0, t2, 919
                  remw         a2, s5, s2
                  slliw        zero, t5, 15
                  slliw        s11, a2, 4
                  rem          s5, s1, a0
                  mulhsu       t0, a7, s8
                  ori          s9, a0, 123
                  mulhsu       s2, s3, t3
                  sub          s10, sp, t3
                  ori          s10, t1, -553
                  remu         t0, a0, t6
                  add          s2, zero, t1
                  sltiu        s3, a1, 1349
                  divu         ra, s4, gp
                  sltiu        s2, s2, 1217
                  srai         a7, a7, 62
                  sllw         zero, a2, s3
                  xor          t4, tp, t0
                  andi         ra, s8, -1437
                  mulhu        ra, t1, tp
                  mulhu        s6, t5, t1
                  sraiw        t3, s1, 1
                  mulw         ra, a1, a7
                  xor          s7, a4, sp
                  remuw        a5, gp, gp
                  mulhsu       s5, s7, gp
                  nop
                  sra          t6, a3, a1
                  remuw        a2, s2, s5
                  andi         tp, s7, -137
                  remw         ra, t2, t4
                  lui          s11, 1029555
                  sub          t0, s4, t3
                  sra          sp, s7, a7
                  sra          t4, s3, a6
                  sraw         s7, s10, sp
                  slti         t4, s0, -1820
                  nop
                  addiw        s1, a7, 946
                  slliw        zero, a3, 20
                  add          s0, s8, t0
                  sllw         s2, s9, s8
                  mul          t6, s1, s9
                  and          a5, t4, zero
                  lui          a4, 616879
                  slti         t6, a5, -1465
                  andi         a4, a4, -574
                  ori          a4, s1, 1497
                  mulhu        gp, a5, s8
                  rem          s6, s4, s10
                  divuw        a2, tp, s9
                  mul          a7, sp, s0
                  mulw         s0, s8, s4
                  remu         s1, sp, t5
                  sltu         t1, s0, s4
                  nop
                  addi         t0, t6, -1377
                  add          a7, s6, sp
                  addw         a0, s6, a0
                  srli         t2, gp, 1
                  addiw        t2, t4, -1865
                  srli         gp, s9, 20
                  mulhu        a2, t6, s7
                  and          a5, s4, t3
                  div          s3, t4, s3
                  divu         s5, s1, a1
                  slt          zero, a2, s5
                  srl          a2, t2, s6
                  remw         s2, s9, t6
                  sub          zero, t2, s11
                  remu         a5, s9, s7
                  srliw        sp, t2, 27
                  sraiw        s9, t6, 27
                  subw         s5, s3, s8
                  slti         a5, sp, -772
                  auipc        s8, 416849
                  divu         t4, sp, s9
                  nop
                  srliw        a2, gp, 0
                  slti         s6, t1, -1368
                  subw         s8, s8, t6
                  div          t0, s2, t1
                  divuw        t3, s11, sp
                  slli         t3, t1, 62
                  sltu         a0, a6, a7
                  addi         t1, a3, -388
                  srli         t6, a7, 60
                  remw         s0, t1, ra
                  mulw         t6, s10, s1
                  and          a2, a5, sp
                  srai         a4, t4, 41
                  sraiw        a2, a2, 17
                  mulhsu       a0, s6, a1
                  srai         a0, s7, 45
                  subw         a4, sp, a3
                  remu         gp, a6, s2
                  nop
                  andi         t5, s3, -1526
                  add          t5, s2, s10
                  addiw        t6, s5, -1256
                  sltu         s2, sp, a0
                  addiw        t1, t4, -828
                  sub          zero, s0, s5
                  srlw         t5, a2, a4
                  slt          s0, sp, t6
                  div          gp, s0, s3
                  or           s11, a1, s5
                  srliw        t4, a2, 9
                  and          t5, s1, a1
                  addw         sp, s11, s10
                  remw         a7, s6, tp
                  sub          t3, a6, s4
                  srl          s2, a1, a1
                  remu         a5, s2, s7
                  or           a2, s4, ra
                  slti         a0, s10, -1582
                  sltu         s2, tp, s11
                  add          a5, a2, sp
                  slliw        t6, t4, 3
                  rem          s5, t0, t2
                  or           t4, s5, t5
                  mulhu        s10, s11, a0
                  addw         s11, t1, a3
                  sltu         s5, s10, a1
                  divu         s10, a0, s1
                  rem          s2, t6, s1
                  xor          t6, s7, s0
                  xori         s8, s9, 0
                  divw         ra, t5, s8
                  nop
                  srliw        t1, s0, 19
                  andi         gp, t1, -1104
                  or           ra, t6, a0
                  mulh         s5, ra, tp
                  div          s10, s4, tp
                  sltu         tp, ra, t1
                  xori         sp, a4, 1519
                  mulw         t3, t2, s8
                  subw         t1, a6, a7
                  sra          a5, a3, ra
                  or           gp, s4, t0
                  sltu         a7, t6, s5
                  and          s3, ra, a7
                  mulw         s10, s3, s7
                  srlw         s2, a7, sp
                  sraiw        t0, t1, 14
                  divu         s1, sp, s9
                  mul          s7, s1, a3
                  addiw        tp, t5, -409
                  addi         tp, a0, 1614
                  sraw         s2, s3, a5
                  and          ra, a2, zero
                  div          a5, s3, a6
                  mul          a2, s10, s11
                  xor          zero, a4, sp
                  and          a0, s0, s11
                  ori          a5, s6, 1502
                  mulhsu       zero, zero, zero
                  srai         tp, s6, 39
                  auipc        gp, 653444
                  mulh         t0, a7, tp
                  sra          a0, gp, t3
                  mulhu        ra, t5, t5
                  subw         s3, s6, t4
                  slliw        a2, t0, 2
                  add          gp, a2, t6
                  or           s10, t2, s9
                  and          s9, s6, t2
                  ori          s7, gp, -484
                  srai         s1, a7, 10
                  subw         zero, t1, t3
                  sltiu        s10, t6, 1993
                  srlw         s8, s4, t2
                  mul          a7, t1, s11
                  sub          s4, ra, a7
                  addi         s3, a4, -1321
                  nop
                  srlw         t4, a3, a5
                  slli         t1, a2, 35
                  add          t5, t3, t2
                  srl          gp, s4, t2
                  divw         s4, t5, ra
                  divuw        s8, s0, s7
                  lui          s7, 262626
                  slti         a5, s1, -1102
                  sltu         a4, a0, a3
                  srliw        s2, s8, 13
                  mulh         t2, ra, s2
                  divu         a4, a7, sp
                  and          a0, s7, s0
                  divw         a2, s10, s4
                  add          t2, sp, s1
                  remu         s2, s0, a4
                  sub          s1, s5, s7
                  div          a7, a2, tp
                  mul          s3, s10, t5
                  addi         t2, a3, 770
                  slti         t2, s10, 605
                  remuw        t2, t0, s4
                  srlw         s0, t5, t6
                  sllw         t1, t2, s6
                  sltiu        s6, gp, 1366
                  remuw        s5, t2, s9
                  div          a2, gp, s2
                  slliw        s9, gp, 21
                  divu         t2, a2, s0
                  div          s6, s2, a6
                  divuw        zero, s8, a1
                  addi         s11, s7, -81
                  srli         s8, sp, 49
                  and          a4, a6, s11
                  sllw         a7, t4, a5
                  slti         a2, ra, 993
                  nop
                  srli         s2, s9, 2
                  srlw         s10, t2, ra
                  mulw         t4, s2, t2
                  divu         s3, a4, t3
                  sll          t3, t2, t2
                  sub          a4, ra, s3
                  srliw        t4, t4, 31
                  srlw         s6, a6, s2
                  divuw        s10, s6, s1
                  mul          zero, t1, t1
                  add          t6, s5, s3
                  slli         s0, s9, 10
                  divuw        tp, s2, sp
                  addi         t2, s2, 1868
                  xor          t4, t0, s10
                  mul          a5, a0, a7
                  divuw        s9, s1, a4
                  srlw         ra, s9, s5
                  sraw         a4, tp, tp
                  lui          t6, 30521
                  sll          s10, a5, t1
                  andi         s2, t4, 1494
                  slti         a2, t3, -1811
                  sll          a4, s5, t2
                  remw         s2, t4, s1
                  srli         s0, s1, 15
                  add          s4, t4, sp
                  mulh         ra, a6, a5
                  and          s11, t3, sp
                  srai         s1, s7, 49
                  divuw        zero, t5, gp
                  mulhsu       a5, s11, a3
                  rem          s8, a5, s1
                  sra          gp, a3, s8
                  sll          ra, t0, s2
                  auipc        a0, 509432
                  remw         s2, s2, s3
                  mulhsu       a2, s0, s9
                  div          a5, a5, a3
                  sll          tp, t3, s5
                  srlw         tp, s7, t3
                  mul          s0, t6, a4
                  remu         t1, t6, s6
                  nop
                  mulh         tp, a7, a7
                  divuw        t5, a5, t1
                  or           tp, ra, t5
                  andi         s8, s2, 1240
                  xor          s0, sp, zero
                  sltiu        zero, s6, 512
                  sraw         a2, s5, s1
                  slliw        t3, s9, 15
                  sll          s7, s3, s3
                  slli         a4, s9, 4
                  auipc        s2, 897145
                  slli         s4, s7, 44
                  sra          s8, t5, t2
                  auipc        s3, 840126
                  add          s7, s7, s10
                  ori          s3, s3, -900
                  slti         s8, t2, 1836
                  mulw         a5, s0, a1
                  divuw        s11, s6, gp
                  mulhsu       a5, a6, s3
                  ori          s11, t3, -617
                  sraiw        t4, a3, 18
                  and          a7, s3, t2
                  remu         s8, a7, ra
                  addw         s9, a0, t5
                  divuw        s9, s2, s4
                  divuw        s4, a7, s1
                  sraw         t1, t2, s3
                  add          zero, a2, a1
                  mulw         s11, s7, a6
                  remw         gp, s4, s7
                  auipc        tp, 219881
                  remuw        s8, s8, gp
                  srl          s4, a0, s11
                  add          s10, ra, s1
                  andi         s6, a4, 1242
                  xor          s11, gp, s9
                  sllw         s3, s5, t5
                  divu         ra, a0, a2
                  mulhu        s2, s4, s4
                  div          tp, sp, t0
                  sraw         s9, a0, s10
                  sraw         s0, s8, t6
                  rem          s11, s1, a2
                  sll          zero, s0, s11
                  divw         t3, zero, a6
                  addiw        t6, sp, 892
                  sltiu        t3, a0, 2015
                  srai         s3, gp, 40
                  slliw        s3, sp, 19
                  srli         s11, s7, 30
                  remuw        t6, s6, s3
                  subw         gp, gp, s11
                  mulhsu       s3, a4, a7
                  remw         s1, s0, s10
                  mulw         s5, s0, ra
                  remw         s2, t1, a5
                  and          a2, a6, t0
                  slt          t5, s1, s3
                  or           s4, tp, s2
                  and          s5, a7, s6
                  rem          s6, s6, t2
                  divu         gp, a5, t3
                  srai         a7, t6, 38
                  srlw         ra, s8, a3
                  srai         t5, t2, 51
                  srl          s1, t5, s5
                  and          t1, a4, s9
                  remu         a7, zero, ra
                  xor          s8, a3, s9
                  mulh         s3, s4, sp
                  addi         s10, t0, -1534
                  sltiu        t4, t5, -1138
                  and          a2, zero, s6
                  sll          s7, t4, zero
                  srliw        a4, tp, 19
                  remw         s11, t4, t4
                  rem          a5, t2, s5
                  mulh         s1, a1, s10
                  sra          zero, a2, s11
                  divu         t4, t0, s5
                  mulw         a5, a1, a3
                  addw         s10, s9, a3
                  srlw         t1, a1, t0
                  ori          s10, t0, -1941
                  sltiu        t6, s0, -928
                  sll          s7, s0, t1
                  mulw         s8, a1, t6
                  divw         a0, s4, gp
                  add          zero, a7, s6
                  slliw        a7, t1, 4
                  sllw         t4, zero, s5
                  addiw        s5, t2, -2007
                  sraw         s9, s9, s3
                  addiw        s2, s4, 1455
                  mulhsu       s4, a4, sp
                  srlw         s0, a7, a0
                  mulhsu       s8, s3, s4
                  divuw        s0, t4, a4
                  sllw         zero, s1, s11
                  nop
                  mulh         t6, t3, t5
                  mulhu        a0, tp, s11
                  divw         sp, a2, a3
                  rem          t6, a3, a6
                  add          s11, t4, s7
                  add          a0, a0, a7
                  mulhu        s6, t3, a7
                  or           t2, s7, gp
                  slt          s6, s1, s10
                  srli         a4, a4, 53
                  srliw        s4, a4, 27
                  ori          a2, t2, 562
                  mulhsu       t4, t6, a7
                  mulh         s0, s10, s1
                  or           a0, s6, s6
                  andi         s8, a2, -1032
                  nop
                  ori          t6, a1, 1502
                  xori         s5, zero, 343
                  addi         gp, t2, 228
                  sraw         s0, t2, s8
                  srliw        s5, s0, 24
                  andi         gp, a6, 478
                  rem          sp, a2, tp
                  srli         s5, a3, 59
                  srliw        s11, a2, 10
                  ori          s1, zero, -1047
                  and          s10, t6, a2
                  slti         zero, a3, 431
                  sub          a0, a3, a2
                  remw         sp, a1, a5
                  slliw        a4, a4, 2
                  div          s2, gp, s9
                  sll          a5, a0, s6
                  sub          gp, a4, sp
                  sraiw        t4, gp, 8
                  srliw        s9, a5, 28
                  slti         t2, t0, -1331
                  mulh         s3, s9, t3
                  addiw        zero, s8, 1518
                  slliw        sp, s0, 10
                  div          s10, a1, a7
                  addi         t4, a2, -1021
                  mul          t1, t5, a1
                  slti         s7, s5, -1191
                  addiw        a2, s11, 1877
                  srliw        s4, a7, 13
                  srli         s4, t2, 21
                  mulhu        s4, zero, a6
                  divw         sp, t6, s4
                  nop
                  srlw         t5, gp, t2
                  sltu         t0, t2, t6
                  auipc        tp, 637737
                  div          s1, t0, ra
                  sll          a7, a6, s10
                  mulw         zero, t6, a1
                  divu         s3, zero, gp
                  ori          s7, s6, -157
                  divuw        s4, a5, a7
                  divw         s1, t1, a2
                  mulh         a0, s3, tp
                  slti         a0, s0, -1942
                  sltu         s8, a7, a4
                  add          s0, s1, gp
                  xori         s0, t1, -26
                  mulhsu       s5, a2, s10
                  nop
                  sltu         a2, t5, s4
                  sltu         t3, a3, s3
                  srliw        gp, a5, 27
                  srai         a5, a7, 17
                  remw         s9, ra, a2
                  div          s2, zero, tp
                  add          a4, s6, s2
                  sraiw        gp, s11, 3
                  divuw        a0, s11, tp
                  ori          t1, s5, -917
                  add          s8, t5, a1
                  slliw        t1, t0, 18
                  addw         s3, t1, s7
                  addi         t4, t4, 53
                  rem          s5, s2, t5
                  mulhu        s9, s3, s10
                  sltiu        s1, s3, 200
                  slliw        a2, s8, 30
                  sraw         a4, t6, tp
                  and          a0, t0, t4
                  slt          t1, a5, sp
                  slti         s1, sp, 1070
                  subw         a5, t4, t4
                  sra          gp, s8, a5
                  addi         s9, a7, 682
                  ori          a5, a6, 1629
                  sub          gp, zero, tp
                  remu         t6, zero, zero
                  sraiw        s3, s4, 16
                  srliw        a2, t6, 7
                  xor          s11, a0, a1
                  sub          a7, a0, zero
                  remu         a2, t1, a2
                  slli         sp, t6, 4
                  sll          s11, t5, t1
                  addiw        s4, s8, 617
                  rem          s4, s8, t4
                  slliw        zero, s2, 4
                  mulhsu       s2, a3, s0
                  srli         s9, a3, 61
                  srli         gp, ra, 35
                  xor          a7, t0, s4
                  mul          s8, ra, a7
                  sllw         s11, s6, t1
                  div          gp, a1, ra
                  subw         tp, s0, s1
                  div          s5, s11, t0
                  or           s2, tp, s11
                  addw         s8, s7, ra
                  divu         s6, a1, gp
                  auipc        a7, 663943
                  divu         s1, s11, a4
                  divu         t5, s9, s4
                  sltu         s7, t0, a4
                  add          t6, s4, a5
                  sll          a5, gp, s7
                  mulhsu       t4, a5, a7
                  srlw         s3, s3, s9
                  sra          gp, t3, s1
                  sltu         t6, s11, a1
                  sll          s1, a1, s5
                  xor          a4, a7, s7
                  mulhsu       s11, a7, t3
                  sltu         a4, s2, tp
                  ori          s9, t6, 850
                  xori         zero, t4, -1135
                  subw         s3, s0, t5
                  nop
                  sra          s8, a3, a6
                  slliw        t1, s2, 26
                  mul          t4, ra, t1
                  srai         a4, t5, 35
                  slli         t3, s0, 60
                  subw         a0, a0, a6
                  slliw        t4, s11, 30
                  xori         s8, a2, -527
                  sll          t5, s1, s0
                  andi         s9, t5, 342
                  add          s2, s0, s5
                  xor          s0, a6, a4
                  sltu         a7, s8, s11
                  divuw        s9, a4, t4
                  slliw        t6, s10, 14
                  nop
                  srl          t3, a7, s0
                  sltiu        a5, a7, 960
                  ori          t6, zero, 775
                  mulh         a5, s3, t5
                  srli         zero, s4, 5
                  lui          t4, 532858
                  slli         a5, s9, 12
                  remw         s2, sp, t1
                  slti         s8, a2, 1947
                  mulhu        t2, a1, s4
                  srliw        s5, s3, 2
                  andi         s8, t6, -399
                  divuw        t2, s3, sp
                  addi         s9, t2, -1564
                  srai         a5, s4, 31
                  addw         t5, sp, t2
                  sll          t0, a2, s6
                  addw         s3, a5, s1
                  mul          s4, s8, t6
                  divu         s6, a3, t6
                  srliw        s5, a5, 14
                  srlw         sp, t0, t4
                  slt          s1, s9, t2
                  ori          s6, a7, -302
                  div          gp, s2, ra
                  mulhsu       t1, a0, a2
                  srlw         a0, s4, a2
                  rem          s3, s1, ra
                  divu         s1, t4, s2
                  sltiu        t1, s3, -1465
                  div          a4, s6, a4
                  xor          t3, s6, s10
                  xori         s9, t6, -1963
                  remu         a7, s7, a6
                  andi         zero, s4, -2000
                  add          a4, t4, s3
                  remw         s5, a3, tp
                  lui          a7, 777888
                  divuw        tp, a4, t3
                  remu         s1, t5, a5
                  div          t1, a5, s5
                  andi         s8, t4, 1972
                  or           t4, s4, a1
                  sll          s11, s6, a6
                  sraiw        tp, t4, 9
                  srli         s5, t4, 11
                  srai         s0, a5, 12
                  sub          a0, s11, s5
                  mulhsu       s3, s2, s11
                  addw         gp, t1, s0
                  sra          s7, a0, s3
                  slti         s11, s6, 1592
                  remuw        a7, s5, a1
                  subw         a2, s7, ra
                  sll          t3, s6, s7
                  divw         s2, s6, t1
                  subw         a5, a2, s8
                  divuw        s4, a6, a5
                  auipc        t1, 743797
                  ori          a5, s6, 1475
                  srlw         s1, a7, s7
                  sraiw        t6, s10, 29
                  addi         s10, s11, -388
                  sllw         s2, t4, s10
                  srai         t0, a2, 56
                  sllw         tp, s9, a0
                  mulw         t1, sp, a4
                  srl          t1, a2, t0
                  mulw         s10, t1, a5
                  sub          a5, t0, t0
                  add          t3, tp, s1
                  sltu         s4, a6, s2
                  mulhu        s9, t5, s10
                  mulw         a2, a7, s7
                  mulh         t5, s4, gp
                  divuw        a4, t1, t2
                  divuw        s2, s3, t1
                  rem          sp, s6, a4
                  sll          s2, s0, t5
                  addiw        t0, s3, -69
                  remw         ra, a6, a3
                  mul          gp, t4, s5
                  addiw        s6, a2, -1335
                  andi         s10, t6, 1394
                  add          ra, sp, a2
                  divuw        s0, ra, s1
                  mulhsu       s10, a0, s2
                  srai         s11, sp, 46
                  remw         a4, s1, s11
                  mul          s8, s5, a0
                  remw         a0, s4, t1
                  srai         s0, t6, 34
                  srl          s2, s0, s6
                  mulh         t4, a5, a2
                  xori         s3, a7, 1149
                  divuw        t6, s5, ra
                  subw         s6, s1, s5
                  remw         t6, t3, s1
                  ori          t1, a0, 448
                  sra          a7, t6, t3
                  remw         zero, gp, gp
                  divu         s0, zero, tp
                  srliw        a5, s2, 22
                  remw         s5, a5, s7
                  add          zero, sp, sp
                  divw         t0, s7, t1
                  remuw        a7, s0, s8
                  srl          s6, t2, s3
                  auipc        a2, 780545
                  xor          a0, t0, s9
                  remw         s4, a6, s4
                  sraw         t6, s2, t2
                  div          t3, t3, gp
                  addw         sp, s3, t5
                  and          s6, a2, s9
                  srl          s10, s1, a1
                  divu         s7, a3, gp
                  sltu         a2, zero, s5
                  subw         a7, ra, s11
                  sraw         t2, a3, t0
                  and          a0, s9, s10
                  or           t5, a7, t1
                  sub          t3, sp, s5
                  mulhsu       gp, s4, a3
                  srlw         t3, tp, sp
                  srai         s9, tp, 28
                  auipc        t0, 51363
                  auipc        t4, 909284
                  sra          ra, s6, s4
                  nop
                  rem          s11, s9, s6
                  sll          s8, gp, s10
                  addi         t2, a2, 716
                  mulhu        t5, s9, gp
                  and          t1, t2, a0
                  ori          zero, a2, -187
                  mul          s11, s7, t5
                  subw         t0, tp, ra
                  mulhu        zero, t2, s10
                  remw         s1, s11, s11
                  remu         s4, a1, ra
                  srliw        t2, a4, 27
                  divw         s11, t1, s3
                  lui          s0, 650968
                  srl          s10, s7, sp
                  sll          a0, a6, s9
                  addw         a2, t1, a4
                  divuw        sp, a3, a4
                  sraw         t6, s1, a6
                  divuw        s8, t0, zero
                  nop
                  slti         tp, s2, 936
                  sltu         t4, t2, a4
                  slliw        t4, s3, 20
                  rem          a2, s10, a3
                  and          s4, s9, a2
                  or           s5, s0, s6
                  remuw        a0, zero, t1
                  rem          t0, s5, tp
                  srlw         s1, s5, t4
                  remw         tp, a2, a3
                  auipc        a0, 912524
                  div          t4, s5, ra
                  addw         t4, t6, t1
                  divw         ra, s11, s3
                  subw         a2, s5, t6
                  srai         t6, a6, 35
                  slt          a2, a1, s7
                  sltiu        s11, zero, -1156
                  and          s6, a7, s4
                  divuw        a0, s9, s8
                  sraw         t5, a0, ra
                  slli         t5, t4, 25
                  srai         s2, s8, 43
                  slt          t6, a0, a4
                  srai         s4, a0, 57
                  sltiu        t1, s9, 1558
                  mul          s2, s4, s8
                  sltiu        t6, s1, -1797
                  divuw        s2, a7, gp
                  slliw        s10, s0, 1
                  addi         t0, s4, 802
                  mulhu        tp, a0, s0
                  srai         ra, t1, 44
                  auipc        s11, 865031
                  sub          t5, a1, tp
                  srlw         s6, t0, sp
                  xori         a0, s0, -814
                  add          zero, s6, s9
                  sraw         t5, s10, s6
                  nop
                  nop
                  add          a2, a3, a6
                  sltiu        a5, t3, -364
                  ori          s5, a4, -643
                  srl          gp, s0, t3
                  sraw         s1, a7, a4
                  remuw        tp, t6, a6
                  and          s4, s7, s0
                  slliw        a7, s0, 18
                  sltu         s9, t3, t3
                  slli         a2, t3, 60
                  slt          t3, a6, a2
                  mulhsu       s9, s1, zero
                  sllw         s9, a5, t2
                  add          t6, a3, t0
                  slti         s8, s4, -1015
                  xori         s10, t6, -631
                  or           s10, s0, s3
                  lui          s6, 228021
                  rem          s4, a4, s4
                  nop
                  mul          s1, s2, gp
                  div          zero, zero, a1
                  slti         tp, s9, 243
                  sra          t5, s10, t5
                  slliw        t1, t3, 0
                  andi         zero, s9, 510
                  mulhu        s1, ra, s7
                  addi         tp, t6, -1035
                  sll          s4, t6, s10
                  srli         t5, s0, 57
                  slt          t3, s1, t3
                  remw         s11, a2, t3
                  mul          a4, tp, t0
                  auipc        t2, 83666
                  slli         s10, s10, 18
                  addi         s9, s5, -634
                  mulhsu       a7, a1, s5
                  mul          s0, t5, s10
                  mul          zero, gp, gp
                  andi         s0, a2, -2022
                  mulhu        tp, s8, s3
                  sll          a0, tp, s11
                  srlw         tp, t6, s3
                  divu         t5, s7, s11
                  sltiu        s2, s10, -1050
                  sllw         s2, s0, t4
                  slli         t5, a3, 35
                  divu         zero, t2, a0
                  srl          t5, t6, s8
                  xori         s5, s10, 1029
                  sllw         t1, s6, a6
                  sub          a2, s1, s6
                  and          s11, s3, a4
                  mulhsu       t0, a4, s5
                  auipc        a7, 73103
                  sll          t2, s1, a2
                  mulw         a7, s8, t4
                  addw         s11, s11, t3
                  addi         a0, s0, 1158
                  sub          sp, s3, a1
                  divw         sp, s11, a6
                  rem          t1, t1, s6
                  mulw         a2, a1, s1
                  and          t1, t2, a6
                  divu         t2, s6, t3
                  srli         gp, a0, 59
                  srlw         a7, t2, a0
                  remuw        s10, ra, s1
                  srliw        s4, gp, 5
                  xor          t0, t5, a4
                  add          a5, s6, a2
                  andi         a4, s0, 517
                  srlw         s2, a1, a4
                  sra          s1, a7, s2
                  srlw         a0, sp, s2
                  nop
                  srai         t1, s10, 12
                  sll          tp, s9, s11
                  slt          a5, s11, t1
                  sub          zero, a7, a5
                  sraiw        a5, sp, 10
                  mulhu        tp, tp, t3
                  sltu         s10, a2, s4
                  srlw         t6, t1, s0
                  srli         a5, sp, 27
                  auipc        s1, 625230
                  sltu         a4, s2, s0
                  srliw        a2, s10, 28
                  divw         gp, ra, sp
                  mulh         t2, a4, t0
                  subw         a5, zero, s4
                  mul          t1, a2, a6
                  divw         s4, gp, zero
                  remw         a7, a0, t3
                  slti         s4, s7, -1012
                  xori         a4, t6, -518
                  remuw        a4, s7, gp
                  sllw         s4, s10, t3
                  srli         s10, gp, 34
                  addw         a0, s9, zero
                  andi         zero, s5, -1974
                  addw         s6, a2, t5
                  slliw        s7, s10, 11
                  mulh         s6, s7, a1
                  or           ra, s0, s3
                  lui          gp, 1045660
                  remuw        t1, s9, s11
                  divuw        zero, t4, t6
                  div          a2, t0, t6
                  remw         a0, a4, s6
                  remuw        s1, s9, a2
                  sllw         ra, s3, t2
                  srl          a4, s4, s10
                  rem          zero, t3, t1
                  mulh         s3, s1, t4
                  andi         t0, s5, -1191
                  or           s0, a7, s7
                  xor          s1, a2, t5
                  srai         s4, t0, 50
                  sraiw        s8, a5, 13
                  srl          ra, s10, t1
                  auipc        s0, 921384
                  xori         sp, s6, -431
                  remw         ra, gp, t0
                  or           t1, s5, s0
                  mulhsu       s6, ra, zero
                  addiw        t4, s3, 1826
                  slli         t0, a3, 27
                  sraw         s5, s11, a0
                  mulw         s1, s0, a5
                  mulhu        zero, a7, a2
                  srl          s1, s8, s8
                  mulw         s10, s3, s9
                  mulw         a7, s6, a2
                  srli         s7, sp, 63
                  sub          t4, a5, t6
                  slti         s1, s10, 41
                  remw         s5, s9, t0
                  nop
                  rem          ra, a1, sp
                  sub          s6, a2, a2
                  srli         s9, a0, 9
                  mulh         t0, s9, s6
                  sltiu        a4, a2, -1277
                  srl          s11, a4, a0
                  addw         a5, s8, a1
                  divw         a5, tp, a4
                  sra          t3, t0, a7
                  sll          s6, a6, s3
                  ori          t3, ra, 1336
                  auipc        s2, 658762
                  lui          a5, 767017
                  remw         s1, t4, sp
                  addiw        t2, a7, -1950
                  nop
                  sltiu        s9, ra, 681
                  sraw         s6, s1, gp
                  mulh         s1, s6, s10
                  sll          t4, t2, s3
                  slliw        s11, t5, 10
                  sltiu        t6, s11, -1266
                  sub          t6, t2, t0
                  sra          s4, s0, s0
                  mulw         t4, s6, a3
                  srliw        sp, s3, 22
                  addw         t0, ra, s4
                  and          s4, gp, s4
                  addw         a5, s8, a1
                  addw         zero, s2, s3
                  mulhsu       a0, s9, t0
                  slli         s1, tp, 25
                  srli         s5, s8, 36
                  andi         t1, s7, -1976
                  mulhu        t4, s8, s2
                  mulw         s11, s3, s1
                  addi         s10, a5, -1212
                  xor          s3, s4, s4
                  lui          a5, 317821
                  sll          s6, a3, t2
                  addi         a4, s7, -1343
                  slti         s4, s11, -883
                  divw         t1, t0, a6
                  auipc        a5, 569687
                  srli         zero, s11, 27
                  and          gp, t0, s10
                  slliw        a2, t4, 31
                  remu         s6, a6, s7
                  subw         sp, s5, sp
                  addiw        gp, sp, 1396
                  sraw         s9, s7, sp
                  auipc        s2, 412507
                  remuw        t0, s4, t5
                  andi         s9, a1, 568
                  addi         s11, t4, -1888
                  sltu         t2, s11, t3
                  lui          a0, 859509
                  or           ra, s0, t5
                  lui          s1, 388377
                  mul          a7, t3, s3
                  sll          ra, ra, s8
                  rem          s3, s6, a3
                  or           t4, s11, sp
                  auipc        s1, 110429
                  addw         a5, t2, s4
                  srliw        tp, s1, 25
                  remw         ra, t5, s10
                  andi         s0, a4, -1826
                  srl          sp, s8, a5
                  addi         a7, t4, -1946
                  sltu         ra, t0, a1
                  ori          t4, t0, 302
                  addw         s4, a4, a5
                  auipc        a0, 391020
                  remu         s1, s5, s9
                  auipc        zero, 211694
                  mul          gp, s0, a5
                  sraiw        t3, t5, 16
                  srl          s7, ra, a5
                  srlw         s0, ra, sp
                  sub          t2, t4, a2
                  nop
                  slli         a7, s2, 55
                  and          a5, a1, gp
                  sll          zero, a7, t0
                  add          a0, s4, ra
                  andi         sp, a0, -1350
                  rem          sp, a4, s2
                  auipc        tp, 61167
                  divw         t4, sp, gp
                  sra          t3, t3, s4
                  slli         s2, s4, 58
                  add          s5, ra, a1
                  mulhu        s8, a4, a1
                  srlw         a7, s5, s2
                  sltiu        t3, s8, 1614
                  sltiu        s5, s0, 1923
                  ori          s1, t2, 1979
                  div          s11, t4, s11
                  srai         gp, sp, 29
                  and          s11, s10, s11
                  sltiu        s10, a2, -1778
                  sraiw        a7, s0, 7
                  auipc        zero, 692780
                  slti         s4, a5, 2045
                  remuw        a7, s3, t2
                  addw         s2, s7, a5
                  add          tp, sp, t3
                  slti         s3, s11, 1335
                  andi         s8, a7, -1400
                  slliw        s0, a4, 11
                  add          s11, t5, s6
                  mulw         t1, s8, s10
                  mulhsu       t3, t4, a2
                  slt          s7, a5, a3
                  divw         s11, s1, tp
                  divuw        s4, t3, a2
                  auipc        s7, 1010337
                  remuw        s7, t0, s10
                  xor          a5, s0, s1
                  slli         s3, t2, 38
                  slli         s6, t5, 38
                  slli         sp, s2, 5
                  xori         zero, s3, 1449
                  slt          a4, s0, gp
                  mulhsu       s8, s6, s11
                  andi         t1, a7, 757
                  mulw         t5, s2, tp
                  remu         t2, s1, s11
                  srlw         s2, sp, s8
                  sllw         t1, t3, s5
                  sub          t6, s5, t2
                  sraw         s10, a3, s10
                  sub          s1, t1, t2
                  ori          s10, t4, 899
                  mulw         sp, s7, ra
                  div          t3, a4, ra
                  sraiw        a0, t3, 18
                  sltiu        s0, a3, 608
                  sraiw        t5, ra, 17
                  addi         s7, s3, -201
                  sltiu        s7, a1, -1166
                  xor          t6, s9, s9
                  ori          a5, a1, 1997
                  srli         s8, t6, 46
                  srlw         t0, tp, a7
                  subw         gp, t2, a7
                  mulhu        ra, t0, ra
                  divuw        zero, t5, t3
                  xor          t5, a6, a4
                  sub          t3, s1, tp
                  addi         t1, a4, -1216
                  slti         a2, sp, -271
                  slliw        s4, s5, 2
                  mul          a5, s2, a2
                  divuw        a4, t2, tp
                  addw         sp, t2, t1
                  auipc        tp, 995041
                  srli         s5, sp, 28
                  sltiu        t5, a4, -1962
                  lui          s1, 416863
                  sll          s2, t2, gp
                  auipc        s10, 361825
                  sraiw        s3, s5, 31
                  remuw        a5, s2, ra
                  addw         t4, tp, s8
                  lui          a2, 249729
                  sra          s7, t2, a2
                  nop
                  mulhu        s8, s9, s9
                  andi         s3, s3, -948
                  lui          t5, 398053
                  slt          s0, a6, s3
                  div          t3, s4, t3
                  or           t1, s2, s8
                  divu         sp, a5, a5
                  andi         s6, s9, 451
                  slliw        t2, a1, 26
                  addi         a5, gp, -93
                  addiw        t2, a3, 1385
                  auipc        s1, 1043474
                  div          gp, t2, s8
                  xor          s8, s3, a5
                  sltu         t0, t4, a2
                  subw         a7, t6, t3
                  ori          s7, t3, 1174
                  divuw        t6, t2, tp
                  slliw        sp, s10, 27
                  or           t5, a7, s8
                  remw         s2, a5, s4
                  sraw         a7, s0, s5
                  divw         a2, s8, t6
                  sub          t1, t2, t3
                  srai         s8, t5, 5
                  mulw         ra, t5, t5
                  srai         t3, s2, 17
                  rem          t0, s6, t5
                  mulhu        s6, t1, a3
                  mulw         t1, s7, s7
                  xor          t3, s2, t6
                  mulw         s11, s10, s9
                  sltiu        a5, s6, 1299
                  and          zero, s2, s2
                  or           s3, a5, a2
                  mulhu        t0, ra, s5
                  sub          zero, gp, s2
                  slti         a0, s10, 1943
                  mul          t5, s9, t5
                  slti         s5, a1, -1092
                  addw         s7, s8, gp
                  xor          t3, s3, t6
                  xori         s8, sp, -1950
                  remuw        t6, a4, a0
                  sra          s1, zero, s11
                  divw         s4, s9, t6
                  srlw         a7, t1, s1
                  sub          s6, a7, ra
                  sub          sp, s9, a0
                  ori          s8, a3, -715
                  divuw        s3, s3, t2
                  srli         s8, a2, 45
                  sll          a5, a4, a7
                  sltu         s10, a5, a4
                  lui          t4, 180572
                  ori          s8, s1, 753
                  slli         s11, t0, 1
                  sllw         ra, a1, t3
                  andi         zero, s3, -261
                  sraiw        s1, t4, 0
                  nop
                  auipc        tp, 449968
                  sraiw        sp, s11, 20
                  add          a7, a2, s2
                  mulhsu       s11, t2, a4
                  add          t6, t3, t3
                  slti         a7, s7, 1196
                  slli         a7, t2, 19
                  sraw         s7, zero, t4
                  remuw        s6, gp, gp
                  addi         a2, a7, 1177
                  andi         t4, s8, 1225
                  divuw        s7, s10, tp
                  xor          t0, a1, a2
                  sub          s2, sp, s4
                  xor          s8, s3, t1
                  slt          s3, t3, s11
                  subw         t6, s5, s7
                  srli         s7, a0, 33
                  xori         s5, s11, 1156
                  andi         t5, a2, -1866
                  ori          a0, s10, 398
                  srlw         s5, gp, s8
                  lui          gp, 717983
                  slti         s6, t0, -1038
                  addw         t2, a2, s6
                  div          a4, tp, s0
                  srlw         s7, s2, sp
                  and          a7, a2, a0
                  rem          s4, sp, s8
                  rem          zero, sp, t0
                  xor          a2, ra, t3
                  divuw        s7, a0, a7
                  mulhsu       sp, a4, s6
                  sra          sp, t6, s7
                  slt          zero, s7, a4
                  remu         a7, sp, tp
                  sraw         s7, a2, ra
                  sll          s8, t4, t5
                  srl          sp, s5, s4
                  addiw        s1, a3, 1944
                  sltu         s11, a7, s8
                  slliw        s4, ra, 21
                  andi         s3, a6, 1042
                  divw         s9, a2, a0
                  srliw        zero, a3, 30
                  mul          s4, s1, s5
                  subw         s1, s4, s8
                  mulw         t4, zero, t5
                  xor          sp, t6, s8
                  xori         s1, a4, -1863
                  srlw         s11, s2, a3
                  addw         t1, a5, a1
                  auipc        a5, 458720
                  remuw        s7, a5, s2
                  slliw        t4, a5, 13
                  mulh         sp, s2, a0
                  srli         a2, gp, 59
                  slti         a7, t5, 972
                  slt          s1, t2, s1
                  subw         s10, gp, a0
                  auipc        s1, 862086
                  remu         s1, t0, s9
                  remw         sp, s2, sp
                  subw         t1, s7, a5
                  subw         tp, t2, s3
                  srli         s5, s4, 28
                  srli         s11, s9, 15
                  mulhsu       t3, a5, t3
                  mulhsu       t1, zero, t0
                  ori          ra, t5, -926
                  remw         t4, tp, s10
                  sraiw        a7, a4, 22
                  remw         t4, ra, t1
                  remw         a2, zero, t4
                  subw         t3, a6, t5
                  divu         t2, s7, s6
                  xor          a4, s6, s2
                  sra          s1, s0, s8
                  sraw         s10, sp, s3
                  slli         s11, t5, 1
                  sll          sp, a6, a3
                  nop
                  sll          s7, t1, t4
                  add          s10, sp, a1
                  andi         t1, t0, 508
                  rem          s8, t5, t3
                  div          a2, a5, gp
                  subw         gp, s5, s11
                  divu         a2, a2, s1
                  srl          t6, s4, t4
                  slli         zero, a0, 9
                  xori         t0, gp, 413
                  mulhu        t4, a1, a1
                  nop
                  xori         t4, s7, -1056
                  divw         s3, a3, ra
                  auipc        s11, 907673
                  xori         a7, s5, 1561
                  lui          t2, 701235
                  andi         sp, s1, -817
                  mulw         s3, s5, s2
                  srlw         t6, t3, a6
                  slliw        t6, t0, 4
                  slti         s8, a0, 500
                  mulw         t5, t3, zero
                  addw         a4, t0, t5
                  sraw         t2, s2, a3
                  auipc        ra, 414875
                  addi         t5, t1, -452
                  xor          t0, a4, t5
                  srliw        s4, a2, 1
                  mulhu        s1, s11, t6
                  sra          t3, a0, s0
                  srlw         t0, s6, s5
                  and          s6, s8, t5
                  mul          s5, a7, gp
                  divuw        a5, a0, a2
                  sra          gp, a4, a6
                  subw         t0, s6, s4
                  ori          a2, a5, -791
                  andi         t3, t0, -28
                  divw         s3, s4, t0
                  sltu         gp, s11, s7
                  sllw         s7, a4, s2
                  mul          a4, s8, s6
                  xori         s8, a5, 769
                  srliw        a2, ra, 29
                  mulhsu       s1, gp, a3
                  and          s9, a6, s4
                  xori         s10, tp, -1418
                  rem          zero, zero, a7
                  srai         s2, a7, 45
                  srl          s8, t1, a0
                  lui          a7, 345395
                  auipc        s0, 395070
                  srl          t4, s6, t0
                  remw         s8, t1, a6
                  sraiw        t5, a1, 8
                  divu         s5, s1, s5
                  sll          t0, t6, a0
                  auipc        t1, 410677
                  sraw         t4, t2, s6
                  sllw         gp, a5, a7
                  remuw        s11, s0, a0
                  sraw         a2, s10, s0
                  sllw         tp, t4, s5
                  nop
                  mul          a0, a2, t1
                  xor          t5, a2, a5
                  nop
                  divw         s0, s9, s4
                  mulh         a5, s6, s3
                  remw         s5, a6, sp
                  srli         s8, s2, 22
                  srlw         t2, a2, a0
                  mulhsu       gp, s6, s7
                  divuw        a0, a2, t5
                  subw         s7, a3, s3
                  addw         gp, a2, a6
                  and          a5, t3, sp
                  subw         a4, tp, zero
                  and          t4, s10, t0
                  slt          s9, s6, gp
                  slliw        t5, a5, 20
                  sraiw        s1, t6, 20
                  rem          s5, a0, tp
                  sub          s0, t1, s10
                  addiw        zero, gp, -863
                  slti         s9, s7, 1625
                  xori         s0, a2, 2027
                  div          s10, s10, s9
                  srli         t4, t2, 3
                  subw         t4, a1, s0
                  sraiw        zero, sp, 27
                  srli         gp, a0, 63
                  remw         s8, s11, s11
                  lui          a2, 33815
                  divuw        sp, a4, a1
                  mulhsu       s7, tp, s1
                  addi         sp, a7, 1327
                  addi         ra, t1, 1142
                  srl          a7, t1, a0
                  lui          s1, 695488
                  add          t2, ra, s2
                  subw         s6, a3, a4
                  or           s0, ra, s9
                  xori         s0, s2, -1551
                  slli         gp, a4, 47
                  sra          tp, zero, s5
                  rem          s9, s8, s0
                  nop
                  or           s11, a3, a5
                  addiw        t5, a6, -594
                  mulh         s11, s6, a3
                  addiw        ra, s2, -1361
                  divuw        t2, s10, s10
                  slti         a0, tp, -983
                  nop
                  slli         s1, zero, 17
                  divw         s1, t3, s3
                  auipc        t0, 388520
                  addi         t6, s2, 1164
                  subw         ra, t5, s1
                  mul          t4, t6, s0
                  sltu         a4, s3, s10
                  ori          a5, zero, 1308
                  srliw        a5, t3, 4
                  andi         s8, t4, 1750
                  div          t3, s3, t1
                  sub          t4, ra, t4
                  sraiw        tp, s10, 15
                  ori          s11, a5, -136
                  addiw        a4, a4, 1164
                  addiw        t5, t5, 1469
                  add          s6, s11, s10
                  srai         s4, t2, 27
                  slti         s2, s0, -636
                  divuw        s6, s11, t5
                  auipc        zero, 290858
                  mulh         t2, a1, t6
                  sltu         a5, zero, a0
                  divuw        a5, a2, s5
                  or           a0, zero, a1
                  addiw        zero, s4, 1676
                  srliw        s11, zero, 15
                  lui          t4, 1047515
                  sraiw        a0, a7, 30
                  xori         sp, s4, -1168
                  srl          t4, gp, t4
                  sltiu        s5, ra, 1475
                  sraw         t6, s1, s3
                  rem          s4, t6, t0
                  slti         s9, t6, -519
                  remu         s3, s4, s9
                  remu         t0, sp, s7
                  remuw        ra, t6, s0
                  remu         gp, s9, t5
                  nop
                  sra          s2, s0, a6
                  and          s5, t0, t5
                  xor          ra, t6, a3
                  addw         a2, tp, t3
                  ori          s4, s2, -603
                  sra          t4, t3, s8
                  rem          ra, a3, a7
                  mulhsu       sp, s8, t0
                  or           gp, s7, t4
                  sltiu        s3, t5, 251
                  sltu         s7, s7, a0
                  and          t0, s1, zero
                  sra          s0, s3, a3
                  div          t6, a6, a6
                  addw         s0, s5, t3
                  addw         a5, sp, t2
                  or           a4, a4, t0
                  sra          t4, a7, t1
                  sltu         s6, a4, s2
                  addiw        a0, tp, 312
                  srli         t3, s6, 27
                  addi         s7, s1, -317
                  add          a7, sp, a2
                  sltu         tp, a1, s6
                  divw         s5, t0, t2
                  srl          t0, tp, a1
                  or           s11, t4, t2
                  lui          t2, 487568
                  or           t0, s11, gp
                  add          gp, s1, sp
                  mul          t6, s7, t4
                  rem          t3, t2, zero
                  auipc        a2, 640545
                  sltu         s4, a5, s11
                  addw         tp, s6, s9
                  divu         t1, s2, sp
                  addw         t4, s5, s10
                  srl          ra, a6, t1
                  srai         t0, zero, 55
                  auipc        t3, 909615
                  lui          a2, 112863
                  addi         s2, s5, 519
                  xor          s9, tp, s8
                  srl          t3, s6, t5
                  lui          t2, 718305
                  srli         sp, s8, 24
                  srliw        s11, t1, 2
                  xori         s1, s11, 569
                  srli         t4, t2, 31
                  srl          t0, a1, a0
                  remw         s1, a1, a5
                  rem          t4, a1, t4
                  slti         a7, a6, -5
                  addiw        s1, s6, -253
                  srl          a7, s5, s10
                  srl          s10, gp, gp
                  srli         a2, s10, 38
                  remw         s0, gp, t1
                  add          s9, t0, ra
                  srliw        a4, t5, 1
                  lui          s2, 863362
                  srli         s3, t2, 5
                  remuw        s3, t0, a0
                  srl          s11, ra, a3
                  srli         a2, t4, 23
                  rem          s10, s0, t5
                  srliw        s7, gp, 7
                  srai         tp, a5, 22
                  remu         t5, s3, t0
                  srlw         s6, t3, s2
                  auipc        s4, 994053
                  or           s9, s9, gp
                  mulhsu       s8, s4, a0
                  sraw         s0, a1, s11
                  mulh         t1, t0, a6
                  addiw        s8, tp, 1444
                  mulh         t2, s2, s7
                  and          t5, s3, a1
                  sub          a0, t6, a2
                  slti         a4, s10, -1310
                  or           s1, a7, s2
                  sll          s5, sp, t1
                  sraiw        a5, s3, 0
                  srai         tp, s8, 24
                  andi         t1, a2, 675
                  sltiu        a4, a2, 402
                  rem          t4, s6, t2
                  mulw         s9, t2, ra
                  xori         s8, t0, 1560
                  remu         s6, zero, s5
                  div          t1, s11, s4
                  slt          a7, s10, s0
                  srli         s0, t2, 23
                  mulhsu       s10, s5, tp
                  or           s1, s3, a3
                  sll          gp, a1, s2
                  remu         a4, t6, t2
                  mulh         s5, s7, ra
                  remw         s5, t6, sp
                  sll          s1, s11, ra
                  srli         s2, s7, 61
                  remu         s2, sp, s5
                  sraiw        s8, a1, 29
                  divuw        tp, a1, s11
                  remuw        a0, t3, a2
                  xori         s4, s5, 1665
                  addw         s9, t2, t1
                  sraiw        s6, a5, 9
                  sltu         s7, a2, a6
                  sraiw        a5, t0, 13
                  remuw        s4, s0, t5
                  mulw         a7, s0, t2
                  or           tp, sp, ra
                  xori         s6, s3, 496
                  sra          t1, sp, gp
                  slli         s1, t5, 56
                  ori          s11, t0, 850
                  divuw        s6, a7, a2
                  addw         a5, ra, a6
                  div          a0, t6, s10
                  divuw        t6, s7, s2
                  slli         s8, s0, 45
                  divuw        s10, a2, s8
                  sub          gp, a7, s11
                  srl          t4, s8, s0
                  mulhu        s1, t5, a1
                  addw         t5, a7, s7
                  addw         s0, t6, s6
                  srl          t4, s1, s10
                  xor          s0, s6, s10
                  auipc        s7, 876159
                  or           a2, s7, s7
                  sll          t0, t0, gp
                  andi         t2, t1, 277
                  sub          t3, zero, s9
                  addiw        t6, s3, -1
                  addiw        s8, gp, -1332
                  addiw        s10, s0, 871
                  subw         t0, s8, a1
                  srli         sp, a4, 5
                  sltiu        a2, a2, -413
                  srli         t3, a3, 25
                  andi         s8, t5, -1436
                  mulhsu       a7, s6, t0
                  nop
                  add          s1, t6, a2
                  remu         t0, a7, s5
                  remw         t1, s4, a2
                  srliw        s5, s6, 20
                  srl          t0, s6, t5
                  mulhsu       a7, s2, a2
                  remu         a2, s5, t2
                  ori          tp, a4, -655
                  sltiu        t5, sp, -1147
                  srai         t0, s5, 14
                  srai         s4, s5, 58
                  srl          s0, gp, tp
                  srai         s2, t3, 26
                  add          t6, ra, t4
                  mulw         s2, s4, a7
                  remuw        t1, s1, a1
                  lui          s10, 142632
                  remuw        s8, s4, t5
                  srliw        a0, a0, 26
                  ori          zero, t0, -767
                  sraw         t6, sp, s11
                  lui          gp, 664734
                  sltu         a0, t1, sp
                  divw         t5, t4, tp
                  addw         s1, t4, a0
                  remu         t2, s8, s0
                  mulw         s4, sp, zero
                  srli         tp, t2, 14
                  remuw        t6, gp, s10
                  addw         s8, t1, s11
                  sub          t1, t2, a0
                  subw         t0, a7, a5
                  srlw         gp, s2, ra
                  sraiw        a2, t3, 1
                  subw         s3, s5, s6
                  auipc        s7, 412250
                  sra          zero, s8, t5
                  add          ra, s7, s8
                  auipc        ra, 1002841
                  xor          t1, s3, s10
                  auipc        a7, 409587
                  srai         a2, t1, 36
                  addiw        s9, a6, 1061
                  addi         t2, t6, 1793
                  srlw         t5, s2, t2
                  sll          s3, t3, s4
                  mul          t2, a3, s5
                  sub          s10, t4, sp
                  remuw        s2, t6, a7
                  srli         s11, s0, 41
                  sllw         s9, t1, s9
                  mulhu        gp, t0, s1
                  ori          s9, a3, 1805
                  sraiw        s8, s10, 15
                  srl          s2, t5, t4
                  srli         t6, s10, 5
                  mul          s2, a4, t6
                  add          gp, s4, t6
                  add          s1, t1, a5
                  divw         s7, s9, a5
                  rem          s9, s7, sp
                  remuw        s9, s9, a6
                  mulhsu       zero, a2, t5
                  sllw         s11, s10, a4
                  addi         s7, a3, -322
                  srliw        t0, t3, 9
                  div          t0, s9, s2
                  xor          t3, tp, s9
                  srliw        s3, s1, 7
                  xori         t2, t1, -1937
                  slt          t0, a7, a2
                  ori          t0, s2, -1940
                  xori         s9, a2, -270
                  sll          t1, sp, s5
                  sltu         t2, t0, a2
                  addw         s8, s1, a1
                  srlw         s2, s10, s9
                  divw         sp, t0, t3
                  sraiw        ra, s5, 22
                  sll          a5, a7, t6
                  addi         s7, s11, 331
                  srli         s3, tp, 31
                  addiw        s6, t2, 522
                  rem          ra, s1, s3
                  slt          t2, a4, a5
                  slliw        s10, a6, 15
                  sub          s4, a5, s2
                  or           tp, ra, t1
                  sraiw        s5, s8, 10
                  sraiw        t0, a2, 23
                  divuw        a7, a1, a3
                  subw         s2, a0, a4
                  sll          s6, s8, s1
                  sraw         zero, s3, a3
                  srai         s1, s2, 26
                  or           s3, t2, s10
                  subw         s5, a1, s10
                  srlw         s5, a4, t1
                  divuw        t6, s1, zero
                  remu         tp, s6, s7
                  auipc        s9, 141604
                  sltiu        s4, s7, -1477
                  mulhu        s6, a2, a1
                  srl          sp, s3, t4
                  sltu         s5, t5, s2
                  divu         a5, zero, sp
                  divu         s8, s11, a5
                  sltu         sp, a6, t1
                  lui          t1, 553450
                  slti         sp, t5, -1325
                  sra          s8, s11, t3
                  remw         s4, s4, a6
                  ori          s7, s8, -765
                  slt          a5, t1, s2
                  xor          sp, s5, s11
                  divuw        a5, s3, gp
                  or           t1, s3, a0
                  slli         t0, a5, 50
                  and          s1, s7, s10
                  remu         t3, s9, t0
                  auipc        s5, 477310
                  sub          a0, s10, sp
                  and          s5, a1, t2
                  slliw        s6, s11, 30
                  xor          t1, s3, a1
                  auipc        zero, 373181
                  subw         s3, s2, a4
                  ori          a5, a0, -492
                  sra          s3, tp, tp
                  remuw        a2, t1, s8
                  auipc        s5, 1016260
                  mulh         s1, s10, s10
                  srlw         t0, zero, s4
                  or           tp, s1, s2
                  remu         s10, a5, a2
                  divw         a0, s2, t4
                  nop
                  sltiu        ra, s5, -1971
                  sltiu        a4, s6, -211
                  sub          s7, s5, s6
                  ori          a5, t0, -864
                  sllw         t1, s9, t5
                  divuw        a0, s11, t6
                  sltiu        s2, a4, -342
                  srl          s0, s0, s4
                  divuw        a2, a6, s3
                  auipc        s3, 752349
                  divu         s4, t4, s5
                  srlw         s4, gp, gp
                  mul          a2, s0, s4
                  divu         s0, zero, t6
                  slt          a0, tp, a4
                  sltiu        ra, ra, 60
                  srl          a0, a3, t6
                  mulhsu       tp, a1, t4
                  sllw         t3, gp, a4
                  remu         s6, a6, a2
                  sltu         s3, t2, s7
                  sub          s6, s6, s1
                  srli         s3, a5, 43
                  auipc        t0, 685166
                  sub          t0, a4, t1
                  la x16, test_done
                  jalr x0, x16, 0
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
.align 12
mtvec_handler:    
                  addi x11, x11, -4
                  sd  x13, (x11)
                  add x13, x11, zero
                  addi x13, x13, -256
                  sd  x1, 8(x13)
                  sd  x2, 16(x13)
                  sd  x3, 24(x13)
                  sd  x4, 32(x13)
                  sd  x5, 40(x13)
                  sd  x6, 48(x13)
                  sd  x7, 56(x13)
                  sd  x8, 64(x13)
                  sd  x9, 72(x13)
                  sd  x10, 80(x13)
                  sd  x11, 88(x13)
                  sd  x12, 96(x13)
                  sd  x13, 104(x13)
                  sd  x14, 112(x13)
                  sd  x15, 120(x13)
                  sd  x16, 128(x13)
                  sd  x17, 136(x13)
                  sd  x18, 144(x13)
                  sd  x19, 152(x13)
                  sd  x20, 160(x13)
                  sd  x21, 168(x13)
                  sd  x22, 176(x13)
                  sd  x23, 184(x13)
                  sd  x24, 192(x13)
                  sd  x25, 200(x13)
                  sd  x26, 208(x13)
                  sd  x27, 216(x13)
                  sd  x28, 224(x13)
                  sd  x29, 232(x13)
                  sd  x30, 240(x13)
                  sd  x31, 248(x13)
                  add x11, x13, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 63
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x23, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x23, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x1
                  beq x23, x6, instr_fault_handler
                  li x6, 0x5
                  beq x23, x6, load_fault_handler
                  li x6, 0x7
                  beq x23, x6, store_fault_handler
                  li x6, 0xc
                  beq x23, x6, pt_fault_handler
                  li x6, 0xd
                  beq x23, x6, pt_fault_handler
                  li x6, 0xf
                  beq x23, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x23, _start
                  sd x0, 0(x23)
                  sd x1, 8(x23)
                  sd x2, 16(x23)
                  sd x3, 24(x23)
                  sd x4, 32(x23)
                  sd x5, 40(x23)
                  sd x6, 48(x23)
                  sd x7, 56(x23)
                  sd x8, 64(x23)
                  sd x9, 72(x23)
                  sd x10, 80(x23)
                  sd x11, 88(x23)
                  sd x12, 96(x23)
                  sd x13, 104(x23)
                  sd x14, 112(x23)
                  sd x15, 120(x23)
                  sd x16, 128(x23)
                  sd x17, 136(x23)
                  sd x18, 144(x23)
                  sd x19, 152(x23)
                  sd x20, 160(x23)
                  sd x21, 168(x23)
                  sd x22, 176(x23)
                  sd x23, 184(x23)
                  sd x24, 192(x23)
                  sd x25, 200(x23)
                  sd x26, 208(x23)
                  sd x27, 216(x23)
                  sd x28, 224(x23)
                  sd x29, 232(x23)
                  sd x30, 240(x23)
                  sd x31, 248(x23)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
                  mret

load_fault_handler:
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
                  mret

store_fault_handler:
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x13, x11, zero
                  ld  x1, 8(x13)
                  ld  x2, 16(x13)
                  ld  x3, 24(x13)
                  ld  x4, 32(x13)
                  ld  x5, 40(x13)
                  ld  x6, 48(x13)
                  ld  x7, 56(x13)
                  ld  x8, 64(x13)
                  ld  x9, 72(x13)
                  ld  x10, 80(x13)
                  ld  x11, 88(x13)
                  ld  x12, 96(x13)
                  ld  x13, 104(x13)
                  ld  x14, 112(x13)
                  ld  x15, 120(x13)
                  ld  x16, 128(x13)
                  ld  x17, 136(x13)
                  ld  x18, 144(x13)
                  ld  x19, 152(x13)
                  ld  x20, 160(x13)
                  ld  x21, 168(x13)
                  ld  x22, 176(x13)
                  ld  x23, 184(x13)
                  ld  x24, 192(x13)
                  ld  x25, 200(x13)
                  ld  x26, 208(x13)
                  ld  x27, 216(x13)
                  ld  x28, 224(x13)
                  ld  x29, 232(x13)
                  ld  x30, 240(x13)
                  ld  x31, 248(x13)
                  addi x13, x13, 256
                  add x11, x13, zero
                  ld  x13, (x11)
                  addi x11, x11, 4
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
