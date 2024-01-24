.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x25, 0x8000000000001105
                  csrw 0x301, x25
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1c1800
                  csrw 0x300, x25 # MSTATUS
                  li x25, 0x0
                  csrw 0x304, x25 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf
                  li x2, 0x0
                  li x3, 0xf571174a
                  li x4, 0xe
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xf747a6ee
                  li x8, 0xf9ba0713
                  li x9, 0x80000000
                  li x10, 0xf4d8ffc9
                  li x11, 0x0
                  li x12, 0xe
                  li x13, 0x46e2619d
                  li x15, 0x387f5980
                  li x16, 0xdf30eace
                  li x17, 0xc
                  li x18, 0x569851a
                  li x19, 0xf15fcfa2
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xf98f0293
                  li x23, 0x80000000
                  li x24, 0xf752bc6e
                  li x25, 0x0
                  li x26, 0xf4f36229
                  li x27, 0xf11b7122
                  li x28, 0xdcedaec9
                  li x29, 0x80000000
                  li x30, 0x34e30d79
                  la x14, user_stack_end
main:             sraw         zero, a2, t4
                  sra          a6, a7, a2
                  srliw        s7, ra, 27
                  subw         a7, s7, s6
                  xori         a5, a3, -1425
                  nop
                  remu         s10, s8, s10
                  slliw        t3, s6, 5
                  divuw        s2, s9, s0
                  sraiw        a2, s5, 13
                  ori          s6, s6, 184
                  subw         s7, t3, s7
                  slti         t4, s9, 1050
                  mulh         a7, t1, a3
                  mulw         s0, t4, a4
                  sll          t2, t2, s1
                  lui          s9, 328217
                  srl          tp, a5, a2
                  and          s7, a0, s1
                  nop
                  lui          a5, 515981
                  ori          a0, a0, -1281
                  remuw        tp, a6, a2
                  divuw        a0, a5, t6
                  add          a2, s7, s11
                  and          a7, a6, s6
                  sub          a7, t1, s5
                  remu         t5, t2, s7
                  auipc        t4, 760210
                  rem          zero, s10, s6
                  or           s10, s1, s10
                  ori          s6, a5, -136
                  sraiw        ra, s11, 13
                  sllw         s4, a1, s8
                  mulhu        s0, a7, a0
                  andi         ra, a7, 459
                  rem          t5, s5, s6
                  subw         t1, s10, ra
                  mulhsu       t1, a1, a2
                  sraiw        tp, s4, 24
                  divu         t0, a3, a4
                  mulhsu       s3, a3, s2
                  mulhu        a0, t5, s7
                  sltiu        s0, s9, 1235
                  rem          sp, t4, s9
                  srli         s8, a5, 38
                  addiw        a5, s2, 527
                  addi         s11, a0, 362
                  sraw         sp, a1, sp
                  mulw         s7, t0, s1
                  andi         s11, s1, 1673
                  divuw        a6, a5, t5
                  srl          a5, a6, a1
                  remuw        s0, s5, t2
                  addiw        s3, t5, -986
                  srli         tp, t3, 23
                  xori         a0, sp, -1999
                  sll          s9, s4, s0
                  srlw         s2, s5, s10
                  srli         s4, a6, 19
                  add          a7, t0, s7
                  auipc        s1, 724603
                  mulh         t5, ra, s5
                  mulw         s0, a5, s2
                  mulhsu       a5, a1, t6
                  mul          zero, sp, a1
                  sllw         s4, a2, s6
                  slt          s4, a3, s6
                  divw         gp, t6, t3
                  subw         s6, s4, t0
                  srli         gp, s8, 18
                  sltu         a6, s2, a1
                  srliw        s11, a2, 20
                  sraw         s2, t1, t6
                  remu         s0, t4, t0
                  remu         zero, s11, s9
                  or           t4, s6, a0
                  rem          s9, a3, zero
                  sraiw        s0, t2, 9
                  and          a7, s4, t6
                  srl          s4, s6, a6
                  mulw         t0, t6, t3
                  addi         sp, s0, 607
                  div          a5, s5, s7
                  addiw        s11, t0, -476
                  ori          s8, sp, -1321
                  xor          a3, s3, tp
                  andi         t2, s2, -392
                  ori          sp, a2, -190
                  xori         s2, s10, 1522
                  div          s11, s5, t5
                  srlw         t4, s9, s11
                  nop
                  mul          t1, s2, s5
                  slt          a3, a1, s6
                  srai         zero, tp, 10
                  auipc        tp, 543532
                  divuw        s10, zero, t2
                  mul          s4, a5, s2
                  slliw        s7, zero, 3
                  srlw         s8, s11, s11
                  slli         t4, s0, 28
                  mulhu        s7, s2, t1
                  rem          t5, t3, t3
                  mulhu        t5, t0, a4
                  add          a0, s8, s1
                  sltu         a1, t0, s2
                  andi         a1, s9, -25
                  andi         a2, s8, 1829
                  slti         s2, a2, 1690
                  remw         s7, s5, a1
                  andi         a6, a2, 1876
                  divw         s1, s9, t1
                  mulhsu       t0, s2, s0
                  lui          s6, 731073
                  srli         ra, s2, 5
                  slli         a6, a0, 4
                  or           a7, gp, a7
                  lui          s11, 763287
                  addw         a2, s7, a5
                  srliw        t1, a5, 8
                  rem          a5, s4, s11
                  srliw        s1, a6, 21
                  addiw        a7, s4, -1666
                  addi         t1, sp, -979
                  sra          t0, s1, s3
                  sraw         t3, a4, s6
                  srliw        a1, s8, 23
                  rem          s7, ra, t0
                  sllw         a1, s7, s10
                  add          t5, s1, a7
                  sltu         ra, sp, t2
                  sub          s0, s6, s9
                  or           a7, a2, a0
                  div          s2, t0, s4
                  subw         a6, s8, t1
                  divu         s11, ra, s9
                  rem          s4, s11, sp
                  auipc        s8, 97811
                  slli         s11, a6, 29
                  subw         s3, t1, a5
                  sraiw        s2, a3, 2
                  addw         gp, t5, s6
                  div          a5, t0, t5
                  srliw        gp, t0, 23
                  srai         a1, a1, 13
                  subw         s7, s9, a4
                  andi         s11, s5, -453
                  remuw        t1, s1, sp
                  nop
                  divw         a0, a2, s5
                  sraw         t5, s4, t1
                  divw         s9, s2, s6
                  sltiu        s9, a3, 1998
                  slti         a0, s6, -199
                  srli         ra, s6, 37
                  add          a6, s7, a2
                  and          a0, sp, s1
                  srliw        s7, a5, 8
                  sllw         a7, s5, a7
                  mulw         s10, a3, a2
                  slt          t3, sp, ra
                  nop
                  divuw        t5, s2, sp
                  slti         ra, sp, 732
                  mulh         s0, a4, a7
                  slliw        a2, ra, 18
                  addi         sp, a1, 1076
                  add          a5, a3, a4
                  mulw         a0, t3, s6
                  ori          ra, s6, -1264
                  divu         s8, t0, a7
                  srlw         s4, sp, a4
                  addw         s6, zero, t6
                  xor          s6, s6, a5
                  remuw        s3, a3, s10
                  divuw        a7, a7, a3
                  divuw        ra, a6, s8
                  sltu         a1, s0, t0
                  slliw        gp, s11, 30
                  sllw         t1, s5, s3
                  rem          a5, s10, s7
                  and          s4, s6, s11
                  xor          s10, s0, s2
                  srai         a6, s4, 25
                  mul          a3, t6, s2
                  srl          ra, s11, s7
                  slt          s1, t6, a6
                  slt          s0, s3, s3
                  mulhsu       s3, s1, a4
                  addi         tp, t4, -1851
                  and          s0, a4, t6
                  addi         s0, ra, -736
                  sllw         t0, t0, gp
                  sra          t0, a6, a3
                  sltiu        s8, s1, -215
                  mulhsu       a3, t2, gp
                  rem          a1, a5, s3
                  and          s7, s3, zero
                  andi         a1, s9, 1089
                  sll          sp, t4, s4
                  srlw         t3, tp, t5
                  nop
                  and          s7, a1, s10
                  sra          a7, a1, t5
                  srl          s10, ra, gp
                  mulh         a1, zero, s7
                  mulhu        s7, t3, a1
                  mulhsu       s8, s11, s11
                  sll          s6, sp, t4
                  sub          a3, a1, ra
                  xor          t2, a4, a1
                  xor          s1, t5, tp
                  addi         t0, t1, -1731
                  rem          t3, s11, s8
                  addiw        zero, ra, -414
                  addi         s9, a2, -1422
                  div          zero, ra, s9
                  addiw        s8, t1, 1842
                  lui          s8, 176913
                  slti         s3, sp, -28
                  addiw        a2, s3, -1071
                  sub          a2, s2, t4
                  sraw         t2, s10, t5
                  sllw         t4, tp, a3
                  subw         s10, a5, s10
                  auipc        sp, 150761
                  sraw         ra, sp, s3
                  mulh         t5, ra, s8
                  subw         s6, s4, gp
                  divuw        a2, s4, gp
                  addiw        a5, a7, -418
                  xor          t0, s11, sp
                  sllw         s11, s7, zero
                  remuw        a3, t1, s1
                  addw         a0, a1, a2
                  divw         a2, t2, gp
                  slliw        a1, tp, 9
                  andi         a5, tp, 1983
                  add          s10, t6, a2
                  divw         a7, t5, t4
                  divuw        t2, a2, s8
                  divu         t0, s10, a7
                  mul          a0, zero, a6
                  remw         s9, t0, s1
                  nop
                  mulhsu       zero, a7, s7
                  slli         t4, s8, 38
                  sub          zero, t5, t5
                  remw         gp, gp, s7
                  mulhsu       s1, t6, a3
                  slti         s2, s6, -957
                  auipc        tp, 170546
                  or           s11, a7, a1
                  or           s6, s1, t5
                  remuw        s8, t2, s6
                  srlw         t0, a4, s3
                  or           s10, t4, s4
                  xor          s7, s6, s3
                  remw         t3, s0, s6
                  srli         a3, a3, 9
                  add          s6, t5, s4
                  subw         sp, sp, s7
                  sraw         t4, gp, s0
                  and          s4, t3, sp
                  sraw         a5, a2, a1
                  slt          t5, tp, a3
                  xori         s4, gp, -238
                  sllw         t0, s8, a1
                  or           t5, zero, t2
                  srlw         t1, gp, a6
                  sra          t5, a7, t3
                  divuw        a0, s2, a6
                  srl          zero, a7, a1
                  sllw         s6, s0, zero
                  and          t0, s1, ra
                  rem          t5, s5, a3
                  sra          s0, t3, s3
                  slti         s11, a0, -557
                  addiw        s7, s6, -1551
                  sraiw        a0, s6, 11
                  add          t3, t0, a4
                  addw         s10, t0, sp
                  sltiu        s3, a2, 535
                  div          t2, a7, t0
                  addi         a1, s8, 374
                  sraw         s7, t3, t5
                  sltiu        a1, t6, 378
                  slli         a7, t4, 7
                  addi         tp, t6, 1421
                  or           a5, a6, a6
                  subw         a5, a3, a5
                  auipc        t2, 797162
                  sub          s6, t3, t2
                  sltu         t0, s1, t2
                  divuw        sp, a7, t4
                  mulh         s4, s11, t4
                  srai         s7, s1, 38
                  srliw        s4, a7, 0
                  and          s1, zero, a3
                  remw         a1, s7, s8
                  remu         s11, s8, t2
                  and          s4, s2, tp
                  sltu         a2, sp, a2
                  divw         gp, s10, zero
                  addw         a5, s8, s8
                  add          zero, gp, t2
                  slli         t4, a3, 35
                  slliw        s1, s0, 9
                  addiw        s3, s6, 885
                  remw         s1, s1, s9
                  divuw        t5, s1, sp
                  xori         t3, a0, -1762
                  slli         s0, t1, 60
                  div          s7, a0, t2
                  mulhsu       s6, s3, s7
                  sraiw        s9, a5, 7
                  addw         s8, s5, a5
                  slti         s9, t5, -674
                  slliw        tp, sp, 0
                  remu         s2, tp, t0
                  nop
                  mulw         s4, a4, t0
                  ori          gp, t1, -2032
                  srai         t4, a5, 14
                  mulw         a5, s1, s9
                  mulhu        t1, s0, s1
                  and          s8, s2, t2
                  andi         s11, s11, 1057
                  lui          s10, 510116
                  slti         ra, tp, -1647
                  slli         s2, t3, 59
                  srai         a5, a4, 43
                  subw         t4, zero, a5
                  xor          a0, ra, s0
                  mulhu        s8, tp, s7
                  srliw        s10, s10, 21
                  sraw         s10, t2, a3
                  slli         s3, gp, 20
                  slli         ra, ra, 53
                  and          t4, a3, s2
                  srli         tp, a2, 6
                  xori         s2, a4, 1353
                  divu         a5, a1, t1
                  sraw         s9, zero, t0
                  sll          s10, t2, t4
                  divu         a5, gp, s5
                  xori         t4, s4, 2019
                  add          s4, gp, s0
                  sltu         s7, sp, s7
                  slliw        s6, a0, 6
                  subw         t3, t3, a1
                  divw         zero, a2, zero
                  ori          s3, s0, -583
                  mulhu        a2, a2, s11
                  mulw         s1, tp, ra
                  or           a0, s4, sp
                  div          a3, s11, s9
                  xor          a0, s1, a4
                  and          a0, s2, s10
                  sub          a5, s6, s1
                  divw         s0, t5, s6
                  divu         t1, s7, t3
                  sllw         a3, a5, t2
                  subw         t4, s2, t0
                  srliw        t1, t6, 20
                  slliw        t2, s1, 16
                  divu         s6, t3, s7
                  mulhsu       t4, a0, s8
                  slti         s6, s7, -1892
                  div          a2, s10, s6
                  xor          a3, a1, s4
                  sll          s2, s7, t2
                  addiw        t4, a6, 1095
                  and          s9, ra, tp
                  slti         t4, s7, 1295
                  remuw        t2, t4, ra
                  sltiu        s7, tp, -749
                  srliw        s1, sp, 21
                  sraw         a7, s11, a7
                  sllw         t5, s2, t3
                  srliw        s4, a0, 31
                  sraiw        s6, t5, 24
                  divw         t1, a3, s3
                  auipc        sp, 10156
                  subw         s1, s9, ra
                  slliw        gp, t1, 27
                  remw         s7, t3, t5
                  srliw        s8, s11, 6
                  add          s2, t0, tp
                  slliw        t4, t1, 20
                  add          a7, a1, s8
                  mulhsu       t2, t6, a5
                  addiw        zero, s1, -1675
                  sltiu        s9, a3, 619
                  remw         a5, t1, s6
                  mul          a5, ra, s3
                  xori         t1, a0, -640
                  addiw        s2, s11, -1976
                  nop
                  srlw         s4, gp, zero
                  mulh         s11, s4, s0
                  srlw         s11, s3, s2
                  slli         s7, t2, 36
                  subw         zero, s3, s10
                  srai         a3, s4, 33
                  sltiu        s4, s6, 749
                  sraiw        s3, tp, 4
                  lui          a6, 641984
                  srli         s4, t3, 13
                  mulhu        s11, tp, t4
                  add          a1, a4, tp
                  nop
                  divw         a3, sp, s2
                  sllw         t1, t4, s5
                  slt          t1, a0, t0
                  mul          sp, s9, a4
                  slt          ra, a1, s7
                  add          t0, s9, s6
                  srli         a5, a2, 42
                  sra          a7, a0, a5
                  srl          zero, s6, s4
                  subw         s9, s9, s1
                  and          a7, t5, sp
                  remu         gp, gp, sp
                  srlw         a5, t2, s7
                  xori         a3, s3, 946
                  divuw        gp, t1, gp
                  srli         t2, a3, 57
                  xor          s6, sp, s4
                  nop
                  remw         a5, s4, a5
                  addiw        s7, a0, -1145
                  slli         t4, t2, 9
                  or           a6, s6, s11
                  mulw         a5, a2, t5
                  subw         s7, s9, a5
                  sllw         sp, zero, sp
                  addi         s4, tp, -797
                  remuw        a3, ra, s1
                  srlw         s4, a5, tp
                  addiw        a5, t4, -353
                  srliw        t2, s8, 8
                  remw         a0, t0, s7
                  addiw        a2, a6, 1420
                  sltu         a5, s8, s9
                  srlw         a0, gp, t3
                  lui          a6, 462099
                  sllw         t4, s7, s9
                  divuw        ra, s9, a2
                  sll          s9, s5, a0
                  nop
                  xori         s1, s0, 1821
                  mulh         a1, a2, s2
                  mulw         s1, t1, s5
                  slt          zero, a2, ra
                  srliw        t4, s9, 10
                  xori         t0, tp, -133
                  nop
                  rem          s7, s3, s4
                  andi         a6, t3, -862
                  xori         sp, ra, 2018
                  slli         s6, s5, 33
                  sub          a1, tp, gp
                  subw         s2, s8, a6
                  lui          gp, 856241
                  srliw        a6, tp, 9
                  sub          a3, t1, gp
                  addw         sp, s11, tp
                  sltiu        a0, s0, -1373
                  and          a6, a2, t6
                  div          s6, s1, s3
                  andi         s4, a7, 661
                  sub          a2, s9, a5
                  divuw        s10, sp, a1
                  and          a5, a6, gp
                  addi         gp, a2, -164
                  slli         s8, s1, 19
                  auipc        s1, 445122
                  rem          a7, t4, t5
                  divu         t0, sp, a4
                  mulh         s11, s0, ra
                  mul          t2, zero, s4
                  srli         ra, t5, 23
                  slti         t2, t0, 1038
                  andi         s8, a7, 1280
                  slti         a7, s1, 1215
                  or           a0, a7, a7
                  ori          t4, t0, 53
                  sltiu        s3, s7, -1590
                  addiw        a1, t5, -271
                  and          sp, ra, s3
                  sub          t3, s0, t1
                  sraw         t4, a5, a3
                  srlw         s6, tp, s6
                  andi         a7, a7, -393
                  remuw        s6, s8, a7
                  mulhu        s0, s4, t0
                  srl          s10, a7, s5
                  remuw        ra, t4, s8
                  sra          s2, ra, t3
                  xor          s3, s2, s5
                  or           a0, t1, s4
                  divuw        t4, tp, t3
                  add          a6, a3, a1
                  auipc        a5, 209582
                  slt          t4, s3, a3
                  andi         s0, s2, -427
                  addw         a3, sp, s7
                  xori         s8, a7, 1070
                  addi         s10, t1, 1099
                  sltu         t4, a7, a0
                  xori         t3, ra, -1133
                  div          t4, a2, s6
                  remw         s3, a4, tp
                  xor          s3, s2, s7
                  srl          s0, zero, t2
                  mul          a0, t4, a6
                  mulhsu       s7, a5, tp
                  xori         t0, s2, -1251
                  srli         s2, zero, 45
                  add          zero, a4, a2
                  mulh         sp, s2, a6
                  sraw         gp, s4, s6
                  div          s6, s7, s5
                  srlw         s8, tp, a0
                  remuw        a0, s6, s4
                  subw         a2, t3, t1
                  mul          ra, s0, a6
                  sllw         a0, t1, t1
                  xori         s2, a4, -484
                  mulhsu       sp, s8, t4
                  sraiw        s10, s4, 8
                  sllw         ra, s6, a0
                  slt          a2, s9, s4
                  slt          s11, tp, a2
                  srliw        a5, a6, 14
                  slti         t2, s6, 188
                  or           t1, s4, a5
                  nop
                  divuw        t0, s4, a2
                  remu         a5, s8, s11
                  srl          ra, s10, s9
                  sraw         s6, a4, t2
                  xor          t1, a2, t0
                  divu         t5, s4, zero
                  auipc        a0, 341249
                  addi         a1, t1, 658
                  subw         t0, s7, t4
                  sra          t0, s8, s1
                  addi         t1, t1, -1489
                  xori         a5, ra, -322
                  div          s9, s9, t6
                  remu         t3, a3, gp
                  xor          s2, s7, s6
                  nop
                  mul          s9, a0, a6
                  xor          s3, s5, ra
                  sltiu        s1, t5, -715
                  sllw         a2, s11, tp
                  mul          s10, a1, a7
                  divw         t3, s9, a3
                  div          tp, t6, a1
                  lui          t2, 1046596
                  sltiu        a7, s6, 1220
                  srai         s2, s4, 33
                  sllw         tp, s1, t1
                  srliw        s3, s7, 18
                  remw         s9, s4, t1
                  mulhu        sp, s5, s3
                  xori         s7, tp, -1428
                  divuw        t4, s3, s11
                  sra          s9, s3, s2
                  sltiu        t1, s8, 604
                  mul          t0, a2, sp
                  add          s3, a3, sp
                  srlw         t5, t6, s4
                  mulw         s11, a0, t2
                  sltu         s3, t6, t1
                  mulw         a0, s1, ra
                  srai         a7, t0, 19
                  mulw         s3, sp, a0
                  sll          s8, sp, s10
                  remuw        t5, tp, t0
                  or           s11, a3, a1
                  slliw        a3, ra, 16
                  sltu         a0, a5, a7
                  srl          gp, t0, s8
                  divu         a5, s4, t1
                  mulhsu       s11, s3, s6
                  mulhsu       s1, t6, s4
                  divw         s3, s5, t5
                  remuw        a0, t6, a4
                  add          t4, s7, s5
                  ori          s3, t2, 78
                  lui          s10, 401192
                  sllw         t4, tp, a3
                  srl          s11, a7, t0
                  srliw        s6, a1, 2
                  xor          s8, s3, s7
                  addi         a0, s7, 1138
                  auipc        t1, 810497
                  subw         s6, s4, s9
                  remw         s3, s4, sp
                  div          a7, s4, s2
                  remu         s4, s4, s8
                  sltiu        s10, a6, -1524
                  mulw         gp, a3, s11
                  sltu         t3, t5, a6
                  addi         s3, s9, -547
                  div          gp, t1, t6
                  nop
                  slt          s6, s10, t4
                  sllw         t0, gp, t1
                  remuw        t0, a1, t0
                  addi         s11, s7, -1461
                  and          a6, a6, s7
                  divuw        a3, s3, s7
                  mulhsu       tp, s8, s6
                  add          a3, s5, a1
                  remu         sp, a5, t4
                  addw         s11, a3, s5
                  divuw        t0, t3, s0
                  addw         t5, s6, tp
                  subw         t2, tp, t2
                  mulhsu       s7, s7, tp
                  sraw         gp, t2, a4
                  lui          t5, 328453
                  remw         a3, zero, a5
                  and          a2, s1, s0
                  subw         s9, s8, ra
                  mulh         a1, s6, a5
                  divw         s8, t0, a2
                  remuw        tp, a3, s8
                  rem          a6, zero, s2
                  addw         s4, t2, t5
                  mulhsu       s7, ra, s7
                  divu         sp, t2, t3
                  auipc        a2, 340409
                  addiw        gp, s3, -1036
                  divw         a1, t4, s0
                  xor          t1, s7, t0
                  xor          a5, s7, zero
                  srli         t1, s8, 50
                  lui          t5, 511162
                  sll          t4, a4, ra
                  rem          a0, t2, s4
                  lui          t4, 471645
                  addi         a3, s1, -1587
                  remu         s9, t0, a0
                  remw         s9, gp, t4
                  srliw        t0, a2, 15
                  divw         ra, s6, s0
                  div          a3, s11, s1
                  xori         a3, s5, -1782
                  addw         a7, sp, s8
                  addw         zero, s7, ra
                  remu         a6, t1, t6
                  addw         a0, t6, a2
                  divuw        s2, a6, s2
                  addiw        t4, t3, -400
                  divw         tp, s6, t4
                  addi         s10, s7, -975
                  sllw         s0, s9, s4
                  srl          t2, s0, t4
                  and          s7, s9, t3
                  divw         s6, t1, a7
                  sraiw        t5, s9, 8
                  and          a2, s4, a5
                  sltu         a1, s8, t2
                  slli         a3, a5, 24
                  ori          s6, s11, -1090
                  auipc        a0, 160533
                  remuw        a2, a2, ra
                  srliw        s6, a0, 4
                  mulhsu       s4, t2, a0
                  remu         a0, s0, s3
                  srli         s7, s7, 29
                  mulhu        s10, s0, t1
                  slli         t3, a7, 36
                  slt          t3, s10, a3
                  mulhsu       t0, gp, a6
                  remu         s8, s2, t3
                  addw         s6, s5, a1
                  sltu         t1, s6, t0
                  xor          tp, s1, s11
                  sra          t0, s6, s7
                  srl          a2, a6, s9
                  sraw         a5, sp, ra
                  xori         t5, t1, 1036
                  sllw         a1, gp, sp
                  sub          a0, t6, t6
                  remu         s0, s6, a5
                  lui          a6, 854404
                  remw         s1, s6, s7
                  addi         a6, s2, 585
                  add          a0, a6, tp
                  sraiw        a7, t0, 11
                  srli         a0, a2, 7
                  mulhu        s7, s2, t5
                  sll          s10, a6, a3
                  mul          a3, s4, a7
                  mulhu        s4, t1, s3
                  sraw         t5, ra, s7
                  remuw        s11, s9, t4
                  sltiu        a1, t6, -99
                  ori          t1, s9, -985
                  srlw         s11, s6, s11
                  sllw         t3, s10, s0
                  divuw        s8, gp, a6
                  addw         t5, s11, s10
                  or           a2, a0, ra
                  remuw        s7, tp, a7
                  andi         a1, t3, -320
                  and          gp, s11, t4
                  lui          s8, 914454
                  auipc        gp, 574812
                  sra          s1, s0, t2
                  ori          s0, s1, 1056
                  remuw        s0, tp, tp
                  div          s3, sp, a6
                  remu         s4, a5, t1
                  xor          s3, t4, s4
                  srl          t1, gp, s10
                  lui          s7, 321107
                  rem          a0, a0, gp
                  slt          s6, gp, gp
                  ori          s1, t4, -1539
                  slli         t4, a2, 16
                  ori          gp, a2, -68
                  rem          tp, a1, t2
                  srlw         s0, s2, t1
                  div          t4, ra, a2
                  div          a3, zero, zero
                  sra          ra, t1, s3
                  or           a5, a2, a4
                  slt          a0, s8, t0
                  srliw        s11, t4, 3
                  srlw         s10, s9, s9
                  divu         s8, t5, s2
                  nop
                  sraw         a6, a0, t4
                  slt          s9, a2, a6
                  srli         a7, s10, 30
                  mul          s11, zero, t5
                  srl          s10, s10, t4
                  slt          a7, t3, gp
                  sllw         t1, a6, tp
                  divu         s8, s8, t6
                  or           tp, t1, tp
                  sltiu        s10, gp, 1209
                  addiw        a3, t5, 287
                  sllw         s1, s6, a3
                  srai         s8, a6, 34
                  sltu         t3, t1, tp
                  sltu         s6, t0, t3
                  divw         zero, s11, s9
                  xor          a0, s2, a6
                  xor          s8, t6, a6
                  div          s3, s6, sp
                  subw         a2, t6, s3
                  sltu         s8, a5, s1
                  divuw        s4, tp, t2
                  sll          a6, t4, a0
                  srli         s10, t6, 0
                  sraiw        ra, t2, 25
                  srlw         a0, t3, s10
                  andi         a7, t2, -2037
                  and          s2, ra, t0
                  sub          s7, gp, s5
                  srliw        t5, a6, 23
                  srl          tp, s4, t3
                  srai         tp, s0, 53
                  and          s7, s3, t0
                  srlw         s9, t3, s11
                  rem          s1, s5, t0
                  srl          s2, t2, t1
                  ori          sp, s6, -1943
                  ori          s2, t0, 884
                  slli         t1, s2, 53
                  or           s8, a4, t5
                  or           t0, s10, s8
                  div          s0, t6, s10
                  xori         a3, s7, 1896
                  remw         s11, t0, s0
                  addw         t1, t3, a1
                  srl          a5, s3, a7
                  and          a2, t2, a2
                  sraw         a5, t0, s0
                  add          a2, s0, t3
                  add          a0, a1, s10
                  srliw        s7, a6, 9
                  add          t5, t2, t3
                  and          s3, a2, t0
                  nop
                  ori          a3, t4, 1976
                  xori         s7, a0, -1454
                  divw         zero, s3, a7
                  sltu         t5, t1, s9
                  remu         zero, s4, s11
                  ori          t4, tp, 1917
                  srl          t0, a5, s10
                  nop
                  auipc        a7, 350857
                  slt          s3, t1, t1
                  addi         t3, gp, 1257
                  sll          t3, t1, gp
                  add          tp, t2, s9
                  addw         s10, tp, t3
                  add          s0, t6, s2
                  sra          a1, s8, t3
                  sraw         s11, a7, s5
                  or           t3, s11, a2
                  srliw        s3, s10, 24
                  mulhsu       s4, a1, s11
                  ori          s8, s6, -576
                  addiw        s1, a7, -1721
                  mulw         sp, t6, gp
                  slti         s8, s4, -1617
                  lui          gp, 19119
                  rem          a7, a1, t2
                  slt          s0, s0, t3
                  slt          zero, tp, a4
                  nop
                  divu         a5, gp, s10
                  xori         s1, t6, -634
                  mulw         sp, s2, s5
                  add          a0, ra, s1
                  srliw        t0, t5, 16
                  sraiw        t5, t4, 25
                  divu         a2, t0, a6
                  srli         s7, s10, 10
                  divu         s6, s11, s2
                  addi         a7, t1, 1828
                  slt          s0, t0, s2
                  sraiw        s2, gp, 24
                  remuw        tp, tp, a5
                  srl          a6, t4, s6
                  nop
                  sraiw        t5, a7, 31
                  nop
                  sraiw        s3, a5, 29
                  auipc        zero, 658151
                  remw         a1, s7, a7
                  addi         s4, a3, 164
                  srli         ra, a1, 18
                  mulw         t3, s0, a0
                  sll          s9, sp, s3
                  remuw        s2, s7, a7
                  srliw        t0, a7, 18
                  sraw         s6, a1, t3
                  slliw        s9, s7, 27
                  subw         s8, s9, s8
                  auipc        ra, 256003
                  rem          ra, a3, s4
                  mulw         a7, a7, a5
                  sra          s3, a2, sp
                  ori          t0, t1, -237
                  addw         s11, s5, s6
                  remuw        t3, s7, t4
                  sltiu        t4, s6, -452
                  rem          s4, tp, s9
                  slti         ra, t5, -1631
                  sub          a6, zero, a6
                  mulhsu       a3, t4, sp
                  remu         tp, s5, s3
                  srai         a7, a6, 5
                  auipc        s4, 975836
                  remu         t5, s11, t3
                  mulhsu       s11, a7, a6
                  rem          a3, s6, s1
                  remuw        a6, zero, a6
                  slliw        gp, a3, 25
                  subw         tp, s5, t6
                  sub          zero, s7, t4
                  srai         sp, s1, 38
                  sub          a6, s9, sp
                  sltiu        t5, s9, -259
                  addiw        t2, s7, 1969
                  sraw         s0, a6, s3
                  rem          t4, a1, gp
                  mul          a5, s7, ra
                  srliw        a1, s0, 1
                  slliw        t5, s0, 28
                  xor          a2, t1, s2
                  subw         s2, s4, a6
                  mulh         a7, s0, s6
                  srl          gp, tp, s1
                  srli         s6, s6, 47
                  srl          s10, s0, t3
                  and          t0, zero, a7
                  sltiu        a0, s5, 745
                  srl          a5, zero, t4
                  rem          t1, s5, s11
                  slliw        zero, s7, 13
                  srlw         s2, s10, s5
                  remu         s4, s3, a5
                  xori         t4, a1, 883
                  srli         t5, s4, 31
                  or           s7, t2, tp
                  ori          s0, s8, -76
                  sub          s7, gp, s7
                  addi         s1, s6, -468
                  add          gp, t2, tp
                  slliw        a5, a4, 27
                  mulh         s0, s7, a0
                  srai         t5, s4, 34
                  add          s10, s1, s2
                  mul          zero, t5, a5
                  divuw        a1, a2, a7
                  mulhu        t4, s11, s4
                  sub          sp, t5, t5
                  addw         t4, a4, s0
                  ori          tp, a1, 1585
                  ori          a7, t2, -1954
                  remu         s6, tp, t3
                  remw         s8, gp, ra
                  mul          s7, s3, zero
                  sub          a5, gp, s9
                  srl          a3, t0, t6
                  slliw        t3, a3, 7
                  xor          tp, s7, s7
                  and          a2, s1, a2
                  sub          s4, gp, tp
                  sltiu        a2, s3, -844
                  lui          t0, 917117
                  srl          a1, t2, a0
                  rem          s2, s11, t4
                  add          s7, t6, s6
                  mulh         s11, s7, gp
                  mul          t5, s2, t1
                  addiw        a6, t3, -948
                  auipc        s11, 599125
                  remu         t0, sp, s6
                  and          s9, s1, s3
                  div          s3, a2, t3
                  mulw         s4, t3, t1
                  divw         s7, a3, zero
                  addiw        s0, a7, 703
                  remu         s11, s2, s6
                  srliw        s9, s5, 14
                  sll          a1, s11, gp
                  rem          s9, gp, a7
                  ori          zero, gp, 588
                  auipc        a0, 170786
                  lui          t2, 953057
                  remu         a5, sp, tp
                  auipc        s3, 717463
                  subw         s1, a1, gp
                  srl          tp, a5, a6
                  mulhsu       s9, t2, s6
                  remu         sp, gp, s2
                  mulh         s1, a3, s8
                  srliw        s7, a1, 24
                  sllw         sp, a0, s4
                  lui          t3, 862945
                  srl          ra, s9, a5
                  sll          a0, t4, s7
                  divw         t0, t1, a5
                  mulw         a0, t2, t1
                  ori          t5, a7, -1649
                  mulh         ra, a0, a4
                  and          a7, ra, s6
                  sraw         a5, sp, a7
                  andi         a7, a0, -977
                  div          ra, s6, s4
                  or           t5, s8, t2
                  nop
                  addiw        a7, t0, -128
                  remuw        zero, s8, s3
                  mulh         s9, t0, s5
                  or           s8, s2, a1
                  remw         t3, s3, t1
                  mulhu        s7, s3, tp
                  nop
                  sraw         a7, t1, s4
                  xori         s10, s7, -517
                  lui          s9, 731163
                  sltu         gp, s0, t0
                  xori         t4, s6, 1609
                  rem          a0, zero, a7
                  mul          a2, s1, a6
                  auipc        sp, 438490
                  mulh         s7, t6, t3
                  sltiu        s9, sp, -1742
                  srliw        s10, sp, 20
                  sltu         s6, s5, s2
                  sra          a1, a5, s0
                  mulhsu       t4, t4, s5
                  div          s8, s5, t0
                  mul          s7, s5, a2
                  sll          a2, a2, a6
                  divu         s9, tp, t0
                  sraw         s11, a6, t4
                  sub          sp, s1, t0
                  rem          t1, ra, zero
                  slti         a1, s7, -755
                  sub          tp, s10, s4
                  auipc        a6, 328299
                  srli         sp, a4, 5
                  ori          zero, a4, -228
                  slli         t0, tp, 49
                  sltiu        s8, sp, 944
                  mulhu        zero, t5, s6
                  sraiw        s7, t2, 28
                  sraw         s1, ra, s1
                  divu         s3, s5, s0
                  andi         a2, t2, 1281
                  lui          gp, 484949
                  addiw        tp, s8, -745
                  subw         s4, a3, t5
                  sra          t4, a3, s2
                  sraw         zero, a6, ra
                  remw         a2, s4, a3
                  and          s6, t0, zero
                  mulh         s4, t5, tp
                  remuw        t1, t2, s4
                  slt          sp, s10, a5
                  srli         s4, t2, 37
                  mulhsu       t4, a5, s11
                  sraw         a0, zero, s9
                  nop
                  srliw        t4, s1, 19
                  sltu         t4, s7, s3
                  remuw        s8, t6, t1
                  subw         a6, s8, t6
                  and          t2, a7, zero
                  srlw         t5, s3, s6
                  slti         t2, s5, 681
                  sll          a0, s7, t0
                  divuw        t4, a6, gp
                  sub          sp, s0, s7
                  sraiw        s7, s1, 29
                  and          s1, a3, s5
                  divw         a5, a5, s3
                  ori          s10, sp, -1907
                  add          a0, s9, s4
                  sll          t5, t3, s1
                  lui          t4, 469780
                  slli         sp, a5, 19
                  mulhsu       a6, t4, s6
                  sltu         sp, t2, sp
                  xori         ra, s9, 1757
                  srli         s1, s2, 22
                  andi         s10, s1, 1829
                  xor          t1, s4, a0
                  remw         a1, s5, t0
                  sraiw        s1, s5, 8
                  xori         s7, a0, 623
                  divw         a1, t5, t4
                  andi         s11, ra, -1621
                  slt          a0, a3, tp
                  sltu         s10, s1, zero
                  subw         s7, t0, a1
                  mulhsu       s2, sp, a4
                  addiw        a5, a6, 621
                  slti         gp, s7, 728
                  add          t2, t6, a2
                  remw         s4, s1, a4
                  divu         s11, a3, s7
                  sltu         a2, s2, a5
                  auipc        s8, 284052
                  xori         s2, s9, -1952
                  sllw         a1, a3, s9
                  sraw         t1, a3, a6
                  addiw        a0, s8, -1600
                  rem          s6, t5, a0
                  lui          s0, 873451
                  srai         t1, sp, 34
                  or           sp, a6, zero
                  slt          s8, t6, a3
                  rem          a7, t5, tp
                  divu         s0, a4, s10
                  sltu         t3, tp, t1
                  srl          a0, t4, t3
                  ori          a5, s8, -1494
                  sll          t5, s1, t1
                  xori         t0, t4, 337
                  mulhsu       s7, a1, s0
                  sra          a1, s4, s10
                  nop
                  srlw         gp, a7, s4
                  rem          a3, a1, s6
                  nop
                  mulh         a7, a2, s6
                  xor          s0, a7, a0
                  ori          s11, s8, 930
                  sltu         t0, zero, s1
                  mulhu        a7, s0, t4
                  slti         ra, t0, 1650
                  sll          s11, s4, a3
                  add          s6, zero, s11
                  slli         t5, a3, 13
                  mul          s11, a0, t2
                  sltu         s0, s11, s7
                  sraiw        a6, t1, 3
                  mul          sp, tp, s0
                  addw         s1, a1, s1
                  mulhu        s8, zero, a3
                  mulhu        ra, zero, sp
                  div          s10, s1, s6
                  subw         tp, a1, t1
                  ori          t0, gp, 216
                  remuw        t4, t6, t2
                  sraw         t5, a4, t3
                  srai         s9, s0, 7
                  slt          t4, s8, s10
                  sub          t2, s5, s3
                  rem          a7, a2, s9
                  sltiu        ra, s3, -965
                  div          a5, t1, s1
                  remu         s2, ra, ra
                  addiw        s8, t0, -1885
                  xor          s7, a6, s10
                  slli         a2, s11, 22
                  divuw        a2, t6, t6
                  addiw        s4, sp, -150
                  sraiw        a6, a5, 20
                  divuw        s11, s8, t2
                  sltiu        a7, a3, 1403
                  slliw        s8, zero, 13
                  andi         sp, gp, 830
                  remw         a2, t2, a7
                  slliw        a6, a0, 21
                  xori         t5, s4, 1788
                  divu         a1, t3, t5
                  srli         t4, s2, 43
                  xori         s3, s4, -1904
                  srliw        t4, t4, 1
                  lui          a6, 467262
                  andi         a2, t3, 673
                  sra          s4, ra, s8
                  srliw        a2, t4, 4
                  srl          s9, s10, a2
                  sltiu        a1, t0, 658
                  slti         s8, zero, 533
                  and          t0, s0, t0
                  srl          a0, s4, s8
                  addw         a6, t3, t3
                  lui          s11, 135485
                  remuw        tp, a3, gp
                  mulw         t0, s11, a2
                  divu         s7, tp, sp
                  subw         t1, t1, s11
                  slt          s1, t1, t2
                  mulhu        t0, s6, t6
                  addw         s11, gp, s7
                  addiw        s7, t4, 2032
                  sraiw        t4, a3, 29
                  divu         a7, s6, s8
                  auipc        t0, 606473
                  slli         a3, a3, 15
                  sllw         a7, s6, a5
                  slti         t4, s7, 921
                  sllw         a0, gp, t0
                  slli         t4, t2, 19
                  xori         t4, t5, -564
                  rem          s8, s10, s10
                  slli         t4, a0, 3
                  sub          t3, s1, a6
                  slli         t0, a5, 29
                  divw         s4, t0, s1
                  remuw        a0, gp, s7
                  sltu         s6, a6, sp
                  xor          a5, s10, t4
                  div          a3, s8, s6
                  mulh         t4, a7, s9
                  sra          s10, t3, a7
                  addi         gp, a7, -1303
                  mul          s8, zero, t3
                  sltu         gp, s10, t0
                  divw         s10, s1, t6
                  divw         t3, gp, a3
                  addiw        a7, ra, -1882
                  mulw         s0, a1, s0
                  remw         a7, t5, s10
                  mulhu        s9, t0, a3
                  sraiw        t3, t0, 2
                  or           tp, s8, t0
                  remuw        a6, t6, s6
                  remu         s1, ra, a0
                  andi         s6, s2, -83
                  srl          s3, t3, s10
                  srli         s6, t3, 22
                  remu         s7, s7, a1
                  divu         a1, t3, s5
                  mulw         sp, s7, s7
                  divw         t1, t1, s0
                  sub          a2, a3, t2
                  srli         s0, s10, 56
                  divu         t5, s0, sp
                  sraiw        a6, t0, 27
                  div          s4, t3, a4
                  slli         zero, s9, 19
                  ori          s4, gp, 751
                  sltu         s3, s9, t0
                  divuw        s7, t5, a6
                  andi         s2, s0, -1519
                  lui          s0, 879965
                  remu         s6, t5, sp
                  slti         s8, s11, 1261
                  xor          s4, a5, s5
                  mulhu        zero, tp, s6
                  srliw        t3, s8, 15
                  add          t1, t1, zero
                  slli         a6, a1, 25
                  lui          t1, 287566
                  sraw         a0, s2, s0
                  mulw         s7, s11, t3
                  sltiu        ra, a4, -1510
                  auipc        t4, 60438
                  ori          a2, a1, -597
                  xor          gp, t2, s5
                  lui          t4, 199837
                  sraiw        zero, a7, 28
                  slliw        a0, s3, 12
                  divw         s2, a5, t4
                  mulh         s4, s9, a3
                  slti         s1, tp, -533
                  auipc        gp, 630802
                  remw         a5, t3, s11
                  addi         s2, t0, -1343
                  remu         t0, s10, sp
                  auipc        a2, 437438
                  lui          gp, 407828
                  addiw        t0, s0, -892
                  divw         s6, t0, s6
                  slliw        s4, a1, 31
                  sltiu        t5, a7, 645
                  slliw        a6, gp, 21
                  sub          t2, s2, a6
                  or           sp, t2, a7
                  divuw        s10, t5, t6
                  remuw        a1, a7, a0
                  sra          s11, s1, t4
                  lui          sp, 376606
                  divuw        t0, a3, s10
                  and          ra, t0, t3
                  mulhu        t3, s5, a2
                  srlw         t4, ra, s5
                  remw         t4, sp, gp
                  subw         s1, s2, t0
                  div          s7, zero, t2
                  sub          a0, tp, s7
                  auipc        ra, 222752
                  add          ra, a2, s6
                  remuw        tp, s4, t4
                  sltiu        a3, s0, 1250
                  addi         t1, t5, 1543
                  slli         t1, t1, 58
                  sub          s10, t0, t4
                  sltiu        t2, s1, -448
                  rem          s1, t1, a5
                  mulhu        a2, gp, t4
                  divu         t0, a5, s0
                  remw         a1, s10, t4
                  sltu         t2, s9, a2
                  slt          t3, zero, a0
                  srlw         a1, s6, a6
                  rem          t1, t2, a4
                  mul          a7, t4, s9
                  addw         a5, a7, s1
                  divu         a7, t5, s1
                  sltu         tp, a7, zero
                  sltiu        a5, a2, 1932
                  addw         a1, s3, s4
                  slli         t1, t5, 49
                  slti         s2, a3, 591
                  srai         a5, ra, 63
                  mulw         sp, a0, t0
                  divw         t3, a2, tp
                  sraw         s0, t3, a1
                  srliw        a6, s4, 31
                  mulw         t2, s5, s0
                  addiw        a7, t1, -986
                  ori          t0, t1, -633
                  mulhu        s10, a4, a5
                  addiw        t4, a7, 1598
                  remuw        a0, t4, a2
                  auipc        a3, 245603
                  sraiw        s0, s10, 1
                  slt          s2, s11, t2
                  mulh         t4, gp, a2
                  sll          s10, s11, tp
                  xori         a7, t6, -1574
                  addi         gp, t0, -1233
                  sraw         s2, t1, s5
                  srai         t5, s1, 16
                  add          t1, t2, s4
                  sltu         s7, t6, a6
                  mulh         a2, s9, a0
                  div          s10, t4, zero
                  srli         t4, t1, 27
                  sraiw        s6, a4, 25
                  divu         s4, t4, s5
                  srlw         tp, zero, t5
                  xor          a0, sp, s9
                  lui          sp, 480430
                  sub          a5, a2, s8
                  remw         a5, t4, a4
                  slt          t1, s3, t0
                  srli         t3, a3, 5
                  mulhsu       a3, s3, s5
                  ori          s3, a6, 1475
                  divu         a7, ra, t2
                  mul          a2, a7, s11
                  addw         tp, s8, a6
                  remw         a2, gp, ra
                  addi         s2, t6, -560
                  lui          s1, 837779
                  srl          t4, s2, gp
                  mulhsu       a3, s4, s8
                  lui          t4, 499302
                  mulw         s8, t2, a5
                  remuw        gp, t0, s6
                  andi         s7, sp, 947
                  or           t2, a0, a3
                  add          sp, t5, a7
                  sltu         s6, zero, s1
                  srliw        t5, s11, 11
                  srl          s0, zero, s3
                  sltiu        a1, a6, -196
                  remw         t4, a2, s11
                  auipc        a2, 679363
                  sll          t4, a5, t0
                  srlw         s4, a4, zero
                  srli         t5, sp, 21
                  addi         sp, t5, -1021
                  sltu         s1, t5, t2
                  srai         s4, s8, 26
                  divuw        ra, ra, a1
                  addiw        s11, s10, -679
                  divu         t0, t0, sp
                  ori          tp, ra, 1079
                  srlw         s2, a6, t3
                  sraiw        s7, a6, 2
                  addi         a0, s6, -489
                  srliw        t5, zero, 25
                  srliw        s7, s5, 6
                  mulw         t3, a5, s2
                  slt          s7, s2, s4
                  sraiw        s10, t5, 21
                  ori          zero, s4, 1915
                  sll          t2, s4, gp
                  sraiw        a5, sp, 15
                  remw         t4, t0, t5
                  or           t5, s0, a4
                  sltiu        s7, t2, 361
                  sra          a6, s8, a7
                  andi         a0, zero, -812
                  mul          s3, s0, gp
                  mulhu        a7, a4, s0
                  srai         a2, s11, 16
                  srai         tp, s3, 24
                  srai         s7, gp, 38
                  mul          a6, s8, s11
                  slliw        a0, s5, 17
                  sltiu        a6, s10, 1
                  divuw        s11, gp, s11
                  lui          a2, 672021
                  mulh         a2, ra, s5
                  addi         s2, s0, -1245
                  mulh         a3, gp, s0
                  andi         gp, gp, 1498
                  remuw        a7, zero, a3
                  add          zero, t4, t5
                  remu         a0, s2, t0
                  divw         t1, t6, a0
                  sra          t0, gp, a7
                  xori         s10, a4, 1474
                  srliw        a1, ra, 18
                  sub          t5, a6, sp
                  or           s4, sp, a5
                  ori          t4, s0, -1559
                  divuw        t3, a6, a2
                  sll          a2, t4, t5
                  sll          gp, zero, t5
                  mul          a7, a6, s9
                  sltiu        a3, t2, -27
                  subw         a0, ra, tp
                  divw         s11, tp, gp
                  xori         ra, a1, -1773
                  divuw        s10, t3, a2
                  mul          t3, a2, s1
                  srli         t0, a1, 44
                  div          s11, gp, s11
                  sub          t2, sp, a3
                  nop
                  srai         s0, a6, 11
                  mulhu        t0, a6, s5
                  or           gp, a7, a2
                  div          a5, a5, s0
                  or           s11, s10, a3
                  ori          a6, t6, 1430
                  divu         a3, gp, s0
                  mulh         t3, s7, zero
                  srlw         a2, a5, sp
                  addw         t1, a3, t6
                  divu         a0, s3, zero
                  sraiw        s2, s8, 1
                  div          a1, a3, s9
                  srliw        s7, s5, 15
                  divuw        tp, a2, s4
                  xor          s11, s7, a0
                  andi         a7, a3, -704
                  xori         a3, s0, -1674
                  add          a5, s11, s11
                  andi         s9, a1, -298
                  divw         t0, a3, s4
                  rem          t1, a1, s3
                  slli         ra, tp, 39
                  sraw         gp, s4, a3
                  auipc        sp, 219875
                  slti         t3, s3, -433
                  sraiw        s2, zero, 10
                  srliw        s8, s7, 5
                  slt          ra, a2, sp
                  mul          a0, s7, sp
                  srl          s3, a4, a7
                  sltiu        t3, a3, 365
                  slli         a2, t0, 0
                  mul          t0, t6, s8
                  slliw        s7, tp, 27
                  ori          a6, s0, 1449
                  rem          s8, a6, a6
                  addiw        a5, sp, 612
                  xor          tp, tp, t5
                  rem          tp, a1, t3
                  remuw        s7, a2, gp
                  xor          t2, a0, a3
                  mulw         s11, t4, t5
                  subw         s2, a6, s11
                  sraiw        a7, t4, 28
                  srlw         s8, t0, tp
                  sra          s9, s9, t1
                  sltu         t1, s11, s4
                  or           ra, t6, ra
                  slti         t3, a7, 1487
                  divu         ra, ra, s4
                  srli         t4, t6, 50
                  srai         zero, s4, 18
                  sraw         s10, t3, a1
                  add          s7, s2, s2
                  sltu         s2, a6, t0
                  or           t4, s8, s8
                  addw         s1, a0, a5
                  sltu         s2, t4, ra
                  or           a0, tp, tp
                  xori         sp, s2, 202
                  sltiu        a0, s5, 1177
                  sub          sp, t0, s1
                  ori          a7, gp, 1754
                  mulhu        s11, gp, a5
                  mul          s7, a7, a6
                  xor          s0, zero, a4
                  sraw         a5, s3, s8
                  sraiw        t4, gp, 15
                  subw         t3, s1, s6
                  divu         t1, s4, s6
                  ori          s4, t5, -358
                  mulh         s6, t2, s3
                  sraw         ra, s9, t2
                  remuw        a6, t2, s4
                  srliw        s7, t2, 5
                  xor          a3, zero, a0
                  xor          s1, t1, s4
                  xor          s1, zero, a4
                  slti         s8, s6, -299
                  nop
                  add          a5, t0, t2
                  subw         t4, gp, a0
                  addiw        t0, t3, 821
                  sllw         gp, s2, s10
                  lui          a0, 95142
                  nop
                  slliw        t4, s3, 15
                  xori         t1, t5, 1879
                  mul          s2, a2, s1
                  nop
                  mulhsu       a3, sp, gp
                  mulhsu       s3, tp, s8
                  sraiw        ra, s7, 29
                  sltu         s7, a3, sp
                  and          t3, s0, s7
                  sllw         s4, s1, tp
                  mul          t5, a4, s0
                  srlw         s11, t5, t3
                  sub          a0, a1, s5
                  slliw        t3, s4, 16
                  sra          t5, a4, s4
                  xor          s4, t2, zero
                  nop
                  mulw         a7, t1, t2
                  auipc        t2, 142462
                  srl          s3, s4, a6
                  sltu         s0, a4, s11
                  lui          a5, 21162
                  or           gp, s1, s7
                  remuw        t2, a6, a1
                  xori         s3, t2, -1181
                  srai         s3, s6, 59
                  add          t0, a0, s2
                  remu         a6, a3, a0
                  auipc        a6, 648591
                  nop
                  addw         t1, t2, t2
                  ori          a5, s6, 1497
                  mulhu        a2, gp, t4
                  sub          t4, a0, t6
                  slti         gp, t3, -557
                  sraiw        s7, tp, 12
                  addw         t2, zero, s7
                  srai         a5, gp, 49
                  lui          a3, 996792
                  mul          ra, a0, s0
                  srlw         s8, s5, a6
                  srlw         t0, s7, s3
                  divuw        a2, t3, sp
                  divu         a3, s5, t3
                  sltu         zero, a1, t5
                  sraw         a3, t1, s3
                  mulhsu       s4, s11, s4
                  sraw         s3, s8, s0
                  sraiw        zero, ra, 3
                  srl          t2, t6, t2
                  slli         s10, sp, 50
                  remu         a5, gp, s9
                  subw         t0, s11, s2
                  lui          ra, 1011835
                  srliw        s1, s3, 12
                  srlw         s6, s6, t3
                  slti         a7, s0, 1841
                  xori         ra, gp, 1506
                  mulhu        s8, a7, gp
                  add          t3, a4, t4
                  remu         a0, gp, a2
                  mulhu        s8, s2, sp
                  addi         s0, gp, -590
                  add          s6, s9, t2
                  mul          gp, t2, gp
                  addiw        a2, s11, 1291
                  and          a0, s7, t6
                  divw         a3, sp, s0
                  mul          s1, a6, a7
                  divuw        t1, t0, t5
                  addi         a3, s9, -197
                  xor          a2, gp, s2
                  and          t5, t2, t4
                  slt          a6, s7, zero
                  mulhu        s4, a1, sp
                  xor          a1, a4, t5
                  auipc        s11, 206661
                  slti         t5, a1, 923
                  slti         a6, t0, -187
                  mul          zero, s8, s3
                  divw         a2, s5, t1
                  addw         sp, s0, a7
                  sllw         s2, s10, s0
                  addi         s4, s1, 1469
                  andi         a5, s9, 1016
                  remuw        zero, s8, s5
                  rem          s7, s11, a4
                  addiw        t3, t6, -930
                  subw         s0, a4, s7
                  xor          s2, s4, s10
                  divu         s10, s8, s10
                  mulh         a3, s8, a1
                  remw         t0, zero, t0
                  slti         s4, a0, -55
                  srliw        t1, a6, 28
                  srli         s8, ra, 31
                  slt          s3, t3, t0
                  addiw        s10, t1, -1182
                  subw         s11, t2, s7
                  auipc        tp, 938716
                  slli         sp, s10, 6
                  addi         t1, s8, -729
                  sub          s7, t6, t0
                  sll          s0, t4, tp
                  sra          a5, t1, a0
                  sltu         t2, s7, gp
                  mulw         a1, s10, t5
                  sraw         t3, s5, t4
                  or           s3, s1, a3
                  srl          a3, s10, t4
                  slliw        s2, ra, 2
                  srl          tp, t3, a7
                  xori         a1, s8, 1054
                  sltu         a0, t0, t1
                  sub          t3, a3, a6
                  and          a1, t0, t6
                  nop
                  mul          s2, gp, t0
                  or           t0, t1, a7
                  srli         s0, a5, 47
                  ori          a3, s8, -1400
                  ori          s6, a4, 274
                  divu         s7, s5, s1
                  sra          a2, s8, s7
                  srai         s3, gp, 42
                  remuw        s4, s11, a7
                  and          a7, s6, t4
                  sltiu        t3, s11, 683
                  addw         a1, t1, s10
                  srai         a6, a7, 12
                  remw         s4, ra, a6
                  sraw         s4, sp, t3
                  slti         s3, a0, -1499
                  auipc        t0, 565705
                  div          s9, s9, t3
                  mulw         t0, t3, t0
                  sllw         t5, a5, a3
                  lui          t5, 832594
                  and          s4, sp, s4
                  remuw        s11, t4, a6
                  divuw        a2, s1, a5
                  lui          s2, 666297
                  sraw         a7, s2, t2
                  lui          a2, 548268
                  auipc        s0, 678816
                  sllw         s11, a5, s0
                  ori          a5, s2, 2039
                  add          s2, s10, t2
                  divu         s6, t6, s5
                  mulh         a7, sp, t4
                  slti         s9, sp, 615
                  xori         s3, t3, -2020
                  remuw        s9, a6, s0
                  mulhu        t4, a3, a4
                  addw         a7, a0, t6
                  divu         a7, t5, a3
                  mulw         a2, a5, s6
                  auipc        tp, 794252
                  divuw        t4, a0, s9
                  mul          a3, s4, t4
                  sltiu        s9, t4, -2024
                  sraiw        s3, gp, 0
                  mulhsu       t2, s10, a2
                  slli         a0, a7, 30
                  nop
                  ori          a6, a1, 704
                  subw         s2, t4, t3
                  remu         s9, a7, s3
                  remw         a0, s8, gp
                  srl          t0, t3, a0
                  mulhsu       s0, s1, s3
                  sll          s7, a4, a6
                  or           gp, t3, a5
                  rem          a2, t3, a7
                  xor          s2, t4, a7
                  slliw        ra, t6, 9
                  mulhu        sp, a7, t6
                  rem          t4, zero, s2
                  mulhu        s0, a2, a7
                  sll          s3, s4, a6
                  sllw         ra, t0, a2
                  addiw        a2, gp, -1027
                  mulhsu       a2, t3, t6
                  sraiw        sp, s11, 5
                  slliw        t1, a7, 7
                  srli         a2, t0, 37
                  divw         zero, sp, s6
                  ori          zero, s8, 1838
                  divu         s8, ra, s7
                  andi         s3, s9, 1385
                  slt          gp, s11, s11
                  sltiu        a6, s3, 213
                  mul          s10, t2, s1
                  mul          ra, s7, tp
                  xori         t1, t0, 2047
                  nop
                  rem          tp, a6, t1
                  srl          s11, s5, tp
                  slliw        ra, a3, 0
                  or           sp, ra, t0
                  sltu         s6, s5, s5
                  slt          s1, gp, t3
                  remuw        s6, t4, t0
                  sllw         t0, a7, a1
                  sllw         s1, s10, s0
                  mulhsu       s9, t6, a4
                  srli         sp, s10, 51
                  sltu         t4, s2, a6
                  sllw         s9, t6, a2
                  slti         t5, ra, -405
                  slliw        s9, a4, 31
                  sltiu        s7, t0, -1402
                  sraiw        a3, s8, 21
                  auipc        s8, 965839
                  auipc        a7, 244398
                  sllw         s3, s2, a1
                  sll          sp, a5, a2
                  and          s11, s3, t2
                  slti         zero, s5, -918
                  sltiu        gp, a3, 521
                  sub          s0, t2, s1
                  or           t2, tp, t1
                  sltu         t2, t5, a6
                  srliw        t1, a3, 19
                  divw         a0, s3, ra
                  andi         s6, a1, -1724
                  slt          t1, s9, s2
                  xori         s1, s10, -207
                  add          s7, sp, a3
                  mulhu        s7, s7, t4
                  addiw        s11, gp, -1756
                  sltu         s3, sp, ra
                  andi         tp, t4, 190
                  addiw        t3, a5, -1476
                  sra          s1, t5, s2
                  andi         a5, a5, 903
                  divuw        a5, t5, s6
                  srliw        t0, a6, 23
                  sub          gp, zero, a3
                  lui          s4, 474368
                  sltu         sp, s5, t6
                  srai         sp, a6, 57
                  sllw         a0, a2, s5
                  srlw         t1, tp, s9
                  sra          s3, a5, s4
                  lui          gp, 720760
                  srliw        s10, s2, 31
                  mul          s7, a1, ra
                  nop
                  ori          a2, s10, 1596
                  remu         t1, s4, t4
                  slti         t3, s11, 985
                  srl          a2, tp, a4
                  divuw        t2, s4, ra
                  srlw         t1, a7, gp
                  sltiu        t0, s0, 1809
                  mulw         a0, t2, tp
                  lui          ra, 85245
                  sll          s4, s2, s5
                  and          t5, sp, a0
                  divw         s0, zero, t4
                  addi         a6, s5, 739
                  mul          t5, s6, a5
                  srl          t5, t4, t1
                  slt          a5, s10, s9
                  div          tp, s11, sp
                  divuw        a5, s9, gp
                  mulw         s3, s7, a4
                  rem          a3, zero, a7
                  sub          s2, s8, a7
                  and          s0, ra, s0
                  addiw        a2, s10, -842
                  slti         a7, t2, 1174
                  mulhsu       s7, s7, s11
                  slti         a1, a0, -655
                  divuw        s10, tp, a3
                  div          s4, s5, t5
                  andi         sp, zero, -822
                  andi         a7, s2, -122
                  srl          a6, a4, s10
                  sraiw        s3, t0, 30
                  ori          s0, s10, -21
                  xori         a3, a5, -1304
                  mulw         t3, s11, a1
                  slt          s3, tp, a5
                  ori          a3, tp, 1111
                  xori         a5, a0, -1095
                  sllw         tp, s8, s6
                  slli         s11, t5, 1
                  mulh         sp, t2, s6
                  slt          s4, s4, s9
                  or           a5, s10, sp
                  srl          t3, s9, zero
                  srai         t1, s6, 15
                  auipc        a5, 802045
                  srai         zero, t5, 55
                  auipc        a5, 320479
                  subw         zero, sp, s10
                  sraw         t5, gp, t3
                  sll          s6, sp, ra
                  divuw        s10, s9, ra
                  lui          a0, 544249
                  srliw        a3, s10, 24
                  sra          s7, gp, s5
                  addiw        a2, s7, -1965
                  mulhsu       s6, t4, t4
                  sraiw        a7, t0, 4
                  addi         t2, s5, -1940
                  subw         s1, s11, t6
                  sll          a2, sp, a6
                  slli         s8, t2, 27
                  sraiw        s0, s5, 26
                  divw         s10, t5, a6
                  sraiw        gp, t5, 4
                  sltu         s4, a7, a0
                  addw         s4, s6, t5
                  divuw        tp, a5, a7
                  divw         t1, s6, sp
                  slliw        t4, a1, 26
                  sllw         sp, s9, s6
                  srl          s6, s5, t1
                  xori         s11, a2, 1592
                  sra          s7, a3, a1
                  addi         a5, sp, 383
                  lui          s3, 757252
                  sra          s8, s10, tp
                  lui          t4, 509381
                  nop
                  xori         a6, a4, -1757
                  sraiw        s8, t6, 11
                  auipc        s9, 1047655
                  ori          a0, s8, -1450
                  slli         s10, t6, 2
                  remuw        tp, a3, s0
                  srlw         a2, sp, t2
                  mulhu        a6, s1, a1
                  remuw        a5, s9, a1
                  srliw        s1, a2, 28
                  remuw        a7, t3, s7
                  xori         a0, t1, 713
                  sll          t4, s2, t4
                  lui          s4, 880065
                  sub          s11, zero, s9
                  auipc        s10, 629988
                  srli         s4, s10, 23
                  divw         s8, t1, s9
                  andi         a1, tp, 413
                  srl          t2, s3, s4
                  sra          a7, s2, s1
                  sltiu        a0, t2, -1384
                  add          tp, sp, s3
                  srlw         t1, s1, s11
                  ori          t5, a1, 608
                  remu         t0, a5, s3
                  and          a0, s3, s0
                  srlw         t3, s5, a3
                  remu         t3, t4, t3
                  slli         t1, s2, 31
                  addi         t5, t5, 1150
                  auipc        s7, 679577
                  divu         a7, t3, t0
                  andi         a5, a3, 489
                  lui          a6, 673604
                  slliw        tp, s9, 27
                  srai         t0, s5, 37
                  sltiu        s11, a5, -1521
                  remu         t2, s10, s10
                  srli         a3, a3, 38
                  ori          ra, s11, 1322
                  divu         tp, s0, ra
                  ori          t3, t6, -447
                  sltu         a2, zero, s10
                  rem          s2, t4, a1
                  addiw        s9, t3, 954
                  remw         a2, tp, sp
                  addiw        t5, t3, -1066
                  xori         t1, a6, -781
                  srli         a6, s9, 32
                  sllw         a6, zero, s6
                  sraw         s11, s6, a0
                  xori         s3, gp, 115
                  srai         s6, s9, 63
                  slti         a0, t3, -137
                  andi         ra, s1, 779
                  remu         a0, a2, t5
                  xor          t5, gp, t6
                  srlw         ra, tp, t4
                  sll          s7, s2, a4
                  auipc        s3, 949741
                  lui          s10, 1020170
                  sub          ra, s9, s3
                  remw         s2, a3, s1
                  subw         s0, gp, s6
                  slli         t4, s4, 61
                  sltiu        s3, s8, -1871
                  div          s4, a0, a1
                  mulw         s6, tp, a5
                  and          ra, s7, gp
                  sraiw        t5, a0, 22
                  srai         s4, s4, 3
                  mulw         a3, t2, a6
                  sraiw        t3, s6, 11
                  remw         t0, s1, a1
                  add          a5, s2, gp
                  sra          s4, t4, zero
                  addiw        a5, sp, 1580
                  rem          tp, t3, t6
                  sub          ra, s9, a5
                  sub          t3, s10, tp
                  divw         a3, s5, t3
                  sraw         a1, zero, s2
                  andi         t3, s2, 1447
                  add          a6, a2, a3
                  and          t3, zero, t6
                  ori          gp, a1, 1526
                  remw         ra, gp, a7
                  div          t3, a0, t1
                  div          s11, a3, s7
                  sltiu        s0, s8, 120
                  divuw        t4, t1, a1
                  rem          s0, s8, a6
                  rem          a5, a1, a4
                  addi         ra, t3, -1077
                  srli         s8, a4, 53
                  addw         a7, t6, ra
                  add          t1, a3, sp
                  addi         s10, s5, 2
                  sra          a3, a1, sp
                  xori         a7, t1, -281
                  slt          sp, t6, sp
                  remu         a6, ra, t0
                  sra          s3, sp, t5
                  sllw         a6, s9, a2
                  addiw        a5, tp, -942
                  srliw        a0, s9, 30
                  remw         s3, a2, a5
                  divuw        a5, gp, sp
                  divw         s3, s6, s6
                  remw         t1, t4, s9
                  sltiu        s8, a7, -1154
                  mulhsu       s11, s6, s3
                  and          t0, t2, s5
                  add          a7, t3, sp
                  sraw         t5, s4, t1
                  and          s2, t0, s7
                  slti         zero, a5, -535
                  div          a5, s7, ra
                  mulw         s10, a5, a0
                  addi         a3, s10, 824
                  sraiw        a1, s11, 28
                  mulhsu       zero, t0, t4
                  sllw         a2, gp, a3
                  addi         sp, zero, -1548
                  mulh         s3, a5, s11
                  sra          gp, t0, s5
                  remu         s4, gp, s7
                  sltiu        t5, s1, -886
                  subw         a6, s0, tp
                  divw         t3, a4, t2
                  srliw        a2, s8, 5
                  slliw        a3, t4, 7
                  sra          s6, t4, a4
                  remw         a2, a1, s4
                  slti         a1, gp, -1053
                  mul          s11, s8, s5
                  sub          a6, a2, s8
                  or           s3, s9, s4
                  srliw        t2, zero, 25
                  addiw        s3, a6, -1426
                  and          t3, s0, t6
                  addiw        a0, tp, 912
                  remw         s1, s9, a5
                  addw         t1, s7, s3
                  remuw        a2, t4, a4
                  sll          a0, a3, a3
                  sltiu        s2, s6, -1207
                  and          sp, s4, a1
                  sll          t0, a1, s7
                  slt          gp, s2, a2
                  remw         s11, s2, a0
                  add          t5, t3, t6
                  addi         s3, s4, 235
                  srai         s9, a1, 16
                  div          s11, a6, a2
                  mulhsu       s4, s2, tp
                  remw         s0, a3, s7
                  divuw        t5, s0, s7
                  sllw         s2, t2, a1
                  xor          a5, a4, s10
                  mulh         s4, s4, a6
                  auipc        t0, 366187
                  xori         a7, a4, -1063
                  rem          t2, a6, a3
                  slti         s6, sp, -1083
                  sltiu        t1, s11, -1803
                  lui          t1, 136110
                  remu         t3, a0, s11
                  lui          tp, 785742
                  srliw        s8, s4, 4
                  div          a3, a7, t6
                  slti         s8, t2, 204
                  slt          t5, s10, s3
                  sraw         s2, t0, sp
                  remu         s1, t6, s9
                  srai         t0, ra, 57
                  sra          a1, ra, t1
                  sraw         t3, s11, s11
                  sllw         s8, s2, tp
                  srl          s8, s6, t6
                  slt          tp, s4, t4
                  divw         a5, a2, gp
                  sll          t5, s8, a6
                  mulhu        t1, tp, a6
                  sraiw        a2, s5, 18
                  divuw        s1, s5, s7
                  divw         s0, s8, s10
                  remw         t4, a0, a7
                  sltiu        s3, sp, 1412
                  addw         ra, a4, s9
                  div          t0, t5, s2
                  srliw        a3, a3, 14
                  slti         s10, s3, 1173
                  srl          zero, tp, a6
                  slli         a7, ra, 4
                  srlw         sp, a0, s7
                  sub          t0, s2, s3
                  addi         s4, s3, 1786
                  lui          a0, 574293
                  remuw        s1, s2, s2
                  auipc        a2, 965440
                  sll          s6, t3, s5
                  subw         a7, s9, t1
                  divw         a2, s0, a0
                  add          s0, a0, s11
                  slt          s8, s3, a1
                  lui          s7, 834879
                  sub          a1, ra, tp
                  remu         s10, t0, s0
                  sltu         a5, a3, a2
                  auipc        s2, 109026
                  addw         a7, zero, s11
                  divw         a3, s11, s11
                  mul          s6, zero, s6
                  sraiw        a5, s0, 7
                  auipc        s1, 354945
                  ori          t5, t4, 1613
                  sltiu        a3, ra, 1473
                  srl          s1, a3, t1
                  div          a5, zero, t2
                  srai         s2, gp, 32
                  lui          t4, 584391
                  remuw        a0, t2, t0
                  mulw         t4, s2, s0
                  slli         s7, a6, 42
                  slti         s7, a5, 18
                  subw         a7, gp, a7
                  xori         tp, a1, -1982
                  srl          sp, s1, zero
                  sllw         a2, s2, s6
                  sra          tp, s1, s0
                  addi         t4, a7, 338
                  sraiw        s7, sp, 2
                  mulh         t4, t2, s1
                  mul          a3, t6, t6
                  sll          s6, a1, a6
                  divw         ra, s3, t4
                  mul          tp, s10, t3
                  sra          s7, t6, s4
                  addw         a5, gp, t1
                  xori         zero, s8, -344
                  divu         a6, t5, a1
                  nop
                  lui          a3, 1025761
                  remuw        s4, t3, a1
                  addw         s1, t5, a0
                  rem          a5, s11, t1
                  sltiu        a0, s11, 1669
                  slli         s2, t6, 52
                  add          a6, s1, a3
                  and          s3, t3, t0
                  mul          t4, a6, t2
                  xor          a3, a2, sp
                  sra          s2, a0, t0
                  divuw        a0, s4, s2
                  slli         s6, t6, 30
                  ori          s6, a6, -75
                  sltiu        t4, a4, 575
                  slti         sp, t1, -634
                  slliw        gp, s6, 26
                  lui          t0, 192764
                  divu         s6, t5, a2
                  srliw        s10, a7, 24
                  addiw        s8, t6, 352
                  sub          tp, t2, s11
                  xori         t4, a1, 96
                  mul          t1, ra, s7
                  sub          s9, s5, s10
                  sub          t0, s3, t4
                  sraiw        s4, sp, 22
                  srai         a6, a6, 0
                  auipc        ra, 622397
                  addw         a5, s4, a4
                  mulhsu       s0, a5, a5
                  remu         t4, gp, sp
                  divuw        s0, t6, s5
                  add          a2, t4, s3
                  mulhu        t3, t0, t3
                  and          tp, s7, a6
                  sra          s4, s5, s4
                  mulhu        a3, sp, s11
                  srli         t4, t0, 18
                  nop
                  remuw        t4, s9, s6
                  sllw         s8, t3, t6
                  sll          a0, s2, a6
                  sltiu        a1, a6, -887
                  nop
                  remuw        s7, zero, t0
                  rem          zero, ra, a5
                  auipc        s11, 145801
                  divuw        s11, s5, ra
                  mulw         a3, zero, s5
                  divuw        t4, s10, s0
                  sltu         tp, t3, t3
                  divuw        s10, zero, gp
                  sraiw        s9, s1, 8
                  add          t1, t6, s3
                  sll          s1, s0, s11
                  mulhsu       t5, a6, s6
                  lui          t4, 882602
                  or           a2, t5, a1
                  addw         t3, s10, t6
                  add          a6, t2, s8
                  addiw        s0, t3, -1658
                  divu         s8, s10, a6
                  andi         s0, t6, 970
                  srai         a2, a5, 51
                  add          a7, sp, s10
                  srli         a0, a5, 13
                  srl          t4, gp, ra
                  srlw         t5, a4, a6
                  divw         a3, a5, s7
                  or           s4, t3, t3
                  nop
                  mulh         s11, tp, a0
                  srli         s10, a5, 33
                  slt          a3, s5, t0
                  andi         t4, s10, 977
                  ori          a5, a1, -954
                  sub          s1, ra, a6
                  nop
                  divuw        t2, a2, t2
                  slt          s4, s9, gp
                  auipc        s8, 767121
                  mulh         s8, s5, zero
                  auipc        t5, 1033692
                  rem          a2, a3, s8
                  remuw        s10, a2, s2
                  sllw         t3, sp, gp
                  srliw        s11, a7, 21
                  sllw         a3, s8, t6
                  slli         ra, t2, 46
                  sltu         t5, t4, zero
                  divu         t5, s4, s2
                  sraw         t3, s10, a1
                  addi         a0, s6, 505
                  addw         a7, s1, t2
                  sra          t4, a4, a0
                  srl          a0, a2, a6
                  sltiu        gp, s6, 1492
                  sraw         a3, s3, s1
                  srlw         s10, s4, s2
                  sraw         a6, s8, t5
                  remw         s7, s3, t5
                  div          a6, tp, a4
                  sra          t4, sp, a0
                  remuw        a5, a2, s10
                  addi         t2, s2, 1844
                  remu         a6, sp, a5
                  srlw         s11, s7, a5
                  mulh         s4, t6, a4
                  or           sp, a2, s1
                  sub          zero, s3, t2
                  rem          s11, sp, gp
                  srl          s1, a7, s1
                  sraiw        s1, s3, 14
                  sraw         s2, gp, s1
                  srli         s7, a3, 18
                  mulh         s4, t6, s4
                  subw         s11, tp, s0
                  srai         s3, s9, 2
                  and          t1, t0, a0
                  lui          a5, 751982
                  addi         s10, s1, 285
                  sra          s6, s3, t2
                  mulh         s1, a3, t3
                  rem          s1, a3, t5
                  mulhu        s8, a6, t4
                  auipc        s3, 411742
                  sraw         a5, s2, s3
                  subw         t4, s9, zero
                  sltiu        sp, s2, 1083
                  mulhu        s2, zero, sp
                  divu         s8, s7, t4
                  xori         s4, s0, -766
                  remw         a7, s5, a2
                  lui          s8, 903845
                  sllw         sp, s7, a2
                  auipc        zero, 245117
                  srl          ra, s11, t0
                  remuw        s7, s2, s10
                  subw         a6, t2, t4
                  divw         s2, s2, s4
                  mulh         s10, s6, a6
                  divu         s11, s3, a2
                  mulw         t5, s7, s6
                  mulhsu       a7, s5, s11
                  divw         a6, ra, s8
                  sltiu        s1, s5, 1924
                  sllw         t4, t5, s10
                  slt          s11, s4, s7
                  srl          a2, zero, t2
                  nop
                  xor          s3, s5, s8
                  sllw         tp, s9, s11
                  slli         t5, t6, 45
                  subw         s7, s11, s4
                  srl          ra, s5, a5
                  ori          sp, tp, -1121
                  add          a6, s8, s11
                  subw         a1, tp, t1
                  srai         s11, a0, 21
                  sub          a0, s1, tp
                  addw         a6, a2, ra
                  rem          a1, t3, t4
                  sub          s11, a7, t4
                  slt          s7, a7, t4
                  mul          s8, a4, gp
                  auipc        tp, 283065
                  addw         s11, a0, a7
                  sltu         t0, s3, s10
                  nop
                  srai         a5, t6, 52
                  divuw        gp, s4, zero
                  addiw        s10, s4, 1562
                  remuw        t4, t2, a4
                  sraw         a5, ra, t2
                  lui          t5, 285223
                  ori          s1, gp, 642
                  mulhu        ra, s5, a7
                  andi         t5, s0, 1640
                  srl          a2, zero, s4
                  sub          sp, s1, t1
                  srliw        a3, s5, 17
                  mul          s4, s11, t5
                  srli         a5, tp, 13
                  mul          s4, s0, s9
                  slti         s7, a2, -766
                  nop
                  and          a6, s3, s10
                  addw         a0, a2, s8
                  mulh         s0, s9, s10
                  subw         a3, t6, sp
                  sllw         t0, a5, t6
                  remu         s8, s1, a1
                  srlw         a2, s3, s8
                  xori         s11, a4, 698
                  sub          sp, a7, s11
                  divuw        a3, zero, a2
                  remu         a3, a2, gp
                  mul          a2, a4, s10
                  sraiw        a6, ra, 17
                  add          tp, t2, a7
                  add          t2, a3, a3
                  mulh         s10, a4, sp
                  ori          gp, t2, 1286
                  lui          a0, 447831
                  div          s9, s7, a3
                  sra          s3, s9, a4
                  slli         t3, t1, 41
                  srlw         ra, t3, a0
                  sraiw        s0, s3, 31
                  addiw        a0, s6, 1864
                  sra          t3, s5, a4
                  div          s9, s11, zero
                  sllw         s10, zero, s4
                  srl          s11, s1, a0
                  sltiu        sp, a3, 1357
                  sra          t0, t3, a7
                  sltiu        t1, s5, -1443
                  rem          a1, s7, s10
                  andi         a3, s8, -456
                  srliw        s11, a6, 28
                  mulhu        t1, a2, s6
                  lui          t4, 973869
                  auipc        s2, 24481
                  mul          a7, a2, t5
                  and          s1, s7, s3
                  sltu         a0, t3, t2
                  sraw         s9, t4, a4
                  sllw         tp, s1, a3
                  divu         t4, a4, s5
                  srliw        ra, s2, 11
                  mulhu        s1, s10, a0
                  ori          s3, sp, -717
                  sra          a7, a0, s9
                  mulw         s7, s0, t4
                  and          t0, s7, t2
                  slti         t4, zero, 582
                  sll          ra, zero, t5
                  slti         a3, s11, 1333
                  srl          s4, s3, a4
                  sllw         s10, s3, a0
                  subw         t0, s1, t4
                  or           s10, a7, t2
                  andi         a0, a5, 1890
                  xor          a7, a6, s4
                  add          ra, s1, s2
                  sll          s4, s1, a2
                  mul          zero, t5, t1
                  div          s7, s4, s10
                  sltu         a3, s10, s5
                  addiw        t1, gp, 1426
                  remu         tp, a5, gp
                  srli         a6, s5, 39
                  divw         a2, s10, a6
                  mulhsu       a6, a0, a2
                  and          t3, s10, t0
                  addi         ra, s8, -1444
                  addiw        a7, t6, 929
                  mul          t4, s11, s2
                  slt          s4, a0, a0
                  addiw        a1, s6, -460
                  div          s6, a4, a4
                  andi         a5, a6, 588
                  sltiu        s9, t0, -20
                  remuw        a3, t0, a0
                  slti         a0, a1, 120
                  sraiw        t3, zero, 31
                  slliw        sp, gp, 23
                  add          s4, t5, s9
                  xor          s7, a7, s1
                  addiw        t0, a7, 514
                  ori          a2, t1, -1972
                  rem          a2, a6, ra
                  remuw        t2, a1, s10
                  srl          zero, t6, ra
                  sltu         t0, zero, s5
                  mulhu        s6, s7, tp
                  nop
                  ori          gp, ra, -395
                  xori         a5, s9, 1372
                  div          s4, a3, t5
                  srai         t5, a7, 5
                  auipc        s9, 526615
                  divu         t5, a5, zero
                  sub          sp, t4, t6
                  sllw         s2, s4, tp
                  subw         t3, a1, zero
                  mulhsu       s4, s7, s3
                  srli         t5, ra, 53
                  sraw         s8, t3, s0
                  xor          a0, s1, a7
                  rem          s2, s10, sp
                  addw         ra, t1, a6
                  divu         s2, s10, t6
                  mulhu        s4, a0, gp
                  addi         ra, a5, -943
                  sra          t4, s3, t4
                  sltu         s8, gp, t2
                  sltu         t1, s11, ra
                  div          tp, t4, t2
                  mulhsu       s9, a3, tp
                  divw         t0, t0, s0
                  subw         a5, gp, zero
                  lui          zero, 264425
                  mulhu        s7, s11, t3
                  srl          ra, s8, s10
                  remw         s1, s5, a7
                  rem          tp, s3, a7
                  sll          a6, a5, a3
                  srai         s7, t6, 59
                  nop
                  addiw        t1, a3, -409
                  slt          s2, s10, a0
                  srliw        ra, a1, 11
                  xori         a1, s9, -954
                  addiw        a5, t4, -157
                  addi         t0, a3, 1656
                  and          s9, t1, s7
                  xori         t5, t2, -1942
                  sub          t5, s9, a2
                  remw         s1, t1, sp
                  divw         a5, a4, t1
                  rem          a2, t2, t6
                  addi         s3, sp, 1987
                  remu         a7, zero, t6
                  nop
                  xor          s1, s9, sp
                  andi         t4, a7, -81
                  sra          s4, s5, gp
                  divw         s3, zero, s6
                  mulw         a7, t3, a3
                  divuw        t5, a5, tp
                  sraiw        s9, s4, 6
                  mulh         a1, s1, t4
                  remu         a6, s10, s3
                  remw         t5, t1, a1
                  divu         s7, a6, s2
                  remu         tp, t2, t1
                  auipc        s9, 407369
                  divw         s0, t0, s3
                  sltiu        a0, s2, -1155
                  subw         s10, s9, a5
                  subw         s4, a7, t5
                  sub          a2, s7, s9
                  mulw         a3, gp, t1
                  nop
                  remu         s0, s1, tp
                  andi         sp, a0, -1882
                  srliw        sp, s5, 4
                  remuw        s2, tp, a2
                  mul          s3, s3, zero
                  sltiu        s9, s2, 1337
                  remuw        a6, a1, t4
                  mulhsu       s0, s5, s7
                  sraw         t5, t0, s3
                  remuw        s4, t3, sp
                  srli         t2, a0, 41
                  addw         zero, sp, t6
                  mulhsu       ra, s9, s10
                  slli         t1, s9, 7
                  divw         s4, s2, s1
                  sraiw        a1, a2, 15
                  subw         t0, a7, s8
                  ori          s8, ra, -715
                  mulw         a7, t4, s4
                  addw         s2, a7, t3
                  slti         s4, tp, 1950
                  sltiu        a1, t1, 1550
                  mulw         s6, zero, s11
                  auipc        a2, 785544
                  srlw         a6, a2, s6
                  mulh         t0, a1, s9
                  slt          a0, a3, s10
                  xori         tp, tp, -1755
                  div          s1, t5, s8
                  addi         ra, a7, -874
                  slt          t2, s3, a3
                  or           a5, s11, a7
                  srl          a1, s7, t2
                  sraw         a0, tp, a2
                  sraw         zero, s4, s0
                  xor          s3, zero, a5
                  xori         a6, t6, -1194
                  nop
                  sltiu        s2, s9, -1852
                  sltu         a3, zero, s8
                  sraiw        t5, t6, 12
                  lui          a3, 751778
                  remu         a2, a6, t1
                  slti         s7, zero, -1138
                  divu         a5, s1, a4
                  slti         a2, s11, -630
                  auipc        s10, 894980
                  sll          t2, s6, t5
                  srl          t4, a2, s3
                  sltu         s3, ra, s11
                  xor          gp, s10, s8
                  srl          t3, zero, ra
                  subw         gp, a7, s7
                  sll          zero, s1, tp
                  sltiu        s4, a1, -166
                  slli         s6, a6, 46
                  srliw        t5, s2, 1
                  mulhsu       s7, s8, s1
                  remw         s9, s9, a4
                  srliw        a3, a7, 24
                  slli         a0, zero, 57
                  divu         zero, gp, a2
                  mulhsu       s1, t5, s7
                  subw         t1, gp, t5
                  subw         a6, t6, t4
                  srli         t0, a3, 11
                  srl          s10, s2, t0
                  slti         s8, t2, -1224
                  srlw         zero, s5, s11
                  or           a6, sp, a0
                  divw         s0, gp, t1
                  slti         s8, t5, -1078
                  srli         t1, ra, 21
                  or           t4, s8, zero
                  auipc        s2, 341841
                  sraiw        s1, gp, 14
                  srai         s4, s9, 16
                  slli         t0, s3, 60
                  xori         sp, s7, -505
                  addw         sp, a5, t0
                  sraw         s11, s11, t0
                  xori         zero, a6, 349
                  srlw         a6, zero, a0
                  rem          s10, t0, s11
                  auipc        a5, 211069
                  and          t2, s11, t0
                  sraiw        gp, t2, 10
                  sltiu        s2, s0, 1857
                  addi         t4, a0, 919
                  auipc        t2, 250306
                  srliw        s8, a2, 3
                  xori         a2, sp, -942
                  auipc        s6, 979041
                  mul          t2, s11, a0
                  sub          tp, s3, s3
                  sraw         s6, a6, ra
                  slti         a6, s2, 951
                  slti         tp, s2, -1868
                  srlw         ra, s4, a1
                  xori         s8, s11, 535
                  add          s10, a1, t3
                  mulh         t5, tp, a4
                  lui          a5, 149686
                  divu         a0, s3, t2
                  slli         t2, a3, 46
                  nop
                  xor          s11, a3, t6
                  div          t3, s9, a5
                  addiw        t0, a3, -727
                  sra          a7, t6, s4
                  div          t5, s7, a3
                  divw         zero, a1, a5
                  xor          zero, s0, a6
                  divu         s8, t3, t2
                  slliw        a7, t0, 25
                  addi         a7, ra, -981
                  srli         gp, s0, 42
                  sraiw        s7, a7, 2
                  add          t3, a2, a2
                  slti         s9, a4, 864
                  sub          gp, s6, ra
                  subw         t5, t3, a3
                  sraiw        s6, t3, 31
                  srlw         t5, a1, s0
                  sraw         s8, a7, a1
                  xori         a2, a4, 1635
                  xor          t1, s9, a4
                  divuw        s3, a3, s4
                  sltiu        t2, a5, 1424
                  sraw         s11, s0, zero
                  sub          t2, s3, t3
                  remu         t1, tp, a4
                  sltiu        a6, t4, -259
                  sra          a6, s3, a5
                  xor          s6, tp, s7
                  remuw        s2, a6, ra
                  xori         s1, s4, 625
                  slli         zero, s5, 37
                  divu         a6, s10, s5
                  remw         s9, s11, t4
                  sltiu        s4, sp, 1780
                  divu         t1, s1, a6
                  andi         s4, s3, 2008
                  auipc        a1, 631291
                  div          a3, gp, a7
                  sllw         s6, s6, a5
                  sll          s11, s9, t1
                  sltu         s0, s2, s6
                  mulw         t4, t0, s3
                  remuw        s6, zero, a5
                  addw         gp, a6, s9
                  addi         s9, t0, 1293
                  mulhu        a1, s10, s6
                  ori          a6, t1, 1229
                  srl          s0, s5, s1
                  sltu         s9, t0, a7
                  mul          tp, a7, t0
                  slti         t0, a3, -348
                  or           t4, s6, a2
                  srlw         t2, s3, a3
                  sllw         a1, s11, s7
                  slliw        t5, t2, 1
                  add          s11, sp, t3
                  xori         s2, s7, -44
                  sll          t5, s5, a2
                  ori          s0, tp, -645
                  remu         t3, tp, s7
                  xori         s10, s5, -1525
                  mulhu        a3, s8, a4
                  sltu         a6, a0, s9
                  srlw         a0, t1, t4
                  auipc        s4, 434051
                  slti         ra, t4, 237
                  sltu         s11, a7, a7
                  or           s6, t4, t1
                  add          t0, s10, a7
                  ori          a0, t6, 152
                  mulhsu       t3, t0, s7
                  remw         s7, sp, a7
                  nop
                  sltiu        s6, s0, -910
                  sltu         t4, a3, s9
                  srai         t1, t4, 34
                  srli         a5, s9, 27
                  auipc        t5, 24969
                  rem          a5, zero, gp
                  andi         a2, s0, -1887
                  auipc        s9, 953430
                  srai         t4, s2, 40
                  mulh         a0, s2, s9
                  auipc        s1, 566342
                  sub          s10, a0, a5
                  srli         s1, ra, 0
                  addi         a0, s8, 348
                  sll          zero, t6, t3
                  sra          s8, a3, t2
                  slli         s3, a0, 49
                  addi         a5, s1, -1762
                  sra          t4, s2, t3
                  addiw        ra, s7, 478
                  xori         a0, s7, 1960
                  xori         a0, a3, -1619
                  mulhu        a0, s9, t0
                  subw         a7, t2, gp
                  remu         s2, a6, t5
                  remu         gp, t6, s3
                  addiw        t2, a1, -1503
                  nop
                  addi         s6, a4, 1277
                  divw         gp, a0, sp
                  mulw         t4, gp, s7
                  remw         s10, a2, a6
                  sllw         t0, a4, s9
                  divuw        t4, a6, a4
                  nop
                  divu         t0, t6, s7
                  slt          t3, s9, t4
                  lui          s11, 318628
                  sltiu        s4, s11, 1489
                  sraiw        tp, t0, 26
                  sllw         a5, t6, a2
                  mulhsu       gp, t0, a0
                  xor          s8, s8, t1
                  mulhsu       t2, t0, t2
                  addiw        s8, t5, -953
                  srliw        a2, a4, 16
                  divu         a5, t1, t4
                  remw         s6, a7, zero
                  lui          s7, 154377
                  mulhsu       s1, a7, a1
                  mulh         s3, tp, s7
                  slt          t1, a0, t0
                  ori          a2, sp, 781
                  srai         s3, t3, 43
                  add          t5, t4, tp
                  sraw         s0, t0, tp
                  div          s10, t3, s0
                  and          s9, s8, a1
                  sllw         s1, s1, t0
                  srl          t3, s1, s3
                  divw         sp, sp, t2
                  remw         a7, a3, s10
                  addw         t1, gp, t6
                  lui          a5, 787322
                  xori         zero, s7, -1912
                  slliw        t4, a0, 2
                  slliw        a2, s8, 22
                  xori         t1, s1, 1755
                  srl          a1, s5, s0
                  divu         t2, tp, t4
                  divw         s7, sp, a1
                  mulhu        a0, a7, t5
                  divuw        a2, s1, s10
                  div          t4, a0, a2
                  srl          a2, s9, s1
                  sltiu        t5, s8, -574
                  mulw         ra, s2, gp
                  ori          s6, ra, 678
                  and          a1, s4, zero
                  subw         s2, s0, t2
                  remw         s10, s3, a7
                  and          zero, t3, a2
                  slti         t0, t4, 1727
                  remu         s0, s7, s5
                  srliw        t1, s1, 29
                  divw         s10, s6, t4
                  mulw         s2, gp, s0
                  subw         s2, zero, t3
                  slliw        s2, a4, 5
                  or           s2, s4, s3
                  slliw        s1, a3, 1
                  sllw         a1, t1, s8
                  srlw         t4, a6, s9
                  lui          s8, 633167
                  sltu         t1, a4, s9
                  sltu         t5, s1, t6
                  lui          tp, 274658
                  or           a5, a4, s7
                  srl          tp, s0, t0
                  add          a5, s10, s1
                  xori         zero, gp, 786
                  and          s10, ra, s7
                  divw         s10, t1, t2
                  andi         a1, a3, -688
                  andi         t4, t6, 724
                  div          a1, s10, a1
                  mulhu        a6, s6, s1
                  addi         a1, a6, -1861
                  sltiu        s7, zero, 475
                  slt          a2, tp, a4
                  nop
                  srai         s1, sp, 39
                  srl          t2, s4, t0
                  sllw         t5, s9, ra
                  srlw         s4, s9, a2
                  srl          gp, s4, a7
                  sltiu        s7, s7, 1267
                  mulhsu       s0, t6, a5
                  rem          t4, a2, t2
                  srli         s10, zero, 33
                  rem          a2, s5, s4
                  sltiu        s8, a1, 1672
                  sra          s3, a3, t2
                  mulhu        t2, t1, a1
                  addiw        a7, s10, 410
                  ori          t3, s9, -1279
                  mul          a6, s4, s1
                  ori          a0, t6, -1224
                  remu         s6, t4, t5
                  sra          t3, a6, s1
                  nop
                  addi         a2, a5, -1301
                  divuw        a6, a6, t4
                  sraiw        gp, s1, 27
                  addi         s0, s1, 468
                  divuw        t3, a0, s7
                  slli         t3, zero, 23
                  ori          zero, a6, -1340
                  lui          t4, 270958
                  srliw        a7, s9, 21
                  srli         t5, t5, 30
                  srai         tp, a2, 32
                  nop
                  mulhsu       s1, zero, s3
                  xor          a1, s4, a4
                  sltiu        zero, s10, -747
                  mulhu        s1, s6, a0
                  divuw        s6, a7, t3
                  addw         s1, a1, a3
                  addiw        a0, gp, -1454
                  slliw        s10, s7, 26
                  remw         a0, sp, t6
                  remu         a1, t3, tp
                  and          a7, a3, ra
                  divw         t3, a7, t1
                  addw         t2, a3, t2
                  remu         s1, s10, a7
                  srlw         t4, tp, sp
                  sraiw        zero, a5, 25
                  sll          s10, t0, t0
                  addw         s6, t1, t1
                  slliw        t4, s6, 3
                  divu         t4, s4, a6
                  add          t4, a4, t0
                  addw         zero, t2, a5
                  mulhsu       gp, a2, a4
                  xori         s3, t2, 1346
                  srliw        t1, s9, 20
                  slliw        t1, t2, 14
                  sraiw        s0, s6, 16
                  divuw        s8, s6, t6
                  slli         t5, s2, 63
                  srl          s9, s7, s10
                  sllw         a3, s9, t1
                  add          tp, s8, s5
                  srlw         a2, s1, gp
                  sub          s9, a3, a4
                  div          a6, s2, s6
                  sll          s4, a0, t4
                  slti         t2, t4, 1922
                  divw         zero, s10, a5
                  addw         a6, sp, zero
                  sltiu        t3, a2, 8
                  srli         sp, s5, 30
                  andi         s0, tp, 553
                  slt          s2, t5, sp
                  slt          a2, zero, t2
                  andi         s1, t0, 1566
                  lui          s6, 138194
                  sraw         zero, s10, t0
                  rem          ra, a2, ra
                  mulh         t4, t4, a7
                  srl          s9, s4, a3
                  srl          s1, a6, a4
                  nop
                  divw         s3, s4, t2
                  divw         t1, a7, s1
                  andi         s8, tp, 741
                  rem          a5, a2, s9
                  mul          t1, a1, s0
                  slti         t5, s0, 456
                  xor          a5, s9, a3
                  mulw         tp, t0, s7
                  divu         s3, a6, s11
                  mulh         s4, a1, s11
                  srliw        a7, s7, 13
                  andi         s7, t2, -1497
                  and          a5, tp, s5
                  addi         t1, s11, -1512
                  addi         t2, ra, 93
                  andi         t3, a1, -193
                  srl          a2, s6, s4
                  srl          tp, tp, t2
                  sltu         a7, a6, t3
                  sll          t0, a4, ra
                  addi         s9, sp, 958
                  mulw         a5, zero, tp
                  xor          t1, ra, s6
                  addi         s10, a3, -1045
                  remw         ra, tp, s10
                  add          s8, s3, a2
                  srlw         s11, zero, a4
                  and          s7, t5, a6
                  xor          a1, t6, a3
                  srlw         a3, t0, s2
                  sll          s8, ra, s8
                  srliw        a0, s1, 3
                  or           t1, s6, t0
                  addi         tp, a1, 39
                  divw         a3, s2, s7
                  or           sp, s3, sp
                  sraiw        a6, t3, 1
                  xori         s6, tp, 399
                  mulh         s2, a3, s10
                  slli         s0, a4, 3
                  mul          zero, a5, s10
                  sllw         t1, a7, s11
                  sub          t5, t3, a1
                  div          s6, a3, t1
                  lui          t1, 1023720
                  remw         s9, s9, t5
                  remw         t2, a6, tp
                  or           a7, a6, s10
                  sltiu        s0, t6, -851
                  sraw         a1, a0, a7
                  sraiw        sp, s9, 29
                  sub          a6, zero, t3
                  mulhu        t3, t2, a0
                  slti         s11, s10, 962
                  mulw         gp, a3, a4
                  ori          a7, a2, -2021
                  srlw         a3, t4, ra
                  sraw         t2, s11, a0
                  sraiw        t2, t2, 14
                  addiw        a7, s7, 265
                  mulhu        zero, s9, s1
                  sltiu        gp, a3, 126
                  srai         a1, t1, 55
                  mulh         s1, zero, s11
                  add          t0, t0, s11
                  nop
                  sub          s11, s8, a4
                  divu         s7, s10, s7
                  sra          s1, s5, a7
                  or           s10, t6, a0
                  slt          t5, a7, tp
                  mulw         s2, a6, s4
                  sub          a6, s9, s2
                  remw         t4, a1, t2
                  slt          a6, s0, s3
                  sraiw        s10, zero, 10
                  divu         a7, t0, a4
                  rem          sp, s7, s3
                  addw         a6, s2, s4
                  remuw        a2, s2, s0
                  subw         t1, t0, t1
                  mulw         tp, t3, t0
                  slliw        a3, s0, 21
                  slliw        s7, a6, 19
                  sraw         a5, t1, a2
                  divw         s2, a1, tp
                  addw         t4, t5, a5
                  sraw         t2, a3, a2
                  div          t5, gp, t4
                  mul          s0, s4, t3
                  ori          zero, t0, 1488
                  mulw         t0, a4, s9
                  slti         t4, a3, -124
                  sraiw        s4, s10, 4
                  slt          a0, t6, a0
                  slliw        a1, t4, 19
                  sltiu        s0, t0, 1684
                  andi         s3, t0, 1891
                  addw         s3, s4, a1
                  srli         a5, a5, 57
                  divw         t5, t1, tp
                  sra          a0, a2, s7
                  and          sp, zero, s6
                  slt          s11, s11, s5
                  sraiw        t1, s0, 22
                  slli         s3, zero, 53
                  remuw        s8, s6, s10
                  xori         s11, sp, 1295
                  sll          t5, a5, gp
                  sub          s0, s1, s5
                  remw         t5, t4, t2
                  sraiw        sp, a6, 12
                  mul          s3, sp, a5
                  srl          a2, a0, s5
                  or           zero, s10, t1
                  mulh         t5, a2, t5
                  srlw         t4, s3, s8
                  srliw        s2, a4, 21
                  srliw        s2, zero, 15
                  mulhu        s2, s7, a3
                  rem          a3, s5, s8
                  lui          t0, 986819
                  mulhu        gp, t1, a5
                  srlw         a5, s9, s6
                  sltiu        a5, zero, 1555
                  addi         s9, s9, -366
                  divuw        a1, a2, s1
                  remu         a7, s11, s1
                  slt          a1, s10, s1
                  sra          tp, a3, s9
                  mulw         tp, s2, a5
                  add          a2, s3, a5
                  slti         ra, a7, 1275
                  slliw        s7, t5, 30
                  slliw        ra, a3, 26
                  divu         a0, s9, s0
                  remuw        zero, t4, s3
                  sub          a0, s0, t4
                  srli         a3, a7, 53
                  sraw         a2, s4, a6
                  mulw         sp, s2, t2
                  subw         s0, t4, a1
                  div          t4, s9, t0
                  mulw         s7, s10, a7
                  lui          a1, 727100
                  sraw         s1, t4, a3
                  remu         tp, ra, t6
                  andi         s10, s0, -1775
                  xori         t3, a3, -694
                  xor          a0, s11, a0
                  lui          s1, 811043
                  srl          s4, s11, ra
                  mulh         s8, t5, s11
                  auipc        a1, 590495
                  srlw         t4, s3, s10
                  mulh         s3, a6, s11
                  addiw        t2, s5, -428
                  xori         a5, t6, -578
                  or           ra, gp, a0
                  mul          s7, t0, t0
                  nop
                  sraw         t1, a3, a0
                  slt          a3, s2, s1
                  sraiw        zero, s2, 7
                  slt          t1, a5, s8
                  auipc        tp, 763599
                  slli         t4, zero, 6
                  remw         t1, tp, t6
                  subw         s1, a2, a6
                  sltiu        a1, a2, 350
                  sra          a2, s8, gp
                  xori         a5, s2, -233
                  slliw        t3, a2, 7
                  remu         s2, t0, gp
                  sraw         a2, s0, sp
                  mulhsu       s10, a1, a7
                  addi         gp, s3, 1648
                  sll          s9, a4, t4
                  mulw         t1, gp, s1
                  div          t1, s6, a4
                  srli         t2, s11, 20
                  divw         t0, tp, tp
                  ori          t0, zero, 303
                  mulw         a0, s2, s4
                  add          t2, a1, t3
                  andi         a5, a3, 120
                  ori          a2, s11, 636
                  srliw        t5, s3, 14
                  mulw         s9, ra, zero
                  auipc        a7, 671263
                  addi         zero, sp, 919
                  divuw        gp, t4, a5
                  divuw        t1, t2, a6
                  addiw        t5, s0, -840
                  slli         s1, a0, 59
                  ori          a0, a5, 992
                  mulw         s7, t0, a7
                  addiw        s10, s6, 937
                  sllw         a2, a4, s9
                  mulhu        s11, ra, t3
                  lui          t0, 868262
                  or           s6, s4, s5
                  addiw        t1, a3, 12
                  rem          sp, a7, a3
                  srli         s4, tp, 0
                  slti         a0, t6, 1878
                  ori          t0, s1, -1553
                  subw         a2, zero, ra
                  srli         ra, t0, 50
                  sltu         ra, a0, t5
                  mulhsu       ra, t5, t5
                  addi         s0, a5, -653
                  sltiu        a2, t3, -505
                  sllw         s10, a4, t2
                  sltiu        s8, a5, 1194
                  addi         zero, a2, 2011
                  mulhsu       t3, a1, a3
                  lui          a7, 516614
                  rem          ra, a3, a1
                  mul          a1, a6, t5
                  addi         a0, s3, 1493
                  or           s2, gp, ra
                  divuw        sp, ra, t2
                  remw         t4, ra, a6
                  xori         s11, t6, -1523
                  nop
                  srl          t4, t0, ra
                  srli         s4, a1, 54
                  mulh         a3, ra, gp
                  sllw         tp, t1, a7
                  slti         t5, gp, -181
                  slli         s10, t2, 29
                  sraw         s3, a5, ra
                  auipc        s4, 468472
                  add          s8, s8, s11
                  slti         s11, s6, 981
                  xor          a5, t4, a6
                  srl          gp, s2, t0
                  sltu         t1, t2, a6
                  subw         a5, a0, a2
                  mulh         s9, a1, a7
                  slti         s9, a7, -1826
                  slti         a6, zero, 115
                  addiw        a6, s0, -586
                  sraw         s3, a7, a6
                  sll          t1, t0, s10
                  addi         a7, gp, 1765
                  div          s10, a0, a2
                  slli         t3, s10, 17
                  srai         t5, s2, 37
                  rem          a6, tp, t6
                  add          a1, a5, a1
                  slti         a6, s11, -1877
                  remuw        a0, a0, s2
                  auipc        sp, 906049
                  sraiw        s2, s4, 5
                  add          a6, s10, a6
                  xori         s3, a5, -213
                  andi         s6, s10, 128
                  nop
                  xor          s9, s4, s7
                  add          t0, t5, s10
                  addiw        s8, s9, 1142
                  srliw        t1, a5, 22
                  remw         s6, s6, s2
                  addi         t4, zero, 1731
                  srl          a5, zero, s6
                  addi         s11, s5, 397
                  div          a3, s3, s10
                  addw         a6, s8, t0
                  div          tp, s8, a4
                  srliw        gp, t0, 30
                  slliw        s8, a5, 3
                  auipc        a5, 89654
                  xori         s9, s10, -624
                  remw         t4, a4, s3
                  div          zero, ra, a5
                  mul          t2, a1, a0
                  sltu         s4, a4, a3
                  srliw        t2, s1, 23
                  lui          s4, 879064
                  mulhsu       a5, a0, s8
                  div          s6, t6, a7
                  sraiw        t2, a7, 3
                  remuw        t2, a1, t1
                  srliw        s9, s2, 8
                  andi         a6, t3, 29
                  addi         t0, s7, 2031
                  mulh         s1, t1, a6
                  subw         s3, s0, t4
                  andi         s2, s0, 1667
                  slt          s6, s10, s11
                  srli         t3, a5, 24
                  mulhsu       t4, s11, a4
                  rem          s6, a6, s5
                  remuw        t0, t0, s1
                  mulw         sp, a0, a2
                  srai         t0, sp, 35
                  xor          s4, t4, tp
                  addi         a1, s5, 1774
                  srlw         ra, a5, t1
                  remu         zero, a3, s9
                  srai         gp, s1, 5
                  sltu         s7, s10, a5
                  sraw         tp, a0, s6
                  srai         t4, t0, 42
                  sra          s11, s2, t0
                  or           s11, s9, s3
                  sll          a2, t6, t3
                  slliw        tp, sp, 12
                  add          s3, t3, gp
                  lui          a5, 855215
                  divw         t5, t2, t6
                  xor          t5, ra, a5
                  xor          a5, s11, t1
                  add          s4, s9, a0
                  srlw         sp, s11, t1
                  sltu         s4, s0, s8
                  divu         t1, t3, t3
                  div          tp, s1, ra
                  addiw        ra, a2, -709
                  addw         s0, t1, s8
                  srli         ra, s11, 43
                  mulh         ra, a3, a3
                  slt          gp, t6, t2
                  rem          tp, t0, s7
                  and          t0, s4, sp
                  srliw        sp, s2, 5
                  slliw        t1, t0, 30
                  rem          a0, a1, t4
                  srli         sp, t0, 43
                  remu         s8, a4, a4
                  divu         s10, s9, s11
                  remuw        a5, t5, t1
                  srlw         a5, s3, t4
                  mulw         s8, a4, a7
                  mulhu        s1, t3, s6
                  remu         a5, gp, s3
                  srliw        a0, s5, 13
                  rem          t1, s1, s4
                  sll          s11, s7, s0
                  slti         t4, a1, 1769
                  add          t1, a6, t4
                  remu         a2, t5, ra
                  sub          t1, s0, a5
                  mulw         zero, t5, a7
                  divuw        s10, a6, t6
                  sraw         s2, t6, s10
                  mulh         s9, zero, t2
                  srai         a2, s11, 6
                  subw         s11, s5, s3
                  remu         a1, a0, a2
                  nop
                  mulw         t5, t3, t3
                  mulhu        t0, a5, t3
                  slliw        a3, a3, 0
                  mulhsu       a0, t6, tp
                  mulh         t1, gp, a3
                  remu         a7, s2, ra
                  srai         s10, s3, 41
                  mulhsu       s3, tp, a0
                  sltiu        gp, gp, 1899
                  andi         s7, a0, -974
                  or           s9, tp, t1
                  srliw        t3, a3, 1
                  add          s1, a6, s2
                  divu         a5, t2, s4
                  subw         s6, a7, sp
                  srli         s3, a7, 14
                  addw         s8, t1, gp
                  auipc        t5, 838837
                  mulw         t3, a5, a6
                  mulh         tp, t3, s9
                  sra          s9, t6, s7
                  srlw         s4, a6, s11
                  subw         s7, s10, s1
                  slli         t5, a6, 3
                  slt          s11, s7, s3
                  divuw        a0, s9, s2
                  div          a1, a0, gp
                  div          tp, t4, s10
                  div          zero, s10, s2
                  addiw        s0, a4, -1787
                  remuw        s3, a0, t5
                  srlw         t4, a2, s8
                  addiw        a1, t4, -871
                  mul          t4, a0, a7
                  slli         s10, s6, 43
                  srl          s1, t5, s6
                  mulw         a3, a3, t6
                  xor          s3, s6, tp
                  addiw        s1, s11, 2041
                  addw         s2, gp, zero
                  sllw         zero, tp, a5
                  sll          gp, zero, a3
                  sll          t2, t4, a0
                  sraw         s0, s3, t6
                  srli         s11, s5, 27
                  sub          s7, t5, a3
                  divu         a7, a4, a7
                  remuw        s0, zero, sp
                  and          s6, t4, a0
                  srl          s2, gp, a1
                  mulhu        zero, zero, s9
                  and          a0, s8, s10
                  and          tp, sp, t5
                  xori         t1, t6, -609
                  lui          t2, 120392
                  slt          a7, s7, t5
                  sraw         a3, s1, tp
                  srlw         s8, t0, t2
                  xori         s3, a7, 1435
                  sltiu        t1, s10, 1267
                  addiw        s7, a6, 1900
                  div          s6, t6, gp
                  sub          gp, zero, zero
                  div          s0, zero, a4
                  slt          s3, a2, s2
                  sllw         s9, s5, tp
                  divu         s7, t3, s1
                  sraw         s7, s7, gp
                  lui          tp, 19813
                  nop
                  auipc        s3, 333396
                  sllw         t1, sp, t3
                  mulh         a3, s3, t5
                  lui          gp, 169466
                  sllw         t5, a2, a1
                  sllw         a7, a2, a5
                  div          zero, t3, s3
                  sra          a0, zero, t6
                  mul          a7, s9, s11
                  subw         s9, s1, a4
                  and          s1, t6, a5
                  sraw         s6, s11, a7
                  lui          t4, 966407
                  slli         s3, t6, 18
                  sll          a6, t6, a4
                  sll          a0, s1, s0
                  divu         s2, a3, s5
                  xori         a7, sp, -1297
                  subw         t3, a0, s11
                  divu         t5, s2, t3
                  or           s6, t2, t3
                  divu         s7, s7, t0
                  lui          s3, 618187
                  sraw         t1, t1, a0
                  div          t5, t3, s3
                  srai         a0, ra, 13
                  divuw        s0, a5, a5
                  mulh         ra, t4, t6
                  xor          t2, gp, a7
                  srl          s4, a2, a0
                  mulh         s4, s10, a0
                  addi         t5, s0, 1720
                  or           ra, a6, a2
                  sllw         a7, s5, t2
                  divw         s10, s5, a1
                  mulw         t3, s1, a1
                  sub          t5, t1, s0
                  remuw        t5, s9, sp
                  addiw        s2, a1, -289
                  srai         a5, zero, 1
                  srlw         t3, t4, s0
                  sra          s0, tp, t1
                  srai         t5, zero, 21
                  remuw        a1, s0, s0
                  remw         sp, a0, ra
                  srai         ra, a1, 44
                  sraw         a7, a6, t3
                  addw         s4, s2, ra
                  addw         t2, t1, zero
                  slli         a1, sp, 45
                  addw         s4, s2, t1
                  auipc        a1, 744503
                  addiw        s2, a1, -1291
                  sub          s3, s8, a4
                  srli         sp, zero, 38
                  and          gp, t5, s10
                  sub          s9, s4, s9
                  lui          s11, 403167
                  mulw         a3, s2, s2
                  andi         ra, s6, -1282
                  addw         sp, tp, zero
                  mulw         s8, ra, s10
                  xor          s11, a3, s7
                  srliw        s0, a2, 6
                  addi         t5, t6, 717
                  srai         s9, t3, 27
                  ori          s8, s4, -1403
                  or           s9, s11, s0
                  addw         s11, s4, t6
                  remuw        s11, zero, a2
                  and          t4, t4, t3
                  sub          a7, a7, t5
                  slliw        s11, a0, 17
                  srliw        a0, t2, 0
                  sllw         s6, s3, a2
                  div          t1, t0, t4
                  sltu         s9, a2, t4
                  sraiw        t5, a2, 26
                  ori          s7, t4, 1497
                  addw         tp, t2, s0
                  slt          a2, t4, s11
                  sraw         t4, t4, a3
                  mulh         t0, ra, zero
                  slt          t4, s11, s4
                  auipc        s11, 680780
                  andi         s6, s2, -98
                  sll          t3, s1, zero
                  sub          a5, tp, s4
                  rem          s0, a1, t0
                  slliw        a2, s5, 7
                  slliw        t4, a7, 15
                  addi         a2, t2, -1708
                  divu         t1, s10, a3
                  rem          t3, a2, a2
                  and          s1, t2, t5
                  and          s3, s0, s5
                  nop
                  sra          a2, s5, s11
                  sltiu        t3, tp, 1352
                  divuw        zero, a0, a5
                  remw         a7, a4, s0
                  div          s10, s4, s8
                  mulhsu       a5, t4, s8
                  sraiw        t1, zero, 3
                  remuw        s11, s9, a1
                  slti         a5, t5, -1828
                  remw         s7, a6, t4
                  sltiu        t2, s10, 1393
                  srl          s1, s9, s0
                  addi         gp, s2, 1947
                  subw         zero, a6, a2
                  mulhu        gp, s4, a1
                  slliw        t2, s1, 30
                  sllw         s1, s0, s0
                  srl          s6, s8, sp
                  mulw         a3, a4, a0
                  xori         tp, s1, -302
                  mulw         s8, s8, ra
                  remuw        a7, s4, s3
                  div          sp, s11, s4
                  slli         a6, a7, 10
                  srl          t5, s1, a6
                  srai         a5, t4, 8
                  slli         ra, a5, 20
                  sllw         a0, a1, t1
                  divu         s7, s4, s7
                  xori         t1, t1, 563
                  xor          s8, s2, gp
                  addw         s6, s10, s4
                  xor          a7, t3, zero
                  srli         s9, tp, 52
                  srl          sp, a4, t4
                  remu         s3, t6, t2
                  remuw        s8, ra, s10
                  srl          s11, a0, a7
                  divu         a2, t3, t6
                  subw         a5, t0, s0
                  ori          gp, a3, -540
                  sllw         t4, sp, s10
                  nop
                  remu         s1, a5, a5
                  sraiw        t5, t5, 11
                  slti         t0, t0, 1044
                  ori          tp, tp, 232
                  srl          s4, s0, s0
                  remu         t0, s7, a6
                  sltiu        gp, a6, -891
                  srli         ra, a7, 43
                  add          t0, s5, s1
                  divuw        s7, s11, tp
                  mulh         s10, t0, a3
                  srli         t2, t4, 2
                  srl          ra, a4, s0
                  srliw        t3, s4, 12
                  mulw         s8, sp, s6
                  sra          tp, a0, tp
                  add          tp, t6, tp
                  or           a6, s0, t1
                  mul          sp, sp, a5
                  andi         t2, s3, -2040
                  andi         a6, s8, -883
                  addw         gp, a0, s1
                  slli         s7, a1, 33
                  srl          ra, s10, ra
                  slli         s1, t0, 11
                  slliw        sp, s4, 11
                  addw         sp, s11, a4
                  sub          s0, a3, s0
                  divw         a5, s3, s10
                  sltiu        s2, a7, 168
                  sll          t3, tp, s11
                  mulhu        s6, s10, s9
                  div          a1, s4, s11
                  sraw         t0, t6, gp
                  ori          s10, s9, -391
                  slt          a0, s2, a0
                  div          s1, s8, t4
                  sll          ra, s4, a2
                  slliw        a2, s5, 6
                  remuw        sp, a1, sp
                  nop
                  sraw         tp, a6, s5
                  srl          sp, t1, s9
                  divuw        s8, s2, a7
                  div          s7, tp, s8
                  slt          a2, s0, s7
                  remu         s0, s5, zero
                  sll          s10, gp, sp
                  slliw        s0, t2, 2
                  addw         s6, a0, s4
                  mulhsu       t5, t1, s0
                  srai         a0, zero, 49
                  slli         a0, zero, 35
                  auipc        s11, 304108
                  andi         t0, zero, -378
                  slliw        s7, s10, 17
                  divw         a6, t2, s1
                  srli         t0, s6, 53
                  div          s2, s10, s9
                  mulw         s7, ra, s4
                  and          a6, s3, t1
                  and          sp, s4, a3
                  srli         zero, zero, 14
                  slt          zero, a3, a0
                  remw         t1, s5, t5
                  and          s7, a4, s10
                  remuw        ra, s2, t0
                  divuw        a5, s3, t1
                  xor          t3, a7, s10
                  rem          s2, s1, s5
                  slti         a5, s4, -79
                  remuw        s7, t5, t6
                  sub          s0, t3, s3
                  slli         sp, s1, 58
                  remw         a5, a6, s7
                  slti         a0, gp, -1057
                  sraw         zero, s9, tp
                  mulw         sp, t1, ra
                  sraiw        zero, s0, 15
                  divu         t5, a0, tp
                  add          zero, a7, s4
                  sra          t4, zero, t1
                  auipc        t3, 973374
                  srliw        s6, s8, 3
                  mulh         a3, s7, s11
                  srl          ra, a2, gp
                  mulh         t1, t0, a6
                  div          s4, s4, s10
                  srliw        t4, ra, 0
                  andi         s7, t2, 2034
                  ori          t5, a2, -1486
                  srli         s9, a6, 13
                  remu         a7, sp, a4
                  andi         s2, t0, 773
                  addi         tp, s2, 1381
                  subw         s1, t1, zero
                  nop
                  srliw        s4, a6, 27
                  remu         ra, s3, s0
                  sltiu        t4, sp, -876
                  div          s2, t3, s4
                  andi         s7, t4, 561
                  mul          s0, a7, s7
                  andi         t2, t2, -1614
                  ori          s4, a3, -148
                  subw         s4, sp, sp
                  mul          s4, t3, a4
                  sub          s9, sp, t4
                  subw         s1, sp, t3
                  addw         s6, s5, a7
                  sraiw        s6, t2, 15
                  sraiw        zero, a5, 8
                  nop
                  addw         s4, a3, s5
                  srli         s2, a0, 17
                  srlw         s3, t6, a2
                  srlw         t2, t6, t0
                  xori         a1, s9, -850
                  addiw        a2, s8, 74
                  slli         a7, s9, 29
                  div          s6, zero, s11
                  auipc        t0, 8169
                  sllw         s0, a4, s7
                  add          t4, s11, s1
                  slt          a0, s0, a6
                  mulh         t1, s9, s6
                  remuw        s4, s7, s0
                  slli         s0, s11, 18
                  divuw        a5, zero, s10
                  slli         a0, s3, 41
                  sllw         s2, s6, s6
                  add          a2, s0, s2
                  addw         t0, t2, t4
                  xori         s6, tp, -1722
                  ori          s9, t1, 912
                  rem          s6, gp, gp
                  nop
                  remuw        s4, s11, a4
                  ori          t2, t1, -1756
                  mulhsu       a7, s11, t0
                  xori         gp, gp, -1766
                  mulw         s0, a3, t5
                  xori         s7, t4, 1440
                  srai         ra, s5, 45
                  auipc        s3, 628936
                  srliw        s1, s3, 21
                  divu         t4, s1, a3
                  addiw        a2, a0, 1717
                  lui          t2, 427222
                  sltu         a0, t6, s0
                  mulw         s3, a4, a3
                  sllw         ra, a5, sp
                  divuw        a3, a7, zero
                  div          s9, gp, s9
                  remu         t5, t2, t3
                  sraw         a1, t4, s4
                  subw         s11, s1, s2
                  slt          a7, s3, t6
                  lui          s4, 982401
                  slt          sp, s4, sp
                  slt          s10, s1, gp
                  srl          s2, tp, a7
                  srai         a0, s11, 49
                  xor          s1, s5, s7
                  divw         s2, t0, a4
                  nop
                  sllw         a6, s9, t4
                  srli         ra, t5, 4
                  slti         t5, sp, 55
                  sraw         t4, a7, a1
                  divu         s3, a0, a1
                  divu         s6, a2, s11
                  mulhsu       s4, s4, zero
                  sltiu        a5, gp, 1449
                  remw         s11, t5, a2
                  sraiw        s2, s10, 9
                  remuw        t3, s4, t5
                  subw         a0, s11, t5
                  add          a0, a5, tp
                  divu         t2, t5, s11
                  add          t4, gp, t3
                  mulhsu       s8, s2, s3
                  slti         s3, s10, 1796
                  sub          a5, a1, s0
                  divw         t4, t0, s2
                  andi         a1, s4, 157
                  slli         t3, zero, 46
                  lui          t2, 313535
                  srli         t2, t5, 61
                  sraiw        s8, sp, 23
                  xor          a7, t6, s11
                  sll          s6, gp, a2
                  rem          a1, t6, t4
                  sltiu        s11, s0, 1734
                  auipc        a5, 759560
                  xori         s6, t5, 1415
                  sra          t5, s5, s0
                  divw         t3, sp, s2
                  xori         a0, a3, 213
                  srai         t4, a2, 8
                  sraw         s9, s11, t5
                  sllw         t2, s0, a7
                  mulw         t4, a6, s1
                  or           s8, t0, t5
                  lui          a5, 662032
                  srl          t0, t4, t5
                  srli         t5, t5, 32
                  slti         t1, tp, -608
                  xori         s0, a1, 1352
                  divuw        a6, s4, a2
                  xor          a0, a0, tp
                  sltu         s3, s2, s0
                  srl          s0, s6, t6
                  sltiu        a2, s6, -1177
                  mulw         s0, a7, tp
                  add          s7, t0, gp
                  remuw        s2, a3, tp
                  and          s1, ra, s0
                  andi         t4, s5, -1445
                  slt          s1, s6, s9
                  srliw        a0, s7, 30
                  mulh         t3, a5, s5
                  divu         t4, t1, s5
                  slli         s11, t1, 10
                  sllw         s10, s2, t4
                  andi         s4, s8, 992
                  and          s10, t6, a2
                  sltiu        gp, a0, 1752
                  sll          s0, t6, s2
                  divu         s8, t0, t4
                  divw         t4, t6, s0
                  sll          t2, s8, ra
                  mulh         s1, a1, s4
                  mulw         t2, sp, a5
                  slliw        s8, s3, 13
                  remuw        t4, sp, a5
                  srai         a1, a0, 55
                  slti         s3, zero, 72
                  divu         s0, a7, tp
                  addiw        t5, a6, -452
                  mulh         s8, zero, t4
                  xori         a2, t6, -1471
                  srai         t5, s5, 7
                  xor          zero, s10, s3
                  sltu         gp, a6, sp
                  srlw         s9, s3, s6
                  mulh         s9, a5, tp
                  addiw        zero, s1, -840
                  sra          s6, sp, a2
                  remuw        s9, s10, s10
                  remu         ra, t1, s11
                  remw         a6, s0, a2
                  sltu         a6, s5, a7
                  divuw        tp, a5, s11
                  sltu         a1, gp, a5
                  div          s8, s5, s2
                  auipc        t0, 32935
                  xor          a0, a6, t0
                  div          a7, t6, t4
                  divu         s6, gp, gp
                  sra          t5, s4, s11
                  srliw        zero, t2, 29
                  xori         s10, s11, 51
                  auipc        a3, 639280
                  remu         s11, s3, t4
                  ori          s7, a0, 704
                  mulw         s0, a3, s9
                  srl          t0, s8, a1
                  srli         a5, a1, 56
                  ori          a7, s5, -699
                  addi         t5, s3, 898
                  srliw        t3, t6, 10
                  sll          tp, s4, t4
                  and          t3, s9, s1
                  xori         s8, t3, 1879
                  auipc        gp, 353249
                  mul          s10, t5, a3
                  sllw         a0, s4, s6
                  auipc        a1, 373598
                  remuw        a0, gp, a1
                  addi         zero, t4, 876
                  mulh         t3, t4, s5
                  slli         a2, a2, 26
                  subw         a5, s8, tp
                  mulw         t0, tp, s1
                  sraiw        t4, t3, 29
                  sub          a2, zero, s7
                  mulw         zero, s8, t6
                  xor          a2, sp, a0
                  and          s3, s5, a1
                  rem          s2, tp, s0
                  sraiw        s7, a0, 13
                  andi         s4, t0, 971
                  remuw        s3, a5, a1
                  nop
                  div          zero, s6, a1
                  xor          zero, s0, s0
                  mulhsu       s8, a4, ra
                  divw         a1, t1, t1
                  slliw        t0, t3, 3
                  addw         s10, a5, t1
                  addiw        a5, s11, -409
                  srai         t3, s10, 54
                  srl          a1, a0, s10
                  xori         a2, tp, -191
                  divu         s2, t1, s6
                  divu         gp, t4, a4
                  and          a7, a7, a0
                  remu         t2, tp, s6
                  xori         s0, s3, 1822
                  slli         s10, s7, 56
                  sllw         s11, tp, a6
                  xor          a5, a5, t5
                  addiw        a1, t0, -226
                  sraiw        t1, s11, 13
                  mulhu        tp, t5, sp
                  mulhsu       t4, sp, s7
                  srai         s1, s1, 19
                  auipc        t5, 492790
                  add          gp, s3, a0
                  mulhsu       t3, a7, t3
                  remw         a7, a0, a0
                  srliw        t4, gp, 18
                  slt          ra, a3, a4
                  rem          a6, s4, a7
                  sraw         t1, s4, s1
                  mulhu        s0, t1, sp
                  sllw         a3, s8, a3
                  divw         a5, s9, t2
                  divu         a5, s2, a4
                  sra          s6, s1, s10
                  andi         a2, s2, 503
                  srl          s0, t6, sp
                  slliw        a3, zero, 24
                  andi         a3, a2, -736
                  mulhu        s8, t1, s9
                  sllw         a0, s7, tp
                  srli         a2, tp, 39
                  remu         s11, s7, t6
                  remuw        ra, a0, tp
                  rem          s9, t0, s5
                  or           t2, tp, t2
                  add          t4, t0, s9
                  xor          s0, ra, s11
                  addi         zero, gp, 1396
                  add          a0, t3, a6
                  add          s9, s9, t0
                  srai         a2, a1, 33
                  mulhu        s3, a7, s8
                  xori         s10, a7, -222
                  slti         s8, s5, -684
                  sra          t4, s10, s6
                  sub          t5, a6, s2
                  divuw        a3, tp, a5
                  srlw         a7, tp, t3
                  addi         a7, t0, -293
                  remu         a1, t2, a3
                  sll          zero, s9, t3
                  srl          s11, s7, s9
                  remu         a7, a1, s0
                  addi         t1, s9, 611
                  srlw         s3, s5, t3
                  srliw        sp, ra, 20
                  slli         t3, s4, 33
                  mul          s4, t3, gp
                  slliw        s6, s8, 30
                  sraw         tp, t5, s3
                  mulhu        a0, t5, a4
                  remw         s8, t0, sp
                  div          s1, t6, zero
                  and          ra, s5, t0
                  sll          a6, a7, a4
                  sraw         zero, t2, t2
                  mulhu        t3, s1, a1
                  srl          t0, a3, s8
                  or           tp, t1, tp
                  mulhu        t2, sp, s9
                  mulhu        zero, s4, t0
                  sltu         a7, t6, sp
                  divu         s4, a2, s2
                  xor          s7, a0, s9
                  mulh         a1, a5, tp
                  xori         a7, s4, 2012
                  nop
                  mul          t1, s7, a5
                  srl          a5, s5, a3
                  add          s10, s0, sp
                  srliw        s10, a4, 21
                  slli         a3, s0, 0
                  mulhsu       s7, t5, t4
                  auipc        a6, 63366
                  mulh         s9, t4, a2
                  div          s2, t5, t0
                  slliw        t3, t1, 25
                  srliw        t3, s10, 11
                  div          ra, a5, s2
                  auipc        ra, 1349
                  addi         a6, a0, 1310
                  mul          a1, s3, s5
                  mul          a3, s8, gp
                  slli         a6, t4, 29
                  slti         s9, a2, -151
                  srlw         a6, s10, s8
                  slti         t4, t3, 681
                  div          t4, a1, s6
                  remuw        s0, s0, s1
                  sll          t0, a7, t1
                  sraiw        a6, a3, 23
                  sraiw        s0, t1, 30
                  remu         a7, a6, a4
                  andi         gp, t5, 2017
                  sltiu        t1, s0, 1812
                  sra          t0, a6, a7
                  divw         sp, a1, t1
                  sltu         s10, t0, t2
                  ori          s7, s5, -221
                  srli         s7, a0, 49
                  srl          a1, s6, s9
                  or           a0, s3, s1
                  ori          s11, zero, 799
                  andi         a5, a1, -1079
                  addiw        a0, s0, -546
                  srai         s9, a4, 57
                  addi         a7, t1, -296
                  ori          a6, t2, -828
                  srai         a7, a3, 10
                  remuw        a2, a5, a0
                  srai         a1, s1, 9
                  xori         s4, t6, -146
                  ori          s2, s9, 976
                  slti         a5, zero, 1132
                  addw         t2, s3, a7
                  addw         a2, s1, a6
                  slt          sp, s10, gp
                  srai         s10, t0, 43
                  div          sp, s1, ra
                  slti         zero, a6, 533
                  divu         s11, t2, a6
                  sltu         a3, s2, a6
                  nop
                  nop
                  addi         a6, s1, 158
                  andi         sp, t1, 1132
                  lui          s0, 274491
                  srlw         s7, s8, t3
                  divu         a2, s2, s8
                  srl          ra, zero, ra
                  sllw         a7, gp, t5
                  sraw         t2, ra, s0
                  divu         s4, s3, t4
                  or           s2, t1, a6
                  slli         s7, t5, 14
                  xor          t3, t4, ra
                  srliw        a1, a5, 15
                  nop
                  nop
                  srli         t4, a4, 38
                  slliw        a5, tp, 13
                  divu         s1, s10, t1
                  addi         sp, t4, 1877
                  sraiw        t3, s11, 4
                  sraw         s10, t5, s10
                  subw         zero, t2, s5
                  srliw        s10, a1, 30
                  slt          a7, ra, s7
                  slliw        gp, gp, 28
                  divu         s10, a6, t1
                  rem          t0, a1, a4
                  srai         a2, a1, 62
                  sraiw        s3, a7, 27
                  mulw         a1, s8, a4
                  subw         a6, s10, s2
                  sraiw        t1, t5, 12
                  ori          a7, a2, -2025
                  slliw        t4, t5, 21
                  sub          a2, sp, a3
                  mulhu        t0, a0, a6
                  andi         s4, a1, 684
                  srliw        s4, s7, 14
                  remu         a2, t2, s8
                  xori         s1, a5, 1005
                  srai         s3, t0, 11
                  slliw        a1, s5, 15
                  and          a7, a5, t6
                  subw         t3, t5, s2
                  sraw         a3, a2, a0
                  auipc        t1, 443139
                  div          a7, s5, a1
                  srli         a2, a0, 24
                  ori          s4, s2, -1017
                  ori          t2, s7, 129
                  and          zero, s7, s10
                  lui          s3, 17048
                  slt          sp, t2, t5
                  divu         t0, zero, a1
                  mulhu        s7, s6, tp
                  mul          s7, s8, s6
                  andi         t3, s4, -815
                  mulw         s3, s9, s3
                  srliw        gp, t6, 17
                  srlw         s8, tp, s3
                  ori          a3, s3, 844
                  divw         zero, s11, s6
                  sllw         sp, sp, s4
                  addw         tp, s5, ra
                  addi         s7, a3, 1955
                  sraw         s7, t1, a7
                  slli         s1, t1, 40
                  div          s4, t6, s4
                  andi         a5, s3, 3
                  addw         t0, s8, t6
                  sll          zero, a0, a0
                  xor          s10, s11, s1
                  slliw        s9, a4, 19
                  lui          ra, 485443
                  sll          s7, s7, zero
                  sra          gp, t4, zero
                  mulh         a6, s10, t6
                  addw         t5, t3, s3
                  sraiw        t4, t4, 18
                  xori         ra, s6, -282
                  ori          s10, t2, 317
                  xori         s7, s3, -1809
                  sraw         tp, s6, sp
                  sll          zero, t5, s2
                  remw         s7, s6, tp
                  srlw         t5, a6, s4
                  addw         s1, s6, s10
                  mulh         s7, s1, s3
                  sra          t1, tp, s0
                  sltiu        a5, t5, -1738
                  and          t3, s5, s4
                  addw         a7, a0, ra
                  divuw        s0, a3, a1
                  xori         s1, gp, 1502
                  nop
                  addi         s7, a4, 1417
                  div          t0, s11, zero
                  ori          t2, t2, -1677
                  slti         t5, a0, 1494
                  auipc        s11, 795063
                  lui          s2, 750078
                  ori          zero, t6, -517
                  sll          tp, s1, s1
                  add          s9, s2, s2
                  srai         t5, t5, 35
                  divu         ra, t0, ra
                  divu         a7, s8, ra
                  add          t4, zero, s3
                  srlw         ra, a3, s1
                  divuw        t4, zero, s10
                  divuw        s9, ra, tp
                  nop
                  sra          a2, s0, t5
                  slt          s6, a6, s3
                  xor          s1, gp, t0
                  sll          s0, a0, s9
                  remuw        t1, t2, a1
                  sub          s9, s11, s8
                  sll          a1, t2, s11
                  slti         ra, a4, 564
                  and          s8, s8, t0
                  sltiu        s9, sp, -932
                  remuw        t5, gp, zero
                  divw         t0, s10, a2
                  slt          s9, s6, s10
                  xori         s4, a6, 1968
                  remu         a2, a2, a7
                  sub          s2, s9, sp
                  lui          t0, 325128
                  remuw        t4, zero, a1
                  addiw        a7, s9, 1101
                  lui          tp, 62234
                  remu         t3, s11, a0
                  or           s7, t5, tp
                  sll          a5, s8, t1
                  xori         a5, t4, -592
                  xor          a5, s4, s8
                  and          s9, s4, t1
                  addw         a0, s10, t2
                  addiw        s4, t4, 1971
                  slliw        s7, s11, 2
                  slt          s8, s4, zero
                  subw         t1, gp, s11
                  srl          s4, t2, sp
                  slliw        s8, sp, 6
                  slliw        s7, t6, 27
                  sltu         t2, s4, s1
                  srli         zero, a1, 39
                  sltiu        a5, tp, -1986
                  sltu         t3, tp, s5
                  or           sp, a5, t4
                  mul          t3, a7, a4
                  and          a5, t1, a2
                  addw         a3, s9, s2
                  sltiu        s7, a6, 1333
                  andi         a0, t1, -1614
                  srl          tp, t3, s8
                  sraw         gp, s5, a7
                  addiw        a7, t2, 1267
                  sub          tp, s4, a4
                  and          t3, s4, a0
                  srli         zero, t0, 24
                  sltu         t2, s6, a0
                  sra          t2, s11, a6
                  mulw         t0, a5, a2
                  slt          t5, t6, t5
                  xori         tp, t3, -739
                  srlw         a2, s5, a6
                  nop
                  srliw        a0, t2, 21
                  mulhu        t0, s7, a4
                  addi         sp, a5, -1200
                  andi         t4, a7, 1045
                  divuw        zero, a7, s10
                  srai         a3, s5, 49
                  srliw        t2, s7, 23
                  mul          tp, a3, s1
                  addi         s0, a6, -1728
                  slt          s10, a0, s2
                  sra          s11, a3, a6
                  andi         s9, s0, 1725
                  mulhu        s0, s11, a2
                  divuw        a7, a2, s7
                  srl          s10, tp, s8
                  divw         s9, s9, t2
                  sraiw        t2, s2, 8
                  mulhu        zero, a5, s1
                  sraiw        t4, t4, 6
                  mulh         zero, ra, s1
                  slti         s2, s4, -912
                  mulh         ra, s4, s3
                  sltiu        a0, tp, -1095
                  andi         s7, s9, 814
                  sraiw        gp, a3, 14
                  sraiw        s7, t6, 3
                  slti         s6, a6, 795
                  ori          a6, tp, -1965
                  div          s7, s8, t5
                  slli         s7, ra, 24
                  mulh         s11, t6, s9
                  add          a0, s1, t4
                  andi         a0, t4, 512
                  sll          s0, a5, s2
                  sraiw        t4, gp, 19
                  or           s9, a2, a4
                  divu         a1, t6, a7
                  addw         a2, t3, tp
                  srli         t5, s10, 49
                  slti         a7, s5, 99
                  addiw        s0, t2, -1217
                  slt          s9, gp, t3
                  xor          a5, t2, s10
                  auipc        a0, 110711
                  and          a2, a2, s8
                  sll          t0, t0, s5
                  addiw        t0, a3, -25
                  sub          zero, ra, t3
                  slti         a6, t0, 546
                  div          a1, s4, s5
                  add          t3, s1, s9
                  add          a6, a2, s11
                  sub          sp, tp, s7
                  srli         s2, s2, 17
                  andi         a6, s8, -770
                  and          s4, t0, s2
                  subw         s8, a4, s2
                  addiw        tp, t1, -1652
                  slliw        a0, a3, 1
                  srliw        s9, t6, 2
                  mulhsu       s11, t2, tp
                  andi         a5, s1, 457
                  remuw        t1, a3, a2
                  slliw        t2, ra, 23
                  srai         s4, t4, 17
                  sraiw        t2, s2, 2
                  slliw        gp, t1, 22
                  slli         s2, s8, 59
                  remu         s0, sp, sp
                  addiw        s1, s1, -1662
                  srlw         s2, a5, s6
                  andi         s7, a3, -1095
                  xori         s7, s7, -768
                  sll          t0, a0, ra
                  srl          t2, s10, a5
                  slti         s6, s1, 214
                  divuw        t2, tp, s3
                  srai         s10, t4, 20
                  remw         s8, a3, s0
                  sraw         s11, s9, a4
                  srlw         a5, a1, s5
                  addiw        t4, t1, 0
                  or           s7, s6, a4
                  add          s10, s5, a5
                  lui          s2, 948578
                  div          zero, a5, a3
                  xor          ra, sp, a2
                  srlw         t3, zero, sp
                  mulw         a7, s3, ra
                  and          t1, s5, t2
                  remu         s4, tp, s1
                  sraw         t4, a6, s8
                  auipc        t1, 376824
                  mul          s10, a1, ra
                  and          s6, a7, a4
                  srli         s4, t5, 20
                  andi         t1, sp, -379
                  slt          t5, t1, s2
                  and          tp, t3, sp
                  slt          sp, s10, s6
                  mulw         s2, sp, a6
                  divu         t4, t1, ra
                  mul          a5, s1, s2
                  remw         tp, ra, t5
                  srlw         s0, s11, t2
                  add          s8, s3, a6
                  srl          t3, a4, t3
                  remuw        t4, s0, t1
                  divuw        a0, s10, a4
                  mulw         t3, t5, s9
                  and          s8, a5, a5
                  slliw        a1, t0, 2
                  srlw         a5, s9, a0
                  slliw        a0, t5, 5
                  srl          t1, a1, a7
                  slti         s11, a7, 1532
                  sraw         s0, s2, ra
                  mulhsu       t0, s11, a5
                  sltu         s2, t4, s11
                  sraw         t2, s6, s10
                  subw         s9, s7, s3
                  sltu         t4, s9, t6
                  nop
                  sra          a1, s9, a3
                  slti         t2, a1, 929
                  sraiw        t3, a2, 5
                  divuw        t5, sp, a1
                  sll          a1, s1, s9
                  xor          a0, s6, ra
                  slti         s3, a1, 558
                  srli         t3, a2, 31
                  div          t3, tp, a4
                  mulhu        s9, a3, a2
                  mul          s4, s3, s4
                  addi         t5, t4, 402
                  srlw         ra, a0, t6
                  slli         t5, t3, 47
                  addw         a7, t6, s1
                  mulhsu       s11, s8, s2
                  lui          s7, 538328
                  addi         gp, a6, 1361
                  slti         a6, s9, -353
                  slli         t0, t3, 49
                  subw         a5, a2, a0
                  addiw        sp, ra, 1016
                  addi         s11, a0, -1066
                  auipc        a7, 101145
                  divw         gp, s3, a4
                  or           s4, ra, s7
                  sllw         s0, sp, ra
                  srlw         a3, s5, s5
                  divw         ra, s9, s6
                  divu         gp, ra, t2
                  sra          t1, a1, ra
                  srl          t2, a0, s7
                  mul          tp, a0, s1
                  addw         t4, a0, t1
                  divuw        s4, t3, tp
                  srli         a2, a7, 12
                  srl          ra, s4, s10
                  div          s10, sp, gp
                  slli         sp, t2, 32
                  sltiu        s1, t5, 509
                  mulhu        t4, a0, a5
                  srl          t0, t1, a5
                  lui          s0, 449266
                  andi         s11, t2, -531
                  divuw        t4, s1, s10
                  sraw         t5, s3, t2
                  sra          s8, t4, t6
                  srl          a0, tp, gp
                  ori          s8, gp, 543
                  mulw         s3, t5, t2
                  nop
                  sllw         a7, s3, a3
                  remu         s11, t1, a6
                  sllw         s6, t0, sp
                  slliw        s0, t6, 2
                  remu         ra, a2, gp
                  sll          a1, t5, ra
                  subw         t2, a7, zero
                  xori         a5, a5, -860
                  ori          s10, s11, -2047
                  nop
                  mulhsu       ra, a1, a5
                  mul          s6, s4, ra
                  mulw         s0, tp, a2
                  auipc        a7, 440207
                  remw         a1, s2, a0
                  div          tp, a7, s11
                  xor          a3, t5, s6
                  subw         s0, s6, t6
                  sltu         gp, a5, s1
                  mulw         t0, ra, tp
                  slti         s7, s1, 510
                  xori         s4, s7, 1262
                  srlw         s1, s3, s11
                  remuw        a7, ra, t0
                  and          t0, s5, a0
                  auipc        t5, 767213
                  mul          s8, s3, t1
                  auipc        t3, 612434
                  add          s4, s9, s0
                  slt          s9, t3, a1
                  xor          s7, s7, s4
                  mulw         s6, s5, ra
                  addi         t2, ra, -1122
                  and          a1, t4, t1
                  slli         tp, t4, 34
                  slt          s10, t6, s8
                  slti         s7, t1, 2009
                  sltiu        t1, a6, -1452
                  mulh         a2, s5, t6
                  andi         a7, a3, -432
                  sltu         s3, s8, t3
                  ori          a7, s0, 260
                  addi         a0, a2, 2021
                  or           s9, a2, s1
                  sra          t3, s0, tp
                  divu         s11, s7, sp
                  srli         t5, s11, 26
                  remuw        s7, t3, s8
                  mulh         a0, a4, t3
                  mulhsu       a5, s9, tp
                  sraiw        t3, a4, 29
                  divu         a0, tp, s5
                  sra          s10, sp, s0
                  addi         t3, ra, -2002
                  remuw        s7, s3, a7
                  and          a5, a5, a7
                  mulw         t3, tp, s8
                  or           a5, s5, a3
                  sll          t5, gp, a7
                  sltu         s10, s3, ra
                  or           t0, s0, s2
                  srai         zero, a7, 59
                  slti         a0, s1, 627
                  sraw         s4, gp, tp
                  subw         t2, t0, s10
                  xori         zero, s11, 410
                  srl          s11, t4, a6
                  div          a6, a1, a5
                  srl          a2, a5, s6
                  or           gp, t3, gp
                  mulhu        s10, t3, gp
                  divuw        s4, s9, tp
                  srl          s2, t5, s4
                  div          a5, sp, a6
                  sra          t0, s5, a3
                  mul          t4, zero, s1
                  sraw         t1, s10, gp
                  sub          a3, ra, s2
                  subw         a6, sp, t6
                  srlw         s1, t2, a1
                  ori          t2, s6, -765
                  mulhu        t4, s2, t5
                  remuw        a5, gp, t4
                  slli         s4, sp, 24
                  rem          a2, s5, gp
                  sll          s9, a0, a1
                  auipc        sp, 694325
                  ori          s4, s0, -311
                  sra          gp, s1, s0
                  nop
                  slliw        a2, s8, 25
                  andi         a5, t3, -1958
                  addw         s8, a5, s11
                  ori          s3, s11, 947
                  sraiw        a5, s10, 26
                  srlw         gp, s2, tp
                  divu         s11, s11, a0
                  sra          t4, s6, t1
                  sllw         a5, a3, t4
                  srli         a2, s4, 7
                  andi         t1, tp, -448
                  divuw        a0, t1, s11
                  mulh         t3, s0, a4
                  sraw         a2, s10, s2
                  addiw        t5, ra, -1817
                  sub          t1, a4, s11
                  sll          a5, s4, t1
                  and          ra, a4, a2
                  sltu         a3, t4, s10
                  divw         s3, s1, s11
                  slliw        a1, s9, 12
                  nop
                  div          s0, a1, s1
                  ori          s9, s4, -1728
                  and          a7, s6, s2
                  remw         s11, s2, tp
                  sll          t0, s6, a2
                  srai         t1, sp, 44
                  andi         s0, a1, 545
                  srli         tp, zero, 15
                  xori         s0, t4, -1557
                  sra          sp, t1, tp
                  addw         t5, s1, a5
                  sub          s9, t5, s4
                  lui          s11, 42262
                  divw         a5, gp, t1
                  div          a7, t3, a2
                  divw         tp, t2, s0
                  lui          t5, 942614
                  divw         s3, t3, t3
                  or           zero, t4, s9
                  sll          ra, a6, s6
                  divuw        s7, zero, a4
                  sll          tp, s10, a7
                  andi         t2, s8, -320
                  add          a5, zero, t1
                  sub          a2, t1, a2
                  remu         a5, zero, s3
                  remuw        s4, gp, gp
                  srl          t5, sp, t6
                  divuw        a2, t0, s8
                  remuw        s7, zero, s9
                  srli         gp, s9, 24
                  remu         a2, s6, t0
                  addw         t1, gp, t4
                  lui          a3, 610066
                  and          t0, s1, s3
                  remu         t4, t5, s5
                  nop
                  add          a7, ra, s2
                  srai         s3, s11, 31
                  xori         s8, s2, -575
                  sltu         s8, a2, ra
                  divuw        gp, t5, s4
                  slliw        a3, s3, 2
                  sra          s4, s5, t0
                  lui          a2, 229618
                  sub          a2, t6, s9
                  srliw        s8, a4, 12
                  remuw        a2, s7, t6
                  lui          s11, 738616
                  addiw        s2, s9, 779
                  sraw         sp, s5, gp
                  remuw        t5, s7, a3
                  slt          zero, a4, zero
                  slt          t1, a0, t1
                  slliw        a7, s0, 30
                  sraw         t2, t2, a2
                  andi         s3, s3, -1600
                  divuw        s4, s6, s6
                  remw         s6, zero, gp
                  addiw        a2, s11, -215
                  or           ra, gp, a0
                  mulh         tp, s7, t5
                  subw         tp, s7, t5
                  addi         s2, gp, -797
                  lui          t4, 598728
                  divu         tp, s4, t5
                  div          a5, s0, s3
                  srlw         t2, a2, a2
                  sra          zero, tp, zero
                  srli         ra, s11, 31
                  remuw        a3, s8, s9
                  srai         t4, a5, 3
                  sllw         s2, zero, tp
                  or           s4, a3, s2
                  sltu         a3, t1, t5
                  mulhsu       a6, a6, t3
                  andi         t1, s5, -143
                  mulhu        s1, s10, gp
                  sltu         t5, a0, a3
                  xori         t3, a4, 709
                  add          s0, t1, s7
                  remuw        s3, t4, a1
                  auipc        t3, 649958
                  add          s10, s8, t1
                  srai         sp, t6, 8
                  sllw         t2, s7, s0
                  and          s8, a7, zero
                  sltu         t4, t1, a3
                  or           a0, s5, t3
                  auipc        t1, 555527
                  slti         t5, gp, -195
                  add          t4, t6, s8
                  addiw        t2, a6, -1660
                  sub          sp, t4, s9
                  srl          t5, s3, t4
                  mul          tp, a2, sp
                  mulw         sp, s1, s4
                  sltu         t2, s0, t3
                  lui          sp, 490826
                  rem          a0, t4, t1
                  remw         s2, a0, s4
                  auipc        s2, 808238
                  mulhu        s7, t2, s6
                  mul          ra, sp, sp
                  slliw        ra, a3, 26
                  sltu         s4, t0, s8
                  srai         t0, s6, 56
                  subw         a1, gp, a4
                  mul          t0, s10, t6
                  sltiu        s10, s4, 1228
                  sraw         s11, a1, s7
                  rem          sp, gp, s10
                  sltu         s0, tp, t3
                  divw         s1, s0, t3
                  addw         a3, a5, t1
                  and          t1, s0, s11
                  sltu         s10, a1, s10
                  subw         ra, s8, tp
                  divu         t3, t6, sp
                  sraw         a1, t4, a3
                  mulhsu       a1, a5, s8
                  remuw        a2, t3, s1
                  divuw        a2, a3, s3
                  remu         s9, t1, s0
                  mulw         a5, s0, tp
                  mulhu        s1, a1, a3
                  add          s9, zero, a7
                  subw         s9, zero, a7
                  remw         s4, a5, s5
                  andi         t2, t4, -381
                  divu         s8, a5, a6
                  or           s8, t3, t4
                  add          ra, s4, s1
                  add          t1, s3, s5
                  srliw        s11, s3, 17
                  slliw        tp, gp, 22
                  mulhu        s0, a2, t3
                  mulh         t3, zero, s2
                  nop
                  srlw         s10, a3, s7
                  or           t0, a5, a1
                  auipc        t5, 823277
                  subw         a2, s4, a2
                  addiw        sp, s2, 91
                  sraw         a7, a3, a4
                  sub          a5, t4, a4
                  slti         t4, a2, -1702
                  divw         a7, t1, s5
                  xori         t0, s10, -651
                  mulw         s0, s11, s7
                  divu         s7, s3, t1
                  mul          zero, s0, t1
                  divw         t4, a0, a7
                  slliw        a0, s9, 6
                  sraw         s7, s0, s0
                  andi         a0, ra, 721
                  sraw         a7, sp, a3
                  auipc        t2, 56585
                  sraw         s8, s8, a3
                  mulh         a7, t0, s11
                  slliw        tp, t0, 13
                  srl          ra, t1, a0
                  lui          a7, 632199
                  sltiu        a0, s4, 334
                  addi         a5, s6, 1482
                  mul          a7, tp, s2
                  mulh         t1, s1, t4
                  sraiw        a5, a4, 21
                  srl          s1, t4, a0
                  srli         s11, ra, 27
                  lui          a0, 976643
                  sll          a7, a3, ra
                  sub          gp, zero, s10
                  mulw         s3, s6, a3
                  subw         t1, s8, s9
                  srlw         t2, a5, t4
                  xor          a6, gp, s2
                  remu         a6, ra, a6
                  srli         gp, t2, 24
                  lui          t5, 1016607
                  lui          a1, 930002
                  addiw        a2, t2, -576
                  addi         sp, t4, -132
                  mulhu        t1, a0, s3
                  div          tp, a2, a4
                  add          a7, tp, t4
                  nop
                  mulhu        s1, zero, sp
                  ori          ra, zero, 1631
                  sltu         t5, t6, t3
                  sra          a2, s2, s11
                  subw         s0, s9, s8
                  lui          s8, 633010
                  mulw         a0, t3, a7
                  addi         a1, s2, -286
                  slti         t3, tp, -200
                  mulw         t0, s1, s7
                  xor          t1, t0, t6
                  slt          t1, s11, a5
                  sraiw        a6, s5, 4
                  slti         t1, s5, -1729
                  andi         a7, a1, 283
                  srlw         t4, zero, s3
                  sub          a0, s7, a3
                  mulh         zero, a7, a4
                  div          s9, s1, a3
                  sltu         a7, a6, tp
                  srliw        sp, a7, 26
                  srai         s8, t2, 27
                  addw         s11, t6, s8
                  sltiu        a6, a0, -1669
                  slt          s2, a1, a0
                  srliw        s10, s10, 30
                  sllw         a0, a3, t3
                  add          a0, gp, a5
                  sraiw        s2, s6, 28
                  sub          t5, s7, a6
                  lui          t1, 704589
                  sltiu        s2, t4, 206
                  and          a5, a3, a1
                  addw         s4, gp, a5
                  sra          sp, tp, ra
                  divw         s7, t2, t5
                  sra          s6, gp, s0
                  or           t4, a0, a3
                  slt          s1, s5, t6
                  sra          t3, t6, s8
                  mul          tp, s5, t0
                  sll          s0, a2, tp
                  sltiu        a2, t5, -963
                  mulh         s8, t4, a2
                  mul          t3, sp, s9
                  srli         t4, s1, 59
                  sraiw        s8, t3, 9
                  slli         tp, a0, 16
                  slliw        s11, a6, 14
                  srli         t1, a3, 43
                  srliw        s6, s11, 26
                  remuw        a6, s2, tp
                  andi         a5, s11, -279
                  subw         s11, zero, s7
                  srl          s0, a0, t0
                  lui          s4, 723400
                  sraw         sp, sp, t0
                  slli         ra, t4, 49
                  sllw         s8, t1, t5
                  srli         a3, s9, 17
                  slti         s6, t1, 1898
                  remu         s4, s10, t0
                  sraiw        a2, a5, 5
                  slli         t4, a1, 17
                  srlw         s7, s6, a0
                  or           t5, a5, s0
                  slt          tp, a7, zero
                  srli         tp, a0, 41
                  sra          t2, t0, a6
                  mul          s9, s7, s6
                  rem          a7, s10, s8
                  sltiu        t2, gp, -35
                  mulhsu       a0, gp, zero
                  mulhu        s4, s4, sp
                  srl          s9, s9, t5
                  div          zero, a1, s9
                  xor          a0, s1, t0
                  remu         t0, s10, s3
                  xori         s8, a2, 1869
                  rem          t2, s9, s10
                  addi         ra, s6, 1881
                  add          a0, gp, s11
                  addi         t0, s1, -1589
                  rem          t2, a6, tp
                  divw         a5, a6, s2
                  div          a3, a6, a7
                  addiw        s11, t4, -735
                  nop
                  slliw        s10, t1, 8
                  sllw         s2, a5, s3
                  and          a2, s1, s6
                  addw         t2, a0, s1
                  remw         s2, s3, s2
                  divuw        s11, a5, s10
                  remw         t2, zero, t6
                  sltiu        tp, tp, -1486
                  remw         t1, s4, s2
                  mul          t5, t3, zero
                  sraiw        s10, s4, 19
                  slli         t0, sp, 16
                  mulw         s7, a4, t2
                  sltu         zero, tp, s1
                  remu         t0, ra, gp
                  addiw        sp, s5, 1768
                  div          a3, s0, s9
                  mul          zero, s6, s5
                  ori          t1, tp, 715
                  andi         s9, t6, 1247
                  srl          gp, s8, s3
                  or           t0, t4, t5
                  remu         s1, zero, a5
                  srl          tp, s5, a0
                  subw         t4, a3, t3
                  sll          t2, t5, s1
                  sllw         s11, a7, tp
                  ori          t4, t1, -213
                  sraiw        s2, s3, 30
                  mul          s8, s5, a2
                  nop
                  sub          t5, gp, s2
                  slli         s4, t4, 18
                  sll          s9, s0, tp
                  mulh         a1, s5, s2
                  and          t4, a6, s6
                  sllw         a1, s8, t4
                  srl          a0, s9, a4
                  remu         s6, a4, t2
                  addi         s11, s11, 396
                  lui          a0, 311472
                  slti         a1, s11, 263
                  slliw        tp, a6, 6
                  xori         tp, s8, 1426
                  mulh         s4, t2, s11
                  srlw         t3, ra, s10
                  sll          a1, a5, t0
                  sraiw        a5, t1, 22
                  nop
                  auipc        s0, 598343
                  mulhu        a5, t6, s5
                  sltu         s11, a2, s0
                  div          s10, s5, s1
                  lui          s11, 1020008
                  andi         a5, t1, -1078
                  sra          t4, a2, s6
                  sraw         s10, t4, a3
                  sraiw        a1, s0, 31
                  divuw        s4, s3, t6
                  srl          a3, t3, a5
                  addi         s2, s11, -29
                  sraiw        s0, t1, 26
                  xor          t4, t6, s7
                  srai         zero, s10, 36
                  remuw        a3, a7, s5
                  remuw        s7, s7, s9
                  slliw        a1, tp, 7
                  ori          a3, a1, 722
                  sltiu        t5, s11, 108
                  remuw        gp, s8, a4
                  srai         s0, t3, 52
                  sltu         a1, ra, s3
                  sll          tp, t5, s5
                  lui          zero, 734517
                  divuw        a7, s11, s6
                  slli         zero, t1, 5
                  ori          gp, s10, -920
                  mulhu        s11, sp, t2
                  ori          a6, zero, 784
                  xori         tp, s5, 1751
                  nop
                  div          s7, a5, t2
                  addw         s1, t5, a3
                  mulw         a7, ra, s2
                  srli         t4, s6, 28
                  addi         a1, s0, -291
                  srl          s7, t1, sp
                  sraw         s6, t3, t2
                  divu         t5, s4, a6
                  sltu         t3, s11, s6
                  slli         a7, zero, 37
                  divw         t4, t5, a0
                  slt          a5, a3, s7
                  sraiw        s8, s4, 10
                  mulhsu       s9, s7, sp
                  sltiu        a6, a3, -1991
                  mulh         a6, s3, t1
                  sra          s3, s6, t2
                  lui          s3, 898794
                  or           a2, s2, a0
                  and          a5, a1, a6
                  sraiw        s11, t6, 9
                  rem          a0, a6, zero
                  slt          t5, t1, a4
                  sltiu        a7, t0, -203
                  ori          t0, s8, -1170
                  sll          s7, s0, a4
                  xor          s9, a3, t0
                  sltu         s8, t2, s11
                  remu         zero, ra, t3
                  add          a3, s8, a0
                  divuw        s8, a1, a3
                  sraw         a0, s3, s5
                  sraiw        t5, s8, 10
                  sll          s3, s3, zero
                  lui          t0, 355415
                  addi         gp, a3, 1946
                  divw         gp, a4, s4
                  srlw         s4, t1, t4
                  mulhu        t1, s3, a4
                  srliw        a5, a2, 8
                  sllw         a5, a7, a0
                  sllw         t0, t5, s1
                  srli         s3, s8, 13
                  sraw         s6, s4, a4
                  sub          a5, s5, s0
                  divu         a0, s1, t0
                  sub          t5, a2, s7
                  slti         a1, a7, 1825
                  slliw        a1, a2, 29
                  srlw         t2, a1, sp
                  mul          gp, tp, t2
                  andi         zero, a2, 1052
                  divu         s0, t1, gp
                  andi         a1, t2, -982
                  divu         s2, tp, a3
                  addiw        a3, a6, 1798
                  srl          s2, t6, s2
                  add          a7, t4, s9
                  sltiu        tp, s8, -330
                  mulh         t1, a1, t4
                  sll          a0, t0, t1
                  sra          s7, a4, s9
                  addw         s0, s8, s6
                  srl          s7, s1, s0
                  sub          s4, a6, t1
                  sllw         s4, a3, t5
                  mulw         a2, tp, t4
                  addiw        a0, t6, 1474
                  or           gp, t2, s0
                  nop
                  and          a2, t0, sp
                  addw         zero, t5, s7
                  slti         s7, ra, -1465
                  remw         t3, a6, t5
                  mulh         t1, a2, a6
                  div          s11, s4, s8
                  lui          s1, 295222
                  srli         s1, gp, 14
                  add          s2, tp, s6
                  sllw         s2, zero, s4
                  rem          s6, t5, t2
                  nop
                  addw         a6, s11, t4
                  slliw        s9, tp, 5
                  addw         ra, t0, tp
                  slt          zero, tp, a0
                  srlw         t5, tp, a1
                  srliw        a7, a6, 26
                  srliw        a0, a0, 0
                  slt          s7, gp, s5
                  mul          t5, a4, s8
                  andi         t0, s7, -308
                  srai         a5, zero, 10
                  addi         t0, a1, -50
                  divuw        a1, s10, tp
                  mulhsu       tp, ra, sp
                  slt          zero, s10, gp
                  addw         t2, a7, a4
                  srl          sp, gp, s0
                  sllw         a0, s0, tp
                  and          s9, s9, t1
                  srli         sp, s1, 44
                  slti         sp, t2, -1606
                  addiw        s2, s8, -1470
                  divu         t5, t0, zero
                  mul          t0, a7, s5
                  mulhu        t3, t0, s8
                  sraiw        a7, s4, 7
                  sra          a7, s3, s4
                  xor          s4, s8, s7
                  divw         s4, zero, s3
                  xor          gp, t3, a4
                  or           a1, ra, s8
                  sllw         t1, a1, a1
                  srliw        t1, ra, 28
                  sltiu        s4, ra, 389
                  sltiu        s7, s5, 1381
                  sraw         tp, s11, t3
                  andi         s6, t5, 539
                  sltu         ra, s0, a4
                  add          s3, s3, zero
                  sltiu        s9, a1, -1840
                  and          s4, s7, s4
                  sltiu        t5, sp, -247
                  sraw         s9, a1, a7
                  and          s4, s4, t6
                  subw         t4, t6, a1
                  addi         zero, s4, 1804
                  addiw        t2, t2, -154
                  mulh         s6, s5, s10
                  add          a2, a7, s7
                  mulh         s1, s7, ra
                  remw         t3, s4, s7
                  or           s3, a2, ra
                  srliw        ra, gp, 5
                  mulhu        t5, s7, s3
                  andi         t0, zero, 973
                  slt          s2, a5, s0
                  sraw         a2, s5, sp
                  sltiu        s2, tp, 1738
                  divw         tp, a3, a0
                  mulw         a1, s10, a5
                  addiw        s9, s11, 1859
                  subw         s1, s2, s6
                  divu         s7, s10, tp
                  sllw         a3, ra, s9
                  slt          t2, a5, a0
                  sltiu        a6, s3, -251
                  nop
                  sub          ra, t1, s8
                  lui          a5, 847795
                  subw         s8, s6, s8
                  sub          s3, s6, t5
                  xor          s6, s1, s1
                  mulhsu       s1, s7, a2
                  subw         s11, s0, a1
                  slli         gp, s10, 11
                  divw         s11, s4, t4
                  sllw         t0, s9, s7
                  sll          a0, s5, a3
                  sllw         tp, ra, a5
                  srai         a2, s0, 45
                  or           s6, s8, t5
                  xori         a2, s5, 1261
                  sllw         a7, s5, s4
                  slt          a2, ra, gp
                  mulhsu       s10, s4, s3
                  add          a0, s6, s3
                  slti         s2, a0, 637
                  mulhsu       s0, a0, a4
                  sub          s2, a1, s7
                  mulw         a6, s5, s7
                  sllw         t2, a4, gp
                  remuw        a5, t5, s8
                  xor          s3, s8, zero
                  lui          zero, 398382
                  xor          s4, a7, s8
                  or           ra, s7, s1
                  mulh         a1, s5, t3
                  remu         a3, zero, a6
                  mul          ra, a4, s5
                  srlw         a1, a2, t3
                  andi         zero, s7, -186
                  slli         t4, t0, 4
                  lui          a5, 543966
                  ori          sp, s6, -1064
                  addiw        tp, a7, 271
                  mulhsu       s3, sp, t5
                  sraw         a3, t4, sp
                  sra          t5, a1, a6
                  xor          s6, s7, s11
                  rem          s10, t2, t2
                  slt          s6, t3, t3
                  mul          t1, sp, s0
                  sraiw        t4, s2, 8
                  srlw         s2, s2, t1
                  addiw        t3, a4, -1624
                  divuw        s11, s1, t2
                  slt          s3, a0, a2
                  remu         s10, s2, a7
                  add          tp, a3, t3
                  div          a3, gp, a4
                  or           s1, s2, s7
                  slliw        t5, t0, 26
                  xor          a7, t2, tp
                  sub          a6, ra, a1
                  slt          a7, s1, t2
                  sllw         a2, t5, t2
                  slt          ra, s0, sp
                  xor          t1, s3, t5
                  ori          gp, a0, -1976
                  slt          a2, s3, s5
                  div          s3, s4, s10
                  sra          s7, a3, a1
                  slti         s7, s0, 1643
                  sraiw        t3, sp, 6
                  divu         t1, a1, a3
                  mulh         a2, a1, s1
                  remuw        t3, t3, a2
                  add          tp, t6, a7
                  remu         ra, s2, a0
                  addiw        t3, a6, 480
                  sllw         zero, a0, s1
                  slt          t4, s1, t0
                  lui          s9, 328881
                  sub          gp, s10, t4
                  xori         tp, sp, 747
                  mulhsu       s4, t5, s6
                  nop
                  rem          sp, ra, s3
                  sltiu        s4, s11, 748
                  lui          s7, 312941
                  slt          s3, zero, s3
                  lui          a7, 614609
                  auipc        gp, 6514
                  addw         s7, a3, a5
                  sraiw        ra, s10, 2
                  remw         s9, a1, t2
                  subw         a6, zero, s9
                  subw         s9, s9, a2
                  or           t2, t4, a3
                  addw         t2, gp, t1
                  addi         s10, a5, 1732
                  or           s10, sp, s4
                  srlw         t3, zero, t2
                  div          s4, s2, t0
                  sraw         a2, t4, s8
                  remw         a6, zero, t2
                  and          ra, a3, s1
                  srli         a6, a1, 23
                  slt          a5, a0, t2
                  sltiu        t2, s1, 1891
                  sll          zero, s0, a3
                  divw         t1, a1, s9
                  divuw        a7, t3, a0
                  slli         gp, tp, 13
                  sub          s6, t4, a3
                  andi         s6, sp, -32
                  slliw        gp, t2, 23
                  xor          s11, t6, s7
                  remw         s7, a4, s1
                  divuw        a5, s7, sp
                  slt          t0, tp, a2
                  remu         s1, t1, t0
                  sltu         a6, t0, s3
                  rem          a3, a0, s2
                  subw         a5, a6, a7
                  addiw        sp, a2, -1986
                  mul          ra, s2, ra
                  sub          s0, t1, a2
                  remw         s6, s5, t6
                  divu         s2, a7, ra
                  mulhu        t0, ra, gp
                  srlw         t3, t6, t3
                  srlw         s3, sp, t4
                  addiw        s1, ra, -1070
                  sraw         s1, a0, a0
                  lui          tp, 928199
                  subw         sp, ra, t0
                  subw         s3, t2, s3
                  divu         a0, t6, s9
                  lui          s4, 726674
                  rem          a6, a4, s0
                  and          a3, a3, ra
                  remu         s0, s1, a1
                  subw         s9, s10, s4
                  srliw        s10, s11, 1
                  addw         t0, t4, s7
                  lui          s10, 178929
                  xori         a7, s9, -48
                  addw         t2, a3, s2
                  nop
                  sltu         sp, s2, ra
                  srl          s11, ra, s0
                  andi         gp, s10, 1162
                  mulhsu       a7, s10, a0
                  slt          t1, a0, a2
                  mulw         t5, ra, gp
                  addiw        zero, t5, -455
                  remu         a7, a0, s4
                  sub          a1, t5, s2
                  sra          t2, zero, ra
                  or           t5, tp, a4
                  remu         a2, zero, t5
                  div          a7, s5, a4
                  sll          sp, s8, a6
                  addiw        t4, t5, -1800
                  divw         t4, a5, t6
                  nop
                  divu         s0, s1, s8
                  mulw         s2, a7, s0
                  divw         a5, a3, t6
                  sltiu        a2, a1, 1617
                  div          t1, a6, a6
                  sltu         a7, gp, s0
                  sll          a6, s8, sp
                  mul          s8, s9, t0
                  slti         t4, t2, 1295
                  mulw         a2, a1, sp
                  remw         s8, a1, t0
                  and          tp, a3, s1
                  sraiw        s2, s11, 9
                  slli         t1, s6, 27
                  andi         a0, t2, 684
                  sltu         s0, s9, a4
                  mulhsu       gp, a1, t6
                  rem          s0, a5, t3
                  xor          a0, sp, t5
                  xor          a0, a3, a2
                  sllw         t1, s4, s0
                  sllw         t3, s8, s7
                  srli         tp, t1, 3
                  mulhsu       s4, t0, a3
                  auipc        s11, 54797
                  sraw         t1, s0, s4
                  add          a3, a7, t6
                  div          a1, a7, a1
                  srli         a7, a4, 12
                  sltu         s2, s1, ra
                  sub          a5, s5, a4
                  divu         zero, a1, ra
                  remuw        s7, s4, a1
                  slliw        a5, s10, 0
                  mulh         zero, a6, s10
                  slli         gp, s9, 41
                  remu         s10, a5, t2
                  sraw         a5, s4, s10
                  mulhsu       t3, s11, a1
                  divw         s10, t1, s2
                  remw         t2, t3, s5
                  mulh         t0, t3, a1
                  addiw        s7, s8, -1073
                  slli         sp, tp, 56
                  sra          s9, a3, a5
                  mul          s4, t4, a5
                  mulhu        gp, s9, tp
                  add          ra, a0, a7
                  remu         t3, t0, t0
                  mulh         s2, t6, s3
                  rem          a0, t0, a2
                  slt          sp, s3, sp
                  ori          t0, a1, 1496
                  addw         s1, a2, t2
                  and          a0, t0, s1
                  subw         sp, t1, s4
                  srliw        s7, t3, 18
                  mulh         ra, ra, s4
                  addw         t2, a7, s4
                  sltu         t4, s10, s6
                  sltiu        s8, s1, -161
                  sllw         t2, a4, zero
                  mul          a3, a7, s8
                  remw         s11, s3, s10
                  mulhu        gp, s7, t2
                  srai         t3, s7, 38
                  srlw         s11, gp, a1
                  slti         zero, t5, 482
                  and          a7, a4, s6
                  or           s11, s10, a5
                  lui          t5, 1002586
                  xori         a7, a0, -1372
                  add          s10, s5, a5
                  sltiu        s11, a0, 942
                  sraw         gp, ra, s9
                  sraw         s1, tp, s0
                  remw         a5, a1, a7
                  add          a3, s10, s3
                  mulh         s8, a1, s4
                  and          s11, t0, sp
                  divu         t0, a2, t6
                  sltiu        s9, t6, 1774
                  nop
                  sltiu        s10, s10, -1747
                  lui          sp, 492209
                  sraw         ra, s6, s6
                  sraiw        a7, s6, 25
                  slti         a5, t1, -615
                  remuw        s2, t6, a4
                  andi         t4, s11, 1068
                  sll          a7, tp, t2
                  sllw         s1, t5, s3
                  divuw        s10, s5, t3
                  remu         a2, s9, t1
                  slti         s10, a1, -1266
                  sltiu        a0, s8, -509
                  sltiu        zero, s11, 66
                  sraiw        t4, s3, 16
                  slli         a3, s6, 18
                  auipc        t3, 298002
                  sub          t0, a7, s8
                  subw         zero, a3, t1
                  xor          a2, a0, a1
                  srl          a5, tp, s1
                  sra          s9, zero, a4
                  sll          a6, ra, tp
                  srli         t2, a7, 39
                  srl          s2, a1, ra
                  sltu         a0, s3, a2
                  sraw         s1, gp, t3
                  sub          sp, s5, a4
                  divu         ra, s3, a4
                  subw         s9, tp, gp
                  andi         s10, a6, 1653
                  srai         s2, a0, 57
                  xori         a0, a1, 1178
                  srl          a5, s2, t1
                  sraw         t4, a2, t1
                  slliw        s7, a3, 5
                  sraiw        a7, t6, 30
                  remw         s1, a2, a3
                  mulhu        zero, a5, t4
                  sll          a6, a1, s5
                  add          a3, tp, t6
                  srl          a2, s2, a5
                  sraiw        sp, t2, 14
                  divw         t1, a6, s3
                  rem          a3, t6, a4
                  add          t4, gp, t4
                  divw         s0, s10, t1
                  divuw        t4, s7, a6
                  srai         s11, s7, 42
                  divu         t0, a5, sp
                  mulh         gp, s0, t4
                  addw         a0, t2, ra
                  sub          s8, s3, t3
                  sltiu        t1, tp, -881
                  rem          a7, a2, t6
                  sraw         t4, ra, a3
                  and          s3, a0, s8
                  sraw         sp, a7, s4
                  mulhu        s1, a3, t6
                  addiw        s9, s3, -1447
                  auipc        sp, 763058
                  slt          a2, t1, s4
                  slli         s3, a0, 32
                  srl          s10, zero, s2
                  and          t2, gp, a7
                  auipc        s10, 58964
                  remw         t5, s1, t6
                  srl          a6, t4, s4
                  mulh         t0, t4, t5
                  addiw        t5, s9, 466
                  lui          t1, 762157
                  and          s7, s10, t5
                  mulhsu       t2, s8, s11
                  srlw         s9, t3, a2
                  sllw         s4, t1, ra
                  srai         a0, s4, 47
                  or           t3, a4, t4
                  addi         sp, a0, 1295
                  addw         s7, a5, zero
                  sltu         s3, a4, s3
                  divu         a5, a2, gp
                  nop
                  xori         ra, ra, -310
                  divw         s6, s1, s4
                  sll          s2, s11, a6
                  divu         a2, tp, t3
                  or           sp, a4, s7
                  rem          s8, t0, t0
                  or           t0, tp, t3
                  addw         s8, a6, s9
                  mul          s2, sp, t6
                  mulhu        s10, s4, s10
                  sub          s8, s11, zero
                  srliw        gp, a2, 22
                  addw         s7, a3, sp
                  srl          a6, t5, a6
                  slli         a1, a1, 53
                  mulh         s3, a4, ra
                  slti         s6, t1, -22
                  mulw         s10, a7, gp
                  sraiw        a6, t0, 4
                  srlw         s7, a1, a5
                  subw         s9, sp, s9
                  sra          t1, tp, a5
                  nop
                  sll          s11, t4, t2
                  subw         s10, s0, s1
                  auipc        s0, 36619
                  addi         s2, s6, 1894
                  xori         s4, t5, -987
                  srli         s1, a6, 62
                  addw         s7, s0, gp
                  sub          t2, s8, s9
                  rem          t5, t6, t1
                  sraw         a2, gp, a3
                  sub          s10, s9, a6
                  sllw         zero, a4, a0
                  mulhu        s11, s4, s2
                  sraiw        s1, a5, 20
                  slti         s8, sp, -1488
                  srai         ra, s4, 54
                  remuw        a5, t3, s5
                  mul          t5, a5, a3
                  mul          t4, s4, t4
                  slt          s1, s7, ra
                  remw         s10, s5, a2
                  mul          a2, s7, gp
                  div          a5, a3, a7
                  sraiw        s10, tp, 4
                  divw         a3, a0, a6
                  sltiu        s7, ra, -1821
                  add          a2, a3, gp
                  mulhu        t1, tp, t0
                  nop
                  sllw         s7, a1, t5
                  addiw        zero, s10, -1813
                  slti         t5, t2, 593
                  remuw        s9, t1, s7
                  slti         a1, s0, -1434
                  srlw         t5, a5, a2
                  mulhu        a2, s3, s11
                  sltiu        s7, ra, -691
                  sub          zero, ra, s7
                  mulw         a5, s9, t4
                  mulw         s3, s2, s3
                  slliw        t4, s6, 24
                  xori         zero, a7, -483
                  sll          s10, s5, s7
                  mulh         a0, tp, s1
                  srl          s1, a4, t0
                  mul          s11, t2, a3
                  andi         s7, t2, -839
                  mul          s0, a1, s10
                  mulhsu       a7, s0, zero
                  xor          s11, tp, a1
                  slti         sp, ra, 311
                  mulh         t1, t4, t1
                  sll          s10, s3, ra
                  addw         s11, t5, t0
                  remuw        s11, s4, t6
                  and          a1, a1, t1
                  div          t0, s4, a4
                  slliw        t4, s9, 27
                  srlw         tp, s4, t5
                  srli         s4, s5, 46
                  sllw         a6, s0, a1
                  addw         tp, t5, a2
                  slliw        s3, s0, 23
                  divw         s10, s11, sp
                  sraiw        zero, gp, 16
                  subw         zero, s9, sp
                  addi         zero, ra, 1721
                  slli         a5, a3, 62
                  auipc        a7, 668283
                  addw         s10, a3, s11
                  slliw        t1, t1, 2
                  divw         a5, gp, t1
                  andi         a6, a6, 634
                  addiw        s9, t3, 1069
                  and          t4, t6, sp
                  slli         s10, a3, 61
                  divu         t2, zero, ra
                  sraw         s10, t0, s6
                  srliw        a2, sp, 7
                  remuw        s10, s1, s2
                  mul          s11, a2, t6
                  slli         a0, tp, 28
                  sll          t4, s10, s7
                  lui          s2, 584637
                  lui          s11, 736898
                  mulw         a0, s5, a5
                  sltiu        s4, s3, -1785
                  slt          a1, s0, a6
                  auipc        a6, 840816
                  sub          s10, s3, s9
                  addi         s11, s10, 1555
                  srliw        zero, t3, 26
                  mulhsu       s7, t1, t4
                  srai         a6, s5, 45
                  sllw         s7, a5, s11
                  slli         t1, s4, 2
                  remuw        t1, a2, t0
                  nop
                  remuw        t4, s2, s1
                  remw         t3, a7, a6
                  divuw        s10, zero, s2
                  mulh         s0, s10, sp
                  or           zero, s11, t6
                  sra          t4, s8, t2
                  or           s0, t3, s6
                  sltiu        t2, s5, -337
                  sraw         a6, t0, s11
                  xori         a7, s0, 427
                  addiw        a0, tp, -1583
                  srai         a0, s7, 33
                  sraw         ra, a4, t3
                  remu         a6, zero, t0
                  slli         t1, zero, 9
                  sllw         t0, a7, tp
                  divw         s7, s8, sp
                  sll          t4, s1, s1
                  mulhu        t3, t2, s0
                  sra          gp, s3, s11
                  mulhu        s1, s3, gp
                  rem          s4, s3, ra
                  addw         s11, t3, tp
                  srli         gp, a3, 35
                  andi         s8, t6, -809
                  ori          a0, t5, -1191
                  addw         sp, t4, s0
                  addiw        s2, zero, -1571
                  sraiw        t5, a1, 23
                  add          s0, a4, s2
                  mul          a5, s10, a4
                  xor          s10, s8, a1
                  srlw         s2, s4, gp
                  addi         tp, t0, 394
                  srai         t5, ra, 38
                  slt          s4, s0, s11
                  srlw         a2, s11, s0
                  sraw         a7, a7, tp
                  slli         s9, a7, 14
                  xor          s0, ra, a7
                  addiw        a5, a7, 1939
                  srlw         s11, s4, t6
                  nop
                  sltiu        s6, a1, -971
                  xori         a0, s11, 106
                  divu         t3, t6, t4
                  remw         s3, t1, s3
                  subw         s7, t3, zero
                  slt          gp, s2, s8
                  mulhu        t4, s8, a4
                  sraiw        t4, sp, 27
                  remuw        zero, t6, t4
                  mulhu        t4, a6, s7
                  sraiw        s2, s3, 30
                  slliw        a1, s1, 27
                  slt          t1, s1, zero
                  sra          t4, a2, t0
                  mulhsu       tp, tp, s9
                  mul          s3, a7, t4
                  slti         s9, s6, -623
                  xori         s2, t5, 1554
                  xor          ra, a4, a5
                  divuw        s3, t2, s4
                  srliw        a7, a5, 23
                  nop
                  srli         zero, t3, 34
                  slt          a5, a6, s3
                  srai         s11, s7, 9
                  remu         t1, t3, s6
                  mulhsu       s2, t3, a5
                  remu         gp, t0, t5
                  sraw         s4, s6, a4
                  sltu         s4, t5, a6
                  mulhsu       sp, s6, s6
                  sll          s10, a0, t1
                  ori          a5, ra, -1588
                  slti         a1, s3, -1733
                  sltiu        t5, s5, -67
                  slt          s3, t3, t3
                  slti         gp, a1, 632
                  sllw         a5, a6, s5
                  addi         s1, s11, 1895
                  sraiw        t2, a0, 0
                  and          a5, a6, a2
                  slt          t1, t6, s3
                  subw         a6, s11, s6
                  addi         s11, gp, 511
                  divu         a0, t4, a6
                  andi         a6, t4, -746
                  sraw         s7, s10, t2
                  remw         t1, s10, s7
                  divuw        s8, a4, s6
                  sll          s0, s11, s11
                  rem          t4, gp, s10
                  mulw         t0, s10, a3
                  add          s3, a2, s0
                  sub          s4, a1, s6
                  xor          s2, a3, s7
                  srli         s9, s4, 62
                  remuw        zero, s5, s9
                  srliw        s4, a2, 6
                  remu         s4, gp, a4
                  mulh         sp, t1, ra
                  mulhu        a7, t5, a5
                  sltu         a7, a4, s7
                  slliw        s7, s8, 20
                  srl          t5, t1, t3
                  sllw         a6, zero, s1
                  sllw         s4, a6, a1
                  slli         a5, a1, 32
                  mul          s0, a7, s11
                  sltu         t1, sp, s2
                  sra          tp, s0, s8
                  div          ra, a0, a0
                  rem          a7, t1, a6
                  mulw         t3, s6, s0
                  slti         t5, t3, -1863
                  divu         s1, t6, t1
                  remuw        a3, t5, s1
                  div          s10, a0, a6
                  divuw        t5, s3, a0
                  sltu         sp, s1, a1
                  mulhsu       t4, s6, s5
                  divuw        s4, s11, t0
                  mulw         s7, s8, t2
                  sub          t4, t2, t6
                  remw         t4, t0, s10
                  mulh         t0, s9, s7
                  srli         s9, t0, 60
                  sltu         s3, s1, s4
                  sraw         a1, s5, t1
                  sll          tp, gp, s3
                  sllw         s10, zero, s3
                  addw         s1, s10, s6
                  srli         a1, t1, 51
                  nop
                  ori          a6, t1, 1833
                  mulw         a2, a5, gp
                  remu         a7, ra, s1
                  mulhu        s11, t6, a0
                  remw         ra, t3, a6
                  xor          a7, a0, s3
                  remw         t2, t0, t3
                  sraiw        s11, t4, 17
                  sra          s6, s8, t6
                  srli         s3, s5, 19
                  remuw        t1, s1, t4
                  xor          t4, a3, a6
                  lui          a0, 88374
                  srl          s7, t2, s4
                  sraiw        a2, a7, 17
                  srlw         a0, ra, a2
                  mulhu        a3, s4, sp
                  slt          t1, s6, s6
                  mulw         a7, t2, s0
                  add          tp, s8, s6
                  auipc        a0, 445919
                  srai         s0, t5, 33
                  srlw         s6, t5, zero
                  mul          s7, s10, a2
                  xor          ra, gp, t3
                  xori         zero, a0, -1120
                  sltiu        a5, a5, 1048
                  divuw        s9, a5, s2
                  ori          s9, s1, -417
                  divu         ra, s1, a0
                  lui          t0, 346510
                  sraw         s10, t0, a3
                  remuw        a3, sp, s0
                  addiw        s9, a4, -878
                  mulhsu       s11, t3, s10
                  addw         t0, a3, t5
                  addiw        t4, ra, -1239
                  sub          t2, a4, s4
                  sub          s3, s8, a0
                  subw         s10, s3, s6
                  auipc        s7, 941249
                  srai         s7, s11, 62
                  sraw         s0, t1, a2
                  slli         a2, ra, 14
                  or           a0, s10, a3
                  mul          a2, t6, a5
                  auipc        a1, 701442
                  div          s9, a5, t3
                  mulhsu       a0, s6, t5
                  sraiw        a2, s4, 14
                  mulw         a0, s9, zero
                  slti         t5, t1, 2007
                  remu         a6, zero, a4
                  srlw         t4, s3, s6
                  addiw        s6, s1, -2018
                  srlw         a3, t6, tp
                  srai         t0, a0, 41
                  remw         a5, s1, t3
                  divw         s10, a0, s9
                  sll          t5, t5, s10
                  srli         s9, a6, 16
                  andi         a2, s8, -419
                  addiw        t2, t6, 1612
                  xor          s10, t1, s1
                  srli         s0, a0, 14
                  slli         a5, a4, 36
                  mulh         a7, t6, a3
                  addiw        a1, t6, 1540
                  sra          t5, s1, t4
                  nop
                  sllw         a5, a1, s9
                  slti         a3, a3, 1767
                  mulhsu       s11, t5, s3
                  xori         sp, a3, -1856
                  srlw         a5, t5, s6
                  rem          s7, a2, sp
                  mul          s8, a1, s2
                  xor          gp, t3, s6
                  srai         s1, ra, 16
                  mulw         a6, a6, t5
                  andi         t4, tp, 646
                  sllw         t5, s2, a4
                  or           ra, s8, a4
                  lui          t5, 780314
                  sraiw        a1, a1, 17
                  sub          t4, t4, a7
                  mulw         s6, sp, s4
                  or           s7, zero, s6
                  div          a7, a3, s7
                  srliw        tp, zero, 23
                  sraiw        tp, s11, 15
                  auipc        t0, 879968
                  ori          gp, s6, 1017
                  and          s1, s11, s9
                  nop
                  mulh         s3, t3, t5
                  mulhsu       gp, a6, gp
                  divuw        s6, a3, t0
                  slli         s0, a0, 59
                  slt          t5, s9, s3
                  sllw         t2, a6, a5
                  remu         ra, s10, a5
                  sltu         gp, a0, a1
                  or           s1, gp, s3
                  srli         a6, gp, 7
                  rem          sp, s8, gp
                  slti         s3, ra, 1904
                  auipc        t4, 667400
                  divw         a7, s8, s1
                  srai         s9, a7, 31
                  slli         t4, t3, 35
                  srlw         a7, s2, s9
                  sltu         t4, tp, s6
                  srlw         a0, s10, s6
                  remu         s3, zero, zero
                  sll          t5, tp, ra
                  sub          a0, a2, a7
                  ori          s9, s4, -1951
                  mulh         t0, a2, gp
                  sraw         a2, a5, s4
                  addiw        a7, t6, 1999
                  sltiu        s4, t0, 1362
                  xor          s9, a6, s10
                  mulh         s3, a2, s8
                  srli         s3, a1, 54
                  add          a6, a6, s8
                  and          t1, t5, ra
                  ori          t3, t2, -376
                  addw         tp, s3, s3
                  add          a7, a0, sp
                  divu         s7, t2, zero
                  subw         s6, a0, s11
                  divw         s10, t1, a1
                  mulh         t1, a1, a7
                  mulhu        a7, t3, ra
                  xori         s4, t4, -1008
                  slliw        a5, t1, 29
                  or           ra, a3, t0
                  or           tp, a1, a3
                  sraw         s0, a2, s3
                  srai         t1, a1, 33
                  srl          a6, zero, s6
                  auipc        tp, 223286
                  addiw        ra, s1, 383
                  rem          zero, s5, t6
                  srai         s11, t2, 32
                  divuw        s6, a2, s6
                  addiw        ra, s4, -1831
                  subw         s0, a6, tp
                  subw         s11, s1, t4
                  subw         ra, a4, t5
                  add          tp, s5, a5
                  and          a3, s0, a0
                  subw         s7, s1, s5
                  srli         s3, s1, 42
                  or           a6, t4, a6
                  divu         a1, s8, t4
                  srliw        tp, s9, 28
                  sub          ra, s5, s0
                  slliw        a5, s11, 29
                  subw         a0, a1, a0
                  mulhsu       a1, s9, s2
                  sll          sp, sp, s8
                  srl          sp, a5, t3
                  mulhu        s2, s11, a7
                  add          s3, zero, t4
                  divu         gp, a3, a7
                  xor          a7, t0, a0
                  mulw         a6, t6, ra
                  sraw         s2, s4, s2
                  slt          s10, s4, s0
                  remw         ra, a7, s10
                  sraw         s9, a4, s4
                  sub          s11, s0, s1
                  divw         a3, s6, s9
                  addiw        a1, a7, 1681
                  auipc        s3, 253429
                  srai         s4, gp, 2
                  xor          t5, s9, tp
                  lui          s4, 382165
                  mul          t2, a0, t5
                  lui          zero, 1017627
                  sllw         s10, s8, s2
                  srli         t2, s6, 0
                  sltiu        s2, a2, -149
                  mulhu        s2, s5, s5
                  divu         s1, s10, a6
                  sllw         s8, t6, s10
                  slli         t1, s4, 42
                  remuw        zero, s2, s9
                  rem          a0, a3, s1
                  sllw         tp, a0, s11
                  remuw        s10, a4, a7
                  sltiu        a0, a2, 1284
                  rem          s0, s10, s8
                  addiw        t5, a1, -1110
                  lui          t0, 533050
                  divu         gp, t5, gp
                  srli         tp, s4, 60
                  srlw         a5, s4, a1
                  xor          s7, s5, s11
                  nop
                  add          t5, gp, a7
                  slli         s1, a3, 56
                  divuw        s9, ra, s4
                  divuw        a5, s10, t2
                  sraiw        t1, t0, 21
                  mulhu        ra, a4, a0
                  srliw        a2, s6, 20
                  sraw         s3, a0, s2
                  subw         t0, t2, tp
                  remw         gp, s9, ra
                  andi         t0, t5, 649
                  lui          t4, 773417
                  mulhsu       t0, a3, s2
                  sllw         s10, s10, s9
                  nop
                  sll          ra, t5, gp
                  nop
                  addi         sp, t0, 1281
                  sra          s4, s1, tp
                  mulw         s6, a2, t5
                  divuw        t2, s4, a5
                  sllw         gp, a4, gp
                  xori         ra, t4, -801
                  sub          t4, s4, tp
                  remw         a7, s5, a3
                  sll          t4, s7, s6
                  sltu         gp, t6, t5
                  sra          tp, zero, gp
                  slti         s4, s8, -1172
                  srai         gp, gp, 23
                  slli         t4, a7, 30
                  sll          t1, t2, s11
                  div          s11, ra, t3
                  slli         a0, t0, 5
                  mulw         s2, a7, a3
                  srai         s9, s1, 41
                  addw         t2, t6, t2
                  addiw        s9, t0, 505
                  auipc        zero, 129268
                  lui          t3, 649103
                  remuw        gp, s7, s7
                  mul          s10, s7, s7
                  or           gp, s3, t0
                  divu         a6, a6, t5
                  sllw         s7, zero, a0
                  xori         a7, s3, 634
                  mulhsu       s9, s11, s11
                  remw         s1, t3, s3
                  sltu         s4, a2, tp
                  lui          t0, 225541
                  mulh         s3, a3, s3
                  slt          s2, s10, t3
                  mulh         a2, s8, t0
                  andi         a0, s11, -1327
                  mulhsu       t4, t5, s6
                  slti         a2, t6, -1406
                  sltiu        s8, gp, -1450
                  nop
                  sltiu        t0, s11, -1403
                  srai         t4, t5, 8
                  sllw         t4, gp, s8
                  mul          t5, sp, a0
                  sltiu        t2, t2, 1820
                  sraiw        a7, s11, 20
                  sraiw        s6, s11, 8
                  mulw         s2, t2, a1
                  nop
                  srai         s11, s0, 53
                  mulw         tp, s6, ra
                  mulw         s4, a5, a2
                  sltiu        s4, t2, -1368
                  sub          ra, s5, s7
                  ori          t0, a0, -1033
                  xor          a6, t5, gp
                  and          t4, a2, zero
                  remuw        ra, s5, s8
                  sraw         s10, gp, s1
                  mulw         a3, t3, s6
                  srai         a1, s0, 63
                  nop
                  sltu         t5, a5, t5
                  mul          t2, s6, s5
                  mulhsu       a7, a3, s11
                  srliw        t2, a2, 22
                  auipc        s6, 792914
                  sllw         s6, s8, a7
                  mul          t5, t5, zero
                  add          a6, s3, zero
                  divw         t2, sp, t6
                  remu         t2, s6, a5
                  sltiu        t4, t0, 1784
                  slliw        s0, s7, 31
                  slti         a1, t0, -1157
                  mulhsu       s0, sp, a2
                  srai         t0, a2, 6
                  addiw        s10, t3, 249
                  mulhsu       tp, zero, a5
                  sltu         tp, a0, a4
                  sllw         t0, t6, t6
                  div          sp, s8, a5
                  divw         s7, s8, a1
                  subw         t1, s9, s9
                  mulw         s2, s6, t1
                  sub          a0, s1, a1
                  srai         s8, t6, 14
                  srai         ra, t6, 45
                  divuw        sp, t0, a2
                  srlw         s9, s1, s4
                  sub          t5, a0, s9
                  div          s8, t3, zero
                  addw         s7, a1, a4
                  mulw         s3, t4, s11
                  addi         t0, a3, -392
                  srlw         s3, a7, tp
                  mulw         s2, t0, sp
                  slli         gp, gp, 50
                  sll          tp, t3, a4
                  srai         s1, a4, 52
                  sub          s1, t5, a7
                  srl          a5, s4, s7
                  andi         a2, s5, 1972
                  add          zero, a0, s7
                  sraiw        t4, gp, 22
                  sll          a7, a5, t2
                  sra          t0, tp, a2
                  lui          a2, 861056
                  remu         t5, a2, s4
                  ori          a7, t0, -1928
                  remw         a3, t3, a6
                  rem          a1, s9, a5
                  sllw         s10, a4, s8
                  divw         s11, t1, a0
                  srlw         s11, a4, s9
                  nop
                  xor          a1, s7, t0
                  addiw        s11, s6, 301
                  srliw        tp, a1, 28
                  andi         t4, s0, -1221
                  lui          tp, 187946
                  div          s1, s0, a5
                  mul          s9, t4, s11
                  addi         t5, s9, 1540
                  addw         s7, t2, a5
                  addiw        s1, s5, 239
                  lui          s6, 104784
                  remu         a3, s9, t1
                  sraiw        s7, a2, 4
                  divuw        s4, s11, s2
                  srlw         a1, sp, a1
                  mulhu        s0, t1, a4
                  add          s11, t6, zero
                  srliw        t5, t6, 4
                  mulh         t4, a0, a3
                  sll          gp, a6, t0
                  addi         s3, s8, 13
                  sub          gp, s4, a7
                  slt          s3, zero, s1
                  sltiu        s6, s4, -295
                  sraw         s7, s7, ra
                  divuw        s10, s6, s7
                  mulh         s1, s9, t0
                  slli         t1, a5, 53
                  mul          a0, s8, s4
                  slt          s7, a0, s8
                  sub          t3, t5, t1
                  sra          s7, a7, sp
                  rem          a3, a6, s8
                  mulhsu       t4, s0, a2
                  remuw        t2, s5, tp
                  divuw        t4, t5, t1
                  mul          s7, s10, s8
                  subw         s10, s8, tp
                  auipc        a2, 912471
                  slti         sp, a2, 175
                  sltu         s0, s8, s9
                  sllw         s7, s1, a3
                  sub          s7, s3, s2
                  mulh         a3, s11, a6
                  div          gp, s0, a7
                  div          s11, sp, zero
                  addiw        t1, a2, -1684
                  sra          s1, ra, a5
                  mulhsu       s6, s0, a3
                  sra          a0, s10, a6
                  srliw        a1, t0, 1
                  and          t0, t5, gp
                  mul          a7, ra, t3
                  mulh         a0, a3, a3
                  mulw         s9, s3, a4
                  mulhu        t4, gp, s0
                  divuw        s3, t3, sp
                  remu         a5, s10, t5
                  subw         s3, s7, t1
                  sraiw        zero, s11, 22
                  andi         s7, s5, 1349
                  mulh         s3, t6, zero
                  rem          t1, gp, s4
                  srai         t0, s3, 7
                  divuw        a2, a7, t1
                  auipc        t5, 625323
                  sltiu        t1, s2, 1939
                  ori          sp, zero, -656
                  srli         s9, s4, 46
                  srai         s2, s11, 48
                  sltu         s6, s3, s6
                  srai         a3, t2, 39
                  srli         a3, gp, 14
                  xori         s0, t5, 1853
                  mulhsu       t0, t5, t0
                  srai         t5, t6, 19
                  remuw        t1, a3, a1
                  mulhu        s8, t6, s10
                  srai         gp, a6, 14
                  srl          a0, s4, s4
                  srli         t3, t6, 35
                  sraw         t0, a7, a2
                  mulhsu       s3, s11, s4
                  addiw        s1, a5, 1873
                  and          t1, ra, s0
                  div          s10, a5, s11
                  lui          a1, 151015
                  sltu         a0, t4, s6
                  and          s7, sp, s8
                  srli         a6, s3, 63
                  or           a1, gp, a3
                  sllw         s8, a4, s11
                  auipc        tp, 713540
                  addi         t1, s0, -968
                  ori          a6, t2, -1183
                  ori          s4, sp, 1414
                  lui          gp, 475173
                  div          a3, s6, zero
                  sll          s3, a2, s1
                  lui          a7, 113947
                  remu         s10, a2, a5
                  auipc        a5, 730831
                  mulh         s10, a4, zero
                  divu         t5, a2, ra
                  slliw        a3, a5, 25
                  sra          a7, s4, t0
                  remw         t4, t6, sp
                  slt          a2, s0, s5
                  or           t0, s6, s9
                  xori         a1, tp, -1508
                  addi         a2, s2, -1529
                  sltu         t3, s10, s8
                  rem          zero, s5, s3
                  add          s2, a5, s1
                  divw         s11, a2, a0
                  slliw        s3, t6, 5
                  remuw        s11, sp, tp
                  addw         s7, a6, a7
                  sraw         a7, a1, tp
                  mulhsu       s4, s4, a4
                  andi         s6, a0, 22
                  remu         a5, zero, s6
                  lui          tp, 767191
                  mulhu        sp, t6, a7
                  remuw        t1, a7, s2
                  lui          a7, 772118
                  addw         s2, tp, a2
                  mulhsu       s1, t5, t1
                  xori         a7, t4, -774
                  slt          s9, tp, s0
                  slli         t4, a3, 20
                  ori          s1, a6, -198
                  slti         s11, zero, 1878
                  auipc        t0, 1002533
                  addw         s9, s2, a1
                  srl          a0, t4, s6
                  srlw         s8, t4, a5
                  sra          s2, a5, s6
                  mulhsu       ra, s6, s11
                  andi         tp, gp, -1250
                  srl          t1, t6, t1
                  sltu         a6, a2, t6
                  srliw        a3, sp, 27
                  and          a0, s1, a7
                  divuw        a6, s7, a2
                  or           a7, s11, t6
                  addw         sp, s7, t6
                  mulhu        s7, s2, ra
                  srl          s6, a5, s5
                  srai         a5, a6, 48
                  xor          a0, a4, a5
                  sltiu        a6, a5, 1899
                  slt          tp, t0, a7
                  or           t0, s6, a6
                  or           a7, t0, s8
                  remu         s7, s7, a0
                  remuw        a7, sp, a4
                  lui          ra, 973242
                  mulhsu       t0, s6, a5
                  mulw         a3, t6, zero
                  divuw        sp, ra, zero
                  srliw        tp, a3, 0
                  mulhsu       s3, tp, t6
                  xor          s6, s3, a1
                  auipc        s8, 68640
                  addw         s7, a6, t4
                  sltiu        t2, s1, 2038
                  remu         t2, t6, t5
                  sltiu        sp, t0, -543
                  addiw        t1, t2, 244
                  remu         a5, a1, t1
                  remw         s4, s11, a5
                  sraw         s8, t1, a7
                  sltu         a3, sp, s5
                  remuw        t2, s6, a0
                  sub          s6, s6, s11
                  srliw        a2, s8, 29
                  xor          t0, a1, s1
                  divw         t1, a5, s2
                  xor          t0, s5, ra
                  or           s2, s9, s6
                  auipc        t4, 404290
                  mul          t0, t1, s5
                  mul          a0, t3, s9
                  div          s4, a7, a6
                  divuw        s3, a5, s4
                  addw         s11, s2, s9
                  lui          a6, 45878
                  slt          s8, s3, t0
                  addiw        a5, s7, 203
                  remuw        t5, t4, s11
                  lui          s4, 1040974
                  rem          t2, a4, t3
                  sllw         a3, sp, a7
                  slt          a1, s7, s5
                  mulw         t4, a7, t4
                  mulhsu       s7, tp, a0
                  sll          s8, tp, a1
                  sllw         s8, a0, zero
                  divw         ra, s4, s1
                  mulhu        s3, a3, t1
                  sltu         s6, s11, a6
                  srli         s2, a2, 54
                  divw         s3, t5, t3
                  lui          s9, 330747
                  srl          sp, a6, t2
                  remw         s1, t5, sp
                  mulhsu       s6, gp, t6
                  sra          t4, a1, t3
                  sltu         s8, ra, ra
                  slli         t2, s7, 35
                  srai         s6, s1, 63
                  srliw        s4, gp, 16
                  srliw        sp, a4, 29
                  nop
                  xor          a0, t1, s5
                  lui          s11, 303012
                  ori          a5, ra, 1609
                  addi         s6, s10, 1163
                  remuw        ra, a1, s9
                  sra          a7, t1, s7
                  sraw         t1, a3, s7
                  remw         zero, sp, sp
                  srli         ra, gp, 22
                  auipc        a2, 898544
                  andi         t1, s5, -1253
                  ori          s4, s3, 1575
                  sltu         t5, a5, s10
                  divu         a0, s9, gp
                  addw         s4, a0, ra
                  addiw        s8, s11, -1666
                  srli         a6, a5, 11
                  andi         t0, s2, -1215
                  slliw        sp, zero, 23
                  srliw        t0, t0, 20
                  slliw        t0, gp, 18
                  and          tp, gp, s8
                  sltu         a3, a3, a0
                  auipc        a0, 978371
                  addiw        s7, s3, -1621
                  divuw        a6, tp, s6
                  divu         t5, t2, tp
                  add          t3, t3, a1
                  divuw        sp, s11, s0
                  remu         t1, a6, zero
                  srlw         s2, a1, a2
                  sraiw        a2, ra, 2
                  srlw         zero, t5, s7
                  ori          s3, s7, 141
                  add          t4, a0, t0
                  nop
                  sll          s10, zero, t3
                  divw         s2, s3, s8
                  srai         t3, s9, 28
                  srliw        ra, zero, 26
                  or           tp, s0, s8
                  slti         s6, t4, -697
                  add          s4, sp, zero
                  slliw        t3, s3, 11
                  remw         a5, s3, s2
                  slli         t2, s9, 19
                  and          s8, t3, s7
                  remuw        a5, s11, sp
                  mulhsu       s8, s0, a5
                  mulw         gp, tp, s4
                  mul          a2, a7, t2
                  divw         t2, a6, a7
                  and          ra, s10, t2
                  or           s8, s1, a1
                  divw         t1, s9, s6
                  mulh         s2, a7, zero
                  slliw        a2, a2, 28
                  sra          a0, t6, s9
                  add          a5, a2, t5
                  and          s4, a3, a3
                  or           s9, a7, s0
                  srl          gp, a5, t3
                  or           a7, s11, s5
                  sub          t5, a4, s11
                  div          tp, s2, a4
                  addi         s7, a0, 1171
                  addi         t2, sp, -1581
                  slti         s7, a7, 1382
                  slli         s4, t0, 11
                  slti         s4, s2, -1734
                  mulhu        t3, a4, a0
                  mulhu        t3, a3, a2
                  addi         s0, a3, 1562
                  remu         s9, t3, a6
                  remuw        a0, s7, s11
                  or           t3, s6, s1
                  srai         s3, a3, 29
                  or           a7, a2, s2
                  remw         t0, t4, a6
                  nop
                  divuw        a5, t0, gp
                  srli         s10, s9, 22
                  sraw         s4, s4, a2
                  lui          sp, 287503
                  subw         s2, s0, s1
                  ori          t1, gp, 429
                  sub          t5, s0, t0
                  nop
                  srlw         a6, t5, s1
                  srli         t3, a3, 1
                  sltiu        s3, a0, -1475
                  remuw        t4, s5, t4
                  xori         s7, tp, 2041
                  slliw        ra, t4, 29
                  sub          t2, a2, s6
                  mulh         s4, s10, sp
                  mulw         a5, s0, s8
                  remw         s3, t4, s8
                  sltu         zero, a4, s4
                  srlw         a5, s3, t1
                  sraiw        t2, s7, 29
                  sub          gp, s5, a2
                  add          s8, s4, sp
                  divu         s3, s1, t3
                  mul          s4, t1, a4
                  divuw        t5, s11, t6
                  mul          t1, a0, s11
                  addiw        a2, a0, 1658
                  lui          s9, 334146
                  rem          a5, zero, s7
                  slli         t4, t5, 50
                  sraiw        s10, a2, 10
                  sraw         s2, t2, t0
                  slliw        s10, sp, 10
                  srliw        s6, s0, 5
                  nop
                  or           sp, t5, ra
                  lui          s4, 344038
                  slli         ra, gp, 38
                  srl          t2, a4, t3
                  sltu         t1, s8, zero
                  sll          s0, t0, t5
                  mul          t4, s2, t6
                  divuw        a6, s7, s2
                  sra          s3, gp, sp
                  mulw         t4, s11, sp
                  xor          tp, t6, s7
                  slli         s0, t2, 63
                  mulhsu       s7, s7, a1
                  nop
                  divw         s2, s0, a1
                  sltu         gp, a0, t5
                  remw         s0, ra, s8
                  sraiw        s7, a6, 28
                  andi         t4, a5, -342
                  addw         sp, t3, s9
                  rem          t5, s2, t4
                  divw         t3, s6, a1
                  remw         t2, s4, s0
                  slliw        t1, sp, 6
                  sraiw        s11, t2, 12
                  ori          t5, s10, 486
                  addw         t2, sp, a3
                  mul          t5, t1, a4
                  slti         s1, sp, -215
                  divu         s3, s6, s2
                  addw         sp, s11, a6
                  mulhu        s6, t3, s10
                  mulw         t2, t1, t5
                  addw         s3, s7, ra
                  remu         ra, s2, s1
                  slli         a7, s2, 36
                  and          a0, s6, s8
                  sra          t3, t1, s4
                  mulhu        a2, a5, t5
                  add          ra, s4, sp
                  sub          a6, t5, t3
                  remuw        t3, gp, t4
                  auipc        t3, 112875
                  addiw        t1, t5, -540
                  slt          s2, s1, s3
                  addw         t1, t4, s9
                  remw         t3, s4, s2
                  sll          t2, a4, t0
                  divuw        s0, t4, a5
                  divw         s11, s4, t6
                  mulh         s8, s4, s4
                  srli         a2, tp, 45
                  xori         a3, a1, 521
                  sllw         s7, t2, a1
                  sllw         t5, a2, zero
                  mulhu        t5, s10, a5
                  mul          a3, s11, t5
                  and          t1, s6, s9
                  mulhu        a2, s8, s7
                  div          s3, t1, tp
                  addi         s4, t5, -1758
                  mulhu        s8, a7, t3
                  addw         t3, a0, s2
                  addi         t5, s10, -535
                  divu         s10, t0, a2
                  divw         a5, a2, a7
                  div          a2, s8, s6
                  srai         sp, a2, 61
                  or           a2, a5, s1
                  sraiw        t0, t1, 17
                  mulh         t4, a4, ra
                  auipc        gp, 922480
                  subw         t0, t2, t0
                  slliw        tp, a4, 19
                  remu         zero, a2, t2
                  sraw         s4, t0, s1
                  slli         s4, s6, 49
                  divu         t1, zero, t5
                  remw         s3, t3, tp
                  addiw        a7, s7, -926
                  remu         s7, s0, ra
                  addw         a7, t4, a0
                  srli         zero, zero, 8
                  slt          a6, a2, a5
                  mulhu        tp, gp, s1
                  lui          t5, 730734
                  mul          a7, s6, t3
                  andi         s1, s9, -243
                  lui          s4, 345839
                  mulhsu       t4, a2, s3
                  ori          s10, t2, -1714
                  slti         s11, s7, 1256
                  srl          a0, a1, t6
                  sltu         a3, gp, s11
                  slt          a2, s10, t1
                  srl          s10, s2, s7
                  div          a0, a5, t1
                  sllw         s10, t4, a1
                  remw         t5, a5, t2
                  xor          t4, a1, t5
                  sub          a7, s11, a3
                  mulhu        t3, s8, s5
                  srlw         a7, gp, t2
                  subw         s4, a3, a7
                  sllw         s7, s3, s4
                  srai         s4, s6, 37
                  nop
                  sub          t5, a3, ra
                  mulhu        a0, a5, s2
                  sub          t0, s4, t6
                  sllw         s8, sp, s10
                  nop
                  sllw         a5, s5, a7
                  mulw         a3, s2, s8
                  xor          a2, s11, s1
                  remu         a2, a7, s0
                  divw         s4, ra, a1
                  xor          s4, s0, s7
                  lui          t4, 206177
                  sll          s11, t2, t5
                  or           a2, s11, a0
                  remu         t4, s1, s6
                  sll          s4, t2, a2
                  srliw        t3, t6, 9
                  andi         s6, s3, -803
                  remuw        t4, sp, t6
                  nop
                  slliw        a1, s0, 12
                  mulw         a0, zero, s6
                  xori         t2, a5, 1460
                  slliw        tp, s4, 1
                  mul          t5, a0, t6
                  addi         t0, s4, -972
                  sub          s2, s3, s8
                  nop
                  addiw        t4, gp, -44
                  mulhsu       a0, tp, s0
                  sltu         s8, s8, s6
                  lui          sp, 146823
                  or           t2, zero, s8
                  srlw         s1, a6, t3
                  mulhu        a1, a7, s10
                  sra          s3, a4, zero
                  slt          ra, s4, a6
                  mulh         a2, a6, ra
                  sra          t5, s4, t2
                  div          t0, t3, s0
                  div          t4, s10, s1
                  mulw         a2, zero, t5
                  srliw        t5, ra, 24
                  sub          s0, s8, s1
                  sltiu        a1, s8, 982
                  slt          a5, a5, s4
                  addw         t1, t0, s0
                  divu         s4, s11, s3
                  ori          s10, a7, 1363
                  slliw        s6, zero, 13
                  and          s1, ra, ra
                  srai         s9, s4, 3
                  sllw         a5, tp, gp
                  srl          s10, a4, a4
                  mulhu        a0, a1, s9
                  divu         s2, ra, s5
                  mulh         a7, s1, sp
                  srliw        t0, s3, 22
                  mul          s7, t6, a2
                  sll          t5, a7, a3
                  srai         s9, a4, 13
                  and          a5, s5, a0
                  xor          s7, t2, t1
                  remuw        s3, sp, t0
                  divu         tp, t6, s5
                  srl          zero, s9, t2
                  subw         s1, s9, a5
                  sraiw        t1, s3, 12
                  mulhu        a3, s5, ra
                  mulh         tp, s5, sp
                  srlw         s1, s1, s1
                  slti         s6, s9, -636
                  or           a5, s8, a7
                  addi         a1, a0, 2028
                  remu         a1, s1, a2
                  and          t0, a6, sp
                  or           s7, s7, t0
                  sra          a3, t1, s1
                  and          t5, s11, s11
                  auipc        s4, 548179
                  mulh         t0, t4, s5
                  mulw         s1, ra, t2
                  divw         s8, s7, a2
                  slliw        s0, s7, 27
                  sraw         s7, ra, s4
                  rem          s7, s5, s9
                  nop
                  remw         t5, s10, a4
                  srai         s9, t4, 61
                  addw         t4, s0, ra
                  addi         t5, s9, -1824
                  srli         sp, t6, 2
                  nop
                  remuw        s7, t0, a1
                  sll          a5, a5, s7
                  slti         t2, a5, 1003
                  lui          tp, 778460
                  and          tp, t6, t2
                  xori         a3, sp, 720
                  mulh         a2, a0, t5
                  nop
                  divw         t2, t1, a3
                  remuw        a2, ra, ra
                  mul          a5, s1, t5
                  nop
                  sraiw        s7, t4, 12
                  remw         zero, s6, a1
                  remuw        tp, s7, gp
                  sraiw        s7, s0, 26
                  mulw         s3, t0, s5
                  add          t4, a0, s5
                  add          a6, s5, a1
                  subw         s11, gp, a2
                  ori          t0, zero, -232
                  mulhu        a1, s4, t3
                  slti         s11, s4, -2008
                  divuw        t1, a5, t6
                  addiw        zero, s7, 368
                  divu         s8, ra, s7
                  ori          s4, s1, -386
                  slli         s10, s6, 50
                  mulhsu       s9, s9, a0
                  sltu         a6, s6, s11
                  mulw         s0, s2, zero
                  srliw        s0, s10, 20
                  addiw        a6, s11, 1898
                  mul          s8, s6, s11
                  sll          ra, a6, sp
                  srli         s2, ra, 17
                  mulhsu       s9, a7, a4
                  ori          s4, t5, 909
                  sltiu        t5, s5, 1067
                  add          s0, t4, s6
                  mulw         a3, s11, zero
                  sllw         a1, s1, s9
                  remuw        s9, s5, a0
                  addi         a0, a7, -499
                  srai         s2, t2, 23
                  sra          s11, t1, a6
                  slliw        t4, sp, 3
                  sltu         t2, tp, a2
                  mulh         s1, s4, ra
                  or           a3, s5, s3
                  mulhsu       s10, s5, t5
                  nop
                  sraw         a2, t5, a1
                  andi         ra, tp, 1713
                  subw         s0, sp, s10
                  slti         s3, t2, -194
                  mulw         ra, sp, a4
                  xor          zero, s1, ra
                  divu         sp, s2, s6
                  mulw         a5, s0, tp
                  srliw        a5, a5, 31
                  mulhsu       s1, s6, a4
                  xori         a0, a2, -1961
                  divuw        a0, t5, a0
                  divw         s1, s0, a2
                  slliw        a0, s8, 25
                  srliw        tp, s9, 26
                  subw         t3, s10, t6
                  remu         tp, s3, a4
                  addiw        s4, s8, -792
                  xor          s2, s6, s3
                  sub          a2, t6, t5
                  lui          a3, 752242
                  mulhu        a7, ra, s1
                  addw         s11, a0, a4
                  mulhsu       s10, zero, s3
                  lui          a1, 947368
                  and          a2, t0, sp
                  auipc        a5, 191982
                  srl          a5, s6, t5
                  add          t1, t4, s0
                  remw         ra, s7, s6
                  sub          a7, sp, ra
                  slliw        s0, s5, 26
                  rem          t5, sp, t3
                  remw         a7, t4, a6
                  srliw        s4, a2, 19
                  sltu         a7, ra, a3
                  mulh         sp, s5, a0
                  srliw        sp, s1, 5
                  xor          a1, t5, t1
                  mulw         a7, s0, s6
                  sllw         t1, s0, s4
                  sltu         s0, s4, s4
                  srliw        a1, tp, 17
                  ori          t2, s11, 1608
                  addw         tp, s8, s1
                  or           sp, s5, t3
                  srl          s0, s11, s8
                  mulhsu       t0, s4, s11
                  srli         tp, s7, 27
                  sra          s1, s11, s0
                  div          s0, s4, s2
                  subw         a5, a2, gp
                  subw         s0, sp, t0
                  srli         s4, s2, 56
                  slt          t5, s4, t2
                  srliw        s3, s11, 18
                  addiw        a2, ra, -1862
                  slli         a2, s4, 35
                  ori          sp, t0, -625
                  srlw         s11, s3, s8
                  ori          s7, t0, -1136
                  addi         a2, t5, -516
                  mulw         s11, s6, a5
                  ori          s11, s3, -1541
                  sraiw        s11, s2, 2
                  remw         a3, s10, gp
                  subw         s6, t5, gp
                  srai         s2, t0, 55
                  addw         zero, s10, s2
                  lui          s1, 888970
                  srli         a0, s3, 49
                  mul          a5, a4, s10
                  mul          a0, a7, sp
                  slt          a6, t2, t1
                  slti         s1, s11, 441
                  div          zero, a4, s4
                  sraiw        ra, a2, 14
                  remuw        s8, a6, a1
                  rem          s7, s0, a1
                  sllw         s10, sp, t2
                  rem          a0, sp, s9
                  lui          gp, 327437
                  lui          t0, 316590
                  sll          ra, s9, a5
                  sub          s10, a4, a2
                  addi         t4, t3, 1859
                  sra          sp, s5, a0
                  auipc        s9, 225245
                  divuw        a3, s2, a4
                  addiw        s9, a6, -1143
                  or           s1, s4, zero
                  or           s10, s4, t1
                  srai         s0, s5, 36
                  or           gp, a7, t6
                  divu         a2, sp, a6
                  srliw        s0, a5, 10
                  remw         gp, s6, a0
                  sraiw        s10, s5, 12
                  sllw         t1, a4, s10
                  remu         t5, t2, s0
                  slliw        s2, t4, 30
                  xor          a1, t1, t0
                  xori         ra, s9, -824
                  sltiu        zero, a6, -1679
                  sra          s4, gp, s7
                  slt          s0, zero, t1
                  or           zero, s11, a6
                  add          s8, a1, t1
                  ori          s4, a2, -66
                  srai         s11, s8, 18
                  slliw        s7, s2, 20
                  slliw        a2, a0, 31
                  sltiu        s11, t2, -956
                  sra          a3, a4, a1
                  addw         t0, t2, t2
                  srlw         tp, s7, sp
                  remuw        a5, t5, a3
                  andi         t5, s5, 899
                  auipc        a0, 329202
                  auipc        a1, 572126
                  slti         t2, s1, 1927
                  mul          ra, gp, a7
                  nop
                  sraw         s4, t6, a7
                  sltu         a0, a2, s4
                  subw         tp, a4, t4
                  mulh         a6, a2, a1
                  srliw        t4, s1, 5
                  mulhu        a7, gp, gp
                  srlw         a3, gp, s9
                  nop
                  add          t2, gp, s1
                  divuw        tp, s5, t6
                  rem          s8, a7, a4
                  sra          t5, a1, s8
                  divuw        s1, t6, a0
                  sra          sp, t1, t2
                  subw         s9, a5, s8
                  mul          a0, t4, s11
                  xori         a0, t2, 514
                  sra          s7, sp, t0
                  slti         t1, t3, 631
                  lui          ra, 472678
                  nop
                  slti         gp, s5, -1569
                  sraw         a0, zero, s4
                  mulh         ra, zero, ra
                  nop
                  divu         a7, s3, zero
                  andi         gp, t0, -1363
                  slli         a0, s6, 48
                  srliw        a2, s0, 21
                  ori          s6, t1, -1922
                  addw         t0, t5, s2
                  ori          s7, s5, -1248
                  mulhu        a1, a2, t3
                  add          t0, a3, t6
                  or           s11, a7, s6
                  mulhsu       s8, t1, zero
                  addiw        s3, s2, 1629
                  sra          s4, a5, t3
                  div          t2, a4, a3
                  sraiw        t5, s4, 0
                  mulhsu       a2, a1, a7
                  mul          s3, s2, t6
                  and          s9, s7, a2
                  mulhu        t4, s11, t6
                  divu         zero, s8, s2
                  remuw        s7, a3, s5
                  sraw         a5, t6, a0
                  remu         t2, a3, t1
                  slli         ra, a4, 2
                  mulh         a3, a7, t3
                  remu         s8, s1, s6
                  sraw         t1, s4, gp
                  sllw         t4, s3, s9
                  srliw        t4, a1, 20
                  sltu         s9, t3, s1
                  sraiw        a0, ra, 16
                  srli         s2, s1, 22
                  slti         s7, s4, -2036
                  remu         a5, t2, s4
                  srai         a7, s8, 22
                  mulh         gp, s7, s0
                  sll          s0, s4, a1
                  nop
                  sllw         a2, s4, a2
                  mul          a5, zero, a1
                  div          s8, a2, t6
                  div          a7, ra, a6
                  remu         s6, a3, s10
                  ori          t4, s0, 146
                  srli         a3, a1, 40
                  sub          t4, s3, a4
                  remw         sp, s8, s11
                  auipc        s0, 154644
                  xor          tp, s11, gp
                  addi         s10, a3, -1201
                  remu         s9, s3, t6
                  srliw        a0, t1, 0
                  remu         s10, s10, s4
                  divu         a1, s11, s2
                  slli         zero, s8, 1
                  srli         a0, s3, 19
                  andi         a3, a5, -720
                  ori          sp, t1, -694
                  lui          t4, 568004
                  xori         a5, t3, 367
                  mul          s4, t0, s2
                  sraiw        t4, s4, 19
                  xori         t1, t4, 1614
                  sltiu        s3, s3, -164
                  slliw        gp, sp, 23
                  sraw         s3, a5, t5
                  mulw         s9, zero, s11
                  srliw        s4, t6, 11
                  slli         s7, t3, 17
                  add          s10, s7, s7
                  auipc        sp, 869995
                  addiw        a7, s7, 630
                  divuw        s0, a0, a2
                  add          a2, t4, a6
                  mulw         zero, s1, s11
                  mulh         t5, t4, t3
                  divuw        s2, s5, s9
                  xor          s10, t5, s10
                  sltu         t2, a1, s6
                  div          s8, s7, s6
                  divw         s3, s8, gp
                  srlw         s4, ra, s3
                  remu         a2, ra, s1
                  divw         s4, s9, s0
                  sll          s4, tp, s8
                  or           s10, s4, a3
                  slti         a6, s11, 695
                  remw         gp, a3, t3
                  slli         gp, s8, 3
                  xori         a5, t4, 219
                  addi         tp, t0, 87
                  mulhsu       t0, a3, s6
                  sub          t0, t2, s8
                  rem          a2, t2, s11
                  sllw         zero, sp, sp
                  srliw        a3, a0, 20
                  addw         s6, s9, s7
                  slt          t4, s7, s0
                  srlw         s0, t0, t4
                  sltu         a3, a3, a7
                  addi         a5, s10, -1170
                  remw         t3, gp, a7
                  add          a0, a6, zero
                  andi         t0, tp, 670
                  mulw         a3, t3, ra
                  remu         gp, t2, a7
                  srlw         tp, t1, a6
                  addiw        sp, t3, -1428
                  mul          sp, zero, s11
                  divuw        t5, s4, s0
                  sub          gp, s10, s1
                  srl          s9, t2, ra
                  rem          s11, zero, t5
                  slt          a5, s4, s0
                  and          ra, t2, zero
                  remu         t1, t4, tp
                  and          s7, t3, s7
                  addw         s11, t6, a4
                  slliw        a5, s10, 16
                  divu         a3, a4, s11
                  div          a3, s4, t5
                  srl          s10, t4, t1
                  auipc        s4, 667704
                  mulw         a0, s5, a5
                  divuw        t4, s7, t4
                  add          t5, gp, a0
                  div          a2, s11, t1
                  srl          t5, a5, tp
                  mul          gp, t6, sp
                  addiw        a5, gp, -1133
                  andi         s10, s9, 870
                  srl          a2, sp, a6
                  auipc        s11, 812612
                  divuw        a2, gp, s0
                  sraw         t3, a5, s5
                  slli         s9, s3, 7
                  srli         a5, a0, 13
                  addiw        s3, s5, -1569
                  srai         gp, a5, 34
                  addw         a7, s3, t1
                  addw         t3, a3, s1
                  slliw        sp, t4, 15
                  sllw         a0, s6, s2
                  lui          a6, 431886
                  andi         s11, s6, 1130
                  addiw        s7, t0, -914
                  mul          s8, a6, gp
                  sllw         gp, s0, zero
                  sraw         tp, a4, a7
                  remw         sp, t2, a1
                  sraiw        s2, t3, 17
                  srli         s4, t1, 1
                  rem          s11, s10, s3
                  xori         a2, a7, 1506
                  slti         sp, a0, 1956
                  rem          s4, s0, s5
                  slt          a2, ra, s1
                  divu         s4, a4, s2
                  or           t1, s2, a7
                  mul          s11, a5, a0
                  sraiw        t5, s1, 5
                  mulhsu       ra, s8, t3
                  divuw        a0, s0, t1
                  srliw        s11, tp, 28
                  mulw         a7, zero, s3
                  addw         t1, s4, sp
                  divu         zero, ra, a3
                  addi         t4, ra, 1885
                  lui          t1, 1022296
                  subw         t4, ra, a2
                  mulhsu       a1, s9, gp
                  remuw        s3, t5, a6
                  slli         a6, t3, 62
                  nop
                  sltu         a0, s5, a6
                  remw         zero, s6, s10
                  addw         s9, s1, s3
                  divw         t5, s6, a0
                  addi         a0, t4, -1661
                  lui          t4, 894663
                  and          t0, s7, t4
                  div          gp, a5, a3
                  srl          s8, t3, a7
                  add          s4, s1, a7
                  srl          s2, a7, a0
                  sraw         sp, t3, s1
                  xori         s9, s0, -979
                  xori         t5, s4, 1215
                  and          t5, a4, a0
                  subw         tp, t3, t3
                  rem          s9, a4, a4
                  srai         a3, s3, 12
                  srlw         a2, tp, t5
                  srli         a5, sp, 30
                  add          s0, a2, t2
                  div          a0, a3, tp
                  mulh         t4, t2, s0
                  divu         s6, s3, s4
                  addi         a5, a5, 560
                  divuw        s4, s10, a0
                  mul          t5, s0, s6
                  sra          t0, t3, t3
                  subw         a3, gp, s5
                  ori          s0, s9, 1752
                  divw         s11, zero, s10
                  srl          s7, ra, s6
                  lui          s3, 895498
                  srl          a1, s2, a2
                  and          a6, a3, ra
                  subw         s0, a7, s4
                  slliw        ra, s11, 30
                  sll          ra, ra, s0
                  slt          s3, s6, s9
                  srliw        s3, s6, 31
                  rem          s11, s11, a3
                  div          t1, zero, a6
                  and          a1, t2, t4
                  mul          s2, t6, a3
                  sub          s3, s3, s0
                  xori         t0, s9, -571
                  sra          s6, t0, a5
                  auipc        a0, 550623
                  sltu         s4, t5, a1
                  auipc        a2, 469490
                  srai         t2, t6, 41
                  srlw         t0, s9, s1
                  and          s1, sp, a7
                  slti         a5, tp, -1367
                  mulhu        s4, a0, s3
                  andi         a1, zero, -1772
                  sub          s3, s7, a2
                  rem          s0, s8, s7
                  lui          s2, 130199
                  divw         a3, s11, tp
                  srai         s10, a5, 9
                  auipc        s4, 964901
                  sltiu        a7, t3, -1834
                  remuw        s11, a1, s5
                  ori          s7, t4, -188
                  addw         t3, t5, s9
                  srl          s11, t1, s2
                  slliw        t5, s3, 24
                  andi         gp, s2, -1721
                  nop
                  slliw        zero, a2, 11
                  ori          a3, t0, 715
                  xor          t5, t0, tp
                  lui          a6, 689794
                  addi         gp, a5, -1950
                  divu         s0, s2, s5
                  slt          a3, s10, sp
                  sll          s7, t2, s2
                  sllw         s8, a1, s6
                  srliw        a0, a6, 16
                  divuw        a0, a0, s1
                  remuw        s0, a3, s3
                  lui          t2, 826239
                  subw         a7, sp, t4
                  divw         a0, a6, ra
                  subw         s8, a2, t6
                  sltiu        a5, a2, 1448
                  remu         t5, a7, t0
                  slt          s8, s10, ra
                  rem          s9, s10, a0
                  mulh         t0, s1, s2
                  mulhu        s4, gp, s3
                  add          tp, a7, s9
                  div          s0, s10, a1
                  addi         s4, sp, 1020
                  srlw         s0, a7, t3
                  add          s7, a6, a4
                  srai         s8, a3, 49
                  mul          s10, t6, s8
                  remuw        s7, t2, t6
                  divuw        a2, s3, s11
                  remw         s0, s9, a2
                  mulw         t3, t6, s9
                  remuw        t0, a4, s5
                  xor          s7, zero, s2
                  sraw         ra, s3, a6
                  mulw         s1, a5, a3
                  auipc        t0, 993536
                  subw         s9, a2, s4
                  srlw         t0, a7, s9
                  xori         t3, s10, -444
                  slli         t1, tp, 16
                  sra          t3, a1, a5
                  sll          a3, a1, s9
                  xor          ra, a0, a7
                  srlw         t0, s2, t0
                  sraw         a7, a6, s7
                  slti         a6, s8, -2008
                  mul          s0, s7, sp
                  sltiu        s2, s9, -766
                  srl          s8, s8, tp
                  xor          s3, a6, ra
                  slliw        t2, zero, 16
                  mul          a0, a6, t2
                  div          t2, a6, s9
                  xori         s1, t4, -1704
                  sll          a2, a1, t2
                  mul          s7, a1, t5
                  andi         a7, a4, -1171
                  xori         gp, sp, 1246
                  slliw        s4, s8, 6
                  sllw         s0, a3, t3
                  sraiw        s2, s7, 14
                  ori          a5, t0, 496
                  sltu         s9, a1, s2
                  auipc        s7, 576885
                  srl          s11, ra, a2
                  xor          s11, s2, s0
                  mulw         gp, s0, a6
                  or           gp, a6, a7
                  ori          s3, t2, 1749
                  sltiu        a6, gp, 739
                  nop
                  slliw        ra, t3, 17
                  sraiw        s4, t3, 21
                  mulw         s3, a6, t0
                  sltiu        s7, a5, 2037
                  sllw         t5, a1, a6
                  xor          s1, t6, tp
                  xor          t2, t6, t4
                  sll          a7, s5, ra
                  sraiw        zero, s6, 31
                  addi         a0, tp, -1256
                  mulhu        t2, zero, t4
                  mulh         s6, gp, s11
                  mulhu        s10, ra, a4
                  srlw         a7, s2, a5
                  div          gp, t1, s1
                  divu         tp, s9, s4
                  remuw        a7, t3, t0
                  sraw         s10, s10, t3
                  slt          s9, s5, s2
                  xori         t3, s6, 697
                  mulhu        t5, gp, s0
                  div          s2, tp, a4
                  lui          t5, 1008294
                  mulh         t2, s6, a6
                  lui          a7, 347326
                  remuw        gp, s8, a6
                  srlw         ra, s4, sp
                  slt          a5, s4, a2
                  ori          s3, tp, 558
                  slt          t2, t3, s11
                  ori          a1, a1, 435
                  divw         a2, t3, s4
                  rem          t3, a1, t3
                  divuw        t5, t1, a6
                  subw         a5, zero, s9
                  and          t5, s5, t3
                  srliw        a6, a4, 31
                  ori          a6, s3, 22
                  remu         s10, a5, ra
                  divu         a3, t5, s11
                  ori          a5, a5, -1576
                  ori          gp, s8, 1266
                  addi         s11, a0, -210
                  srl          tp, t0, sp
                  sllw         a3, s8, sp
                  sra          tp, s9, s5
                  srliw        a5, s0, 23
                  slli         a2, zero, 0
                  sra          a3, t5, sp
                  ori          s6, s8, -507
                  slt          a3, s9, t6
                  sll          s7, s3, zero
                  sraiw        s4, a3, 28
                  slti         sp, s2, -753
                  sra          a5, a0, a1
                  divu         t0, a0, a2
                  mulh         a0, a5, s8
                  add          a2, tp, t6
                  nop
                  srl          s0, a6, s4
                  srli         s1, t3, 29
                  slli         a3, t0, 62
                  mulw         a5, t0, t5
                  slli         s8, s5, 60
                  slti         t0, t6, 1493
                  mul          a2, t4, gp
                  srlw         s6, s11, ra
                  sub          a0, t3, s7
                  mulhu        s7, t3, s6
                  slti         s4, t0, 548
                  divuw        a2, a0, t2
                  and          t1, tp, a6
                  mulhsu       tp, a2, s4
                  addi         t2, t0, -1548
                  slt          s4, a5, s5
                  remu         s0, s1, zero
                  divu         t3, a7, a7
                  remu         a6, a2, s1
                  srlw         a7, gp, tp
                  xori         s9, s10, -1729
                  mulhu        s2, sp, s8
                  remuw        s4, a2, gp
                  mul          ra, zero, tp
                  srli         zero, t5, 15
                  slti         s2, s5, 1432
                  sra          t3, s3, tp
                  and          t0, a4, t5
                  sub          s10, s10, s8
                  subw         s7, t3, t4
                  mul          a1, tp, t0
                  srl          a0, s8, s4
                  srl          t3, s7, a4
                  sltu         ra, s7, a1
                  rem          s10, tp, s6
                  srai         s11, tp, 14
                  sll          t0, a1, t3
                  remu         t4, s3, a5
                  remu         s6, a2, zero
                  srl          s9, s6, a2
                  sllw         a1, s5, t2
                  mulhu        gp, s4, t1
                  addi         s4, a3, 1010
                  slliw        a0, s5, 5
                  addw         a6, a4, tp
                  slt          t1, s4, a3
                  sraw         s4, t5, a2
                  xor          sp, s8, t0
                  slliw        tp, sp, 24
                  xori         s6, t0, -794
                  and          s6, sp, a0
                  sraw         t5, a6, ra
                  sra          t5, s9, t2
                  srliw        s1, t6, 22
                  sraw         s7, a4, s8
                  sraw         zero, gp, a4
                  or           s9, tp, s4
                  sllw         a1, s11, s6
                  sllw         s0, s10, s11
                  addw         s2, zero, s8
                  remu         s10, s1, t3
                  nop
                  andi         s10, a4, -1088
                  slti         t2, t1, -491
                  andi         a0, s4, 1660
                  mulhsu       t0, t4, ra
                  srai         s2, a4, 55
                  slli         t0, sp, 54
                  add          a6, s7, s10
                  divu         gp, s10, s1
                  lui          s1, 731756
                  addiw        s1, a1, 842
                  div          zero, t2, s5
                  nop
                  rem          t1, s10, t6
                  remuw        s1, s3, s3
                  slliw        a6, s6, 31
                  lui          ra, 824806
                  divw         a3, t6, a0
                  sraiw        a3, s1, 13
                  addw         t5, s4, s11
                  xori         a2, t1, 1598
                  sraw         s3, t0, a6
                  xor          s9, s4, a1
                  lui          a6, 761439
                  auipc        t3, 699530
                  sltu         sp, s4, t3
                  addw         s6, a6, a5
                  srai         s9, s7, 54
                  div          a5, a1, s9
                  mulw         t4, t6, a1
                  lui          t4, 464733
                  srliw        s2, s8, 7
                  remw         s8, t1, s8
                  sra          a2, a1, tp
                  sraw         t2, s11, a4
                  ori          t5, s7, 493
                  addiw        t5, s2, 1879
                  or           s1, a4, s0
                  addi         t3, tp, 31
                  auipc        ra, 22908
                  mulhu        t3, s3, s10
                  xori         s3, s1, -1935
                  remw         a1, t3, t6
                  mulw         a0, a6, t2
                  add          a1, s9, tp
                  mul          a0, ra, tp
                  div          s7, a0, tp
                  divuw        a0, s7, a6
                  mulw         s7, s3, s6
                  slli         s3, a0, 8
                  srli         a1, t5, 46
                  srai         s2, s7, 35
                  remuw        ra, a1, gp
                  remw         t0, a3, s7
                  mulw         a0, s6, tp
                  div          zero, a2, s9
                  divw         a1, sp, a7
                  mulhsu       zero, a7, t1
                  sub          gp, zero, t3
                  sraw         t2, a7, s5
                  slliw        s6, t6, 31
                  srl          s6, s0, sp
                  addw         t3, zero, tp
                  addiw        s3, gp, 236
                  srl          a7, s8, t2
                  div          a0, t3, zero
                  sraw         t2, a2, a6
                  nop
                  mul          t0, t1, t0
                  srliw        tp, a5, 4
                  slti         gp, t3, 1338
                  mulh         zero, a5, a7
                  xori         s1, s1, -835
                  mulhsu       a6, a0, s8
                  slti         t4, s6, -362
                  slli         t1, gp, 10
                  mulhu        a0, t2, t3
                  srliw        a5, a4, 12
                  auipc        a5, 850124
                  addi         s1, a2, -126
                  sraw         s1, a4, a1
                  divuw        a5, s8, sp
                  slliw        t5, a1, 9
                  divu         s3, s3, t0
                  slliw        a2, ra, 16
                  slt          s7, a7, t3
                  srlw         tp, s4, s4
                  srli         t4, a3, 16
                  mulw         a6, s0, s2
                  addi         a6, a6, 1303
                  slli         a5, s7, 4
                  mul          gp, s2, s4
                  mulhsu       s1, sp, t0
                  andi         a1, t2, 214
                  and          s11, ra, s3
                  srlw         s4, t3, zero
                  addi         s2, s2, 663
                  addiw        s2, a2, 1464
                  and          s0, t1, a5
                  divuw        sp, s9, a6
                  divw         a7, s7, sp
                  slli         gp, zero, 30
                  addw         s7, s8, s7
                  srlw         a3, s6, t1
                  mulh         s8, s0, ra
                  andi         t5, s9, 1563
                  remw         s11, a0, s4
                  rem          t1, s10, t2
                  subw         a5, s1, a0
                  add          zero, a1, s9
                  sub          t4, tp, s5
                  remuw        a7, t2, a1
                  addw         s4, a5, a0
                  sub          zero, s3, t6
                  sllw         a2, t1, s8
                  addi         a6, t2, 325
                  sraiw        s0, zero, 8
                  and          s6, a0, s9
                  mulh         s0, s8, t6
                  srai         s0, a1, 29
                  addi         a3, t3, -1611
                  nop
                  subw         zero, s6, s2
                  addiw        a2, zero, 68
                  divuw        a2, s5, t5
                  auipc        s6, 886060
                  srai         a2, s6, 8
                  lui          t0, 802415
                  sllw         s11, a6, s11
                  sra          t5, sp, s3
                  sltiu        a6, t2, -852
                  auipc        t4, 8203
                  xor          a0, a2, s1
                  lui          a5, 156369
                  xori         t4, s0, -377
                  sra          t4, s8, ra
                  srliw        a2, gp, 31
                  mulh         s7, t0, s5
                  mulhu        a5, a2, t5
                  sraw         t5, ra, tp
                  sra          a3, t2, t6
                  sltiu        tp, a7, -1324
                  divu         t1, gp, t1
                  subw         tp, a7, s0
                  subw         a3, t4, s8
                  remu         s4, s2, tp
                  mulw         t2, a3, a5
                  add          t5, a3, zero
                  auipc        t3, 73510
                  sll          t4, ra, s9
                  srai         s6, a2, 20
                  subw         a2, s3, a6
                  mulw         s6, s9, s10
                  remu         t0, sp, s2
                  srai         a2, t6, 14
                  div          sp, s11, s2
                  xor          tp, a6, s7
                  mul          t0, t5, zero
                  srai         s11, a6, 57
                  andi         t2, a3, -910
                  xori         a1, gp, -132
                  addw         a3, t1, t5
                  sltiu        tp, t1, -59
                  sltiu        s6, a6, -180
                  srli         s11, t0, 6
                  ori          s9, zero, 754
                  srl          s0, s10, zero
                  rem          t4, a3, a3
                  addi         s9, t5, 1842
                  srli         tp, t5, 26
                  srliw        t4, s8, 27
                  nop
                  sub          zero, gp, t0
                  sllw         s2, a1, sp
                  srliw        t2, s5, 19
                  sltu         t5, s3, a0
                  sra          s1, ra, a4
                  add          sp, t6, zero
                  divu         a1, sp, t2
                  sllw         s10, t4, a6
                  add          ra, zero, a2
                  slti         s1, a0, 1380
                  xor          s6, a0, ra
                  add          s10, a2, zero
                  or           a1, zero, s0
                  or           t5, a0, s9
                  mulw         s3, s11, a3
                  mulh         zero, s8, s6
                  srl          a1, t0, s0
                  sub          gp, s3, s11
                  lui          s6, 500643
                  add          s0, a0, zero
                  sraiw        t2, t5, 11
                  srliw        s2, sp, 14
                  sraw         t1, t0, a6
                  addw         t4, a4, ra
                  div          sp, sp, t0
                  slliw        sp, t4, 2
                  ori          ra, a5, 1042
                  sltiu        t2, s11, -1564
                  slt          t0, s4, s0
                  nop
                  andi         s7, s8, -1444
                  mulhsu       t0, ra, a0
                  addi         t4, s6, -1256
                  andi         t3, sp, 1486
                  sllw         s9, a1, s7
                  mul          t1, t3, a1
                  and          gp, a7, s8
                  addi         s0, gp, -969
                  slli         s0, s3, 13
                  auipc        s10, 767651
                  remw         s2, t6, s10
                  subw         s0, t1, a4
                  addiw        zero, a3, 2011
                  sltu         a2, s2, sp
                  lui          s7, 668756
                  nop
                  mulh         t5, t6, gp
                  nop
                  nop
                  subw         t5, s6, s5
                  addiw        t0, t5, -1063
                  xor          tp, s5, s3
                  andi         zero, a2, 1755
                  mulw         t1, s8, s10
                  srai         a5, s8, 7
                  addw         s0, s8, s5
                  srli         s0, a3, 54
                  xor          t5, s3, s1
                  srli         t5, s6, 25
                  remuw        a5, t4, s6
                  xori         a7, s5, -1452
                  mulhsu       a5, zero, ra
                  and          t2, t4, a2
                  srliw        s3, s10, 15
                  divuw        a1, a5, s5
                  ori          t3, t1, -1052
                  srl          a5, a5, a2
                  mulhsu       a6, s8, tp
                  srlw         s4, a2, t4
                  subw         tp, a0, tp
                  andi         s10, a3, 1492
                  addiw        a5, a3, -1176
                  sltiu        a7, t2, 1806
                  addw         s7, t2, ra
                  remu         a3, s3, a3
                  xori         zero, gp, -1811
                  mulw         a6, s1, s11
                  sub          s11, t1, tp
                  and          gp, t0, a5
                  mulh         s7, a1, s10
                  divw         t0, t4, t0
                  div          s0, a4, a2
                  ori          s8, a1, -2014
                  xori         s2, a0, -417
                  sllw         s4, t5, t6
                  or           s1, s10, a4
                  lui          zero, 47148
                  divw         a0, a4, s8
                  xor          s2, t3, s9
                  sllw         ra, s2, s2
                  sltu         zero, s9, ra
                  sraiw        a7, s7, 27
                  sraiw        s1, s2, 4
                  lui          t4, 345002
                  sll          t1, t5, a3
                  mulhu        s3, a1, gp
                  slt          s6, a7, t4
                  div          a6, gp, s2
                  or           t1, gp, a6
                  sll          zero, ra, tp
                  rem          s10, a4, s11
                  rem          a1, s11, s11
                  mulw         a3, t1, s8
                  auipc        s1, 889184
                  nop
                  and          t3, t4, s0
                  sub          s3, a1, a4
                  slti         s11, sp, -744
                  addi         a7, s7, 1627
                  slliw        t1, s6, 7
                  divu         sp, zero, s10
                  sltiu        s1, tp, -388
                  divw         gp, s7, s9
                  sltiu        s4, a3, -484
                  divw         s0, s0, t2
                  srai         s2, a3, 0
                  srli         ra, s8, 31
                  nop
                  remw         tp, s10, ra
                  or           s4, t4, a0
                  divu         s2, a5, t6
                  mulhsu       s1, s5, a7
                  or           a6, s7, s3
                  ori          sp, s6, -1388
                  srlw         s0, sp, s9
                  slt          zero, t4, s10
                  sub          s0, t3, a7
                  divw         zero, t0, s2
                  xori         a2, s4, -1833
                  remw         gp, zero, t4
                  srl          a6, a1, s6
                  addiw        t4, t3, -1317
                  add          s0, tp, s8
                  srliw        a5, t2, 22
                  addiw        a1, s9, 1996
                  mulw         s1, gp, t6
                  divu         s2, a1, t3
                  sra          a5, s11, a2
                  slliw        t3, a0, 5
                  mulhsu       s7, t6, s9
                  mulw         s6, t0, s1
                  slliw        a7, a7, 21
                  auipc        s10, 646617
                  mulh         a5, s1, a3
                  srl          t0, s1, t1
                  addiw        s2, s5, 522
                  addw         s8, a1, s1
                  sra          s2, sp, a7
                  sraiw        s10, a4, 29
                  sraiw        s1, s10, 12
                  xori         a1, s3, 772
                  remw         s11, s0, t6
                  srl          t1, s7, a2
                  remuw        a2, t4, s9
                  slli         tp, a5, 63
                  slti         t4, s1, 1587
                  divuw        ra, s9, t6
                  xori         s10, t5, -1252
                  sra          a2, a7, s8
                  srli         s11, s10, 2
                  remu         t3, s4, a0
                  mul          t5, a4, t2
                  or           a2, s5, s3
                  lui          t0, 618330
                  addi         s0, t5, 1148
                  remw         s2, a0, a3
                  sub          a7, s9, a7
                  slt          t3, t5, s7
                  nop
                  slliw        s2, a1, 31
                  slt          a5, a4, gp
                  rem          a3, s6, t4
                  sllw         a5, t0, s1
                  slt          a6, s8, tp
                  nop
                  addw         s11, t2, s0
                  subw         s1, a5, a0
                  xor          s7, s1, a0
                  auipc        s4, 221045
                  and          t0, s1, s0
                  remuw        t2, s7, s7
                  sltiu        t1, a6, -1067
                  slt          a7, s8, gp
                  slti         s7, gp, 1900
                  sll          t2, a5, t1
                  xori         s9, t5, -1830
                  addiw        ra, s4, 1979
                  xor          zero, t6, s7
                  ori          s11, s10, -174
                  srl          s3, s8, t0
                  and          zero, s2, s5
                  addi         s2, a0, 110
                  addw         t4, s11, t6
                  slliw        t4, t0, 2
                  xor          s6, a4, s0
                  sraiw        s9, t5, 6
                  nop
                  andi         t1, a2, 1517
                  remu         s7, s3, t5
                  sub          s8, a7, a0
                  nop
                  mulw         a7, s7, s11
                  and          gp, a5, t3
                  sraw         gp, s1, a4
                  remw         t4, sp, a6
                  srlw         ra, a1, t0
                  auipc        a5, 168436
                  or           a3, s11, t2
                  sraiw        sp, s4, 11
                  addw         s11, s11, a5
                  sltu         a0, a0, s8
                  addw         t5, s9, t2
                  ori          s11, a6, -904
                  and          s0, s5, s9
                  add          t4, s10, t6
                  auipc        s0, 288178
                  lui          s7, 154980
                  rem          t5, a4, a2
                  sub          s7, zero, t0
                  sltiu        s6, t0, -551
                  andi         t5, s0, -430
                  sub          a3, a7, a4
                  divw         sp, s8, t6
                  mulhsu       a5, t3, zero
                  div          s2, a3, s9
                  addiw        s3, t2, 1029
                  sraw         t5, sp, a5
                  auipc        a5, 751764
                  mulw         a3, zero, zero
                  or           s1, a0, s2
                  sll          t5, s11, a6
                  divuw        a3, gp, a5
                  add          t4, s3, t0
                  sltiu        a3, a7, 1318
                  srl          s10, s5, s11
                  divuw        s4, s0, s5
                  slliw        s2, sp, 4
                  subw         ra, s4, s0
                  andi         s2, s4, 397
                  sra          t0, t1, s5
                  or           s11, t3, s3
                  sra          s9, t4, ra
                  sltu         a7, s9, s10
                  rem          t3, a2, s8
                  and          s3, s4, a1
                  and          tp, s10, s4
                  xor          t0, a2, tp
                  sraiw        s3, s0, 14
                  srli         a6, a5, 59
                  divw         t5, s5, t4
                  mul          s11, a5, s5
                  mulhu        gp, a2, t2
                  mul          s10, t2, tp
                  sraiw        s2, a3, 30
                  mulhsu       s1, a7, t2
                  rem          s1, gp, s1
                  srliw        s0, s0, 18
                  lui          s7, 407595
                  ori          a6, a5, 1441
                  slli         a2, s9, 14
                  sraiw        s6, s4, 17
                  xori         tp, t1, 1875
                  mulhu        zero, s8, ra
                  lui          s6, 470332
                  rem          tp, s4, a6
                  mulhsu       s6, a4, t5
                  ori          sp, t3, 447
                  subw         t1, t1, gp
                  mulh         ra, s8, ra
                  nop
                  sll          s1, s1, a4
                  sltu         s9, s11, t0
                  srlw         a7, t2, s7
                  srl          a7, t4, s6
                  sra          zero, a3, a0
                  remuw        s0, s8, a0
                  div          s2, s11, a1
                  mulh         s8, t3, gp
                  sllw         s7, s0, s0
                  addiw        a1, s7, -1226
                  srai         s3, a2, 44
                  div          t5, s3, t0
                  auipc        a3, 591910
                  xori         s11, ra, 1247
                  srli         t3, t1, 27
                  srlw         tp, s10, zero
                  sltiu        t2, t5, -1050
                  sltu         t4, gp, s10
                  andi         s7, gp, 1504
                  sub          tp, t1, s8
                  andi         a1, s11, 843
                  slliw        a3, t5, 28
                  div          s11, t3, s10
                  sll          t1, t2, tp
                  sraiw        a3, a6, 2
                  div          s2, s7, t6
                  remw         t4, tp, s1
                  nop
                  sllw         a5, s0, t3
                  remw         s4, s0, t3
                  sll          s7, t1, a3
                  slliw        ra, a7, 27
                  mulh         s8, a6, s8
                  sllw         a5, t4, s11
                  remw         a2, s3, s1
                  sra          s2, s3, a2
                  addiw        s9, tp, 603
                  slli         s2, s11, 2
                  mul          t0, s9, s8
                  mulw         s1, s7, t1
                  sltu         t3, ra, s6
                  addw         s2, gp, s7
                  div          t1, t2, a6
                  remu         zero, s6, s3
                  rem          gp, a6, t2
                  sra          s11, s6, s8
                  addiw        s0, s0, -1392
                  addi         t2, a1, 55
                  andi         a7, s1, -1221
                  add          t0, t3, s11
                  rem          a2, t1, s9
                  or           t1, s10, sp
                  slliw        s7, s0, 24
                  srai         s1, s6, 16
                  srliw        zero, s7, 23
                  or           t4, a3, s4
                  addi         s3, gp, -1233
                  addi         s3, t6, 1091
                  andi         t4, a4, -1725
                  subw         a5, t4, a3
                  remw         t1, s7, t6
                  add          s4, tp, s1
                  srlw         s9, t6, t0
                  sra          t3, s6, t3
                  divw         s4, a3, s11
                  xori         s2, s9, -1030
                  mul          a6, s2, t1
                  slli         t2, t2, 44
                  remu         t5, s9, ra
                  andi         s7, s3, -1547
                  mulhu        s7, a0, a0
                  srai         s8, s10, 22
                  mulhu        s9, a3, t0
                  xor          gp, s10, s2
                  slt          s7, a0, a2
                  srai         t5, sp, 56
                  addw         a5, t6, t6
                  xori         s8, a6, -49
                  sraw         t1, tp, s5
                  add          t0, s4, s9
                  srlw         s1, t6, s2
                  mulhu        ra, a2, s9
                  addi         t4, a1, 508
                  srai         t5, a7, 37
                  slliw        t1, t0, 6
                  remu         sp, t2, zero
                  and          t1, a7, s5
                  slti         s6, a3, -1324
                  slti         t0, t1, -991
                  mul          t3, sp, s5
                  divu         s6, a0, sp
                  mulh         a2, s0, t5
                  mulhsu       t2, a6, t6
                  xor          tp, s8, t5
                  subw         a0, t0, s6
                  divu         gp, a1, a4
                  remu         s8, ra, s4
                  or           zero, s3, a3
                  remw         gp, s4, a4
                  slt          t4, s11, a3
                  srliw        s2, a3, 6
                  slt          t1, s1, zero
                  ori          a2, a4, 1400
                  slliw        t0, t2, 3
                  andi         s2, s7, -833
                  nop
                  sub          gp, s10, s4
                  sltu         s2, t4, t4
                  mulhu        tp, gp, t1
                  slt          s9, s3, s6
                  srl          a1, s2, a1
                  addi         s7, a1, -1985
                  divu         s4, s4, tp
                  mulhu        s4, tp, t6
                  sll          a0, s4, s1
                  div          t4, s1, s2
                  xori         a3, s8, 613
                  slli         a3, zero, 29
                  mulw         s1, s0, t4
                  mulw         a2, s11, t1
                  addiw        a1, s8, -1006
                  sraw         s7, a5, s7
                  addw         gp, s3, s1
                  sllw         s9, t3, sp
                  slli         ra, s3, 35
                  slliw        a2, t4, 23
                  slliw        a2, a4, 6
                  remuw        a0, s2, a3
                  mulw         s0, a2, a6
                  sltiu        s0, s8, 1438
                  remu         s4, s6, gp
                  div          a5, tp, tp
                  mulhsu       t1, t2, a7
                  addw         s4, a3, a0
                  divw         t3, t3, t3
                  addw         a7, s0, sp
                  sltiu        s11, s9, 2005
                  mul          ra, s9, s7
                  sraiw        t1, s2, 26
                  add          s7, a5, s11
                  mul          s11, s9, ra
                  sltiu        a2, t4, -928
                  auipc        s1, 184609
                  sub          s11, t4, ra
                  nop
                  divuw        s2, s3, a7
                  divw         s0, s2, s3
                  sraiw        s10, s6, 15
                  rem          a3, s8, s9
                  sra          sp, a0, a5
                  sub          a2, a3, s2
                  xor          s7, gp, s0
                  lui          t0, 1009836
                  slli         zero, t1, 55
                  ori          s6, zero, 242
                  addiw        a3, s6, 1061
                  subw         t0, t2, s11
                  sllw         t2, a4, a2
                  mulw         a5, a7, ra
                  srai         t5, tp, 24
                  sraw         s10, t2, s2
                  divuw        t4, t4, a5
                  slliw        s3, s10, 7
                  divu         s11, a4, t5
                  slti         a5, a1, -1381
                  and          a5, s2, s8
                  nop
                  nop
                  divu         a0, a7, s7
                  addw         a2, s11, a6
                  sllw         s8, s7, ra
                  sltiu        a3, a0, -185
                  lui          a5, 434645
                  sltiu        s3, t5, 1891
                  remuw        s3, a1, t0
                  subw         a2, s0, t3
                  ori          s1, t1, 1624
                  mulhu        zero, s1, t4
                  remuw        zero, s6, s10
                  mulhsu       a7, s1, a1
                  mulhsu       t0, sp, t2
                  srlw         a0, t2, s9
                  mulhsu       s7, t4, a2
                  sraw         s4, a2, zero
                  slli         sp, t1, 3
                  mulw         s2, s2, a1
                  remu         t0, s4, s4
                  nop
                  slliw        t1, t6, 1
                  slli         t1, a0, 49
                  sltu         s11, a5, s4
                  sra          ra, t1, t1
                  mulhsu       t1, a4, s0
                  sltiu        zero, s2, 108
                  sub          a2, a0, s7
                  auipc        s6, 305781
                  divw         a2, s2, t0
                  addiw        s9, s2, 483
                  divuw        s2, a7, a2
                  sllw         a5, s7, a7
                  sra          s4, s8, s3
                  xor          s7, a0, s9
                  addiw        zero, a6, -1406
                  mul          s7, s7, t0
                  andi         s2, s0, 1593
                  sra          s6, a5, s8
                  remuw        t0, s1, t5
                  xori         s7, a5, 1344
                  srai         a5, a0, 10
                  xor          a6, t2, a2
                  sltu         s9, ra, a7
                  sltu         t3, t3, a7
                  sll          s3, t3, s8
                  srai         s10, s6, 3
                  addi         tp, a4, -1646
                  srli         t5, t5, 29
                  slli         s9, ra, 54
                  remw         s11, s11, s9
                  sllw         s9, a6, t6
                  divw         t3, s2, zero
                  addw         s8, gp, s10
                  mulhu        a7, a1, a2
                  xor          ra, a3, sp
                  remu         t4, a4, zero
                  sub          ra, t1, s8
                  sltiu        a2, a4, 1167
                  srl          t0, s7, t1
                  mulh         gp, gp, s5
                  sraiw        s4, s10, 31
                  slt          t3, s7, a2
                  sllw         zero, s11, s1
                  slt          s6, t1, t5
                  slli         s0, s11, 40
                  srai         s9, t3, 43
                  sub          tp, s8, s1
                  lui          t1, 82776
                  andi         t4, tp, 282
                  remuw        s7, sp, a3
                  mulh         s7, s4, s11
                  sltiu        sp, t0, 49
                  addiw        s7, s1, 1795
                  remuw        t0, t0, s11
                  srl          s4, t0, a7
                  andi         s4, t0, -1065
                  rem          a5, t5, t4
                  or           a0, t5, t6
                  divu         s1, a1, tp
                  sltiu        a2, s11, -1698
                  lui          t2, 444565
                  mulw         sp, s10, gp
                  sub          t0, t2, t2
                  remu         a7, a0, s3
                  sll          t1, t5, t5
                  rem          sp, t5, a0
                  nop
                  srliw        t5, s3, 0
                  mulhsu       s9, a1, t6
                  srli         a2, a6, 43
                  sraiw        s7, a0, 22
                  slti         sp, s5, 395
                  addw         t3, a6, tp
                  or           s8, t5, s7
                  sltu         a3, t5, s2
                  slt          zero, t3, a0
                  addi         a2, t2, -1544
                  addi         t0, s2, -242
                  lui          s3, 515884
                  slti         s2, t4, -1545
                  slliw        sp, s4, 7
                  andi         s3, t0, 304
                  remuw        a0, a6, s7
                  xori         ra, s8, 454
                  divw         a5, s3, a4
                  sraw         t0, t1, s10
                  divu         a5, t3, t5
                  add          a3, s9, t2
                  remu         s11, s7, s9
                  nop
                  xor          a3, s0, a3
                  sub          zero, a0, zero
                  remu         zero, s7, a0
                  div          s0, s2, s8
                  sra          t1, s10, ra
                  addi         sp, t5, 363
                  andi         t5, s9, 186
                  slliw        s8, s7, 27
                  mulhsu       s9, s1, a6
                  subw         zero, s8, s3
                  mulhu        gp, ra, sp
                  andi         zero, a0, -248
                  auipc        t2, 549756
                  srai         s11, a4, 25
                  slt          s9, a0, s2
                  srliw        a3, t3, 20
                  sll          s11, a6, sp
                  sraiw        a5, a5, 2
                  slt          s11, a3, s6
                  mulh         t5, a1, s6
                  slt          t4, s11, s2
                  mulw         s9, tp, gp
                  remw         s10, gp, s2
                  remuw        s1, a7, a4
                  sltiu        a7, a0, -516
                  slt          a6, s1, a3
                  sltu         a1, a1, t2
                  sll          t3, s3, a4
                  addw         t0, s7, t4
                  sub          a7, a4, s5
                  auipc        t4, 775812
                  xor          t1, s7, s6
                  sraw         s3, zero, s3
                  sub          s11, t1, s11
                  mulh         a7, a1, t3
                  sraw         s7, gp, s10
                  slt          tp, a2, s11
                  xori         s1, tp, 1118
                  mulw         zero, s2, t1
                  slliw        s6, t2, 14
                  divuw        t2, a7, t0
                  add          a2, s6, t2
                  div          s1, s8, t4
                  srliw        a5, tp, 16
                  slliw        sp, a0, 11
                  remu         s9, s8, a2
                  sra          t2, t5, s11
                  srli         s0, t3, 37
                  xori         s1, s1, 51
                  sllw         s4, s10, a6
                  divw         ra, s5, a5
                  andi         t2, t4, -336
                  sub          t2, t5, s2
                  sub          a6, s6, t5
                  sub          sp, s7, s2
                  nop
                  addi         s1, t5, 130
                  auipc        s4, 485250
                  srlw         tp, t0, s3
                  andi         a6, s0, 1994
                  srai         s7, a2, 4
                  slli         s8, t2, 37
                  rem          s2, s10, s10
                  slti         t4, zero, -1208
                  xor          t2, a4, a2
                  rem          s7, s10, a1
                  srlw         a3, a2, s2
                  mul          s11, s8, a3
                  addw         a1, t1, s9
                  addiw        tp, s9, -2011
                  srliw        s3, a6, 17
                  mul          a1, s11, s5
                  slliw        t4, a4, 7
                  slli         t2, s9, 2
                  and          s4, sp, t5
                  slliw        t5, s5, 8
                  srlw         s1, s7, s0
                  div          t3, s6, s5
                  slli         s10, t0, 41
                  sraiw        s6, t1, 23
                  rem          s2, s9, a2
                  sraiw        s9, t0, 0
                  xori         zero, t2, -227
                  remuw        s3, a7, t4
                  xor          a3, t6, s8
                  srlw         s9, t6, ra
                  sraiw        t4, s1, 23
                  sll          s8, s7, s6
                  divuw        a0, ra, zero
                  remw         a1, s4, t6
                  slliw        sp, s7, 9
                  mulhsu       a6, a1, a2
                  xori         s4, a4, 656
                  addiw        s2, zero, -1845
                  divw         t5, sp, s6
                  ori          a6, t1, 244
                  slti         s8, s0, 1180
                  slliw        s1, a3, 23
                  sll          ra, t0, a0
                  addi         a5, t6, 860
                  andi         s0, t5, -1078
                  xori         s6, a1, -1725
                  srlw         a5, s0, s4
                  or           t4, a0, a2
                  xor          s2, a4, s6
                  slti         s4, t2, -546
                  auipc        t0, 336529
                  sll          a1, zero, t4
                  sra          s4, s3, a1
                  lui          a2, 176316
                  sltiu        t0, a6, -746
                  ori          t0, tp, -137
                  slli         zero, zero, 0
                  sltiu        t2, s1, -1106
                  subw         a3, tp, t4
                  sltu         s8, s5, a6
                  sraiw        t1, a6, 19
                  slt          gp, s4, t2
                  sllw         t0, s5, a0
                  xor          s3, a1, tp
                  sub          a5, tp, s3
                  srai         s9, t0, 26
                  xori         s7, s1, -1494
                  srliw        t5, s2, 18
                  slliw        t1, s6, 31
                  addi         tp, a1, -171
                  sub          zero, a3, gp
                  slliw        a7, sp, 23
                  slti         s11, s9, -738
                  sltu         a7, gp, a6
                  sltiu        s6, s7, 972
                  srli         t4, s5, 26
                  slt          t0, s9, s2
                  mulhsu       a0, t1, a1
                  remw         a7, t3, a2
                  addi         ra, a0, 1614
                  add          s3, s0, s10
                  mul          a5, t1, a2
                  addiw        s2, t2, 406
                  div          gp, s11, a6
                  sraiw        t3, a7, 16
                  remw         s3, gp, t1
                  andi         a0, zero, -1587
                  div          t1, t2, s8
                  sltiu        a7, s2, 419
                  xor          ra, s6, s9
                  remw         s4, a5, s11
                  nop
                  divw         s1, t5, s9
                  sraw         zero, a6, a0
                  mulhu        s3, a3, sp
                  ori          a5, s8, -1096
                  remw         s2, zero, t2
                  mulw         s6, t3, tp
                  mulhu        t4, a2, s3
                  add          a7, a7, zero
                  sllw         s6, s1, s8
                  srl          s11, s3, s11
                  sllw         t2, s8, zero
                  sra          s1, a5, s5
                  mulhu        t1, t5, s1
                  divu         t2, s11, s4
                  rem          s11, s6, a5
                  addi         s4, a0, -333
                  auipc        s10, 228234
                  srl          t0, zero, t5
                  lui          s4, 376582
                  divuw        a5, t2, gp
                  or           s9, s11, s7
                  and          t1, s2, s8
                  addi         a1, s3, -1153
                  srlw         s4, tp, ra
                  xori         t0, a7, 1540
                  ori          s6, a5, -877
                  sll          s11, s9, sp
                  mulhu        ra, t6, s3
                  addi         s2, tp, 1850
                  and          t2, t3, s3
                  add          tp, a4, s7
                  auipc        t5, 267501
                  addw         t0, a7, a6
                  remw         a7, t4, t6
                  slliw        a6, s3, 30
                  slli         s8, gp, 38
                  add          a3, t5, s10
                  mulhu        s3, t0, s5
                  and          s1, t1, s11
                  addiw        ra, s7, -444
                  srl          gp, sp, s5
                  rem          a0, a7, s10
                  sll          a0, s5, sp
                  add          tp, s11, a2
                  mulh         s10, a4, a1
                  xor          s11, a5, a7
                  mulhsu       t0, t4, a7
                  addw         a6, a6, s9
                  mulh         a0, ra, a2
                  sltiu        tp, a4, 1692
                  slli         s7, a4, 13
                  mulw         a7, t0, zero
                  auipc        a0, 158408
                  and          s10, s8, a1
                  addw         t5, s4, a4
                  sraw         t1, t6, zero
                  slliw        t0, s5, 17
                  srliw        s10, s5, 14
                  remw         s6, s7, tp
                  add          s0, t4, s1
                  lui          s6, 890623
                  addw         s2, s1, s10
                  div          s11, s3, t4
                  xor          t4, tp, s1
                  divw         s2, t3, a4
                  rem          s9, s6, gp
                  sub          a7, s5, t4
                  divu         s9, a5, a7
                  slti         s8, s4, 337
                  srl          t1, s11, t5
                  sltu         a2, tp, s6
                  sll          a0, s0, a7
                  addw         s8, a5, a5
                  divuw        s0, s5, s11
                  div          a2, zero, s10
                  sltiu        a7, s7, -1670
                  addw         s6, t4, s3
                  mulw         zero, t1, a0
                  sltu         s4, s2, a1
                  mulhu        s3, s7, s3
                  nop
                  srai         s8, s0, 55
                  subw         a7, s10, a7
                  srli         a7, gp, 22
                  sraw         t5, t1, s5
                  srli         s7, a0, 59
                  xori         t1, a4, -545
                  xor          a5, a5, a1
                  mulhu        a7, a0, s3
                  mulw         s2, s5, t3
                  sra          s10, a3, s9
                  sraiw        s4, t3, 26
                  slliw        s7, tp, 14
                  rem          tp, tp, a2
                  divuw        t2, s7, s11
                  slti         a0, a6, -1655
                  addw         t0, s10, a6
                  sraiw        gp, t5, 3
                  nop
                  nop
                  divu         zero, s3, t0
                  andi         gp, a2, 1666
                  sltu         s8, t3, t5
                  divw         t1, ra, t0
                  slli         s9, s0, 29
                  mulw         t1, a6, t2
                  div          a7, t1, sp
                  div          s7, s4, s1
                  div          a1, zero, zero
                  srai         s11, s3, 21
                  sraw         a6, s1, a5
                  divw         gp, a3, t1
                  mulw         s3, t0, s6
                  add          t0, sp, a1
                  remu         t1, s5, a0
                  addiw        a0, a1, 1626
                  slt          t5, zero, ra
                  sll          t0, t3, s11
                  mulw         a0, t6, s7
                  div          t2, s2, a2
                  or           a7, a2, s0
                  add          a3, s10, t3
                  divu         s0, s3, t0
                  divw         gp, tp, s11
                  nop
                  sllw         a2, a4, s10
                  slli         a7, a2, 38
                  slliw        gp, a1, 26
                  slt          t4, tp, a6
                  remuw        a5, a5, a0
                  mulhsu       gp, t0, s10
                  remuw        zero, a4, t6
                  srli         sp, a3, 37
                  sllw         ra, s7, s1
                  mul          s4, a3, s5
                  divuw        s11, a1, s4
                  addw         s7, ra, a3
                  srl          a1, t6, a3
                  remw         s8, t4, a3
                  srliw        s9, s0, 18
                  sra          s8, s8, a6
                  srl          s8, a6, a6
                  sllw         t3, t0, s1
                  xor          gp, tp, s8
                  slti         s2, gp, 1680
                  divw         s8, t0, s4
                  mulhsu       t3, s2, s4
                  mulh         s0, sp, ra
                  sub          a3, s1, s4
                  xor          s11, s7, t3
                  mulw         s8, t3, a5
                  sltiu        s3, t2, -1638
                  sub          t5, a6, s10
                  slt          t3, s0, tp
                  mulhu        s10, s7, a4
                  addiw        s7, s7, 1456
                  remuw        s7, s1, s6
                  slliw        a7, s8, 26
                  addiw        a2, s0, -294
                  andi         a7, a2, -2024
                  divuw        t2, a5, s5
                  slli         s2, s8, 4
                  and          s3, t2, t6
                  sub          ra, a5, s4
                  sltiu        tp, a6, 188
                  slt          a1, t3, s11
                  srliw        a2, t1, 12
                  ori          zero, s4, 602
                  remuw        a2, s5, tp
                  slliw        s6, a1, 27
                  srliw        a2, s6, 18
                  mulhsu       s11, a0, s1
                  slli         s3, a0, 32
                  sraw         s0, a3, s8
                  remu         sp, t4, s4
                  divw         a3, s9, a6
                  divw         s0, s3, a5
                  divu         t4, t4, s4
                  divu         a0, s2, s5
                  slti         t3, a4, 142
                  srai         a5, s10, 32
                  add          s0, t2, sp
                  remu         t5, t6, zero
                  sll          s0, a3, s8
                  and          s1, s10, s11
                  sub          s4, a1, s11
                  srliw        s7, a4, 23
                  srai         a7, a2, 0
                  xor          a0, a0, tp
                  nop
                  mulw         tp, t0, s11
                  srai         sp, a7, 19
                  div          zero, ra, t3
                  slli         t3, a7, 13
                  srl          t5, a1, t4
                  mulh         zero, zero, s10
                  mulh         a1, t0, s4
                  andi         a3, s3, -1925
                  addi         t2, s2, 870
                  xor          a0, a1, sp
                  mulhu        s11, a1, s1
                  sll          sp, ra, t2
                  remuw        tp, t1, s0
                  mulh         sp, s6, a5
                  and          s6, a4, a0
                  divw         a1, gp, a2
                  or           a0, s10, gp
                  sra          t4, a4, s8
                  nop
                  divw         s2, a2, t4
                  slti         a5, t1, 1018
                  sltiu        t5, s5, 1101
                  lui          a6, 254237
                  divw         zero, s9, s10
                  div          t4, t0, s10
                  srliw        s4, sp, 15
                  addi         a2, s8, 1127
                  xor          s6, t5, ra
                  lui          s6, 938771
                  remw         zero, a6, gp
                  or           a7, t0, gp
                  divw         t2, a4, s1
                  addi         a2, ra, -1739
                  remw         tp, s10, a3
                  addiw        a1, a6, -1504
                  add          s7, s7, a7
                  mul          zero, t4, a0
                  slti         a1, t6, 799
                  sub          a5, sp, s5
                  divuw        a3, ra, a0
                  add          a7, t6, t0
                  slti         s2, t4, 691
                  addiw        s9, a0, 1457
                  divuw        zero, zero, tp
                  mulh         a1, s11, zero
                  remw         zero, t3, t4
                  remu         t5, a6, s8
                  and          t2, s10, s3
                  nop
                  addi         s11, t5, -21
                  nop
                  sllw         s1, t4, s11
                  xori         t4, a6, -191
                  sllw         sp, s7, t3
                  slli         a3, s5, 63
                  xor          sp, a7, t3
                  subw         s9, s3, t2
                  mulw         s2, a0, a4
                  mulh         t3, a0, s11
                  sll          s2, a6, a1
                  sll          ra, s7, a0
                  sra          a5, a6, a5
                  slti         tp, t1, 597
                  sra          t5, a7, a5
                  mul          a7, s5, ra
                  sllw         s9, t2, a3
                  xor          zero, s2, t4
                  remu         a3, a4, t3
                  sub          s0, s8, ra
                  subw         t3, a5, s10
                  sraw         s3, a6, t6
                  mulhsu       t5, a6, a6
                  slt          s8, a4, s5
                  srlw         a1, a7, ra
                  or           t4, s3, ra
                  or           s3, a7, t4
                  sllw         a3, t2, a5
                  srliw        s3, s5, 21
                  srai         a5, gp, 14
                  mulh         s2, a0, gp
                  auipc        gp, 911875
                  xor          s2, a6, s9
                  sra          s6, s8, gp
                  rem          s2, t2, ra
                  nop
                  mulh         a0, gp, s5
                  xor          s7, s3, s10
                  addi         a3, s8, -1236
                  sltiu        t0, a0, -1156
                  srai         s9, s4, 19
                  slt          s4, s3, s7
                  srai         s11, s11, 6
                  sub          a1, t3, a7
                  nop
                  add          a7, a0, a0
                  subw         s0, sp, a6
                  sll          a1, s9, a6
                  sltiu        t4, a6, -1836
                  slti         t2, t3, -1913
                  slliw        a7, a0, 17
                  mul          a3, s3, a7
                  and          s2, s0, s8
                  addi         s7, sp, -152
                  addi         zero, a4, 1310
                  srliw        s1, s10, 30
                  sub          s6, t3, a1
                  nop
                  sraw         t5, t4, a5
                  addi         gp, t1, -1062
                  mulh         t2, a0, ra
                  divu         s2, s2, ra
                  slliw        s7, a3, 4
                  mulhsu       s0, a4, a0
                  sra          sp, a1, s1
                  mulw         zero, s3, a3
                  addw         s9, t0, s5
                  sltu         t0, zero, a7
                  auipc        s6, 461782
                  sll          a5, s5, a2
                  mulhu        t1, t3, t3
                  slli         a6, t5, 26
                  mul          a1, t1, s8
                  divu         t3, t2, s5
                  sra          a7, s5, a0
                  div          ra, t3, s11
                  slli         tp, sp, 18
                  remuw        a5, t3, s2
                  srli         a6, sp, 29
                  nop
                  or           t4, a3, s10
                  addi         s7, t6, -808
                  lui          a3, 923267
                  sra          a2, s5, s5
                  lui          s11, 803473
                  mul          s10, t6, gp
                  mulh         gp, ra, gp
                  addi         s6, s0, 2044
                  sll          t3, t3, s8
                  divw         t4, a7, s11
                  divu         s7, s9, zero
                  remuw        a6, a3, a4
                  mulhu        s2, s11, tp
                  add          t3, s1, tp
                  remu         t0, a3, a6
                  divw         a3, s9, s6
                  lui          s3, 189815
                  srliw        s9, a5, 29
                  remuw        s4, a7, t1
                  slti         s3, ra, -2041
                  div          ra, s11, t3
                  divuw        s8, s9, t1
                  xori         s3, s2, -1294
                  sra          tp, t3, s6
                  ori          ra, s5, 1153
                  addiw        s4, a3, -885
                  slli         a5, t2, 15
                  nop
                  sltiu        s6, s10, -160
                  mulw         t4, a2, s0
                  srli         a0, s4, 23
                  srlw         t5, s0, s5
                  xori         s10, t5, 1827
                  slt          s7, t4, s1
                  sra          zero, s1, s10
                  srl          s3, s11, tp
                  ori          s6, t6, 87
                  sll          t2, a1, s0
                  srliw        s8, a5, 27
                  srli         s6, s5, 43
                  add          sp, t2, gp
                  ori          t3, s0, 79
                  slti         t2, s7, -826
                  remuw        sp, s10, ra
                  xori         a7, s3, 483
                  srli         a3, s4, 33
                  slti         t3, s9, -677
                  sraw         a2, a2, s6
                  srliw        a3, s7, 28
                  divuw        t1, t0, a5
                  sraw         t2, a2, a2
                  rem          tp, s8, a6
                  addiw        a6, gp, 777
                  sraiw        ra, zero, 9
                  xor          t0, a2, t0
                  xor          t0, a1, ra
                  mulw         a6, s11, s10
                  sltiu        a5, ra, 47
                  andi         a1, t2, -645
                  mulhu        t2, t6, s1
                  remuw        a5, t3, a7
                  sltiu        s7, a6, 1582
                  mulhsu       t5, t1, t3
                  srlw         t1, s10, s8
                  slliw        zero, t5, 19
                  sll          a7, zero, tp
                  remw         tp, s3, gp
                  slt          s11, a4, a3
                  mul          t1, s3, t1
                  divu         s0, sp, s9
                  and          s7, s7, t5
                  sllw         s7, s10, t4
                  nop
                  srliw        t5, s2, 4
                  and          s1, sp, a7
                  auipc        s4, 1023779
                  auipc        s11, 828629
                  lui          a0, 682732
                  or           t2, a0, a0
                  remuw        s4, a5, s0
                  nop
                  sraw         s4, a0, s6
                  srl          t3, a0, s3
                  auipc        s1, 1017365
                  rem          t1, s6, s4
                  sltu         a3, sp, s3
                  mulh         s2, a0, s11
                  slli         s10, t1, 29
                  nop
                  remw         s7, a1, s0
                  slli         a1, a3, 6
                  addw         a3, a2, a3
                  srliw        tp, a4, 1
                  subw         t3, t6, s3
                  divuw        gp, gp, s7
                  xor          a0, s5, a2
                  srliw        a0, s3, 10
                  add          a6, zero, a0
                  xori         t5, a1, -1050
                  mulh         a0, s8, t0
                  slli         tp, s4, 10
                  remw         a6, s6, a7
                  slliw        s1, t4, 22
                  srai         s10, s9, 59
                  addw         s3, t4, sp
                  xori         a7, s3, 1267
                  addi         s10, sp, 1038
                  srai         a3, s8, 13
                  mulhsu       t2, s5, t4
                  sltiu        a2, a1, 752
                  xor          t2, s3, t0
                  slli         t1, s5, 29
                  auipc        a3, 494536
                  remuw        t2, s7, s0
                  addw         a3, s8, t5
                  divuw        sp, s4, s4
                  remw         t3, a1, t5
                  srai         gp, s1, 61
                  sub          a3, s8, t5
                  remw         s2, s8, tp
                  slli         t1, s10, 47
                  srliw        s9, s11, 31
                  sub          a3, a6, s2
                  addiw        a6, s2, -616
                  xor          t0, tp, a1
                  srlw         s3, s7, s0
                  div          s9, s4, a1
                  addi         a2, a5, 1782
                  andi         a3, a2, -1152
                  slti         a2, t1, -1751
                  sra          s6, a3, s10
                  srlw         t2, a0, ra
                  nop
                  srli         s10, sp, 38
                  mulw         sp, a5, ra
                  srl          ra, s10, t0
                  slli         a1, t1, 50
                  addiw        a5, t3, 40
                  mulhsu       a5, s0, t3
                  slli         tp, s11, 2
                  srlw         s4, t3, zero
                  srai         tp, a4, 53
                  andi         a0, ra, -1514
                  sra          s4, sp, t0
                  slt          ra, gp, s10
                  slli         s0, t1, 53
                  divu         s3, s3, s9
                  sll          ra, a2, zero
                  remw         a5, s6, s8
                  slli         s7, t5, 44
                  mulw         a5, gp, a6
                  sraw         sp, t4, a1
                  divu         a6, t2, s8
                  addiw        s11, gp, -1852
                  srai         gp, t1, 13
                  div          sp, s7, t4
                  divuw        s8, t3, a1
                  xori         s4, s7, -1898
                  mulw         sp, a4, a0
                  addiw        t0, s2, -344
                  ori          t1, s5, 292
                  auipc        t3, 366046
                  lui          s2, 612101
                  slliw        s2, t6, 8
                  mulhu        a5, zero, s0
                  or           s6, zero, s9
                  slt          t1, s8, s8
                  srliw        s0, s8, 1
                  sraiw        tp, t5, 6
                  and          gp, gp, s2
                  slti         s7, a0, 1178
                  subw         s7, sp, s11
                  slli         a7, s4, 18
                  xor          s9, s3, s5
                  mul          a7, a6, s3
                  addw         t4, sp, sp
                  sraiw        s11, s7, 29
                  remw         a5, a5, tp
                  subw         s4, a3, t5
                  slliw        t1, a4, 14
                  srliw        zero, s4, 23
                  srliw        t4, t1, 31
                  sraiw        t3, t5, 4
                  div          ra, a2, a6
                  sraw         ra, t1, t6
                  mulhsu       t4, s5, t4
                  remu         a6, s7, tp
                  addw         gp, t2, s0
                  sltu         t0, a3, s10
                  and          a3, a3, a0
                  srai         s9, tp, 4
                  xor          s3, t2, s5
                  div          a1, a2, a3
                  mulhsu       s9, a2, t4
                  remuw        s4, s6, a7
                  slli         t3, s4, 8
                  sra          gp, t3, sp
                  srai         s9, s3, 36
                  sra          a3, s7, s7
                  auipc        a7, 385862
                  mulh         s10, gp, t3
                  sllw         t3, sp, s3
                  mulw         a3, a6, t4
                  mulhu        gp, s2, a1
                  addiw        s7, gp, -898
                  addiw        s7, a0, 1939
                  xori         s11, a3, 1411
                  lui          gp, 885915
                  mulhu        t0, s5, gp
                  divuw        t4, s11, a3
                  divu         zero, s10, a5
                  mulhu        s3, a3, a2
                  addiw        a5, a2, -818
                  div          t2, s8, t6
                  lui          t2, 671426
                  nop
                  addiw        s11, s10, -139
                  div          a2, a1, s4
                  xor          t1, s11, s1
                  mulw         gp, s2, t5
                  addw         a5, s9, a4
                  add          s2, s1, s3
                  divw         ra, t3, t4
                  sub          s11, t5, s8
                  srl          t4, s11, zero
                  ori          sp, gp, 1153
                  divuw        s3, s2, s5
                  addiw        t5, s7, -1668
                  srl          s11, s8, s2
                  sraiw        t2, a6, 30
                  srai         s6, s7, 25
                  slt          gp, gp, a7
                  slliw        tp, zero, 14
                  mulh         t4, t1, t4
                  or           a1, s5, s6
                  or           s8, a3, a3
                  remuw        s7, s3, s8
                  srliw        a3, t6, 26
                  addw         t5, t3, t4
                  sra          s2, s3, s2
                  srliw        t4, gp, 16
                  srlw         s8, t6, zero
                  xori         ra, s0, 1463
                  addw         sp, t4, a4
                  slti         t4, s2, -1048
                  addiw        t0, t0, 1390
                  srliw        a6, s7, 28
                  sllw         sp, s7, t5
                  remuw        a7, t6, s11
                  xor          s6, s10, t1
                  srl          tp, s0, a1
                  ori          t5, s2, 581
                  sraw         s7, t6, s4
                  slt          s1, s10, s8
                  remw         sp, t4, s7
                  addw         a7, gp, gp
                  mulhsu       s7, zero, s3
                  sll          s6, t2, s9
                  sraw         s1, a2, s8
                  srliw        a1, tp, 20
                  sraw         s11, t6, a7
                  div          s10, s11, s0
                  andi         s10, s7, 1202
                  ori          s7, a5, -1610
                  slt          a2, ra, a0
                  addi         s9, ra, 305
                  add          s8, sp, t1
                  srliw        t0, a7, 17
                  xor          sp, t5, sp
                  slt          t2, a1, t5
                  addiw        s10, s1, 375
                  lui          s7, 476503
                  srlw         zero, s10, s0
                  srlw         zero, s11, s9
                  add          s8, s6, s8
                  mulw         t5, s7, s8
                  addi         s11, s10, 149
                  sll          t1, a1, t1
                  sllw         s1, s1, s9
                  rem          t5, s8, gp
                  srliw        a3, ra, 11
                  mul          a3, ra, a0
                  sltiu        a0, t0, -782
                  divw         s8, a1, sp
                  mulhsu       ra, a5, s3
                  or           a7, s5, a3
                  sraiw        s9, s3, 25
                  slliw        a5, a3, 16
                  srlw         s10, t4, ra
                  rem          a2, gp, s7
                  rem          a5, s1, s7
                  addi         a3, tp, 659
                  sub          t3, a6, gp
                  slti         a6, t3, 786
                  divuw        t5, a6, a1
                  xor          gp, zero, t4
                  subw         t1, t3, s11
                  div          s7, s11, s10
                  srl          t1, a7, s2
                  srliw        s6, a3, 17
                  divu         t0, tp, s11
                  sltu         gp, a6, s2
                  subw         t0, sp, t6
                  remw         t2, a7, s8
                  mul          t5, t1, s2
                  ori          a5, sp, -1595
                  slti         s8, a0, -509
                  andi         gp, t4, -1101
                  mulh         s6, s1, t5
                  divuw        t3, gp, t2
                  sltiu        tp, s8, 831
                  add          s8, zero, a6
                  nop
                  sll          ra, tp, s6
                  auipc        s8, 510788
                  or           t1, a5, a1
                  remw         s4, t5, s8
                  sraw         t0, s8, s11
                  subw         t5, gp, t6
                  divuw        sp, t1, t5
                  xori         t4, tp, 1354
                  xor          s3, s7, a1
                  sub          s7, a5, ra
                  sraw         gp, s2, sp
                  srlw         t1, a1, a5
                  srli         t2, a1, 20
                  xori         t5, s1, 1531
                  nop
                  divuw        t2, s8, t1
                  rem          s7, gp, s9
                  div          s11, gp, s2
                  sraw         s10, a2, t0
                  remu         a5, t3, t1
                  auipc        s11, 559465
                  mulhu        s11, s4, a1
                  slt          s4, s7, s1
                  sllw         ra, tp, s7
                  remu         gp, t2, s1
                  srli         t4, t1, 53
                  sraiw        s9, s6, 20
                  andi         s1, s2, -1245
                  sll          a6, t0, gp
                  sltiu        t1, a7, 1581
                  addw         a7, t3, s8
                  xor          tp, a4, zero
                  remu         a7, s6, t0
                  divu         s10, t5, s8
                  sltiu        a6, s1, 1123
                  addiw        a7, zero, 247
                  rem          s0, a4, a0
                  rem          a3, t3, tp
                  sll          a7, a0, a7
                  sllw         s4, sp, a7
                  srai         a2, t4, 25
                  mulhsu       s2, ra, s5
                  slli         s0, a5, 16
                  mulw         t2, a7, a4
                  sll          s2, t4, t5
                  remw         s11, s8, s7
                  slli         s7, t6, 27
                  sltiu        t4, s2, 1782
                  sltiu        t0, a1, -2044
                  addi         t2, s4, 245
                  sraw         t5, s4, sp
                  lui          a2, 1004503
                  srliw        s9, s3, 18
                  slliw        a7, zero, 25
                  divw         s6, a1, t1
                  ori          a3, s3, -1710
                  rem          t0, a7, t5
                  sll          t5, a6, t5
                  rem          sp, t1, s4
                  sltu         s7, s6, s0
                  addiw        a3, a0, 1520
                  slti         s3, s8, -1465
                  srlw         s2, a2, s4
                  srlw         s0, zero, t3
                  divuw        s4, s11, t5
                  auipc        t1, 145250
                  addw         s9, s8, s1
                  slti         t3, t3, -1167
                  auipc        a7, 111027
                  nop
                  srli         s2, s3, 40
                  auipc        a2, 69172
                  divuw        a5, s0, s9
                  nop
                  remw         tp, s0, s8
                  srlw         t0, gp, s8
                  slli         t5, t0, 55
                  ori          a1, t3, 960
                  rem          s8, ra, tp
                  srlw         tp, s5, t0
                  srai         a5, s9, 52
                  remw         s11, s10, t3
                  remw         s1, s8, sp
                  mulhu        a7, t4, s4
                  slli         a3, a6, 20
                  mulw         t5, a5, s7
                  sltiu        s8, t5, 1691
                  slliw        t2, zero, 29
                  sraiw        t5, s8, 31
                  add          zero, a6, sp
                  xori         gp, t6, -1713
                  sub          a1, s9, s1
                  remu         a5, s3, s1
                  addiw        t3, s11, -1847
                  divuw        a6, a2, gp
                  mulhu        s8, a1, zero
                  or           s0, s10, t5
                  remw         t4, s9, s4
                  addiw        t4, s9, -242
                  srai         s11, t0, 30
                  auipc        t1, 377738
                  remw         t4, a2, a4
                  sltiu        tp, a4, 1482
                  remw         t5, t2, a5
                  divu         t5, s4, t3
                  divw         s1, s4, s1
                  mul          a6, gp, s3
                  or           t3, a1, s4
                  mulh         a6, s8, t1
                  ori          t2, t3, -528
                  lui          a7, 997925
                  addi         t3, t0, 1439
                  sraw         a0, a1, a6
                  sltu         s7, t3, a6
                  mulh         a0, s0, sp
                  mulhu        s6, s5, a0
                  sub          t0, s9, t2
                  auipc        s2, 824603
                  sltu         a7, s0, t5
                  sltiu        s1, gp, 1980
                  sub          s3, s7, s8
                  sltiu        s1, a6, 976
                  andi         zero, t1, -1622
                  div          t4, s4, a7
                  add          s9, t3, gp
                  srlw         s11, a6, a0
                  sltu         t0, s6, s8
                  xori         s6, a2, 766
                  andi         s4, s8, 587
                  sltu         ra, a5, a2
                  or           t4, a3, s1
                  mulh         t1, s8, a7
                  mulh         a3, zero, s3
                  mul          s0, a6, a3
                  srli         a6, a6, 60
                  remu         s9, s8, t5
                  srli         t4, s1, 47
                  mul          tp, s9, a6
                  mulhu        a3, t4, s2
                  sraiw        gp, s8, 9
                  divw         a3, s11, s3
                  mulh         t5, s7, a7
                  mulw         s1, t3, s2
                  lui          s3, 468101
                  xori         a2, t6, -1749
                  srl          s9, s2, s11
                  sra          s11, t4, s8
                  srli         t5, s11, 58
                  srli         a1, ra, 15
                  sub          s6, s1, t3
                  mulw         sp, t0, s9
                  remu         t4, s9, t3
                  nop
                  xor          t0, s5, t4
                  remw         tp, s7, ra
                  ori          a6, a4, -2025
                  nop
                  divu         s11, a7, s1
                  remuw        s2, t0, s9
                  rem          s7, gp, s8
                  slt          s6, t5, t0
                  srai         t0, a5, 29
                  ori          t0, a1, -817
                  ori          s8, s3, 402
                  andi         t4, t1, 527
                  lui          s9, 212714
                  auipc        sp, 317557
                  srai         s1, ra, 27
                  sltiu        s11, s1, -491
                  sltu         s10, s9, t1
                  sll          a0, t6, a7
                  sltiu        s7, s11, -1825
                  divu         s11, s0, s4
                  divu         s1, zero, a3
                  auipc        s7, 503012
                  sub          t0, s8, a5
                  andi         s1, t1, -1265
                  sllw         s9, a2, a3
                  subw         s8, t2, s1
                  nop
                  slti         s2, ra, -1487
                  mulh         s11, t3, a5
                  mulhsu       a0, a1, t5
                  sraiw        gp, s5, 16
                  sltiu        s10, a7, -1616
                  and          s10, t2, t1
                  addi         ra, t5, 1857
                  subw         t3, s11, a7
                  subw         s6, a3, s3
                  subw         s0, ra, a1
                  mul          a5, a0, a4
                  mul          s1, s10, sp
                  divw         a1, a5, a5
                  slt          s7, t5, a0
                  rem          t0, s11, s0
                  mulh         a2, s4, a6
                  addiw        s1, sp, -936
                  mulhu        tp, t4, gp
                  remu         zero, s10, s9
                  and          s9, gp, gp
                  mul          a7, s1, s4
                  auipc        a6, 729204
                  divu         sp, a1, t0
                  xori         s8, s8, -1202
                  subw         a6, a2, t2
                  srai         sp, a7, 32
                  div          s7, t1, t0
                  sll          s8, s0, t3
                  mulh         t5, s10, s11
                  or           s0, a5, a0
                  slli         t0, a6, 28
                  addi         t5, s6, 723
                  sra          t0, s3, t4
                  andi         t1, t5, 764
                  srli         a5, t6, 47
                  addiw        a5, t3, 1656
                  sraiw        a0, tp, 11
                  xori         a6, t2, 1941
                  or           gp, a1, t5
                  subw         s0, t5, a5
                  slliw        a2, a6, 4
                  srliw        a2, s3, 30
                  sra          s1, a0, a4
                  sraw         s10, t3, a6
                  srliw        t0, a7, 4
                  sraiw        t1, a7, 24
                  andi         s1, gp, -937
                  sll          t1, s11, s4
                  divu         s1, a7, s10
                  or           a7, s9, gp
                  mulhsu       a0, s4, tp
                  mulw         t2, a7, gp
                  srli         t5, a2, 24
                  sraw         s6, s9, s4
                  srliw        s10, t5, 9
                  nop
                  divw         sp, t2, sp
                  srai         tp, t2, 61
                  divu         a6, s7, t4
                  sraiw        tp, s1, 10
                  remuw        t0, tp, s5
                  sltu         t5, a2, tp
                  srai         t4, s0, 55
                  srai         t4, s2, 11
                  sltiu        s1, s2, -1235
                  mul          t4, tp, s6
                  rem          a1, gp, s3
                  addw         s10, t0, a2
                  remuw        t3, s4, s9
                  srl          t0, zero, s7
                  mulh         t0, s9, t5
                  srlw         t1, zero, t3
                  sltiu        s0, s2, -706
                  slliw        t5, s2, 23
                  srl          t4, a6, t4
                  sllw         a3, t5, t0
                  ori          tp, t6, 1006
                  mulw         zero, a4, s2
                  xori         s9, a7, -1489
                  slti         a3, s2, -29
                  slti         a1, a7, -1469
                  slti         gp, t5, 98
                  add          t2, s8, a3
                  sub          s8, a6, s5
                  xor          a2, t5, ra
                  mulw         s7, zero, t0
                  mul          t0, s11, s5
                  mul          s9, t2, t4
                  srai         s1, s9, 7
                  addiw        tp, a0, 703
                  srai         s6, t5, 63
                  remw         a5, t3, s9
                  mulhu        s9, zero, s2
                  andi         a2, t4, -1143
                  remu         sp, zero, s0
                  lui          t3, 916804
                  xori         a7, s10, 324
                  subw         tp, a5, a2
                  sll          zero, s3, s6
                  mulw         s3, a0, s10
                  nop
                  sllw         s10, s11, s0
                  srliw        t3, a0, 4
                  remu         a3, t3, a1
                  srliw        t0, a7, 9
                  slliw        zero, zero, 18
                  and          a3, s5, tp
                  divw         t0, s0, gp
                  remuw        gp, a7, s8
                  add          t2, s11, zero
                  srliw        a3, t1, 4
                  remw         a6, s5, t0
                  divw         a1, t2, s3
                  remw         sp, t2, s8
                  mulhsu       a5, zero, s0
                  sllw         sp, a4, s5
                  auipc        a3, 56477
                  and          a3, a1, s4
                  remuw        s11, t2, t2
                  div          t0, s6, gp
                  addw         s2, t3, s0
                  auipc        a6, 177116
                  srli         tp, t6, 20
                  addw         t2, s3, tp
                  remw         zero, s2, t6
                  sltu         t3, t0, s7
                  or           s3, s11, s11
                  sllw         s7, t2, s5
                  auipc        zero, 45361
                  sltiu        t2, t4, -545
                  mulhsu       a7, gp, a5
                  mul          tp, t1, s10
                  addw         s8, t5, a6
                  mulh         t5, ra, a1
                  addi         s4, s0, -1694
                  srliw        a2, a1, 30
                  remu         a5, a7, tp
                  xori         s2, s4, 650
                  sub          a7, a1, a1
                  srli         ra, s4, 28
                  or           a5, t3, a4
                  slli         s3, a6, 58
                  lui          s0, 49265
                  divu         sp, t5, t6
                  mulw         s0, zero, t0
                  andi         zero, t3, 1236
                  xori         t2, a2, 731
                  ori          a6, a0, -1957
                  sllw         s7, s0, tp
                  divuw        s4, a0, t0
                  mulhu        a5, tp, a2
                  lui          t0, 590221
                  sltiu        t3, s1, 1485
                  srlw         t3, sp, s8
                  subw         a3, s0, t1
                  andi         s2, t3, -897
                  sll          s3, s9, t3
                  mulhu        s9, t1, s1
                  addw         t5, a0, s0
                  divu         zero, sp, a0
                  sraw         tp, t4, sp
                  addw         s7, a7, s7
                  sub          s1, s5, sp
                  sltu         a2, tp, s5
                  rem          s9, s7, a3
                  and          gp, s8, s0
                  sra          gp, ra, s10
                  sub          a7, t5, a5
                  divu         s11, t4, a4
                  addw         gp, tp, zero
                  remw         a6, a5, a1
                  auipc        s0, 839567
                  sub          t1, a1, s6
                  div          s10, s0, a3
                  sltiu        s11, zero, -877
                  sraiw        s1, t1, 15
                  slli         s4, a1, 15
                  divuw        sp, a5, zero
                  srl          s2, s0, t6
                  remu         s7, s7, s9
                  slti         s0, sp, -1602
                  slliw        a6, a7, 13
                  addi         t0, s9, 469
                  add          tp, s10, a4
                  divuw        zero, s4, s4
                  slli         a1, a7, 25
                  subw         gp, zero, tp
                  divw         a0, s4, t2
                  sub          t0, s0, s3
                  divuw        a7, s10, s0
                  divu         t5, zero, gp
                  nop
                  divuw        s7, sp, zero
                  mulh         s10, t6, zero
                  srlw         sp, a2, a6
                  and          a3, gp, s2
                  srai         a2, s10, 40
                  remu         t3, a7, a6
                  and          t5, a7, t6
                  divu         gp, gp, t3
                  sra          s1, t5, t5
                  ori          t0, s6, 473
                  lui          s6, 151927
                  mulhu        s9, s11, t2
                  srl          s4, t5, a4
                  srl          a3, s8, s7
                  rem          t4, s0, t3
                  xori         sp, a1, 967
                  srl          t4, s9, s10
                  srai         s0, a7, 39
                  srli         s9, t2, 58
                  addw         sp, a6, zero
                  sra          s3, a4, tp
                  remu         a0, t6, t5
                  andi         sp, a1, -421
                  auipc        zero, 142376
                  div          a2, tp, s4
                  sllw         a0, t0, s6
                  or           t0, s0, zero
                  sll          s6, a3, s5
                  sraiw        t0, a3, 29
                  srliw        s4, s1, 21
                  srliw        s11, sp, 28
                  mulhsu       s11, a7, zero
                  rem          s8, t6, zero
                  slli         gp, t6, 6
                  lui          s4, 157306
                  sub          t1, t0, t1
                  slti         s6, s2, 1512
                  add          s9, t6, a0
                  sltu         gp, a2, t1
                  slli         a1, zero, 62
                  sll          sp, s7, t3
                  slti         s2, a3, -722
                  sltiu        s4, a4, -33
                  xor          a7, s2, zero
                  or           s3, s4, a0
                  mul          s7, s6, t5
                  srli         t4, s5, 55
                  slt          a5, a3, t5
                  sub          s7, t0, ra
                  rem          s1, s10, s11
                  sltiu        ra, a0, -1131
                  srliw        a0, t4, 15
                  slti         s2, t3, -1317
                  slt          t0, ra, ra
                  remu         s3, s1, gp
                  addw         t4, t3, t3
                  or           s4, s10, sp
                  remu         s3, t1, s0
                  auipc        t5, 767774
                  auipc        s9, 731130
                  sll          tp, s3, s4
                  sra          s10, s0, s0
                  sll          a5, a1, s10
                  or           s3, tp, ra
                  auipc        t5, 889207
                  srai         s2, s3, 52
                  rem          gp, t1, s11
                  div          sp, s2, t6
                  sraw         a6, s6, s0
                  slti         s1, t5, 133
                  ori          s0, t1, 1935
                  srl          s0, t5, s4
                  andi         gp, s5, 1000
                  sll          t4, s11, s6
                  addiw        zero, a4, -380
                  and          s3, a0, a4
                  mulhsu       gp, s2, t4
                  mulhsu       s10, gp, a3
                  or           s9, t0, a5
                  xor          t4, t0, s1
                  mulhsu       a2, a4, s4
                  sraw         tp, s7, s2
                  slli         s4, s0, 12
                  divu         s6, s0, a2
                  and          s7, s7, t0
                  sllw         s3, a3, a5
                  lui          s10, 801513
                  srliw        t4, a2, 3
                  addw         t3, t3, t1
                  sltiu        t2, tp, 1254
                  mulhsu       t2, tp, t3
                  addiw        s9, s5, 1680
                  div          t3, t6, tp
                  sltiu        a0, s10, 285
                  auipc        t3, 720730
                  srlw         gp, t6, a6
                  sub          t4, a3, ra
                  remw         tp, s3, a1
                  and          a5, a3, s1
                  slli         ra, s8, 1
                  remu         s9, t4, a1
                  xor          a5, s0, a1
                  xori         s11, sp, 1524
                  sra          t4, a4, a1
                  mul          sp, t0, a1
                  mulhsu       t2, s11, s4
                  slti         t5, zero, -531
                  mul          s0, t5, sp
                  rem          sp, a3, tp
                  mulw         a3, zero, gp
                  sll          t0, t2, t3
                  srai         gp, a5, 58
                  srliw        a1, a3, 19
                  or           t5, a6, a6
                  srlw         s3, s6, s3
                  srliw        a5, a4, 5
                  slli         a5, a0, 34
                  srai         zero, t2, 37
                  remw         s2, a3, t1
                  sraiw        a5, t1, 31
                  addiw        s8, ra, 1071
                  srlw         ra, a7, tp
                  sll          a7, t5, gp
                  sltiu        s10, s4, 1000
                  or           s9, s9, sp
                  nop
                  sub          t4, ra, t1
                  remw         s9, t2, ra
                  mul          s1, t4, a1
                  remuw        t4, t0, t1
                  sltiu        ra, a4, -645
                  mul          s11, t0, s1
                  ori          s1, s7, 976
                  mulw         s2, s9, a0
                  mulh         t5, t2, s0
                  add          a7, a6, a2
                  mulw         s9, s11, t2
                  lui          a6, 114017
                  sraiw        t2, t3, 26
                  sub          a6, a0, a1
                  addw         a0, s9, s2
                  mulhu        a1, t1, s4
                  srlw         t3, s2, sp
                  remuw        s8, gp, s1
                  mulhsu       a6, a6, zero
                  addw         a1, t4, s10
                  mul          t5, s7, zero
                  sllw         t3, s10, t5
                  divuw        a3, s10, sp
                  slliw        s10, s9, 12
                  mulhsu       a5, a4, a7
                  auipc        t5, 1017887
                  sraiw        s4, s9, 19
                  div          tp, t0, s4
                  srlw         s7, a0, gp
                  ori          t2, t0, -1820
                  mulhu        t5, s6, a1
                  mulw         s11, t6, s3
                  add          t4, s11, s2
                  subw         t4, gp, a3
                  sraw         zero, zero, a2
                  div          t4, s5, sp
                  srl          a0, a1, s10
                  slti         s0, a4, -1430
                  auipc        s8, 211320
                  mulhsu       a6, tp, s1
                  addi         t4, s3, 1592
                  sll          t0, t6, s5
                  xor          s9, t6, ra
                  and          s3, a7, a6
                  div          t3, sp, s1
                  slli         a6, s10, 48
                  rem          s1, a3, s7
                  sraw         a1, t6, s6
                  mulh         s1, a4, s3
                  addi         s7, t1, 518
                  divu         s0, t1, s5
                  ori          s7, s10, 1716
                  sll          a3, a2, s8
                  div          a1, a1, a7
                  divuw        s3, t2, a0
                  and          a7, a0, a0
                  divu         s9, s4, t2
                  slli         a2, t6, 58
                  srliw        s4, s7, 18
                  slti         a0, t5, 1181
                  srlw         s8, t0, sp
                  mul          t1, t0, s2
                  remu         t3, s9, t4
                  srl          s4, s11, t5
                  slti         a6, zero, -1879
                  rem          t0, t6, t4
                  or           a1, s8, s8
                  sll          gp, s1, tp
                  mulw         s7, t4, t6
                  mulhu        gp, s6, s5
                  andi         a6, s1, 503
                  remu         t2, t6, s4
                  slli         a7, s10, 49
                  divu         gp, t2, sp
                  sllw         s6, t3, tp
                  xori         sp, s9, 627
                  sll          a2, zero, sp
                  xori         a6, s8, -631
                  mulh         t5, ra, t2
                  lui          ra, 886100
                  nop
                  srli         s7, a4, 51
                  remuw        t0, a5, a5
                  divw         s1, zero, a6
                  divuw        a0, s2, t0
                  divw         t4, t1, s6
                  srlw         tp, a7, a3
                  remuw        a2, t2, s10
                  addiw        s2, s7, -311
                  xor          s2, s2, t3
                  add          zero, a4, t1
                  addw         gp, s5, a6
                  addw         t5, s5, t6
                  srl          t5, a6, a4
                  addi         s10, a2, -410
                  addw         a5, ra, s9
                  sraw         t3, a7, t2
                  divuw        s7, t3, s8
                  mul          t2, a3, a4
                  srli         a7, a5, 7
                  mulhu        s1, t2, t3
                  andi         s3, s11, 793
                  divw         s9, s0, a5
                  sltiu        s7, tp, -1113
                  slliw        s9, s2, 2
                  slt          s9, s7, s0
                  mulhsu       s4, s3, a6
                  mulhu        s10, a1, t2
                  mulhsu       s1, s8, t5
                  add          s4, s11, a0
                  subw         t0, t2, a1
                  mul          t0, s5, zero
                  sraw         ra, sp, t6
                  sub          zero, a4, s9
                  mulh         s11, s1, a2
                  sub          a6, sp, s10
                  sraw         s10, t3, a1
                  or           s10, tp, s0
                  srl          s10, ra, s7
                  remuw        s0, s10, t3
                  slti         a3, t3, -1451
                  lui          ra, 736244
                  srli         s3, a0, 15
                  add          s2, s1, s3
                  remw         t0, a7, s0
                  nop
                  xori         tp, t1, 1985
                  addiw        s11, a4, 699
                  sll          sp, t4, a2
                  srai         t2, s3, 22
                  srlw         t0, s11, a6
                  remu         zero, s10, t1
                  divu         t1, a4, a0
                  add          a0, a2, t2
                  sraw         t5, gp, s8
                  mulh         s10, t1, s7
                  sub          s8, s2, a5
                  mulw         a1, s6, s9
                  sll          zero, t4, a6
                  remuw        a0, a7, a5
                  mulhsu       s7, t4, a6
                  remuw        s8, a5, a2
                  andi         s9, a4, -83
                  addw         ra, t0, s8
                  andi         s7, gp, 496
                  addi         a2, tp, 346
                  mulh         s4, t1, s4
                  xori         gp, s6, 219
                  and          a7, a2, t6
                  addi         s2, t5, -1673
                  lui          s11, 202530
                  sltu         s0, tp, a6
                  srl          zero, s3, a1
                  xori         t5, t1, -503
                  auipc        s4, 966671
                  sllw         s6, t5, s4
                  srlw         s2, a0, a2
                  sra          s3, s5, s11
                  sltiu        t3, s3, 220
                  divw         s9, t3, t4
                  remw         s9, s9, s8
                  addi         t5, s1, 2019
                  xor          a2, s7, t5
                  rem          tp, a5, s5
                  mul          a6, s10, tp
                  srlw         s6, a2, a3
                  andi         zero, tp, 864
                  ori          s10, a5, -1942
                  mulhu        sp, tp, s6
                  divuw        s10, s1, tp
                  sra          a7, a3, a0
                  sllw         gp, s0, gp
                  sllw         t5, t1, a1
                  slti         sp, a5, 1086
                  andi         s9, s6, -520
                  ori          s11, a0, 1817
                  nop
                  mulhu        zero, s9, t0
                  rem          s2, t1, t4
                  sraw         s2, t3, gp
                  auipc        a2, 739500
                  addw         s4, a5, a6
                  auipc        t1, 903183
                  mul          a5, a1, s1
                  lui          sp, 755435
                  xori         a3, s1, -1988
                  andi         s0, s11, 1476
                  slt          a7, t5, a0
                  sltu         s4, s7, s8
                  auipc        ra, 492888
                  xori         s7, ra, -1601
                  nop
                  and          s10, s8, tp
                  mulh         sp, t1, t2
                  sltiu        s11, tp, -1867
                  nop
                  mulhu        s7, s9, s9
                  nop
                  subw         s2, zero, s3
                  divw         s0, s7, a2
                  sllw         t3, t3, s10
                  auipc        a1, 371519
                  mul          s8, s10, s8
                  sltiu        t2, a1, -298
                  sra          t0, a0, s4
                  mulhsu       s7, s5, a3
                  and          s3, a0, a5
                  mulhsu       s8, s4, a1
                  ori          zero, ra, 1715
                  xori         zero, t6, -1932
                  xori         s7, a3, -1974
                  ori          a7, a1, 858
                  sll          t1, s11, a5
                  divw         a7, a6, s4
                  srl          t4, a6, s9
                  andi         t5, s2, 966
                  div          s8, a1, t4
                  addw         s4, s5, s6
                  slt          s8, t1, s11
                  sraw         t4, a7, s1
                  addw         t2, t2, s11
                  sllw         s8, t6, s10
                  sll          s10, t1, s4
                  addi         t4, t1, 787
                  sll          t1, s5, s7
                  and          a3, a2, a1
                  addi         a2, zero, 1332
                  sra          s6, a0, t6
                  sltu         s0, t6, s8
                  mulh         s6, s6, s4
                  slt          s3, s8, s8
                  add          s11, t6, s1
                  mul          t0, s7, a6
                  subw         s0, s6, a4
                  mul          s8, s0, s1
                  or           ra, a2, s9
                  slt          a6, s0, zero
                  slti         t4, zero, 1801
                  srl          s7, a3, a4
                  sltiu        t0, s9, -1433
                  mulhsu       s8, t4, t5
                  subw         s1, a1, ra
                  auipc        t4, 105291
                  sltu         a5, s9, s0
                  divu         t5, s9, s5
                  sraw         s8, s6, ra
                  slli         a7, s10, 58
                  ori          t5, a6, 1646
                  or           a6, a6, s11
                  srai         t5, ra, 19
                  ori          t4, a7, 1652
                  slt          a0, s1, t4
                  mulw         tp, s2, t3
                  auipc        s4, 190688
                  divuw        s0, t0, t2
                  srl          t0, t4, zero
                  srliw        t2, s6, 8
                  addiw        sp, a6, 1469
                  srli         a1, a7, 40
                  mul          t1, t0, zero
                  slti         a0, a0, -1316
                  subw         t1, s9, a6
                  subw         a7, s9, a7
                  lui          t3, 989805
                  sltiu        s0, s2, 812
                  srliw        a5, s10, 5
                  srlw         s3, s3, t2
                  slliw        s7, s0, 17
                  remuw        tp, s4, s3
                  sraiw        t4, tp, 2
                  mul          zero, t0, t5
                  andi         s8, s10, -970
                  addi         a7, a1, 779
                  add          zero, s9, s10
                  mulhu        s8, a4, t2
                  srai         s1, a3, 32
                  xor          a7, a1, t5
                  divw         a0, s2, gp
                  ori          s11, sp, 1296
                  andi         a3, s7, -1454
                  div          a7, ra, t5
                  srliw        a6, a4, 10
                  slli         t5, tp, 18
                  slt          s11, tp, a7
                  slli         s9, s8, 44
                  add          a0, t5, a7
                  slliw        t4, s2, 12
                  remuw        t5, a1, s11
                  divuw        s8, s11, sp
                  auipc        s2, 434295
                  lui          a5, 480433
                  divu         t4, t4, gp
                  srl          s7, t6, t1
                  mul          s2, s9, tp
                  andi         s9, a7, 781
                  mulw         s7, t3, a6
                  addiw        s0, a3, -1304
                  divuw        s3, t5, a6
                  divuw        t1, s2, t1
                  sltu         s9, a3, s4
                  remw         s0, a7, a5
                  add          s8, s3, t1
                  addw         t5, s2, tp
                  srai         s2, s3, 54
                  or           s1, tp, a4
                  srli         s7, s7, 0
                  or           t2, a2, t3
                  xori         a1, s7, 1777
                  sltu         s10, s0, s11
                  mul          t3, ra, s5
                  remuw        a5, a0, s6
                  lui          s7, 43853
                  divw         s2, s8, a1
                  mulh         a0, sp, sp
                  sltu         a5, s4, t5
                  lui          s3, 515179
                  remw         s6, sp, t6
                  auipc        ra, 344485
                  sllw         t4, sp, s9
                  mulhu        s7, a3, gp
                  mulhu        t5, s11, tp
                  divuw        a0, s6, a6
                  mulh         s2, t1, t2
                  addi         s11, t0, 1893
                  srl          s3, a2, s0
                  lui          t5, 444147
                  nop
                  addi         ra, s11, -1600
                  remuw        t4, t1, s3
                  sub          t1, s7, a4
                  sraiw        t2, s8, 15
                  addiw        zero, s1, -407
                  mulhu        s10, gp, zero
                  addw         s2, tp, tp
                  and          s10, s10, t4
                  slt          s2, a2, s4
                  slliw        a0, s7, 16
                  addw         a5, a4, t3
                  slliw        a7, s2, 3
                  divw         t5, s11, t3
                  remw         ra, ra, s3
                  srl          a0, t1, s2
                  sraw         s7, sp, s7
                  addi         t3, a3, -1793
                  mulh         a3, a1, t4
                  srlw         ra, a1, s11
                  ori          t0, gp, -27
                  srl          s6, t6, s10
                  remu         t3, s0, s8
                  add          s1, s3, t2
                  add          s7, s8, s6
                  srlw         a0, t2, ra
                  auipc        t3, 743005
                  srliw        s0, a0, 31
                  srli         s10, s4, 8
                  auipc        gp, 819423
                  addi         s9, t4, 1980
                  sltiu        t4, sp, 618
                  slt          s0, tp, sp
                  addi         tp, s0, -1580
                  and          gp, s1, a2
                  mulhsu       s7, t1, t4
                  sltiu        a5, s7, 5
                  xori         t5, t3, 261
                  srli         t5, s0, 26
                  slti         s10, s10, -531
                  mulw         t5, sp, t5
                  srliw        t4, s7, 15
                  addw         s4, s2, s6
                  and          s4, a2, s10
                  sraiw        t4, ra, 28
                  mulw         t1, s4, s4
                  mulhsu       t3, s2, sp
                  xor          t1, s6, s7
                  remu         t2, s9, s2
                  sll          s3, s10, s7
                  sraw         ra, t0, tp
                  sltiu        t2, s3, 347
                  sraiw        a0, gp, 11
                  remw         a5, a2, s3
                  srai         sp, t6, 47
                  slt          s8, s0, s3
                  srai         t1, s6, 22
                  slli         ra, gp, 28
                  srliw        s10, s4, 7
                  xori         s11, t4, 1986
                  subw         s7, t5, tp
                  rem          a0, a1, s4
                  slt          t2, a1, a5
                  divuw        t1, s7, gp
                  remu         zero, tp, s5
                  sub          a1, a5, s10
                  sub          sp, s8, t2
                  slt          s1, a7, zero
                  subw         s3, s8, s8
                  addw         t4, a0, s5
                  rem          sp, t4, s10
                  remuw        gp, a6, s9
                  remu         t0, t6, s2
                  addiw        s1, s7, -726
                  subw         s0, zero, s7
                  mul          tp, s9, a2
                  srli         s7, a3, 10
                  nop
                  remuw        t1, t4, s3
                  divw         s6, a3, a2
                  srai         a5, s3, 19
                  mul          a5, a0, a1
                  nop
                  and          s4, s2, a0
                  divu         a0, t2, ra
                  auipc        a2, 634945
                  addiw        s9, s7, -1471
                  subw         t1, s9, s6
                  divuw        zero, t2, s2
                  lui          a1, 371465
                  addw         s2, a6, t2
                  and          s9, s10, a4
                  div          a5, t1, tp
                  xori         s0, a7, 1147
                  srli         a1, gp, 37
                  mulhu        s3, s3, s10
                  divuw        t3, tp, s11
                  srai         a1, t3, 5
                  sraw         s1, a2, a6
                  slli         s4, s7, 32
                  srl          tp, s9, s5
                  lui          a6, 959441
                  divu         s7, s5, zero
                  srl          s6, t5, a4
                  sub          s1, a2, a4
                  slli         t4, s2, 60
                  slti         s4, zero, 1810
                  remuw        t0, s5, s11
                  slti         t1, a6, 133
                  sllw         t5, a5, t2
                  div          t2, s7, ra
                  srai         t2, a7, 26
                  divw         ra, s8, t2
                  srliw        t4, s9, 15
                  sraw         s9, s6, a7
                  nop
                  and          t1, s11, s6
                  div          a2, t3, s4
                  mul          s6, s10, t2
                  remw         tp, s11, s11
                  mulhsu       a7, s7, gp
                  xor          a5, s6, s9
                  srlw         s11, a3, t3
                  sub          a6, gp, t5
                  add          zero, s1, a3
                  sraw         s2, a3, t6
                  auipc        s10, 602078
                  sraiw        zero, s6, 13
                  slli         a2, s11, 11
                  or           s10, tp, a2
                  remw         t3, sp, s1
                  remw         a3, s0, t2
                  srliw        s3, a0, 1
                  slliw        s0, a7, 23
                  subw         s3, s0, a1
                  nop
                  mulhu        t4, s6, tp
                  addw         a2, s6, gp
                  mul          t1, s4, a6
                  remu         a5, s11, t4
                  srlw         ra, tp, t2
                  sltiu        s2, tp, 1248
                  andi         a0, s3, -1808
                  divu         a5, a2, t3
                  remu         t3, s8, ra
                  sltiu        a1, t5, 1564
                  sraw         s4, gp, ra
                  xori         a5, a5, -590
                  srai         s6, s6, 2
                  or           t0, t0, a0
                  mul          s11, s8, s11
                  xor          s11, t6, a5
                  addw         a0, s0, s10
                  and          a2, a3, s6
                  mul          t4, ra, s8
                  divw         s3, a7, sp
                  mulhu        a5, a6, sp
                  slt          t0, s5, t6
                  add          t3, a4, ra
                  addi         t4, ra, 1318
                  slti         s1, a5, 698
                  srl          t3, a4, s1
                  andi         t0, zero, 106
                  slt          s6, s6, ra
                  addw         s6, s5, a2
                  sraw         s0, t2, a2
                  add          s1, s1, a7
                  srl          s7, a3, a1
                  sub          s9, a2, s8
                  srai         s3, t6, 17
                  srai         t4, s9, 24
                  mulhsu       a1, zero, s3
                  divu         a6, s9, a3
                  srai         s10, s0, 11
                  mul          a3, t1, s11
                  sraiw        a1, s0, 7
                  mulw         s11, a1, zero
                  sraw         s1, a3, s11
                  xor          a5, t5, zero
                  add          a5, s7, t0
                  nop
                  srai         a6, t5, 4
                  slliw        a5, tp, 8
                  divw         ra, t1, s0
                  rem          a2, sp, t5
                  sltiu        t0, t2, -405
                  rem          s7, tp, t6
                  mulhsu       sp, ra, s11
                  addi         a3, s0, 690
                  sub          t5, t2, a2
                  rem          t0, s3, gp
                  sll          s1, s0, tp
                  sll          a6, a5, a6
                  sltiu        s6, a4, 976
                  slt          s10, s2, t0
                  sltiu        a3, t0, 1006
                  add          zero, t3, t4
                  remu         s2, t1, gp
                  remw         s9, t5, s1
                  slt          s8, s10, a2
                  nop
                  nop
                  sra          t1, s2, ra
                  sraiw        s3, ra, 26
                  divu         s8, t5, s5
                  divuw        a1, s6, gp
                  xori         zero, a1, -201
                  and          a5, sp, a3
                  or           s8, s1, a4
                  mulhu        s4, t1, a3
                  remu         s10, s9, a1
                  add          s10, tp, a0
                  srai         s7, a7, 57
                  or           s2, tp, t3
                  mulh         t1, t1, gp
                  divuw        tp, s4, t1
                  srli         s3, s3, 13
                  or           a7, ra, s8
                  mulhu        a6, ra, a1
                  srlw         s0, a4, t1
                  mulh         t5, t4, s1
                  divuw        t0, t5, gp
                  sra          t4, s10, a4
                  mulhsu       s7, s11, zero
                  remu         s11, gp, s1
                  mulh         t0, s9, ra
                  nop
                  divuw        zero, ra, a1
                  srliw        a3, s0, 4
                  sllw         s2, s7, s6
                  mul          a7, a6, t0
                  sltiu        s6, s6, -618
                  xori         s2, t6, 2045
                  mulw         a5, t0, a3
                  div          s6, a0, s0
                  sll          ra, a2, ra
                  srliw        s9, s1, 26
                  nop
                  srlw         a2, zero, s4
                  srlw         a0, s8, t4
                  slt          s0, s10, s4
                  andi         a0, s11, -832
                  sltu         a0, a3, a1
                  sll          t4, ra, s10
                  addw         a6, a7, a2
                  srlw         t3, ra, s6
                  nop
                  addiw        s2, s6, 202
                  sra          a2, t1, t3
                  slt          s4, t3, ra
                  divuw        a2, a5, a4
                  xori         a6, a2, 1693
                  remu         zero, a6, t4
                  divu         t5, s1, t5
                  sltu         t5, t0, s3
                  srliw        s9, t0, 14
                  slt          tp, a7, t4
                  mulhu        a1, a2, t6
                  mul          a1, tp, gp
                  srai         s9, a7, 7
                  srai         t1, a4, 17
                  nop
                  mulw         sp, a0, tp
                  srlw         sp, a4, s6
                  xori         s4, s4, -1860
                  ori          t4, a3, 1289
                  divw         a1, sp, t2
                  sltiu        ra, a5, 1006
                  div          t3, s9, ra
                  divw         t1, a1, t6
                  sltiu        a1, zero, -1610
                  div          s10, s1, s3
                  andi         t2, a6, -557
                  sub          t0, t4, t0
                  addiw        a7, s10, 1912
                  xori         t0, s3, 108
                  and          s10, t2, s2
                  srliw        t2, s10, 19
                  add          a6, t4, zero
                  sltiu        ra, a2, -1489
                  subw         gp, s0, s8
                  xori         s1, s6, 795
                  sltiu        t2, s5, 1433
                  mul          s10, t4, a0
                  divuw        s6, t0, t5
                  nop
                  slt          a3, a0, s0
                  divuw        t2, gp, t5
                  srliw        s4, ra, 8
                  or           s1, ra, t2
                  mulhsu       gp, gp, t1
                  srliw        ra, t5, 13
                  div          s6, s8, s4
                  mul          s10, t5, a6
                  mulhu        s10, a7, s7
                  auipc        s2, 26572
                  mulhsu       a1, gp, t2
                  mulw         t2, t1, t4
                  mul          s8, t5, t5
                  srl          s8, s0, s6
                  xori         a5, s8, -1192
                  sllw         a0, t2, zero
                  xori         t1, s5, 1056
                  andi         t2, t1, -1198
                  slti         a6, s6, -545
                  sll          a1, s3, s3
                  nop
                  remw         s4, t4, a0
                  divuw        a3, s3, t1
                  subw         a0, ra, a3
                  slli         ra, s5, 29
                  divw         s4, s6, s1
                  subw         t4, tp, ra
                  add          t5, a1, a6
                  xor          zero, sp, zero
                  and          s6, a3, s3
                  addiw        zero, a7, 338
                  sraiw        t0, t5, 7
                  remu         s8, a0, s9
                  sll          s9, s5, s7
                  rem          s10, a4, s2
                  sraiw        t3, t2, 23
                  sltiu        s7, s1, 1023
                  sltu         tp, a0, s1
                  addiw        gp, s10, 895
                  addw         a3, s7, s4
                  divuw        s10, s10, sp
                  ori          a7, s2, -155
                  slti         s0, zero, -372
                  xor          a1, t5, t0
                  mul          s4, s10, s5
                  addi         a2, s9, 382
                  mulh         s1, a6, s0
                  remuw        a7, s0, ra
                  mulhu        a1, t5, s3
                  slt          ra, s10, s10
                  srai         a2, s11, 10
                  addw         s9, t2, s10
                  subw         t3, zero, s1
                  slt          t0, a3, s3
                  subw         s0, t0, a3
                  lui          a7, 936940
                  sub          a6, s2, zero
                  lui          s4, 1030310
                  xor          a1, t2, s9
                  sltiu        a5, sp, 1950
                  nop
                  div          a2, t2, a3
                  srai         s9, tp, 61
                  div          t5, a3, t5
                  sllw         s0, tp, t0
                  nop
                  slt          s1, t2, s4
                  slti         s11, a4, 1428
                  add          a3, a2, gp
                  mulh         s11, a6, t4
                  rem          s2, gp, s4
                  and          sp, a5, sp
                  sltu         a3, s5, t1
                  remw         s1, a3, t4
                  sll          s4, s11, s2
                  andi         t4, t1, 405
                  remw         s1, gp, t4
                  and          t0, t3, sp
                  srai         s1, a6, 45
                  sllw         a3, s3, gp
                  remu         a0, t5, a1
                  mulhsu       s10, a0, gp
                  mulhu        a7, sp, s8
                  sltu         zero, s7, a6
                  rem          a1, t4, a1
                  and          s2, zero, s4
                  remuw        s11, t2, s5
                  srai         s3, s10, 31
                  remuw        s0, t6, s10
                  addiw        t3, sp, -1581
                  addw         s4, s9, t6
                  lui          s9, 96764
                  sllw         s3, t2, tp
                  srli         a2, s7, 27
                  srl          s11, t5, t0
                  div          a7, a6, a7
                  srai         s8, s2, 41
                  sllw         ra, a3, s4
                  rem          s11, a0, s0
                  mul          s10, t4, s9
                  sraiw        ra, s2, 30
                  mulhsu       gp, t3, t6
                  remu         s2, t6, s0
                  divu         a0, t6, s11
                  divuw        s10, s1, tp
                  srli         a5, a4, 41
                  andi         t4, zero, -130
                  sra          t5, s3, t2
                  subw         a3, t6, t0
                  divu         t2, s2, t4
                  nop
                  mulhu        ra, s0, a5
                  sub          s6, s1, t0
                  rem          ra, a2, t4
                  or           s6, s11, a5
                  sub          s6, gp, t0
                  remu         zero, a5, s6
                  divw         t3, gp, sp
                  divu         t2, zero, s4
                  remu         s2, s1, s6
                  divu         a7, a2, s8
                  sltiu        gp, a7, -1316
                  slli         tp, a3, 0
                  mul          a3, s11, s8
                  add          s9, a7, a2
                  addiw        s1, t3, 600
                  mulh         sp, s5, s7
                  slli         t3, sp, 8
                  srli         t4, s0, 0
                  sltiu        t0, t3, 1450
                  slli         s9, s8, 20
                  or           tp, t0, s11
                  sll          a3, t3, tp
                  srli         zero, s8, 17
                  sltiu        s6, a0, -1277
                  nop
                  sra          zero, s3, gp
                  lui          s9, 765270
                  slt          t4, t1, s3
                  subw         s4, s0, t3
                  or           t4, t3, sp
                  mulhu        sp, s11, s3
                  nop
                  and          t2, s8, a6
                  sltiu        s4, t4, -924
                  lui          a0, 112492
                  add          s9, s4, a6
                  sraw         s8, a6, t3
                  remw         a0, s2, t5
                  addi         a7, a4, 499
                  sra          t3, t6, a0
                  add          ra, a3, s11
                  xori         a6, t0, -276
                  sraiw        a0, s4, 12
                  sraiw        s3, t6, 6
                  addiw        s7, t5, -1590
                  rem          s7, s2, s7
                  srlw         a7, s0, t0
                  or           a6, a3, s6
                  nop
                  slti         s7, s3, -1735
                  addiw        t3, ra, -1837
                  add          s9, ra, zero
                  add          s3, s3, s4
                  remu         s7, s7, a6
                  slli         a0, s5, 51
                  rem          s4, s11, t4
                  add          t4, t1, s10
                  slliw        t2, a6, 26
                  slli         t4, zero, 1
                  srlw         gp, t0, s2
                  srli         t2, a4, 41
                  remw         s11, a3, a7
                  div          ra, s5, t5
                  srliw        s10, t3, 8
                  sub          sp, t3, s9
                  sllw         t0, s3, zero
                  sub          t5, s10, t5
                  mul          a5, s7, a3
                  and          s4, a5, s10
                  addw         gp, ra, a5
                  srliw        a1, a3, 29
                  or           s2, t5, s9
                  srl          a5, s7, a4
                  mulw         s10, t2, t2
                  slt          s1, t0, t5
                  remuw        t5, a7, t6
                  sltu         a0, sp, t1
                  sltu         a2, a6, s11
                  or           ra, t2, s10
                  auipc        s8, 122966
                  remuw        s3, s3, s5
                  srlw         t4, a2, s5
                  addi         a2, s7, -696
                  srl          t4, s9, t2
                  subw         s9, s7, s10
                  mul          t5, a2, s0
                  addi         t4, s3, 422
                  slt          t1, s11, a1
                  mul          zero, t0, t3
                  andi         s8, a3, 523
                  srl          zero, s2, t4
                  lui          s10, 279026
                  remw         s6, a3, s6
                  nop
                  xori         s1, a5, 710
                  slli         s7, a0, 14
                  mulhu        s8, a1, s6
                  slti         s10, a1, 1661
                  lui          s4, 159243
                  srli         zero, s10, 44
                  sub          t0, a5, a1
                  addw         s2, sp, t0
                  sraw         s4, s2, tp
                  slt          a3, zero, t5
                  remu         a1, t0, a2
                  mulhsu       zero, t4, a2
                  slt          t0, s9, s10
                  and          t3, s8, sp
                  addi         t3, zero, 755
                  mulh         t5, t0, s10
                  lui          a2, 453355
                  xor          s7, a5, a4
                  div          t4, s0, a4
                  sub          s3, s8, s2
                  mul          a1, a0, s10
                  sra          s4, a4, a0
                  and          s3, a3, t1
                  sraw         t4, s11, t4
                  xor          s11, gp, a0
                  nop
                  divuw        s11, gp, s11
                  div          s6, s4, s11
                  mulw         s11, s6, t6
                  remw         a0, tp, t0
                  remuw        t5, a5, t4
                  xor          s8, t4, sp
                  sltu         s0, s2, s9
                  addi         s6, s8, 2046
                  mul          s3, sp, t0
                  mulhu        t4, t6, a6
                  sllw         s7, ra, sp
                  divu         s1, t0, s8
                  divuw        t2, s6, s4
                  mulw         a6, s5, sp
                  subw         t3, t2, a2
                  srliw        t2, t1, 14
                  addiw        tp, s1, -1235
                  srl          a5, t5, sp
                  slliw        tp, sp, 12
                  sll          s1, s2, s11
                  sllw         t3, a3, gp
                  sllw         a1, t6, s11
                  remw         s7, t5, t5
                  xor          t3, t4, a1
                  srl          a2, t5, s1
                  mulhsu       a2, zero, s11
                  lui          s11, 12418
                  subw         s9, t3, a1
                  sub          a0, a5, s11
                  and          tp, sp, a2
                  mulh         s7, a6, ra
                  addw         s10, s5, t5
                  srlw         ra, s11, t4
                  xor          t4, s2, zero
                  andi         a7, t3, -1353
                  slti         s2, a2, -1513
                  div          s2, tp, s9
                  nop
                  auipc        s6, 92175
                  ori          s2, s8, -739
                  slt          a0, s3, s10
                  lui          s8, 658367
                  sra          a3, gp, s9
                  addiw        a3, s11, -1292
                  divu         t5, a1, tp
                  mul          t5, s7, a7
                  subw         s6, t5, t6
                  slli         t2, s2, 11
                  mulhsu       s2, a5, t5
                  mulw         a0, tp, a2
                  remuw        t0, sp, t4
                  mulh         s8, a2, a1
                  divu         s7, a2, s6
                  srliw        tp, t0, 2
                  remuw        a6, tp, s4
                  addiw        a6, s0, 737
                  auipc        t5, 870180
                  mulh         t5, s3, s4
                  slt          zero, s9, a0
                  xori         s4, sp, 637
                  remuw        s11, a7, s0
                  slliw        a6, gp, 18
                  sltiu        ra, s7, -285
                  divu         s7, ra, s6
                  div          t5, gp, a3
                  ori          a5, s8, -922
                  sub          s9, a6, t2
                  mul          t5, ra, a2
                  sltiu        a3, a7, 1794
                  xor          a5, s11, s1
                  nop
                  sraiw        a0, a0, 8
                  div          zero, s8, s1
                  add          a6, s8, s11
                  divuw        t5, s1, s9
                  ori          tp, a1, -962
                  addiw        a0, s8, -1972
                  sraw         a0, zero, a0
                  add          a0, s10, s6
                  remu         a7, s10, t0
                  sltiu        t0, gp, 931
                  lui          gp, 212479
                  slli         a7, s10, 31
                  sra          t0, s3, s5
                  mulh         a6, s1, s8
                  addw         tp, s4, s9
                  mulhu        s0, s9, s1
                  srl          t3, a6, s9
                  rem          a1, sp, s3
                  srli         s7, t0, 11
                  auipc        a5, 364314
                  auipc        s3, 241948
                  sraiw        a1, ra, 25
                  andi         s10, s11, -895
                  sllw         s10, s2, a4
                  sll          zero, s6, t6
                  or           s7, a2, zero
                  divw         zero, s1, tp
                  slt          a6, t0, s4
                  mulhu        s11, s8, tp
                  sll          s11, s11, s9
                  addiw        s2, s4, -1319
                  nop
                  mulhu        s4, a3, t1
                  sll          a6, s9, ra
                  mulw         a5, a5, s9
                  srlw         s1, a4, sp
                  mul          s1, s6, a3
                  addiw        ra, s8, -33
                  sraw         sp, t5, s4
                  mulw         t0, s5, a2
                  subw         t4, s5, a6
                  mul          s4, s7, zero
                  andi         s4, t3, 421
                  subw         s1, t1, a2
                  slliw        a7, s2, 8
                  divu         a1, s3, t4
                  xor          s3, s5, t6
                  addiw        t0, a2, 281
                  xori         s0, t0, 601
                  slti         s10, ra, -1422
                  andi         a2, s0, -521
                  xori         ra, t0, -91
                  slt          s0, a5, a7
                  sra          s0, a0, t3
                  or           a5, s0, t6
                  srai         sp, tp, 35
                  sllw         s4, t3, gp
                  or           s10, a2, t2
                  xor          s11, s5, t1
                  remuw        tp, a1, t4
                  mulh         s2, s11, s3
                  mulh         s8, a0, gp
                  slti         t1, t4, -1058
                  slt          s7, s8, t3
                  ori          t5, zero, -131
                  sraw         s7, t6, s10
                  addiw        s4, t0, 1661
                  slli         t1, a2, 2
                  mulw         s0, zero, ra
                  sltiu        t1, a0, 918
                  rem          sp, a2, t0
                  remu         a0, s10, a6
                  sltu         ra, s6, a4
                  srliw        s4, a1, 18
                  srliw        s10, a5, 2
                  andi         a0, a7, 167
                  div          s2, a5, s5
                  addiw        t1, gp, 1289
                  sltu         a5, tp, s1
                  mulhsu       s8, a0, a1
                  xori         s3, a1, 1524
                  srai         a7, t2, 44
                  srl          t4, s6, t3
                  divuw        a2, t6, a5
                  subw         s7, s1, s11
                  divu         a2, t0, s4
                  sllw         zero, s6, s6
                  auipc        t0, 891317
                  remu         a0, a6, s10
                  srl          s10, tp, s3
                  add          t0, sp, s9
                  addw         sp, s1, s10
                  nop
                  xor          a5, s6, s11
                  sltu         a0, ra, t3
                  srliw        sp, s8, 18
                  mulhsu       a2, s11, s9
                  lui          a5, 679892
                  srliw        s10, a1, 4
                  xor          t0, t5, a7
                  andi         a3, a1, 579
                  divw         s10, a5, s2
                  mul          s1, ra, a7
                  add          sp, t6, s10
                  mulhu        tp, s6, a5
                  divuw        a7, s9, s6
                  rem          sp, t6, a6
                  add          s3, s5, ra
                  sll          s3, t5, t6
                  sraw         t3, sp, t3
                  srlw         tp, t3, a4
                  sub          t1, t1, t3
                  sllw         a2, a3, a5
                  lui          a3, 319761
                  srli         ra, s10, 58
                  sltiu        s2, sp, 1258
                  slliw        t1, ra, 19
                  sub          s1, s11, a6
                  or           a3, t5, a5
                  remuw        gp, s10, s3
                  nop
                  addi         a0, t6, -891
                  srlw         a7, s5, zero
                  divuw        t0, a6, a7
                  div          t5, t3, s3
                  divu         tp, a1, t0
                  slli         s8, a5, 26
                  divuw        a3, a4, s7
                  slt          t5, t6, s6
                  slli         s10, s6, 32
                  sraw         t0, a1, zero
                  add          a5, a1, a6
                  slli         s6, sp, 60
                  and          s1, s3, s5
                  sll          a1, a1, tp
                  slti         t2, t6, 1485
                  sll          gp, s10, t5
                  mul          s8, t5, a7
                  divu         s4, a2, s2
                  remw         s11, tp, s5
                  remuw        s7, t5, t0
                  andi         a1, s4, -623
                  srliw        a3, s8, 4
                  div          s2, t6, s2
                  nop
                  mulh         s1, t3, s7
                  div          gp, a1, s6
                  add          t5, s11, s4
                  sltiu        a5, a6, -1368
                  mul          s2, s2, a6
                  xor          t3, ra, t1
                  srli         t3, a5, 1
                  remu         s7, a3, t0
                  nop
                  slt          s11, a2, a4
                  sra          t1, t2, a4
                  xori         a3, s7, 1745
                  sll          s4, a3, a2
                  mulw         a0, s1, gp
                  mulh         s9, s7, ra
                  sltiu        t0, s3, 1068
                  andi         a5, s5, -832
                  srai         s3, s4, 24
                  or           s10, s6, t3
                  mulhsu       s6, tp, gp
                  addw         a5, s1, s7
                  or           tp, ra, s5
                  auipc        a6, 296586
                  srlw         s10, gp, a2
                  sra          t2, a5, s3
                  sltiu        ra, zero, 1464
                  sub          s6, s11, s0
                  sll          s1, tp, ra
                  nop
                  slti         ra, t2, -863
                  mulhsu       a1, s1, a5
                  andi         s0, t2, 996
                  srai         t3, a4, 21
                  lui          a1, 185064
                  add          s9, a7, a6
                  mulh         t1, s11, a6
                  add          s7, a4, a5
                  lui          t2, 880156
                  srai         s3, t0, 52
                  subw         a7, a4, sp
                  lui          a2, 533511
                  lui          s1, 119017
                  srl          s8, sp, ra
                  slliw        s7, t2, 24
                  sub          a0, s0, s2
                  sltiu        t5, s7, -1142
                  sra          a5, t2, a1
                  sllw         a5, s0, tp
                  xor          t0, t5, t1
                  mul          gp, s5, s9
                  mulhu        a5, a3, t6
                  slti         zero, s4, 601
                  sltiu        t5, t6, 1832
                  sraiw        a6, ra, 0
                  div          s7, s11, t2
                  sraiw        s8, s8, 8
                  rem          t4, s1, s8
                  and          t2, t1, s4
                  lui          s11, 287737
                  or           s7, a7, s0
                  add          tp, t0, s4
                  sllw         s11, ra, t4
                  sraw         ra, t5, ra
                  sraiw        a7, s5, 17
                  srlw         t0, s11, gp
                  or           zero, s7, s9
                  sra          s4, s10, s1
                  addi         a3, gp, -1718
                  divuw        s8, a4, t2
                  lui          t3, 286393
                  divu         zero, s2, a7
                  srliw        s3, s6, 28
                  srai         t5, t0, 50
                  sllw         a2, s9, s1
                  ori          s3, gp, 1177
                  div          a5, gp, a0
                  addw         tp, ra, t5
                  remuw        sp, a0, t5
                  xori         gp, s11, -294
                  andi         a0, a6, 855
                  addiw        a5, t5, 847
                  slli         a6, a3, 15
                  slli         a1, a4, 63
                  divu         ra, s7, zero
                  sraw         s10, s4, t0
                  nop
                  divu         zero, s6, t2
                  xori         t4, t5, -564
                  rem          a5, s6, a4
                  xor          s2, s8, tp
                  mulhsu       s6, a0, a3
                  remuw        gp, ra, sp
                  sub          s0, s0, s0
                  srlw         t5, s3, s7
                  mulhu        s10, a2, a1
                  lui          gp, 197829
                  remw         a5, t1, a3
                  remu         s0, s9, a1
                  divw         s7, s9, s7
                  subw         a1, a1, t4
                  remw         s8, s3, s6
                  srli         s7, gp, 52
                  srliw        t3, s9, 13
                  xori         s9, s9, -602
                  or           s8, s5, a0
                  sll          a7, s8, t3
                  remw         a7, ra, a4
                  divw         tp, s6, t3
                  ori          s11, s11, -1479
                  slliw        t5, s2, 17
                  slti         a1, s3, 1777
                  and          s11, a6, s0
                  remw         s8, s1, s8
                  addi         a0, a2, -1420
                  sltu         s9, s6, a5
                  and          sp, s3, s6
                  sraiw        s8, s7, 11
                  slt          s4, s7, t2
                  auipc        a7, 175895
                  divu         s7, t4, a0
                  sra          a5, a1, t4
                  div          s3, t6, s11
                  srlw         t2, a4, zero
                  slli         s2, gp, 5
                  remu         s7, a1, s8
                  la x21, test_done
                  jalr x0, x21, 0
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
                  addi x31, x31, -4
                  sd  x14, (x31)
                  add x14, x31, zero
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
                  add x31, x14, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 63
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x25, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x25, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x25, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x25, x28, ecall_handler
                  li x28, 0x1
                  beq x25, x28, instr_fault_handler
                  li x28, 0x5
                  beq x25, x28, load_fault_handler
                  li x28, 0x7
                  beq x25, x28, store_fault_handler
                  li x28, 0xc
                  beq x25, x28, pt_fault_handler
                  li x28, 0xd
                  beq x25, x28, pt_fault_handler
                  li x28, 0xf
                  beq x25, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x25, _start
                  sd x0, 0(x25)
                  sd x1, 8(x25)
                  sd x2, 16(x25)
                  sd x3, 24(x25)
                  sd x4, 32(x25)
                  sd x5, 40(x25)
                  sd x6, 48(x25)
                  sd x7, 56(x25)
                  sd x8, 64(x25)
                  sd x9, 72(x25)
                  sd x10, 80(x25)
                  sd x11, 88(x25)
                  sd x12, 96(x25)
                  sd x13, 104(x25)
                  sd x14, 112(x25)
                  sd x15, 120(x25)
                  sd x16, 128(x25)
                  sd x17, 136(x25)
                  sd x18, 144(x25)
                  sd x19, 152(x25)
                  sd x20, 160(x25)
                  sd x21, 168(x25)
                  sd x22, 176(x25)
                  sd x23, 184(x25)
                  sd x24, 192(x25)
                  sd x25, 200(x25)
                  sd x26, 208(x25)
                  sd x27, 216(x25)
                  sd x28, 224(x25)
                  sd x29, 232(x25)
                  sd x30, 240(x25)
                  sd x31, 248(x25)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
                  mret

load_fault_handler:
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
                  mret

store_fault_handler:
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x14, x31, zero
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
                  add x31, x14, zero
                  ld  x14, (x31)
                  addi x31, x31, 4
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
