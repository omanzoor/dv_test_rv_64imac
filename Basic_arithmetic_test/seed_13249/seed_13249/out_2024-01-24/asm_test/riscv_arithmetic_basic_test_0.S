.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x2, 0x8000000000001105
                  csrw 0x301, x2
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x81800
                  csrw 0x300, x2 # MSTATUS
                  li x2, 0x0
                  csrw 0x304, x2 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xff5e39de
                  li x2, 0x80000000
                  li x3, 0xf81142b0
                  li x5, 0xf29a2845
                  li x6, 0x7
                  li x7, 0x80000000
                  li x8, 0x75c6c5fb
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x1
                  li x14, 0x5
                  li x15, 0x5c2f19c8
                  li x16, 0x80000000
                  li x17, 0xc
                  li x18, 0x80000000
                  li x19, 0x2
                  li x20, 0x80000000
                  li x21, 0x5
                  li x23, 0xa
                  li x24, 0xc
                  li x25, 0x2
                  li x26, 0xc
                  li x27, 0x80000000
                  li x28, 0xf0416b80
                  li x29, 0x0
                  li x30, 0xf754e2ee
                  li x31, 0xf5e1418b
                  la x4, user_stack_end
main:             srliw        a4, t4, 25
                  slti         a6, s8, -582
                  remuw        t1, s4, a2
                  sraw         s2, t5, a0
                  mulh         s11, a5, a6
                  srlw         gp, s11, a2
                  mul          a7, t3, s11
                  sraw         s4, gp, s3
                  add          s10, s4, s10
                  srli         t3, s6, 9
                  sraw         t5, s7, s0
                  sllw         s8, zero, t6
                  subw         t1, zero, s5
                  addi         s1, sp, -1141
                  slli         a0, s11, 17
                  srli         zero, s4, 53
                  srli         gp, zero, 54
                  divu         a3, s2, t6
                  slti         zero, zero, -1368
                  subw         s2, s8, a3
                  srlw         a3, s1, s4
                  slti         s7, a4, -1734
                  rem          s7, sp, ra
                  addw         a4, a2, t4
                  sraw         s0, t0, t0
                  sll          s3, a5, s3
                  sll          t3, s0, t3
                  mulhsu       s5, sp, a6
                  sub          gp, t5, sp
                  srl          t0, s8, tp
                  remu         s3, gp, s10
                  rem          a5, s2, s11
                  slli         s8, t1, 14
                  rem          a2, t1, s7
                  remu         gp, a2, s7
                  auipc        sp, 1004346
                  srl          a0, s10, s3
                  and          s11, s8, a5
                  ori          t5, s2, -1575
                  remu         s5, t6, t3
                  remu         a1, a4, zero
                  mulhsu       t6, t4, a1
                  divw         s10, t5, t5
                  srliw        t1, a4, 23
                  sltiu        zero, a1, 363
                  divw         zero, a5, a5
                  slli         s5, s11, 21
                  remuw        s7, t4, t5
                  xori         s2, a4, 510
                  remu         s0, s11, t0
                  slti         a6, ra, 236
                  addiw        a1, s2, -455
                  slti         ra, ra, 333
                  divuw        t5, a1, t3
                  srlw         t5, t2, tp
                  ori          a2, s10, 1394
                  sraiw        s9, a4, 15
                  mulhsu       s2, t5, a5
                  remw         a4, a6, a3
                  mulhsu       t0, gp, gp
                  div          s4, t1, t6
                  srli         ra, a2, 27
                  mulw         a2, ra, a4
                  srlw         s10, a0, s4
                  sraw         s10, s11, t3
                  xori         s4, t5, -639
                  mulhu        s1, s3, gp
                  xori         s5, t0, -1484
                  mulhu        t4, a4, t3
                  slt          s4, gp, a0
                  addi         s1, sp, -227
                  sll          a3, a5, s3
                  add          t5, sp, s4
                  slliw        a6, a6, 3
                  sraw         t5, a2, s1
                  mulhsu       gp, t3, s8
                  remuw        sp, t4, t3
                  remu         a0, a1, s6
                  mulhsu       zero, s5, t2
                  sra          s11, s4, sp
                  andi         t0, s11, 1703
                  divuw        a1, a0, a2
                  sltu         t0, sp, t0
                  sraiw        s5, s1, 24
                  andi         t6, s9, -1251
                  addw         s9, s3, a6
                  xori         a5, t1, 1697
                  divw         s8, s8, s7
                  sltiu        a0, s5, 887
                  srliw        t1, s9, 13
                  mulh         t0, t6, a3
                  auipc        s10, 347515
                  slli         t4, gp, 36
                  lui          a3, 69791
                  addi         s7, a0, 675
                  mulh         s0, s4, t0
                  addw         s4, s4, s11
                  add          s7, a7, a7
                  srli         sp, s7, 34
                  subw         s0, t2, t3
                  mulhsu       t5, t2, s11
                  lui          s8, 181875
                  auipc        s9, 499436
                  add          s4, s3, a4
                  xor          s9, a1, a7
                  sllw         t4, ra, t3
                  slliw        s4, s11, 1
                  sllw         t0, s8, a7
                  sll          s4, s3, t4
                  div          t1, a5, s6
                  nop
                  div          t0, s0, s9
                  auipc        s7, 40614
                  mulhsu       t1, a4, sp
                  srli         s9, a0, 17
                  nop
                  xori         s11, gp, 954
                  srai         t0, s2, 19
                  div          t6, t4, a2
                  srli         a1, s6, 15
                  sraiw        a5, t5, 22
                  rem          s5, a0, t5
                  sltu         a4, t3, ra
                  remu         s0, a2, a4
                  sll          t5, t3, t2
                  mul          t1, a0, s7
                  srai         s3, s11, 46
                  sltiu        t1, a7, -1795
                  addi         s5, a5, 1403
                  sub          s4, a6, t3
                  srli         zero, s2, 55
                  srlw         s10, s8, t2
                  auipc        a7, 840378
                  sllw         a1, gp, s4
                  remu         s7, a5, t4
                  slliw        s11, t6, 4
                  xori         s4, t0, -1867
                  remw         a3, s6, t3
                  srli         t4, a4, 9
                  slt          a5, s10, gp
                  sltu         s1, s3, s9
                  addiw        t1, s8, -648
                  andi         s4, t4, 1359
                  remuw        s10, s8, a2
                  sub          a1, a6, s7
                  slli         t5, sp, 40
                  addi         t0, s1, -14
                  remu         t1, a0, s4
                  sltu         gp, s6, a0
                  srai         t6, gp, 25
                  srlw         s1, s6, s10
                  sra          s3, s1, gp
                  srlw         a2, a3, s3
                  addiw        s3, s0, -519
                  divuw        zero, a3, t3
                  sraw         t4, s9, s7
                  andi         a0, a2, -1160
                  srli         a1, t5, 55
                  srli         sp, tp, 10
                  slliw        a2, tp, 31
                  sll          t5, s10, s2
                  srlw         t1, t3, s2
                  rem          a5, gp, t1
                  srl          a4, a6, s0
                  mulw         s8, s10, s9
                  addiw        s1, zero, -759
                  mulh         s0, t6, s5
                  add          a4, a3, t1
                  div          s7, a4, s1
                  srlw         a0, t2, s3
                  addi         ra, gp, -1044
                  remw         sp, sp, ra
                  slliw        s5, s2, 3
                  divw         a1, s2, t3
                  addw         s2, t4, gp
                  sraiw        t6, a1, 24
                  nop
                  rem          s1, s4, a2
                  lui          a0, 708639
                  andi         a4, s6, -527
                  sltu         a7, s6, s4
                  remw         a6, s1, s3
                  lui          s7, 464229
                  srliw        a2, ra, 23
                  slli         t0, a1, 58
                  mulw         s4, s10, s4
                  mulhu        s9, s10, s4
                  xori         s10, s5, 124
                  sraiw        s4, a6, 21
                  ori          a6, s6, 79
                  mulhsu       t0, s11, tp
                  sraiw        s8, a7, 11
                  sll          a7, s3, s9
                  mulw         gp, s7, a2
                  sltiu        t0, t5, -964
                  sllw         s9, a4, tp
                  add          s4, a5, a2
                  sraw         gp, a3, s11
                  addiw        zero, a4, -1645
                  srai         gp, gp, 31
                  slli         s11, s6, 61
                  divu         s7, s4, a2
                  srlw         s4, s6, a5
                  remuw        s7, s4, zero
                  srlw         a0, s1, s7
                  divw         s2, a1, s10
                  srl          ra, t3, s4
                  sraiw        s7, tp, 25
                  ori          a4, s3, 1285
                  remuw        t5, a2, s3
                  remu         s9, t4, a2
                  sraiw        s3, s6, 3
                  divuw        a1, t5, a1
                  nop
                  mul          t0, a0, s3
                  remu         t5, s3, a0
                  sltu         a4, s0, a2
                  or           s4, a4, s6
                  lui          s9, 547927
                  slt          a2, s9, tp
                  slt          zero, s1, s6
                  mul          s4, tp, s3
                  mulw         s5, sp, gp
                  xor          a1, s0, s11
                  mulw         t0, t6, s8
                  mulh         a6, sp, a1
                  addiw        s4, a1, 1864
                  auipc        t5, 256721
                  andi         zero, a6, 1826
                  slti         a2, s6, 1748
                  divw         t4, a7, a1
                  divu         s10, gp, a5
                  or           s3, ra, a3
                  slti         gp, s6, 471
                  remw         gp, s6, s1
                  ori          t0, s9, 1400
                  remuw        a7, s11, s11
                  srlw         s4, t6, a3
                  or           ra, s5, t1
                  remu         a2, s0, a5
                  sra          a0, t6, t0
                  auipc        gp, 815701
                  slliw        a5, a2, 6
                  divuw        s10, t1, t0
                  srlw         gp, t0, s2
                  auipc        a0, 495168
                  and          s0, a2, t0
                  sltiu        s4, t0, 33
                  add          zero, s0, s7
                  srl          gp, a7, a1
                  mulw         a1, s6, t6
                  srai         a2, s3, 24
                  xori         t0, s2, -1613
                  divw         s9, s4, s5
                  divw         t4, t2, t3
                  rem          t0, s9, s9
                  slt          a5, s7, zero
                  sll          a5, a0, s3
                  remw         t4, s0, s0
                  srli         s7, s10, 31
                  xori         t0, t0, -700
                  sllw         s9, s10, ra
                  slt          zero, a7, a0
                  sraiw        s11, t3, 15
                  sraw         a3, a1, s7
                  divu         s7, s1, a2
                  sraw         s4, s7, t1
                  sraw         t5, a4, s1
                  or           s10, t1, t4
                  sltu         t1, s5, a6
                  srli         s4, t1, 12
                  xor          ra, a4, a2
                  sltu         s5, t3, t3
                  divu         a7, ra, s6
                  sll          a4, tp, s2
                  srai         t3, t5, 0
                  sub          a2, zero, s6
                  slli         a2, t0, 2
                  div          s4, s1, t2
                  srli         a3, t6, 51
                  ori          s2, a4, -510
                  remu         sp, a6, zero
                  remw         a0, t5, t0
                  addw         t0, t5, s11
                  sllw         a4, t4, a2
                  sraw         a7, sp, a4
                  addiw        t0, s2, -1777
                  mul          gp, a5, zero
                  divw         zero, a7, gp
                  srli         s11, t5, 4
                  ori          s5, t2, 1731
                  srli         t0, s3, 30
                  sllw         a6, s10, t6
                  auipc        s11, 692714
                  slt          s4, ra, a7
                  divuw        a7, t1, s0
                  slt          s5, s3, t2
                  add          t3, ra, s10
                  mul          a5, t2, s6
                  remw         gp, s8, a4
                  sltu         a5, s5, a5
                  mulh         a2, t3, t1
                  mulhsu       t0, a4, t0
                  srlw         s11, s11, s2
                  sraiw        sp, ra, 23
                  and          s7, zero, s8
                  ori          s7, s1, -88
                  sllw         s3, t3, a5
                  srli         a5, ra, 44
                  divw         ra, s6, s3
                  mulh         a4, s4, a7
                  subw         a3, a6, zero
                  addiw        gp, t0, -356
                  nop
                  div          t4, s3, s4
                  srl          t5, a0, t0
                  mulw         s7, a2, t1
                  slliw        s7, a2, 8
                  srai         gp, t3, 58
                  sraw         a7, t3, sp
                  srliw        s1, a5, 13
                  sraiw        t5, a3, 22
                  sub          a2, a6, zero
                  xori         s2, s7, 235
                  divu         s1, s11, s3
                  xor          s7, s3, s4
                  sub          a1, a5, s8
                  remw         a6, s3, t0
                  mul          t3, a2, a6
                  sra          a1, a5, a3
                  sllw         a7, a6, s10
                  srl          s2, gp, zero
                  sll          s8, s3, t6
                  sllw         zero, t2, s6
                  srl          s9, t4, s6
                  mulw         a7, s2, a5
                  remu         t5, s2, t4
                  sra          ra, a7, a2
                  slti         a3, a1, -556
                  or           s2, s6, t6
                  remu         gp, s10, a7
                  or           s8, a7, a6
                  mulhsu       s3, a3, t4
                  lui          s10, 440263
                  srai         s7, zero, 46
                  mulhsu       t0, a6, a7
                  xor          s1, tp, t2
                  remuw        t4, s9, s8
                  sllw         ra, zero, t6
                  sraiw        t6, s1, 12
                  ori          zero, s2, -1611
                  divu         s8, s0, t6
                  sraw         s1, a0, t2
                  addiw        a5, a4, -804
                  xor          s5, a0, s3
                  addw         a0, a1, t1
                  divu         a4, zero, gp
                  srl          s5, s4, a1
                  nop
                  sraiw        t1, a4, 3
                  mulw         ra, s4, s6
                  nop
                  rem          t4, s8, s2
                  srli         t6, t6, 53
                  srai         t0, s0, 15
                  slt          t0, t6, zero
                  andi         t6, a4, 1551
                  divu         s2, zero, a4
                  slliw        a4, sp, 17
                  auipc        s5, 935360
                  lui          t6, 269636
                  remuw        s8, gp, s5
                  divuw        a7, t4, sp
                  sltu         ra, zero, s4
                  subw         s10, s0, a2
                  andi         a1, zero, 1324
                  add          t5, a1, a5
                  div          a0, a6, a6
                  srliw        s10, t4, 20
                  mul          t6, sp, t1
                  srl          gp, t6, s7
                  auipc        sp, 706863
                  srl          s7, s6, s5
                  sub          s9, t2, a5
                  remw         a5, t3, s5
                  srl          s2, s7, a6
                  sltiu        t4, s2, 1569
                  sraw         sp, t6, s6
                  addi         s7, ra, -1024
                  subw         s4, a2, a2
                  addiw        s0, gp, -497
                  add          s0, s0, s3
                  srliw        a0, s5, 25
                  divu         s10, a2, tp
                  slli         s10, s4, 11
                  sub          sp, a6, a6
                  remuw        gp, s5, t5
                  mul          s5, t2, zero
                  rem          a0, a3, a4
                  sraiw        s1, s0, 15
                  slt          a0, t2, t5
                  xori         t1, t3, -222
                  slt          t0, gp, s10
                  sllw         t3, ra, t2
                  add          t0, t6, t6
                  xori         s2, a0, 1006
                  slli         s7, gp, 56
                  or           zero, gp, gp
                  ori          a3, t3, -403
                  slli         a5, s10, 37
                  remw         t1, s9, tp
                  remw         t1, a3, s6
                  sraw         a5, s7, ra
                  divu         t6, s1, t3
                  srai         t3, s11, 28
                  rem          s7, t5, s3
                  auipc        zero, 837729
                  sll          a2, s6, a0
                  divw         s8, zero, a0
                  divw         s3, s8, a5
                  sub          a0, ra, t5
                  sraiw        t0, a2, 13
                  divu         a2, s8, s1
                  mul          t0, tp, s6
                  auipc        s2, 676152
                  remuw        t0, t1, t0
                  or           s8, s0, s3
                  mulh         s5, sp, t0
                  remw         ra, a6, t0
                  sub          t3, a5, t6
                  srl          s7, tp, t5
                  div          t3, t6, tp
                  sraw         t4, s3, s5
                  srlw         zero, t1, s9
                  lui          a0, 914540
                  sltiu        s9, gp, -754
                  sll          sp, gp, s7
                  rem          a0, t4, s4
                  nop
                  srli         a3, t2, 38
                  sllw         t0, a3, t3
                  sraw         a4, t5, s7
                  lui          s0, 1010143
                  srlw         s10, t6, s8
                  mulhu        t1, t6, s4
                  xor          a7, ra, t1
                  xori         a3, sp, -1429
                  divw         a0, a3, t3
                  slliw        a5, s9, 25
                  remuw        t1, s9, a2
                  sll          t3, zero, s7
                  srli         s4, s7, 54
                  rem          s3, t2, s8
                  srlw         a5, s0, a6
                  div          t1, zero, sp
                  xor          zero, a0, t0
                  slti         a0, gp, -191
                  xori         sp, s0, 1151
                  srlw         s4, a5, ra
                  slli         s8, t5, 42
                  mul          ra, a0, tp
                  remu         a2, a0, gp
                  sub          t1, s3, a7
                  srai         s8, t1, 14
                  lui          s9, 192820
                  remu         t0, s9, s10
                  xori         s9, t2, -788
                  lui          t1, 804781
                  mulw         t4, gp, sp
                  sraiw        t6, sp, 9
                  remu         a0, s10, t0
                  sra          t0, s9, a0
                  slt          a6, t3, t4
                  addi         gp, ra, -144
                  remw         t0, s4, t3
                  auipc        s3, 941116
                  mulhu        a5, a7, s1
                  sub          s9, t4, s4
                  sub          s0, t4, s6
                  remw         s3, t0, t1
                  addi         t3, t3, -1444
                  addi         zero, a1, 260
                  remuw        s2, a7, s7
                  divw         a3, s1, zero
                  srli         t1, a1, 57
                  addi         gp, s9, 757
                  ori          t1, t2, 580
                  auipc        a6, 326432
                  nop
                  rem          gp, s10, tp
                  or           t1, a6, s3
                  sllw         a7, a0, t3
                  add          a3, t5, s6
                  slti         sp, a5, 44
                  srliw        zero, t6, 25
                  srai         s9, s8, 5
                  div          t1, s7, t5
                  sra          ra, s3, a1
                  lui          ra, 142332
                  mulw         s7, s5, ra
                  srli         s3, t3, 6
                  slliw        gp, s6, 11
                  addiw        s1, t3, -224
                  srl          t5, a3, t2
                  srli         a5, a5, 20
                  srliw        zero, t0, 7
                  sraw         a0, a0, s8
                  div          a3, t5, t0
                  addw         t5, t6, t1
                  sllw         s8, s10, zero
                  and          a2, s7, a4
                  rem          a6, a2, s2
                  srai         a2, a3, 27
                  mulw         ra, s5, a4
                  slliw        s3, gp, 2
                  mulh         s10, s0, zero
                  mul          s0, a2, t4
                  sub          a1, s10, s7
                  srli         s10, s0, 46
                  rem          t6, t5, t4
                  andi         s8, s10, 1790
                  rem          a5, s5, t0
                  lui          a2, 1028522
                  divuw        s7, ra, s4
                  divuw        a5, s8, s8
                  lui          a0, 229834
                  auipc        t5, 804865
                  mul          s1, s11, t3
                  mul          gp, t2, gp
                  sub          zero, t1, tp
                  subw         s3, s0, s4
                  slliw        t0, t5, 19
                  slti         t4, s9, -1266
                  sub          a6, sp, s7
                  mul          t4, s2, t6
                  srl          s2, ra, a3
                  srl          s11, a1, a0
                  nop
                  sraiw        t0, s8, 10
                  slti         t6, t1, 1190
                  remuw        t4, t5, s5
                  remu         s3, s4, t5
                  mulh         s3, s10, s8
                  subw         s5, a1, a7
                  remw         gp, tp, s0
                  div          gp, a2, s9
                  auipc        t6, 122462
                  mulhsu       ra, a0, t3
                  remu         s0, a6, sp
                  and          a6, a3, s1
                  addi         s2, sp, -567
                  mulw         a3, tp, a1
                  and          sp, s9, s11
                  sra          s4, t3, a6
                  xori         zero, a4, -2047
                  add          s9, zero, t6
                  nop
                  divuw        s0, a3, t3
                  mulw         t0, tp, s1
                  addw         gp, s2, s8
                  remw         a2, t4, ra
                  sraiw        t6, s4, 16
                  mulhu        s8, t1, a0
                  sll          sp, gp, s7
                  srai         s11, s9, 8
                  mul          gp, gp, a4
                  xori         s3, t1, -1451
                  mulh         s9, t1, zero
                  addi         a4, s1, -588
                  divu         sp, zero, s1
                  addi         t5, sp, 970
                  sltu         s5, t4, a3
                  remu         zero, ra, s11
                  remw         s1, s3, a7
                  srli         t3, s2, 63
                  mulhsu       t4, t3, a6
                  mulw         gp, s0, a5
                  srlw         s2, t5, a0
                  addi         a4, sp, 851
                  rem          s2, t6, s8
                  xor          t1, a1, t5
                  sltiu        s7, t3, -2005
                  lui          t6, 374559
                  rem          t4, a1, t3
                  xor          a3, t6, s6
                  sub          a2, s3, ra
                  auipc        s1, 583191
                  addw         a0, a6, a6
                  divu         s4, s9, s5
                  sltu         a4, s11, ra
                  andi         s2, a4, -1679
                  srlw         a0, t3, ra
                  slli         t1, s3, 59
                  remuw        ra, t5, s2
                  slt          zero, t0, a3
                  div          a7, t6, zero
                  remuw        a5, s11, s8
                  add          t0, s4, s9
                  mulh         a0, a6, sp
                  remu         a2, tp, t1
                  remu         a2, s10, s8
                  xor          a1, s3, s2
                  lui          gp, 107510
                  mulw         s5, s3, a5
                  mulhu        s9, s2, s4
                  addw         t4, a7, s10
                  addiw        a0, s1, -1212
                  mulhu        a5, tp, s11
                  nop
                  sub          a7, gp, s3
                  divu         s8, a5, a5
                  rem          s1, t6, s4
                  andi         s2, t0, 2046
                  srl          a1, t0, s2
                  sltu         t6, t3, s0
                  xori         t6, gp, -1272
                  remu         a5, s2, s2
                  sraw         s0, zero, s3
                  divw         s11, t6, zero
                  remw         s9, s7, a1
                  andi         s4, ra, -1186
                  add          a7, a1, a2
                  xori         zero, s0, -275
                  or           s2, t6, s7
                  lui          s9, 131478
                  sub          t5, tp, t6
                  and          a3, s4, a0
                  mulhsu       a1, t3, s8
                  sub          a0, s2, t6
                  subw         s11, t6, t1
                  mulhsu       a2, ra, s1
                  sllw         s9, t6, a2
                  lui          s5, 18823
                  mulh         a0, a2, a0
                  nop
                  sra          s8, a4, a7
                  mulh         t6, zero, s8
                  sra          a6, s0, t1
                  mulhsu       t5, a0, a0
                  add          s7, tp, t0
                  addiw        s8, s3, -1397
                  addw         s10, s4, t3
                  divu         s0, tp, a3
                  sraiw        a6, ra, 19
                  divu         sp, t1, sp
                  divu         s8, s0, s1
                  srli         a4, s2, 57
                  subw         zero, s10, s0
                  divw         s2, s1, s10
                  mulhsu       s11, s2, a7
                  srliw        a1, t6, 12
                  mul          s8, ra, zero
                  slt          t6, s10, a4
                  andi         s4, t6, 90
                  sllw         t3, t6, s9
                  sllw         a6, a7, t6
                  mulh         t4, t3, a6
                  slti         t5, s10, -1478
                  sraw         a5, t6, a4
                  and          s0, s8, s2
                  srli         a7, s2, 23
                  andi         zero, a5, -750
                  nop
                  slliw        a0, s1, 10
                  div          t6, t2, s2
                  slliw        a6, s9, 13
                  subw         gp, a3, a2
                  sraw         zero, t6, s5
                  srlw         t6, s2, ra
                  sraiw        s4, sp, 21
                  addi         s4, t2, -1553
                  sllw         a3, a7, s11
                  addi         t0, a7, 506
                  mulh         s0, a4, t0
                  sra          a7, tp, a2
                  srl          s4, gp, a3
                  addi         a0, s10, -1207
                  and          s4, t1, a0
                  mulhsu       a2, t3, s7
                  sra          s9, a1, t3
                  srli         a2, a7, 2
                  rem          t5, s9, s10
                  slliw        s0, s7, 31
                  remuw        s10, s0, s8
                  mulh         s9, s4, s7
                  rem          s8, a3, a1
                  xor          s0, s5, s2
                  rem          a5, s1, tp
                  remu         a5, s9, a7
                  nop
                  sllw         gp, a3, a1
                  remw         s8, s10, a4
                  slt          gp, s10, s7
                  lui          a0, 608802
                  auipc        s0, 682578
                  nop
                  and          t6, s2, s9
                  divuw        s2, s11, s8
                  sraiw        t3, s10, 1
                  srliw        a5, s8, 29
                  rem          t5, s5, s6
                  addi         gp, t4, -851
                  sraw         a5, zero, tp
                  sltu         s11, s0, t5
                  sra          t6, t1, sp
                  slt          sp, a0, a4
                  mul          s10, sp, t1
                  slti         gp, s1, 1110
                  slti         a0, s2, -1103
                  mulh         ra, t5, s7
                  andi         s8, a2, 1597
                  addw         t0, t5, a4
                  remu         a7, a6, a3
                  ori          a5, ra, 126
                  mulhu        t1, zero, s1
                  divw         a5, sp, s9
                  divw         a1, s1, s4
                  remuw        t5, tp, a1
                  mul          gp, t0, t1
                  andi         s5, s8, -1595
                  xor          s7, s0, a0
                  srl          ra, t4, a6
                  srlw         t6, s9, t0
                  mulw         s4, a1, a7
                  andi         t3, a6, 566
                  add          t6, t4, s7
                  addiw        t6, t1, 1382
                  srl          s9, a0, t0
                  addw         t1, t0, t2
                  mul          t1, a4, a3
                  sllw         s1, t3, s2
                  mulhsu       s4, s3, s9
                  sltu         s4, a4, gp
                  srli         s0, t4, 45
                  srlw         sp, t5, a3
                  slliw        gp, a3, 15
                  srai         s2, t1, 36
                  slli         gp, a4, 47
                  remw         s7, s7, t6
                  sll          s5, s11, a2
                  sub          s9, s8, s7
                  sltiu        s9, a1, 813
                  slliw        a5, a6, 23
                  mulw         t6, s5, s1
                  rem          a6, ra, s7
                  sub          a0, t4, s1
                  or           t5, s11, s10
                  addiw        t3, ra, 166
                  addw         t4, s10, t1
                  divu         a0, a7, t2
                  divw         a0, s11, sp
                  divuw        s7, s10, zero
                  remu         zero, s5, sp
                  remuw        a2, a4, sp
                  sltiu        gp, sp, 435
                  add          a3, s9, s3
                  mulw         a0, a1, t2
                  xor          s2, t2, s3
                  divuw        gp, t4, t5
                  divw         s9, t4, a0
                  slti         gp, t2, -1288
                  addiw        sp, t3, -1268
                  sra          s8, s4, a7
                  srl          s2, s3, s2
                  and          gp, a7, sp
                  subw         s9, tp, a2
                  sllw         t6, s1, s1
                  and          s8, t2, gp
                  sraw         t1, a2, t5
                  mulw         ra, s0, a5
                  nop
                  srai         s2, a1, 40
                  srliw        ra, ra, 9
                  subw         t1, s10, a4
                  slti         t1, a3, 1538
                  and          a4, tp, s9
                  or           gp, a0, t4
                  slliw        s9, s10, 14
                  remw         s1, s8, zero
                  sltu         t1, tp, zero
                  or           s1, gp, s1
                  lui          a0, 772079
                  srliw        a0, a5, 19
                  lui          s3, 173172
                  slliw        s4, t1, 15
                  sll          s4, s1, sp
                  srlw         a3, t5, a6
                  remu         sp, s7, a5
                  remuw        s4, s9, s2
                  sra          sp, a2, s0
                  mulw         t1, s4, s8
                  mulhu        s7, tp, t5
                  and          s7, s1, s5
                  divw         gp, ra, a2
                  sltiu        a1, a4, -785
                  rem          t5, s8, s2
                  mulw         a6, a5, t6
                  srl          a6, s3, s4
                  srl          a1, zero, sp
                  sra          a1, s5, t6
                  and          sp, t5, a3
                  srai         sp, gp, 52
                  nop
                  slliw        s5, t5, 15
                  srai         s1, a6, 55
                  addiw        gp, t1, 1415
                  srliw        s1, gp, 31
                  slt          s4, t3, a4
                  sra          s1, t4, a7
                  xor          a7, a3, t3
                  srli         t1, t5, 16
                  xori         t4, t0, -1811
                  sltu         a7, a5, sp
                  addi         s2, t2, 619
                  addw         zero, a0, s7
                  addiw        s8, t0, 1382
                  srai         t0, tp, 49
                  mulhu        a1, s6, s10
                  lui          s4, 144710
                  xor          a0, a1, t0
                  xori         gp, s3, 1155
                  srl          zero, s2, a4
                  remu         s0, a6, a1
                  sub          s7, ra, a0
                  ori          s8, s11, -546
                  slt          a5, a4, a0
                  mul          s1, s7, a7
                  divuw        t4, a2, t3
                  sraiw        ra, t0, 24
                  divuw        sp, zero, s6
                  xor          t5, a5, a6
                  sub          s11, a6, a1
                  addi         a3, s0, -1159
                  slli         t1, a0, 21
                  divuw        s11, s4, s3
                  remw         t6, t1, s0
                  sllw         a3, t2, s1
                  sraw         a0, gp, s3
                  addi         s2, zero, -622
                  addi         s1, s2, -1860
                  mulhsu       a5, tp, a7
                  slt          s8, a0, s8
                  ori          s10, gp, -95
                  sltiu        s7, s5, 90
                  and          s10, t0, a5
                  sltu         t1, t4, s6
                  sltu         gp, tp, t1
                  rem          t0, a1, t2
                  sltiu        s5, s10, -1575
                  mul          ra, s6, a7
                  nop
                  divw         s10, t0, t0
                  sltu         s10, t0, t2
                  sraiw        a6, t3, 13
                  srai         a3, t2, 19
                  sra          s9, s1, s10
                  addi         s5, t2, -311
                  nop
                  slli         s2, t2, 42
                  divuw        s0, t5, t3
                  remw         s0, s7, a6
                  slli         s1, ra, 1
                  sub          t4, s3, s1
                  xor          t5, a3, a3
                  sltiu        t1, s7, -1048
                  add          a7, s4, s2
                  sub          a6, t4, a3
                  xori         a3, s2, -216
                  srliw        t1, a1, 21
                  sub          a2, s10, a1
                  mul          a3, s6, t2
                  remuw        s0, s3, s8
                  mulw         zero, s2, t1
                  andi         s7, s2, 1125
                  divuw        s9, s10, s0
                  remuw        s3, s5, t5
                  sraw         s7, t2, a3
                  addiw        t1, s1, 1834
                  remu         s5, a4, s1
                  srl          s0, t6, a3
                  div          s7, a1, t3
                  addiw        ra, s4, 660
                  sraiw        gp, t2, 17
                  auipc        a1, 475478
                  addw         s2, t2, t0
                  nop
                  sltiu        s11, s7, -1873
                  xori         t6, a6, -1145
                  xori         s2, a1, -1390
                  nop
                  sltu         s5, t1, s9
                  sraw         s4, s9, a1
                  and          t6, zero, a7
                  slti         s10, a4, -1764
                  div          t1, t1, t4
                  mulh         s1, s2, s8
                  lui          a7, 141771
                  addi         s7, s0, -326
                  srai         s4, gp, 1
                  mulw         s4, s5, a0
                  xori         t6, s4, -1880
                  rem          ra, s8, s2
                  andi         s4, s5, 242
                  slti         s3, a1, -822
                  slt          a5, t5, a3
                  div          a1, a4, ra
                  andi         gp, a5, -590
                  remw         a0, s4, s0
                  mulw         t4, t6, s5
                  sltiu        s0, a5, -1675
                  sra          t3, s3, a6
                  addi         a2, t4, 10
                  divw         t3, s5, a6
                  mulhsu       s0, a6, tp
                  divu         sp, t1, t6
                  srlw         s4, s11, zero
                  xor          t0, zero, gp
                  lui          s3, 646418
                  addw         zero, sp, t6
                  divu         a6, t3, s1
                  sra          zero, s10, s3
                  sraiw        s2, s6, 30
                  sraw         t6, t3, t1
                  mulw         sp, a6, t6
                  divu         s8, sp, gp
                  srl          s10, s8, zero
                  sraiw        s7, t1, 29
                  remuw        s0, t2, zero
                  sltu         a3, a2, sp
                  mulh         s5, s7, s11
                  nop
                  slliw        a3, s3, 1
                  lui          zero, 642209
                  xor          t3, t3, s7
                  rem          s0, s11, s0
                  srli         t4, t6, 63
                  div          t3, s11, a1
                  and          t4, s0, t3
                  mulh         s8, a4, a4
                  slt          a2, a5, sp
                  auipc        s2, 76273
                  sllw         a6, zero, a4
                  srlw         s10, a7, s1
                  and          a1, t2, t5
                  sllw         s0, s8, s7
                  srl          a7, tp, a1
                  mulh         t5, t5, s10
                  divw         s7, a0, s0
                  mulhsu       s8, s9, a5
                  and          t0, ra, t1
                  auipc        a3, 350788
                  xori         gp, s5, 520
                  or           t3, a3, s9
                  xor          s0, s8, a7
                  divu         zero, s3, s8
                  sraiw        gp, t0, 27
                  sraiw        t5, zero, 19
                  addi         s4, t1, -105
                  srlw         t0, s1, a7
                  xor          a7, a1, tp
                  ori          a3, a5, -54
                  mulhu        s7, t3, t0
                  auipc        t4, 331686
                  nop
                  sraw         s7, s9, zero
                  slti         s0, a6, 746
                  slt          a4, t5, a6
                  sraw         gp, sp, s3
                  andi         a4, s2, 1580
                  addiw        s1, a4, 656
                  addi         t4, t0, -803
                  sll          s8, a3, s1
                  divw         t6, s10, a7
                  sll          s1, s1, a5
                  div          t0, t4, a5
                  sll          sp, s6, sp
                  addi         s7, a6, -570
                  auipc        sp, 529029
                  srlw         t5, a1, sp
                  remw         ra, sp, t1
                  slliw        t6, tp, 7
                  and          t5, s0, s1
                  sra          t5, s5, a7
                  sll          t3, gp, t0
                  srliw        t6, t4, 24
                  sraiw        s0, s9, 22
                  sllw         t5, s6, t0
                  sltu         s0, t4, a7
                  lui          s8, 573457
                  mulh         a2, s5, t0
                  div          s3, s5, t5
                  ori          t5, a7, -1785
                  divw         ra, s9, t4
                  rem          zero, zero, s10
                  slt          a3, t5, s7
                  sllw         t1, s5, s11
                  remw         t4, t0, s5
                  or           s7, s3, a3
                  slt          s9, a1, a3
                  sltu         gp, t6, a5
                  slliw        t0, a5, 26
                  mulhsu       s10, s7, s6
                  sltu         a2, t4, a5
                  slti         ra, s10, -855
                  divuw        a1, ra, t5
                  slliw        ra, ra, 16
                  remu         a2, a2, a5
                  slti         s1, s0, -1759
                  slliw        a0, s4, 3
                  sll          a3, s8, t1
                  mulhsu       s4, s9, s6
                  mulh         a2, s11, t3
                  addw         a2, t6, a1
                  mulhsu       a7, a3, t2
                  slli         a3, a3, 30
                  srl          s0, t4, a3
                  xori         s3, s4, -1976
                  xor          s10, a6, t2
                  div          s3, t4, s5
                  nop
                  srl          a2, s10, a5
                  addi         a7, a5, 190
                  andi         s8, gp, -1020
                  slliw        a2, a4, 6
                  sub          s4, gp, a4
                  sll          s11, s10, a5
                  xori         s7, a0, -1200
                  nop
                  xor          s3, gp, a1
                  mulh         ra, t5, t3
                  slt          s5, t5, s0
                  subw         t5, a6, s10
                  srlw         t3, s4, t4
                  sub          s4, a7, t6
                  remuw        t3, t5, t4
                  ori          s10, s8, -1473
                  add          s1, t4, t0
                  srai         s9, t1, 56
                  sltiu        a5, a1, 1439
                  srli         s8, a0, 38
                  slt          t6, s10, a7
                  addw         s1, t1, s9
                  or           t6, a4, zero
                  sltiu        s10, s5, 501
                  mulhu        t6, t0, t2
                  auipc        s11, 867556
                  mul          a2, s1, a4
                  subw         s10, s8, a5
                  srai         s2, s5, 22
                  lui          zero, 63111
                  srlw         s5, a2, s6
                  sllw         s1, s11, s8
                  subw         t6, a7, s5
                  and          t0, a2, zero
                  sltu         a7, s7, ra
                  srl          s1, gp, s6
                  srliw        t5, a5, 27
                  addw         a1, t6, t0
                  nop
                  remw         s3, s11, s5
                  mulh         s5, a6, t5
                  xor          a2, s2, ra
                  ori          a4, ra, -364
                  auipc        s11, 759242
                  divu         t6, s11, s1
                  mulw         s2, s8, a2
                  mulhsu       t1, s3, a4
                  rem          s8, t3, ra
                  remu         s8, a7, t2
                  div          a5, a3, zero
                  sllw         a7, t1, ra
                  xori         s10, s8, 381
                  sra          zero, gp, gp
                  or           t4, s5, s1
                  mulhu        s0, ra, s9
                  srl          t0, s10, s9
                  srli         a1, s8, 1
                  remuw        gp, sp, tp
                  slliw        a1, tp, 13
                  sra          zero, a3, t1
                  slt          a3, a1, s5
                  addiw        s11, s0, -827
                  sll          a0, a0, a5
                  divuw        a4, a3, a5
                  auipc        s9, 392215
                  slliw        s1, s10, 3
                  andi         s3, a7, -738
                  remu         a6, a4, ra
                  srliw        t5, t2, 17
                  divu         gp, a0, s4
                  remw         t6, sp, a0
                  remw         a6, s5, a7
                  mulhu        t5, t6, s8
                  and          a0, s0, t0
                  xor          a4, zero, a5
                  div          s10, a0, a5
                  srai         t4, a5, 25
                  slt          s9, sp, t1
                  srai         a4, t5, 47
                  auipc        s4, 82505
                  sltu         s0, s7, s1
                  sraw         a5, t5, a4
                  and          t3, s5, a2
                  sra          t6, a2, s5
                  slliw        a7, zero, 18
                  sub          a5, gp, s4
                  divu         t0, s8, a2
                  ori          s0, a6, 16
                  lui          s8, 503695
                  mulhu        gp, s2, tp
                  remu         t0, t6, t1
                  mul          zero, s5, s8
                  sra          s2, s0, s8
                  srliw        s8, t5, 1
                  sub          a6, s9, sp
                  add          s2, t0, zero
                  rem          s10, a7, s8
                  sll          t3, s4, a7
                  sll          t4, s5, s11
                  sraiw        gp, s3, 28
                  addiw        s3, gp, -1707
                  subw         s0, ra, a0
                  addiw        a2, s2, 1363
                  slt          t3, s5, s10
                  sub          a6, t4, s10
                  slt          t1, s0, t2
                  slt          s0, t6, a5
                  mulhsu       t0, a5, t0
                  mulhsu       a6, zero, t6
                  srliw        s11, a6, 13
                  slti         zero, s5, -1752
                  remw         ra, s6, a7
                  sra          gp, s9, a2
                  srl          t1, a5, a0
                  div          s2, t0, s7
                  xori         a3, s4, 47
                  divw         t6, t1, t6
                  mul          s8, ra, s1
                  div          t4, s10, a3
                  xori         s0, s9, 62
                  remu         gp, a5, s5
                  slli         a1, ra, 23
                  divu         t1, a1, t5
                  srai         zero, t1, 10
                  addiw        s1, s9, 1981
                  mulhsu       s7, s5, gp
                  sllw         t3, t0, s5
                  sub          s7, s1, t3
                  sraw         s11, s11, s6
                  subw         s2, s3, s5
                  divu         s2, ra, s10
                  sllw         t1, s7, zero
                  srliw        a5, tp, 15
                  sltu         t4, gp, s0
                  xor          a2, a6, s8
                  srli         s11, s0, 14
                  xor          s9, a6, a6
                  and          s7, a4, a3
                  mulh         s2, s11, s7
                  nop
                  slli         a4, t3, 46
                  remuw        s8, t2, t3
                  auipc        t1, 392553
                  addiw        t0, a6, -1533
                  nop
                  or           sp, s7, t3
                  remu         s4, s2, t5
                  srl          a3, t3, t4
                  lui          a4, 861274
                  div          ra, s2, gp
                  sll          a5, zero, a0
                  subw         s0, sp, t1
                  mulw         a7, a0, s8
                  sraiw        t5, a2, 14
                  addi         sp, a6, -1722
                  mulw         a4, t6, a6
                  div          s8, a2, a0
                  srlw         a2, a6, s11
                  mulh         ra, sp, t1
                  srlw         s1, tp, s0
                  slli         s8, s11, 0
                  auipc        s7, 204074
                  sltiu        s9, t4, -80
                  divu         t1, zero, a0
                  srai         ra, s11, 29
                  srl          a2, a2, s8
                  remuw        a5, s0, s3
                  lui          s8, 575534
                  srli         s7, s4, 21
                  srliw        a7, tp, 7
                  srl          a5, a2, s5
                  addiw        t1, a1, -1669
                  divu         a2, s0, a2
                  ori          s4, s5, 699
                  srl          t6, s1, s8
                  xor          ra, s9, a4
                  srai         t3, sp, 44
                  mulhsu       gp, a4, s3
                  mulw         s8, s2, a3
                  srai         t1, s2, 58
                  sltiu        t3, a1, 293
                  mul          a7, a3, zero
                  srlw         t3, a4, sp
                  add          t6, a1, t0
                  nop
                  mulhu        s2, s6, s7
                  subw         gp, s0, s6
                  ori          t6, a7, 597
                  sltiu        a2, t2, -139
                  slti         t1, t3, -1439
                  divw         s0, s1, t5
                  andi         a4, ra, -328
                  sllw         gp, a6, s11
                  or           a0, s7, s2
                  srli         gp, s1, 27
                  xori         s8, s2, 1546
                  srli         t5, s2, 62
                  auipc        t4, 731512
                  srli         a3, a6, 25
                  srai         a7, a0, 2
                  nop
                  addw         s9, s5, s2
                  sllw         s10, s10, t3
                  slli         ra, a5, 63
                  mulhu        t0, s1, s10
                  rem          a4, gp, gp
                  srai         t6, s10, 51
                  sltiu        t4, t0, 898
                  srlw         s11, gp, t5
                  xori         sp, a1, -597
                  slli         s7, a0, 30
                  sub          s4, t5, s2
                  div          a7, s0, a4
                  srlw         a4, t5, sp
                  srl          a6, t6, ra
                  sll          s9, s1, s10
                  add          sp, a5, gp
                  sltiu        s2, a1, -1376
                  srl          a6, s11, s11
                  mulw         s5, tp, s5
                  srai         t1, s8, 34
                  addiw        s11, a6, 1265
                  slli         a5, tp, 9
                  mulhu        a7, s7, s4
                  sllw         zero, t6, a1
                  remw         t3, s11, a3
                  div          a6, a2, zero
                  srlw         a0, a1, t3
                  ori          s9, s3, -1572
                  srai         s4, t2, 24
                  and          t0, t2, a0
                  mulw         t0, s8, t0
                  addw         a4, s5, a3
                  slliw        s1, a3, 16
                  remu         t3, s6, tp
                  srli         t6, s0, 58
                  sltu         t5, t0, s9
                  xor          a0, a5, ra
                  div          t5, t4, a2
                  addi         sp, s11, 781
                  slti         s4, a2, -424
                  xor          a6, a7, s1
                  addi         s2, t3, -429
                  mul          s5, sp, s2
                  srli         t0, s4, 14
                  add          gp, s1, s11
                  sra          s1, a0, s1
                  mul          sp, t0, s1
                  srlw         a1, a3, a4
                  srai         a0, a6, 26
                  slliw        s7, ra, 2
                  sll          ra, t5, s10
                  mulh         t1, a6, s3
                  divw         t3, s5, a5
                  remuw        sp, t6, a6
                  sltu         t1, s1, a3
                  sra          s4, a3, a6
                  slt          a6, t2, s9
                  sll          t0, s9, t1
                  andi         s2, s0, 882
                  srlw         t0, t3, t6
                  slliw        s2, ra, 18
                  remu         t0, t0, a0
                  sll          s0, gp, zero
                  sraw         a3, s4, a0
                  mulhsu       s4, t4, gp
                  mulh         zero, a6, s4
                  addw         sp, s1, a3
                  remw         t5, t1, s3
                  auipc        s10, 221817
                  remuw        ra, tp, t4
                  remuw        sp, a1, s7
                  slti         zero, sp, -1951
                  remw         s2, gp, t3
                  sltiu        a6, sp, 1491
                  sllw         s0, zero, a6
                  remuw        s10, t2, a5
                  mul          a5, t2, s8
                  sltiu        s8, s1, -1370
                  xori         s3, s1, 1134
                  srliw        s4, gp, 8
                  slt          s5, s9, a7
                  sra          s0, a6, s7
                  mulhu        t4, t5, a5
                  add          t6, s5, s3
                  mulhsu       t3, t4, s9
                  mul          s4, a3, zero
                  mulhsu       sp, a3, a7
                  sltu         a3, s5, s6
                  srli         s0, s3, 55
                  mulh         gp, a3, t1
                  sllw         a1, s11, zero
                  sraw         t6, s1, s7
                  divuw        s7, ra, s6
                  mulw         s1, s4, ra
                  remu         a1, t3, a0
                  divu         t1, s1, t6
                  add          t4, t6, s7
                  remu         a3, s7, t6
                  sraiw        s3, t1, 7
                  or           a2, t4, t2
                  mul          a7, s3, a2
                  mul          a5, a7, t2
                  srliw        s3, s5, 25
                  slt          t5, a4, tp
                  auipc        a1, 521415
                  auipc        t1, 902331
                  mulhsu       s0, t1, s1
                  addiw        a1, t6, -204
                  nop
                  mulh         t6, t0, zero
                  mul          t4, a4, a3
                  mulw         a5, s7, t4
                  auipc        s11, 7437
                  xori         a7, s3, -1741
                  lui          s2, 960525
                  divuw        a5, s3, s7
                  xor          s3, a3, zero
                  remw         s4, a6, t3
                  rem          s2, t5, s8
                  remuw        gp, s10, t4
                  sraw         s1, a4, s7
                  sraw         a3, s5, s7
                  divuw        s0, t0, ra
                  slt          a1, s2, t0
                  and          a1, ra, tp
                  remuw        s5, s11, a4
                  slliw        t1, s0, 22
                  mulh         s4, t4, s10
                  slti         s1, zero, 1378
                  srliw        s7, ra, 27
                  remuw        t1, t5, a6
                  mulhu        s7, s4, t5
                  mul          t1, s1, a2
                  addi         s8, ra, 138
                  add          a1, sp, s1
                  mulw         t6, s0, s10
                  and          s4, s1, s1
                  andi         a7, a7, -572
                  divu         a3, a5, t2
                  mulhu        a2, t3, s10
                  remu         a6, s8, a1
                  addiw        t0, t2, 957
                  mulw         s8, t6, s8
                  sub          t1, a4, t2
                  sraw         sp, a6, s1
                  add          t5, tp, s5
                  srai         a2, t0, 1
                  xori         a6, s0, 848
                  sraiw        s11, t5, 6
                  remuw        s2, s3, sp
                  sraw         t4, a6, a0
                  slt          t0, t6, t5
                  sltu         sp, s4, s9
                  srliw        t3, s10, 5
                  srl          s8, s0, t3
                  div          s4, t0, s6
                  divw         a2, s5, s2
                  andi         zero, s1, -1542
                  remuw        s2, t4, s3
                  srlw         sp, s6, s6
                  sltiu        s4, t4, -519
                  slt          s11, t3, a1
                  remw         s5, s2, s0
                  slli         a7, a3, 52
                  sub          s7, t3, t4
                  ori          zero, a7, -1486
                  srliw        a7, tp, 20
                  srlw         s11, a1, zero
                  divw         a4, sp, s4
                  and          ra, s5, t3
                  div          t3, a7, t6
                  mulhsu       t0, s9, a3
                  divu         a2, t3, s7
                  sra          a7, t6, s2
                  mulh         s10, t0, a0
                  remuw        t5, s2, t5
                  divw         a2, gp, a4
                  div          ra, t0, s6
                  mulw         sp, sp, s6
                  andi         zero, s10, -1714
                  remuw        a0, s1, t6
                  mulh         a4, a2, a4
                  srai         a0, s3, 47
                  nop
                  addiw        sp, a3, -1459
                  xor          s4, s3, t5
                  sllw         sp, s2, s0
                  sraiw        s0, ra, 24
                  addiw        s7, ra, -261
                  srlw         sp, ra, s3
                  sll          a7, s1, tp
                  remu         a7, s4, a5
                  divuw        a1, t0, s7
                  slliw        t6, s8, 4
                  subw         gp, t3, a4
                  rem          a2, a3, s2
                  sra          t4, s2, s2
                  and          t1, t3, t2
                  sll          t5, a5, s10
                  srliw        t0, t0, 28
                  remw         s1, s6, t3
                  slti         s9, t6, -1091
                  sll          s7, a7, s5
                  lui          t6, 626851
                  sll          s4, t6, a3
                  sraw         t1, a3, s2
                  srai         t5, a0, 5
                  sra          zero, t3, a1
                  divw         s1, s0, a5
                  mulhu        t4, t2, a6
                  or           s10, a5, t0
                  mulh         s9, t2, a3
                  addi         s10, a4, 981
                  remw         s11, s3, zero
                  addw         s2, t3, s7
                  mulhsu       a1, t5, t3
                  or           s1, zero, s4
                  and          a2, s4, s9
                  auipc        t3, 654937
                  nop
                  mulhu        gp, t6, s4
                  sub          s7, s2, s4
                  srl          t3, a5, s11
                  mul          a2, t5, ra
                  or           s10, a6, sp
                  mul          a3, sp, t1
                  addiw        a7, s3, 1447
                  slti         t1, s10, -1553
                  auipc        s1, 226451
                  mul          s9, s1, s11
                  or           a3, t2, s3
                  divu         a4, t1, a2
                  auipc        s0, 519519
                  srlw         s1, s6, ra
                  divuw        s10, ra, a5
                  remu         a7, a7, s6
                  mul          a0, t3, s3
                  slti         a7, t2, 1936
                  nop
                  remu         t4, a6, a1
                  sra          t4, t4, a5
                  slti         ra, t1, 1891
                  sltu         a5, t3, s3
                  sltiu        t1, s8, -174
                  slti         s2, s1, 1585
                  subw         t3, a1, s7
                  remw         s7, a7, s10
                  mulh         s11, a3, a7
                  srai         a5, t2, 33
                  slti         t6, t1, 958
                  add          s10, a6, a7
                  mulw         s3, s6, gp
                  mulhu        s10, s4, a1
                  slti         s1, a2, 2039
                  mulhsu       a1, a3, a5
                  sra          s8, s5, t4
                  slt          s7, t4, t1
                  and          zero, s6, t3
                  divu         s11, s0, gp
                  sub          s9, s0, s1
                  nop
                  slt          a0, t1, sp
                  ori          a5, s0, -533
                  auipc        a4, 105636
                  or           s9, gp, a5
                  sllw         t1, tp, s0
                  lui          t0, 867502
                  sraiw        s11, t6, 20
                  slli         a2, s3, 54
                  slliw        t0, s11, 28
                  nop
                  lui          s5, 175565
                  div          a6, a0, t1
                  sltu         zero, a3, t0
                  srlw         s5, s3, s1
                  sraiw        s0, t3, 23
                  srli         s3, a6, 47
                  slti         a4, s2, 1845
                  mulhu        gp, t4, a6
                  rem          s8, gp, zero
                  xori         zero, s6, -618
                  divu         t0, ra, t5
                  sltu         a4, t3, t1
                  mulh         s11, a2, s5
                  rem          s11, sp, zero
                  xori         t5, a5, 145
                  xori         t5, s10, 955
                  sub          s4, s5, a6
                  andi         gp, a6, 1403
                  lui          s3, 766192
                  auipc        ra, 545300
                  and          zero, a2, t0
                  divw         a6, t3, t1
                  ori          a1, s7, -1638
                  rem          s0, ra, t5
                  add          s5, s8, s9
                  remw         zero, t3, a7
                  sraiw        a5, t6, 30
                  addiw        s9, s9, 539
                  srli         s5, s1, 8
                  rem          zero, t2, a6
                  lui          s0, 558493
                  and          a5, sp, t3
                  sltiu        a5, a7, -1798
                  remuw        t6, t4, a3
                  addi         t0, t4, -762
                  srl          t6, t3, a1
                  addiw        a2, a6, 852
                  sll          s11, a7, t6
                  srli         s1, ra, 17
                  nop
                  ori          s1, s5, -1592
                  addw         s8, t4, s6
                  lui          t1, 539900
                  rem          t5, t0, a7
                  divuw        t6, a3, a3
                  xor          ra, sp, s10
                  sra          t1, t2, tp
                  divw         a0, sp, s8
                  srlw         gp, a0, a6
                  sltiu        gp, s7, 487
                  addiw        ra, t5, 1660
                  sub          sp, a5, t3
                  srli         s9, s9, 45
                  sltu         s9, a1, sp
                  slt          t6, t6, s11
                  sraiw        s3, ra, 20
                  sub          s5, tp, a4
                  slliw        t1, a7, 11
                  mulhsu       s0, t1, t3
                  sub          a6, s4, s1
                  slliw        s2, tp, 24
                  srliw        s3, tp, 13
                  xori         t4, s4, 574
                  divuw        zero, t5, zero
                  mulhu        ra, s1, a3
                  srliw        a4, gp, 26
                  srai         zero, sp, 9
                  sllw         a0, a6, sp
                  divw         gp, t6, s3
                  sllw         ra, s8, s6
                  subw         s7, s9, a3
                  or           a2, a0, t4
                  srl          a6, a6, s8
                  remu         t1, a0, s8
                  addw         s10, a4, s1
                  srli         a7, s8, 24
                  slli         t4, t4, 14
                  ori          t5, a6, 786
                  addi         s0, a5, -919
                  mulh         a3, a2, s3
                  slliw        s5, s1, 26
                  sraw         gp, a5, t4
                  subw         a0, s11, a2
                  sraiw        s5, s9, 8
                  sltu         gp, s4, s4
                  sub          s10, a4, a3
                  sraiw        a0, s10, 17
                  srlw         s4, s9, t2
                  slt          s11, a2, a7
                  addw         s0, s7, a5
                  addi         t4, t4, -347
                  addi         a5, a2, -1856
                  divw         s3, s8, s2
                  slliw        a6, t5, 5
                  mulh         s1, zero, gp
                  add          a4, a4, sp
                  auipc        gp, 503333
                  slt          a3, t4, s1
                  ori          t1, zero, 1127
                  nop
                  divuw        t1, a6, t1
                  mulhsu       a7, s5, t6
                  mulhsu       a4, s10, t2
                  sltiu        s7, s10, 1529
                  sraiw        t0, s2, 3
                  slli         t1, t3, 23
                  mulhsu       s4, t1, a2
                  srl          a3, s5, s9
                  div          a2, s9, s0
                  srliw        ra, tp, 12
                  srli         a3, a2, 26
                  divw         t5, a7, s11
                  and          t3, t6, t6
                  sub          s10, t4, s11
                  remu         s7, tp, t0
                  mulh         t1, t2, s0
                  div          s11, s0, a6
                  nop
                  sltu         a4, a2, s4
                  divuw        s7, a4, a2
                  rem          a5, s5, s4
                  sltiu        s2, s7, -489
                  sra          t0, s2, s2
                  addi         t6, a2, 1120
                  addw         zero, a6, s6
                  slliw        zero, sp, 3
                  sllw         t5, a7, s4
                  remu         s4, t4, a1
                  srl          t3, s6, s10
                  divw         sp, s6, t2
                  remw         a5, s10, s10
                  mulw         a0, s2, a5
                  sra          t0, s7, a5
                  remu         t0, s9, s1
                  srlw         gp, t3, t2
                  sltu         s7, t0, a4
                  addiw        a3, s9, 1391
                  andi         s10, s6, -174
                  slt          s3, a0, sp
                  srl          t6, t0, t4
                  sraiw        s5, s11, 16
                  slli         a0, s10, 4
                  srai         s1, s5, 32
                  mulhu        s7, t1, a6
                  mulw         t1, a4, s0
                  add          t4, tp, a1
                  addw         s4, a6, s2
                  and          s4, s11, a5
                  sltu         zero, a2, t2
                  mulhsu       t4, t3, zero
                  remu         gp, sp, a3
                  subw         s11, s7, gp
                  mulh         t1, t2, a6
                  lui          a6, 854048
                  sll          s3, s8, s7
                  xori         s7, a6, -1437
                  xor          s4, ra, a0
                  srl          a2, sp, s11
                  sub          a4, t3, gp
                  xor          s10, t6, a6
                  slti         s7, zero, -1813
                  auipc        a2, 432273
                  sllw         a5, t5, a7
                  slli         s1, zero, 0
                  slt          a0, s5, t5
                  slliw        t1, t2, 30
                  slt          t1, s11, s9
                  andi         t4, a7, -1846
                  sll          s2, a0, s11
                  andi         s4, zero, 1596
                  subw         zero, s5, s9
                  srli         s3, t3, 35
                  srliw        t1, a0, 11
                  divw         a6, s3, s2
                  divu         t6, s4, t0
                  lui          a2, 710192
                  subw         t1, s9, s10
                  xor          gp, a7, t3
                  lui          s8, 766136
                  rem          a0, a6, gp
                  mulh         t1, s0, s11
                  andi         a7, a6, -73
                  slti         sp, s4, -786
                  add          s8, a7, s10
                  subw         s5, ra, a2
                  sub          s10, s3, t6
                  mulh         gp, tp, s7
                  andi         s2, t6, -989
                  nop
                  sraw         a5, a1, s9
                  addi         zero, a1, -176
                  divuw        a2, a7, t3
                  sllw         s11, gp, t2
                  divw         s10, s7, s10
                  divu         a5, s11, a5
                  slt          a7, tp, a0
                  subw         t1, s11, s6
                  divu         sp, s8, tp
                  sllw         a2, s6, s4
                  remuw        t4, a1, s2
                  remuw        t3, sp, t6
                  or           s10, a3, t0
                  sub          s9, ra, s0
                  remu         s8, a3, ra
                  subw         s0, s7, a6
                  remuw        t5, a7, t2
                  subw         s11, t5, ra
                  slliw        s0, t6, 3
                  srlw         s10, t5, t0
                  srli         a4, s4, 16
                  ori          s7, a1, -1273
                  mulw         t1, a7, tp
                  mulhsu       t3, s1, a0
                  mulhu        a3, t4, a4
                  addw         t4, a3, a5
                  divw         a2, t1, s10
                  divu         t3, a7, zero
                  xor          ra, zero, t3
                  mulhu        a6, a6, a3
                  sraiw        t3, a7, 27
                  slt          t3, t1, ra
                  srliw        s9, t4, 8
                  ori          a0, a6, -1789
                  addi         t0, a7, 124
                  xori         t6, s0, 49
                  andi         s11, zero, 1909
                  sra          t1, s1, s11
                  slti         zero, s4, 1443
                  divuw        a2, a1, t3
                  and          s8, a0, a1
                  lui          a5, 284948
                  srlw         a2, t0, t3
                  remuw        s1, s3, s8
                  and          a3, s3, t2
                  sraw         a1, t0, s7
                  srl          t1, zero, s11
                  addi         s0, s11, -1706
                  srl          a2, t5, t4
                  lui          a0, 34128
                  srliw        ra, s1, 0
                  sraw         a5, t1, s4
                  remw         s1, t6, t3
                  add          s3, s8, s7
                  sub          a7, a6, a3
                  sraw         s8, s5, a7
                  lui          s7, 609850
                  mul          a4, s6, a2
                  sraiw        s7, a1, 11
                  divw         ra, a3, t2
                  sub          a6, tp, a3
                  mulh         s8, gp, t1
                  add          a7, a2, a4
                  srlw         s7, sp, gp
                  divw         s1, s0, ra
                  remuw        t0, s3, a1
                  srliw        sp, t2, 30
                  subw         zero, a3, s7
                  remw         t5, t0, a4
                  sll          s2, t4, gp
                  remu         a2, s6, a5
                  mul          s8, t5, a6
                  srlw         gp, t3, a0
                  sllw         a5, s10, t3
                  remu         gp, zero, s10
                  slliw        s7, s11, 24
                  xor          t4, t6, a3
                  and          s4, tp, s10
                  divw         a1, s3, ra
                  add          s4, s11, s5
                  srl          s7, s0, gp
                  sltiu        a3, s2, -422
                  add          a5, s4, a1
                  nop
                  slli         s9, s5, 30
                  mul          s10, s4, s3
                  add          s9, s4, s0
                  remw         t1, s5, ra
                  andi         gp, s3, -1383
                  slliw        s9, s4, 29
                  sra          a6, t4, a5
                  subw         s4, a5, s11
                  addiw        s11, a5, -1975
                  mulhsu       zero, t6, s3
                  nop
                  sltu         s4, s3, s3
                  xori         s5, a6, -1544
                  sraiw        gp, a5, 22
                  nop
                  divw         t3, a2, t2
                  mulh         t3, sp, t3
                  or           a2, t2, s11
                  xori         a5, gp, 46
                  mul          a4, s3, s11
                  lui          zero, 844720
                  ori          a7, a5, 610
                  sraiw        a2, s1, 31
                  slt          t0, s11, t6
                  addiw        s4, a6, 575
                  addw         s4, ra, t2
                  xor          a5, t5, t0
                  mul          s7, t0, zero
                  srlw         t3, ra, t5
                  addw         s9, t0, zero
                  divw         t5, s3, zero
                  remu         s5, s10, a5
                  and          t5, s10, s6
                  srai         t0, a2, 49
                  srlw         s4, s3, a4
                  sra          sp, s1, t2
                  div          t1, s10, s5
                  andi         s9, t0, -2013
                  or           gp, a4, s4
                  divu         s8, ra, t1
                  mulw         s2, t0, s9
                  ori          s10, s10, 331
                  srl          t1, s11, tp
                  sra          t4, sp, t3
                  srli         gp, s0, 14
                  remuw        s4, a1, s3
                  sra          s8, s4, s3
                  auipc        a6, 234563
                  sltu         t1, ra, t1
                  divu         a0, t3, t5
                  divu         s5, s9, t5
                  remuw        t3, s11, a1
                  divw         s8, s10, t4
                  remu         s3, t6, a5
                  slli         a5, t2, 59
                  slti         zero, s1, 1052
                  rem          s7, s5, zero
                  sllw         s11, t6, t6
                  slliw        s1, ra, 6
                  srlw         a0, a6, sp
                  lui          t1, 1000845
                  slti         t6, a7, -1758
                  ori          s8, s11, 319
                  sra          t5, gp, t4
                  remuw        t4, s7, s7
                  addiw        s0, s10, 1607
                  or           s2, t0, a1
                  remuw        s5, s1, s8
                  rem          a6, s0, t3
                  sll          t0, tp, s6
                  auipc        s5, 117277
                  mul          a0, ra, sp
                  and          s0, gp, s10
                  divw         s7, s10, t0
                  sltiu        s7, zero, -599
                  remw         a2, a1, s9
                  slliw        t0, s2, 2
                  xori         s10, ra, 133
                  mulh         t6, s8, s5
                  slt          s5, s7, a3
                  addw         s9, tp, a7
                  divu         s11, s1, s7
                  slli         t3, tp, 16
                  xori         a6, t4, 811
                  mulw         a0, s6, t1
                  xori         a3, s5, 1104
                  sub          s4, t1, t3
                  divw         s7, zero, t1
                  mulhu        a4, s6, s0
                  addw         s3, t0, s0
                  divu         s4, s9, s10
                  divw         s5, s11, s6
                  nop
                  slli         a5, a0, 24
                  remuw        a6, s11, s2
                  remw         a5, sp, s0
                  addi         s1, t5, -1452
                  nop
                  lui          a3, 351264
                  sltu         a7, ra, s8
                  slt          a5, s7, s8
                  auipc        s9, 629550
                  subw         s1, s2, gp
                  remuw        s5, a4, a4
                  mulh         sp, zero, t0
                  sll          s3, s8, sp
                  srai         s1, zero, 6
                  addw         zero, s8, a2
                  srl          a2, a1, a7
                  sub          s4, t5, s6
                  lui          s3, 979761
                  srlw         s10, s8, s8
                  divw         t5, a1, a5
                  xor          a0, s3, t2
                  mulw         s0, t0, tp
                  slti         a2, a0, -644
                  add          ra, t6, ra
                  sub          a6, a7, t1
                  sll          t1, a4, s9
                  remu         a1, a7, s10
                  divw         s5, a6, s5
                  addw         s5, a3, t6
                  subw         s7, s0, t5
                  div          ra, a2, s5
                  sltu         ra, s9, a5
                  addiw        sp, t3, -1323
                  slt          a0, s11, gp
                  srlw         s8, a7, s4
                  lui          sp, 155429
                  rem          a0, s2, t5
                  remw         t3, tp, tp
                  lui          t0, 788088
                  rem          s2, s7, a5
                  rem          s5, t1, tp
                  slt          a2, s4, t3
                  div          s8, t4, a0
                  sraiw        a1, t2, 19
                  auipc        s7, 636869
                  sllw         a6, sp, a6
                  rem          s3, s2, t5
                  sllw         s4, s3, sp
                  rem          s7, s10, s1
                  remu         ra, t1, ra
                  srai         a5, a0, 52
                  sra          a6, t5, ra
                  slt          s7, ra, tp
                  andi         gp, s4, -1315
                  sltiu        s3, sp, 548
                  or           a7, a2, sp
                  srl          s10, t0, a1
                  lui          a3, 796210
                  slliw        a3, t1, 11
                  srliw        t0, s9, 13
                  mulw         s10, a7, a7
                  sllw         a5, tp, s5
                  sltiu        ra, ra, -1841
                  subw         a4, s0, s10
                  srli         s7, s3, 6
                  sllw         s2, a5, s10
                  sllw         gp, a6, a3
                  rem          s8, a7, s11
                  srliw        a2, t4, 14
                  sub          zero, s7, s2
                  mulhsu       s2, a4, s4
                  and          s2, sp, tp
                  addiw        t0, ra, -779
                  sll          t1, a0, a5
                  sltiu        ra, s10, 583
                  sll          a4, s9, t2
                  mulhsu       t5, t1, s1
                  slti         a2, t6, 1333
                  mulhsu       s8, s0, a4
                  sra          t0, t3, s1
                  divuw        s1, ra, a4
                  slliw        gp, ra, 18
                  remuw        s1, a2, s3
                  lui          s7, 768447
                  subw         s1, s5, t4
                  nop
                  sraw         a1, t1, s3
                  and          s4, s7, a5
                  nop
                  divw         s9, s4, zero
                  div          a7, t4, s10
                  sub          s8, t4, s5
                  remw         a7, s10, a0
                  slti         s3, s2, -989
                  slli         s5, ra, 60
                  addw         a3, t1, s7
                  sra          sp, s6, a7
                  sltu         t5, gp, a7
                  auipc        s10, 193741
                  addw         t1, a3, a5
                  divw         a1, s3, t0
                  sltiu        s4, a6, 1101
                  slli         t6, t0, 56
                  mul          s9, s4, s1
                  auipc        s0, 904104
                  divuw        a5, s0, a7
                  xor          s10, t6, gp
                  sra          a1, s1, t5
                  divuw        ra, t2, s9
                  lui          s10, 96848
                  or           s11, s4, a0
                  remuw        s7, sp, t1
                  sllw         t1, gp, zero
                  addw         s7, t3, s9
                  xor          a1, s9, t1
                  remuw        a7, t3, s6
                  remuw        s2, a2, sp
                  slliw        s11, s11, 19
                  and          a4, s9, s2
                  sltiu        s1, a3, 1881
                  mulhu        t0, a5, s4
                  slliw        t5, ra, 7
                  addw         a7, t1, a4
                  div          s0, s10, t5
                  addi         a4, t1, 859
                  divw         t4, s10, t5
                  slli         s7, a6, 20
                  sllw         s10, s4, s6
                  mulh         s9, s5, a1
                  subw         t0, a1, t0
                  divw         sp, zero, s3
                  and          s1, tp, a2
                  or           a6, a0, a4
                  sra          ra, s3, t2
                  slli         gp, a5, 55
                  auipc        a3, 54410
                  remuw        s1, s2, sp
                  remuw        s4, t5, s0
                  sltu         s3, t5, a3
                  nop
                  slt          a0, a7, a3
                  slliw        s3, t6, 29
                  nop
                  sraiw        ra, a2, 26
                  srai         s11, s11, 3
                  sltu         s8, t1, sp
                  rem          s9, s3, zero
                  mulhu        a4, sp, a1
                  remuw        s11, a2, a5
                  slliw        t6, tp, 12
                  divu         t0, t2, t6
                  add          a5, s4, a7
                  srlw         a6, t6, ra
                  auipc        t5, 287864
                  xori         gp, s9, -749
                  slti         t4, s5, -1249
                  slti         s4, ra, -1387
                  addiw        t5, t0, 1654
                  auipc        a5, 1004089
                  xori         a1, t4, 736
                  remw         t6, s1, s9
                  or           a1, ra, s3
                  divw         s4, s10, s1
                  addiw        s4, s10, 565
                  lui          s2, 334232
                  addw         zero, a4, t6
                  slliw        a1, s7, 23
                  divu         s5, s4, t4
                  xor          t5, s9, s9
                  divw         s9, s10, a2
                  slt          s1, a4, a7
                  sltu         a4, t5, s7
                  div          t5, a1, s4
                  slt          a3, s10, t1
                  remw         a2, t6, a4
                  srai         s10, s4, 62
                  sllw         t1, a3, s0
                  mulhu        s5, gp, a4
                  slliw        a7, t2, 31
                  add          s0, a4, t1
                  sra          s0, t2, s3
                  divw         a4, t4, s6
                  sub          s8, s9, s8
                  auipc        s4, 1018466
                  add          a2, a1, t0
                  sltiu        s1, s0, 163
                  sub          gp, s10, tp
                  slt          s5, t6, s7
                  subw         ra, s8, s1
                  auipc        t3, 331260
                  add          t4, t2, s6
                  sub          s7, s11, s9
                  remuw        s7, t0, t6
                  divw         s3, sp, a0
                  srl          s7, s5, s7
                  nop
                  xori         s10, s8, 159
                  and          t1, s11, a0
                  subw         s7, a1, a3
                  and          s2, t5, a1
                  mulw         s1, s10, t3
                  lui          s10, 985956
                  sllw         a4, s9, tp
                  sll          sp, s3, ra
                  addi         a3, s5, -1192
                  sltiu        t0, s1, -53
                  mulhsu       zero, gp, s5
                  sra          t6, s9, a1
                  slt          t0, s1, t1
                  xori         t4, ra, 814
                  nop
                  div          t0, s9, s10
                  xor          a4, a6, t2
                  slt          zero, a1, t2
                  addi         a1, s10, -914
                  addiw        sp, tp, -890
                  sllw         t0, ra, s10
                  nop
                  sllw         s4, ra, a1
                  sll          s3, gp, s7
                  srliw        s3, t2, 28
                  sll          sp, a3, a4
                  addiw        t1, s2, 1314
                  srliw        s4, t0, 20
                  divuw        gp, a7, a3
                  sraw         s2, a6, a1
                  srlw         t1, a0, s11
                  remw         t6, t3, s7
                  addiw        a3, t3, 1507
                  xori         t4, t0, 895
                  xori         a0, s9, -448
                  sltu         zero, zero, sp
                  mulh         t1, a3, s3
                  sltiu        s7, s2, -870
                  srl          t6, t0, a5
                  andi         s10, zero, -1810
                  mulhu        a4, sp, a5
                  or           a2, ra, a4
                  remw         t6, t4, s9
                  mulhu        a1, t2, zero
                  andi         zero, a3, -29
                  sraw         a3, s5, t2
                  mul          zero, gp, t4
                  addiw        t4, s1, -454
                  lui          s4, 926746
                  addw         zero, s8, a3
                  xor          ra, a1, ra
                  auipc        s7, 775230
                  sltiu        a2, a7, 431
                  nop
                  xori         zero, a3, -162
                  addw         s11, s2, s7
                  mulh         a5, s10, s9
                  div          a2, s11, a2
                  srl          a2, s4, t1
                  remw         zero, t4, s4
                  slti         t0, t3, 652
                  slti         s7, t5, -1161
                  remu         s0, s9, t5
                  xor          a5, a1, a1
                  slti         sp, s11, 2002
                  ori          gp, a3, -1218
                  remuw        zero, s4, s0
                  srliw        s3, a7, 10
                  mulw         a4, t2, ra
                  sraw         gp, ra, s8
                  subw         s3, s3, s8
                  mulhu        s11, t2, s11
                  slli         s11, s10, 14
                  lui          gp, 297920
                  auipc        zero, 27255
                  div          t6, t3, a5
                  div          a7, a6, a1
                  auipc        gp, 863153
                  divw         s0, sp, t2
                  auipc        s4, 209969
                  srlw         gp, a3, a7
                  divuw        s8, tp, s7
                  srli         a1, s11, 37
                  mulw         a6, a5, s3
                  sub          s9, s0, s2
                  sll          t6, s4, a4
                  mul          a7, sp, s8
                  mulhsu       s4, zero, s6
                  xor          t4, a3, s11
                  remw         t1, tp, s9
                  addi         s11, s1, 162
                  divuw        s8, a3, zero
                  srl          a3, t0, a4
                  divuw        s7, s5, s7
                  sltu         ra, a3, t1
                  xori         s5, s5, 1365
                  xori         t0, zero, -318
                  rem          s11, a6, s2
                  divuw        t5, s8, a6
                  divuw        s0, s2, a7
                  srai         s11, s9, 29
                  nop
                  lui          a6, 300616
                  sub          s8, s2, s6
                  sltiu        s7, gp, -1148
                  add          s9, s10, s8
                  mul          s2, s1, t1
                  slti         ra, s4, 1435
                  sltu         t3, zero, a1
                  sraiw        t4, t6, 0
                  and          s8, t1, s7
                  slliw        a4, s4, 19
                  srli         t1, zero, 23
                  divw         a6, t4, a5
                  remu         a5, s11, t6
                  slt          ra, ra, sp
                  slliw        s5, zero, 6
                  sltu         t6, s4, s2
                  nop
                  andi         a7, tp, 572
                  divuw        s7, t0, ra
                  auipc        s11, 924864
                  sraw         s7, a3, t5
                  sraiw        s3, s8, 30
                  srli         t4, s2, 55
                  mulh         s4, a7, a0
                  addw         s10, s8, s2
                  xor          t4, a0, s4
                  sll          s1, s5, s1
                  subw         zero, s7, a1
                  mul          s9, a0, s11
                  sub          a3, a3, ra
                  rem          t3, s2, a6
                  andi         s8, t4, -1753
                  rem          t1, zero, s7
                  andi         s7, t5, 1580
                  lui          t0, 789460
                  and          a1, t6, zero
                  sraw         s10, s2, ra
                  remuw        t6, s3, s10
                  mulhu        t0, s10, gp
                  srl          a0, s2, ra
                  sub          a1, a3, sp
                  divuw        t1, s3, s11
                  div          sp, a7, a5
                  addw         a5, s11, s8
                  subw         s8, t4, zero
                  mulhu        a4, t2, a5
                  rem          s1, t4, a3
                  slliw        t6, s11, 11
                  subw         zero, a3, a1
                  mul          sp, a3, t0
                  sra          a1, s11, s6
                  or           zero, t6, t0
                  sltiu        a3, s8, 1545
                  addiw        a5, a3, -1310
                  ori          t0, a6, -443
                  sraiw        s10, a1, 26
                  mul          t0, tp, s8
                  slli         t6, s10, 31
                  slliw        a7, s6, 20
                  auipc        a6, 1047076
                  add          s3, a4, a1
                  slliw        t4, tp, 17
                  div          ra, s4, s7
                  div          gp, s5, gp
                  addi         s3, tp, -1207
                  sllw         t3, a5, s3
                  srli         t0, t1, 2
                  mulhsu       s5, a7, s8
                  srliw        a7, t0, 6
                  srl          s5, t4, t1
                  mulh         t1, a1, s5
                  slliw        s11, ra, 24
                  mulw         a0, s8, tp
                  xori         s7, t5, 1035
                  sltiu        a0, t1, -571
                  srlw         s3, t3, a6
                  div          zero, t1, t6
                  sll          s11, a6, s2
                  remw         t1, s8, s9
                  sltiu        a5, s8, 342
                  mulh         s1, s2, sp
                  sltiu        a5, t4, -330
                  mulhsu       s11, s10, s0
                  mulh         zero, a4, ra
                  mulhu        sp, a1, a5
                  or           a1, t4, s1
                  remuw        s10, t4, ra
                  subw         s5, s9, a3
                  slli         ra, s7, 29
                  addiw        a2, zero, 554
                  subw         t3, t4, a7
                  addi         s3, a7, 1178
                  nop
                  mulhu        a7, t3, t3
                  srl          s7, s9, a4
                  xor          s10, s9, a5
                  srlw         s2, s3, s11
                  sltu         s3, a3, ra
                  slliw        s3, s9, 0
                  sllw         a0, a1, s6
                  divu         sp, zero, s7
                  addw         t5, ra, s5
                  divu         a1, a5, s10
                  sub          t3, s5, a4
                  mulhu        s7, a4, s1
                  srai         gp, a1, 0
                  slliw        t1, gp, 2
                  divu         s10, gp, s6
                  addi         t0, t5, -419
                  mulhu        t3, t6, t1
                  auipc        a3, 672906
                  sllw         t5, s1, ra
                  lui          zero, 846182
                  srai         s11, s9, 55
                  slti         t5, a4, -1044
                  andi         t5, s10, 519
                  srliw        t1, s8, 10
                  remw         a7, ra, a2
                  lui          t3, 324622
                  or           s8, s5, t4
                  xor          t5, a6, t1
                  slli         a3, tp, 35
                  sraiw        s11, s0, 16
                  srli         a0, s8, 23
                  sra          a6, s7, s3
                  ori          s8, zero, -1735
                  srlw         s10, t5, a2
                  mulw         a4, a0, a2
                  subw         s4, s7, s4
                  mulw         t1, s3, a3
                  remu         s1, t4, t0
                  srli         s1, s2, 22
                  slti         s8, s5, 1185
                  mulhsu       t1, s11, a7
                  divuw        t4, s0, s6
                  subw         s4, a7, s10
                  lui          a4, 752882
                  mulhu        a0, t4, a7
                  add          t0, s0, t2
                  srlw         t3, t1, s1
                  sub          t6, s8, a6
                  sllw         a5, tp, t4
                  sltu         a4, zero, t3
                  sllw         t0, a4, t5
                  and          a0, t0, s3
                  divu         a4, s2, s7
                  remw         s1, s4, s9
                  mulh         s0, t2, s7
                  lui          ra, 127797
                  add          t5, s9, a7
                  addi         s7, zero, -1533
                  sraiw        gp, t6, 16
                  mulw         s9, s11, t2
                  mulhu        t5, t5, s5
                  sllw         zero, s11, a6
                  and          a0, t1, t1
                  subw         a1, s0, a3
                  srlw         t4, a0, t1
                  mulw         zero, s2, a3
                  slli         a3, s5, 26
                  sllw         t6, s10, s3
                  divw         t5, t5, t6
                  auipc        t1, 544532
                  mulhsu       t6, tp, s6
                  slt          t0, zero, ra
                  mulhsu       s7, t2, s7
                  slt          t0, s4, s2
                  srliw        s9, a3, 0
                  mulw         s9, a6, t3
                  addw         a7, zero, gp
                  add          t0, ra, s10
                  sra          a7, sp, s8
                  sub          t3, a4, s7
                  remu         s8, sp, ra
                  slt          s10, s6, a4
                  divuw        s2, s11, s7
                  andi         s10, a6, -1326
                  srliw        s4, ra, 17
                  slti         ra, ra, 1643
                  mulh         sp, a1, t0
                  lui          a5, 371048
                  div          a1, s1, a7
                  xor          s10, s1, a5
                  add          s7, sp, a7
                  addi         ra, a5, -1549
                  sraw         a3, t0, a2
                  sll          zero, zero, sp
                  mulhu        s9, t6, s0
                  sll          s7, zero, a3
                  subw         a7, s3, a6
                  divu         s10, s4, t1
                  remuw        a0, s3, t3
                  andi         zero, t6, 1013
                  remu         t3, s3, s3
                  sllw         a5, a3, gp
                  remuw        s11, s0, zero
                  mulh         s1, zero, sp
                  sllw         zero, s4, s7
                  xor          gp, a1, gp
                  nop
                  mul          s10, t3, s5
                  slti         t6, s11, -224
                  add          t0, a4, a5
                  sll          a1, t2, s4
                  remuw        t5, sp, s9
                  remw         s11, zero, t4
                  srlw         a3, s9, sp
                  remu         t3, t5, t1
                  mulhsu       t6, a1, t5
                  andi         t4, t5, -463
                  andi         s4, t0, -2002
                  mulw         s1, s8, sp
                  xori         s9, s0, -1754
                  sltu         s4, s0, gp
                  srl          a6, a5, zero
                  xor          s4, tp, a6
                  mul          s2, s0, s1
                  sltu         a6, zero, a4
                  div          s3, s4, s3
                  remu         t0, t1, s8
                  mulhsu       t0, t4, s4
                  srl          t0, ra, sp
                  sraiw        s4, a2, 3
                  addiw        t4, s10, -1157
                  divuw        a6, zero, s2
                  sra          t5, a2, s4
                  sraw         s8, t0, s3
                  mulw         t0, s0, ra
                  sllw         t6, s4, a1
                  mulhsu       zero, a7, t2
                  and          gp, t5, s8
                  sllw         s0, tp, s3
                  sll          gp, s6, a4
                  addw         sp, a3, s4
                  sll          t4, tp, a7
                  sraw         t3, a4, a7
                  sraw         s8, s5, s4
                  nop
                  remu         s7, t0, s0
                  rem          s5, a5, a1
                  srli         t6, a3, 54
                  mul          a1, t1, s7
                  rem          t5, s9, s6
                  sub          s11, s5, s8
                  mul          a1, a2, s2
                  sltu         s2, t4, zero
                  divu         sp, t0, s3
                  srl          s1, zero, t6
                  remw         t0, t3, a7
                  slti         s7, ra, -642
                  remuw        ra, a3, s2
                  slliw        t3, a5, 13
                  sltiu        s3, s1, -1328
                  xor          t6, a2, s8
                  mul          t4, t3, a5
                  remu         t0, a1, t4
                  remu         s8, a0, a7
                  slti         t0, t2, 654
                  auipc        a7, 297244
                  addw         ra, s9, gp
                  sraw         t0, s10, a3
                  auipc        t1, 70656
                  sltu         zero, t5, s4
                  srlw         s8, s8, a0
                  lui          a6, 268646
                  mul          t0, zero, a5
                  subw         t6, t0, s7
                  sltiu        s5, t3, -1688
                  divuw        s4, a4, sp
                  mulhsu       s2, s10, t0
                  mul          a4, ra, s0
                  mulhu        gp, s7, t2
                  divw         s2, t6, ra
                  andi         s4, a3, -1597
                  srlw         s10, a3, ra
                  and          s10, s3, s5
                  sltu         s7, t3, s0
                  slt          ra, s2, t5
                  or           zero, s11, a6
                  div          s8, s9, t4
                  srliw        zero, gp, 9
                  ori          t0, a5, -1612
                  sub          s2, a6, s1
                  sraw         t3, a5, s9
                  slliw        t0, a0, 22
                  add          s2, s5, a1
                  subw         a1, s1, ra
                  slliw        zero, a2, 23
                  nop
                  remuw        t5, s9, s7
                  srlw         a2, s4, gp
                  add          s4, a1, zero
                  divuw        s1, a0, s9
                  sll          s2, s4, s1
                  sraiw        s10, a0, 10
                  srai         a6, s4, 5
                  srai         a7, t2, 1
                  xori         s4, a2, -1345
                  srai         s10, s0, 49
                  rem          t6, a5, s3
                  srai         sp, s9, 32
                  sub          a6, a7, s11
                  slt          s2, s3, s9
                  subw         s2, a3, a4
                  sllw         s0, a3, s0
                  srl          ra, t4, a2
                  slli         a5, t5, 29
                  slli         t1, s8, 10
                  sub          a4, s0, tp
                  remw         gp, s6, t5
                  srl          a5, s8, s5
                  auipc        s4, 930134
                  mul          a0, s3, t2
                  sltiu        s10, t4, -88
                  remuw        a2, a7, a2
                  srlw         t5, t4, s3
                  auipc        s5, 829533
                  addiw        a2, t3, 343
                  mulw         a5, a6, s10
                  xori         t1, s3, 625
                  xori         s2, a7, 1543
                  srliw        s9, t3, 14
                  sltiu        sp, s7, -1565
                  lui          t0, 493080
                  mulw         a5, a0, t5
                  mulh         t0, zero, s4
                  ori          s0, s9, -274
                  sra          s8, a1, s9
                  xor          a1, s10, sp
                  slliw        t1, a4, 1
                  srliw        s7, a2, 5
                  addw         t3, t1, t5
                  sraw         a5, t0, a4
                  mul          sp, a1, gp
                  srliw        sp, s6, 9
                  srliw        a4, s3, 14
                  mulw         a7, s4, t2
                  sllw         t4, s10, s4
                  slt          a1, t3, s9
                  slliw        s2, t0, 20
                  remu         a6, s11, a2
                  slliw        s10, t1, 8
                  sub          s0, sp, a7
                  subw         s11, sp, s0
                  lui          t1, 250834
                  sraiw        t0, ra, 30
                  addi         t5, gp, 1642
                  rem          a0, a6, a3
                  srlw         a1, s0, a2
                  slti         a2, a5, 1580
                  sltiu        s11, sp, -298
                  srlw         a2, a4, s4
                  sraiw        a2, a6, 31
                  sraiw        t3, s4, 19
                  sraw         a6, s11, a7
                  slliw        t1, s1, 24
                  mulh         t5, a5, a0
                  add          t5, t2, a4
                  mul          a0, a7, ra
                  slti         t3, s4, -1531
                  nop
                  sub          s10, t5, a0
                  addw         s7, t2, sp
                  lui          t5, 232170
                  remw         a0, a6, s9
                  remuw        s7, a2, t2
                  addiw        s11, a5, -89
                  and          a3, t4, sp
                  mulh         s8, s0, sp
                  auipc        t5, 831329
                  sraiw        zero, sp, 28
                  div          a6, a4, a6
                  addiw        gp, sp, -1137
                  xori         t1, s11, 1066
                  srl          s0, s0, s9
                  sltiu        a6, s10, -1281
                  slti         t4, t3, 59
                  sltu         gp, s7, sp
                  mulh         t3, a7, s5
                  ori          t1, s6, 985
                  mul          ra, s0, s11
                  remuw        a3, a0, t2
                  divw         a2, s5, a3
                  divw         a3, s9, a5
                  slt          t6, a4, s3
                  mulw         s11, t1, s2
                  srli         a0, a6, 8
                  srliw        t5, a1, 9
                  divu         a0, s11, s1
                  srai         s4, s10, 48
                  ori          t5, zero, -1746
                  addiw        s11, t6, 1012
                  xor          s1, s8, s0
                  sltiu        a3, s8, 1382
                  and          a0, t3, a2
                  srliw        s2, gp, 15
                  sraw         s9, s10, a2
                  sll          s10, s3, s4
                  sltu         t1, s5, t2
                  remu         t5, t4, t3
                  auipc        s11, 697699
                  mulhu        a6, s4, gp
                  xori         s3, a7, 43
                  or           s11, s2, s2
                  sltu         s8, s8, a1
                  sraiw        gp, s11, 23
                  slt          s0, a0, a7
                  and          a4, t2, t6
                  slti         t0, a3, -1674
                  lui          t0, 824835
                  remw         s10, a3, t4
                  ori          t1, s4, -1406
                  slti         a5, t3, 1204
                  remu         t4, a7, ra
                  sra          a5, a1, s9
                  mulw         s3, ra, s0
                  add          t1, t1, a3
                  auipc        s7, 998591
                  srai         a1, a0, 30
                  srlw         s8, s5, s5
                  mulh         s3, a4, t2
                  sra          s8, a1, a7
                  slt          s1, t5, zero
                  andi         ra, t1, -1903
                  addiw        t0, s3, -23
                  xori         s1, s7, -1422
                  auipc        ra, 809515
                  div          s4, t1, s10
                  divuw        a6, a2, a4
                  sraw         zero, t1, s4
                  sra          a4, s8, s3
                  lui          a7, 883267
                  mulw         t5, s4, t3
                  slti         t0, s8, 1831
                  xori         t6, tp, 1735
                  subw         a4, a0, s0
                  subw         a1, t0, a2
                  add          t5, s3, t2
                  andi         a1, s0, 898
                  divuw        ra, a3, sp
                  sraiw        t3, s0, 10
                  divu         s2, a1, s11
                  sra          a3, s10, t3
                  rem          ra, a2, a4
                  sub          sp, t5, a6
                  slti         s7, a4, -1047
                  addiw        s4, a0, 1097
                  sra          t3, s9, t3
                  mul          a0, tp, a7
                  sraw         s4, s10, ra
                  slliw        a7, a3, 16
                  sltiu        t5, t3, -1311
                  xori         a6, s10, 1148
                  nop
                  slliw        a1, a5, 30
                  nop
                  andi         t4, s2, -1174
                  mulh         s2, a5, s6
                  srai         s4, sp, 29
                  divuw        s2, t4, a4
                  sll          a7, a4, s4
                  addw         s11, s8, s2
                  slli         s2, a6, 2
                  mulhu        a6, a3, ra
                  divu         s10, t0, s5
                  xor          s2, a1, s10
                  sraw         t5, s5, ra
                  addi         s3, s9, -1144
                  mulhsu       a0, t3, t4
                  mulhu        ra, tp, a3
                  andi         s8, t0, -1327
                  srli         a4, s3, 24
                  srli         s3, zero, 62
                  andi         s0, s0, -1088
                  mul          s5, a3, a5
                  srliw        t6, t6, 13
                  srl          s7, s2, s2
                  ori          t1, s6, 301
                  nop
                  remw         a2, sp, s8
                  srl          a7, s0, a1
                  mulh         a3, s4, sp
                  srl          t3, t3, t4
                  rem          s1, s10, t4
                  auipc        s4, 856696
                  slli         t0, s6, 41
                  or           t4, a2, sp
                  divu         s11, s2, a3
                  nop
                  sltu         a2, s6, a0
                  addw         s7, s7, sp
                  srai         sp, s11, 2
                  nop
                  subw         s8, sp, a0
                  sraw         s5, a2, a1
                  srai         s4, s9, 37
                  srlw         a2, s7, s2
                  div          a6, a6, s0
                  sllw         s2, s3, s5
                  mul          a2, a1, s6
                  divw         t6, s2, t6
                  slliw        a6, t4, 13
                  auipc        s4, 7086
                  slti         s0, a1, 1445
                  sll          s5, t5, s3
                  subw         sp, t2, a1
                  divw         s11, t6, a0
                  slt          t3, a2, a2
                  sltiu        s4, t5, -496
                  sllw         s9, a0, s2
                  and          a1, s4, tp
                  srl          t0, s1, tp
                  srliw        t0, t4, 12
                  and          a1, s2, gp
                  remw         t0, t6, s10
                  sltu         a1, s1, a2
                  xor          t3, s4, sp
                  nop
                  or           s0, s7, s9
                  lui          zero, 929969
                  slli         s0, sp, 18
                  srli         s5, a6, 38
                  mulhsu       s8, t6, a3
                  sub          a1, a1, t6
                  slli         t0, s11, 25
                  mulh         s1, s11, ra
                  srlw         zero, t1, s9
                  add          sp, t3, s7
                  remw         t0, tp, t6
                  sraw         s2, s2, s11
                  remuw        t4, t4, zero
                  rem          s8, a0, s9
                  slti         s8, s8, -1607
                  srliw        a4, a6, 6
                  or           a7, t6, gp
                  sltu         t6, ra, a5
                  auipc        a7, 772800
                  mulh         t0, s10, s1
                  addi         s0, ra, -1111
                  mulhsu       s7, a4, s6
                  mulh         s8, t0, a4
                  xor          a1, s1, s11
                  remw         s4, s7, a4
                  divuw        s8, s8, s4
                  auipc        a6, 194213
                  addw         s4, a4, s6
                  divw         t5, a4, s2
                  andi         gp, gp, -726
                  mul          s3, zero, a7
                  auipc        s11, 405712
                  srai         s3, s0, 62
                  remu         sp, a1, s7
                  rem          s10, s1, s1
                  subw         a5, zero, ra
                  subw         gp, t4, t2
                  mul          a0, gp, t2
                  sltu         t5, t5, t5
                  divw         s3, a5, s6
                  slt          t1, t0, s8
                  srai         s8, ra, 10
                  addiw        s8, a6, -269
                  mulh         a1, s10, s11
                  remw         s11, zero, a3
                  and          s11, sp, t6
                  srl          a5, s10, s9
                  remw         a6, gp, tp
                  addi         a2, t2, -1735
                  slti         a0, s1, 285
                  srl          zero, a7, a2
                  remu         ra, a7, ra
                  remu         gp, sp, a1
                  addi         t6, a4, 341
                  remw         a4, t3, a7
                  sllw         a2, tp, t1
                  slti         ra, s3, 1743
                  srli         t6, t1, 1
                  sltu         a1, a1, a3
                  sll          s2, s9, s5
                  addiw        t6, t1, -1399
                  add          a3, s5, s6
                  srli         s1, s0, 43
                  addw         t4, s1, ra
                  divuw        t0, a5, t4
                  sraw         s1, t1, s8
                  sub          t6, s10, a1
                  xor          zero, t0, a7
                  remuw        zero, t6, a3
                  srlw         ra, t6, s6
                  slli         t1, t3, 13
                  sltu         s0, a7, a0
                  auipc        s11, 687581
                  nop
                  slli         a2, ra, 0
                  mulh         a3, s7, s4
                  slliw        a1, s7, 1
                  auipc        a2, 873927
                  srai         a0, s2, 59
                  sra          a2, t1, tp
                  subw         gp, a2, t1
                  auipc        s4, 348242
                  sraiw        a1, s5, 9
                  nop
                  slti         ra, t2, 413
                  add          s0, s5, s9
                  sub          a6, a4, s3
                  remw         t0, s3, t1
                  remu         s8, a2, s7
                  nop
                  divw         sp, t6, t2
                  srl          ra, a6, s9
                  divuw        t6, t2, s6
                  div          a4, s9, s5
                  slti         gp, t1, -532
                  sll          s2, t2, s6
                  sll          s2, s9, s5
                  srliw        s11, t2, 3
                  sll          s2, t6, t5
                  rem          t0, t6, t2
                  xori         s0, s9, 1863
                  sltu         a4, t6, zero
                  auipc        t5, 286493
                  slli         t6, s5, 35
                  xori         a2, t1, -1325
                  and          s7, s8, a3
                  srl          t0, zero, t2
                  xori         s9, a4, 1437
                  srai         s8, a7, 13
                  addi         s2, s2, 132
                  subw         t0, sp, gp
                  sllw         t1, t6, s11
                  mulh         a7, t1, s6
                  divw         s2, sp, a3
                  divw         a5, s9, a5
                  remuw        s8, s9, s8
                  sub          a0, t5, a0
                  mulw         a0, a7, t5
                  xor          a3, t1, s1
                  lui          s0, 765903
                  auipc        a7, 382164
                  sraw         sp, s6, a5
                  mul          ra, s4, s5
                  srai         t5, gp, 50
                  slliw        a2, zero, 17
                  and          t5, s0, s7
                  addi         gp, s10, -1639
                  slti         sp, ra, -386
                  sltu         a3, a6, s9
                  sltu         ra, a2, t2
                  remuw        a5, a4, s11
                  addw         s2, s5, t0
                  sll          s9, ra, s6
                  slt          s2, t0, ra
                  ori          gp, s3, 1866
                  slti         sp, t0, -1359
                  remuw        s3, t6, a4
                  remu         s11, s6, t1
                  mulh         s4, s3, s8
                  and          t1, s9, t2
                  nop
                  sra          s2, s3, a3
                  addi         gp, s10, -1057
                  sltu         t1, s6, sp
                  and          t0, t2, s11
                  auipc        s3, 129102
                  andi         s2, s10, -679
                  xori         s5, a1, -944
                  mulhsu       s9, t3, s8
                  sraiw        s2, s1, 21
                  srai         a4, a7, 13
                  slli         s4, a6, 30
                  mulhu        s1, t3, a1
                  divw         a5, tp, s9
                  mulhsu       a6, s6, a2
                  sllw         a5, sp, s0
                  and          t1, a5, a4
                  ori          s0, t2, -1801
                  remuw        t1, s1, a2
                  sraiw        s3, t1, 3
                  lui          t0, 816602
                  add          ra, s6, a1
                  remu         a5, gp, t4
                  remuw        sp, s0, t4
                  srai         t0, s3, 9
                  addw         s10, a1, s8
                  sltiu        s8, s8, -841
                  andi         s7, t4, 134
                  srli         s3, s10, 63
                  and          zero, a1, s11
                  lui          zero, 455331
                  sub          a5, a0, s6
                  sll          s3, s8, a4
                  mulw         a7, a1, ra
                  sltiu        ra, t5, -244
                  xori         zero, t2, -1819
                  and          zero, s10, a6
                  remuw        t1, a0, t3
                  divuw        s0, s3, a1
                  rem          t1, s11, t6
                  srliw        t6, tp, 18
                  divu         s10, a5, a4
                  divu         t4, gp, sp
                  divu         s4, a2, tp
                  sraw         s1, s5, a1
                  andi         zero, s2, 936
                  addiw        a3, a4, 1554
                  or           s8, zero, s6
                  remu         s2, s5, a4
                  sraiw        s3, tp, 15
                  div          zero, tp, a5
                  srl          ra, a2, s2
                  sll          s8, s0, t4
                  ori          s0, gp, -1895
                  mulh         s11, t0, a7
                  addi         a2, s2, 1064
                  addiw        a5, s10, -1693
                  sltu         s7, tp, s10
                  or           t6, a3, a6
                  rem          a5, s1, t6
                  remu         s3, t6, s4
                  remw         a7, s10, t1
                  addw         sp, s9, t6
                  ori          s2, t4, 1497
                  slli         a7, s5, 17
                  lui          a3, 744668
                  sltiu        sp, ra, -414
                  srliw        s7, a2, 1
                  mulh         s5, s10, s4
                  sll          sp, a1, a2
                  sllw         s10, s11, t1
                  mul          t0, s7, t5
                  sltu         zero, t3, a7
                  srl          a4, s2, t2
                  mul          s9, t5, s0
                  add          a7, s8, sp
                  divu         s11, a4, s3
                  addiw        s11, t1, 1630
                  slt          a3, s2, tp
                  mulhsu       a3, a0, s8
                  xor          t0, t6, t4
                  remuw        t3, t4, s10
                  sub          a3, s9, s0
                  sraiw        a5, t1, 18
                  subw         gp, a5, s9
                  or           s4, a0, s6
                  nop
                  sra          a6, s7, sp
                  divu         s5, a4, s0
                  divu         s1, a1, ra
                  sraw         a7, gp, s7
                  xori         s1, a0, 1715
                  xori         s5, a3, -804
                  sraiw        t3, t6, 1
                  ori          a2, a1, 2010
                  xor          a4, a2, s2
                  sra          a6, a0, zero
                  nop
                  addw         t1, t4, s11
                  sra          zero, tp, a4
                  subw         a7, s10, sp
                  divw         zero, sp, s10
                  srli         a5, s4, 51
                  addi         t1, tp, 54
                  or           t3, ra, t3
                  divw         s4, s10, a0
                  mulhu        zero, a1, gp
                  ori          t0, t2, -577
                  xor          s1, ra, a1
                  mulhu        t5, a4, t2
                  and          zero, t2, a1
                  addi         t1, a5, 778
                  sub          s9, t6, a2
                  mulw         s8, a5, s7
                  srai         ra, zero, 59
                  sraw         s0, a0, s6
                  slti         a1, a0, -416
                  and          a4, s11, a7
                  and          a6, a6, s2
                  srli         t3, t1, 29
                  mulh         t6, t0, a1
                  mulh         a2, s5, s9
                  mulhsu       s3, tp, s9
                  sltiu        a5, s2, -1207
                  and          zero, a6, a0
                  sra          t0, s4, a3
                  add          t1, t0, s5
                  srliw        t4, t3, 27
                  auipc        t4, 385657
                  ori          s3, a1, 634
                  xor          s1, t2, s4
                  andi         t5, t2, 2032
                  addi         s0, a5, -1065
                  mulh         t6, t5, sp
                  slt          gp, t0, a4
                  xor          a4, s2, a0
                  sraw         t3, a6, t3
                  sltiu        s1, t6, 190
                  sra          s1, s1, t3
                  sltiu        s4, s4, 1409
                  remu         sp, t1, t4
                  andi         s9, gp, 1494
                  srai         t6, tp, 23
                  slli         a3, t2, 19
                  subw         ra, s6, t3
                  or           s7, t4, a7
                  sub          s8, t3, t6
                  mulh         s9, a7, s10
                  nop
                  srlw         s1, sp, s0
                  addiw        sp, zero, -111
                  mulw         sp, a2, a0
                  and          a6, t1, t3
                  and          s5, sp, a7
                  sub          s7, s10, s2
                  lui          a1, 338930
                  xor          a5, s3, a3
                  divw         s5, s10, s8
                  srai         zero, s1, 18
                  div          s10, s2, s2
                  mul          s3, t5, s1
                  sll          a0, a7, t5
                  sltiu        a3, s7, 379
                  xori         ra, a0, 418
                  andi         s7, s0, -189
                  rem          s10, s7, s6
                  lui          gp, 696991
                  sltu         s10, s9, s6
                  srl          s10, a7, a4
                  srl          s10, s10, t0
                  lui          gp, 666074
                  addiw        ra, t6, 159
                  xori         s2, a0, -1729
                  ori          t6, ra, 1238
                  xori         s1, a1, 1320
                  sltiu        s4, s10, 1538
                  divuw        t1, a1, t1
                  sraiw        s8, a6, 22
                  sraw         s8, sp, t5
                  srl          s8, a3, a0
                  srlw         a7, tp, zero
                  srl          s8, s1, s6
                  slli         t0, a5, 50
                  sltiu        s0, a2, 1733
                  ori          s3, t6, -560
                  auipc        t1, 88068
                  divu         a5, t5, a5
                  xor          s0, t1, a4
                  add          s10, ra, s8
                  sraiw        a2, t6, 7
                  mulhu        a3, s5, a6
                  remw         gp, gp, sp
                  auipc        s7, 886554
                  mulhsu       a6, t0, a1
                  addw         t3, s0, s3
                  ori          t1, s8, 622
                  sraiw        s11, s6, 28
                  slt          t1, t3, t0
                  remu         s8, sp, zero
                  sub          s0, s1, s2
                  ori          a0, s5, 858
                  addi         s4, s2, 1011
                  mulw         s9, s5, t4
                  xori         s2, sp, -926
                  lui          t5, 1043304
                  slti         s7, ra, 1073
                  sub          t4, s9, s11
                  subw         sp, s0, a7
                  mulw         a2, a2, ra
                  andi         t3, t2, 288
                  ori          a7, a2, 235
                  sltu         a5, t0, s11
                  subw         s9, a4, tp
                  remuw        a7, a1, gp
                  add          s1, a6, t5
                  remw         t0, t1, a3
                  divw         t5, a2, a2
                  srliw        t1, s0, 3
                  srl          s3, zero, a4
                  div          a1, t5, s3
                  andi         a5, t6, -965
                  xori         s8, a1, -182
                  sll          a6, s5, t6
                  mulhu        t3, a0, t0
                  xor          s3, a3, t2
                  andi         s0, t6, 509
                  slliw        s3, zero, 23
                  slli         a4, a2, 18
                  mulw         t1, s1, gp
                  mulhu        s9, s5, s11
                  subw         a7, t4, gp
                  sraiw        a1, s5, 12
                  lui          s9, 271993
                  sltu         s3, s5, s11
                  sllw         t1, a2, s5
                  divw         t3, t4, sp
                  mulw         s11, a7, t3
                  sll          t0, t5, s5
                  and          s3, s8, s8
                  slli         a4, t5, 62
                  sraw         s8, a1, s6
                  xori         a5, t6, -1742
                  sra          a5, t3, a7
                  sll          a4, s2, a3
                  div          s3, zero, t0
                  srl          t5, t3, a1
                  remu         t5, s0, t3
                  sltiu        a1, a3, -1582
                  sraiw        t3, a6, 25
                  sllw         t0, t6, tp
                  andi         s0, s1, 1236
                  xor          s4, s1, a6
                  nop
                  ori          s7, a7, -596
                  srl          t1, t6, a5
                  andi         a1, s8, 1759
                  andi         a2, s8, -1351
                  xori         a4, sp, 1824
                  sll          s0, gp, s3
                  xori         t1, s4, -176
                  mulh         a3, a1, s5
                  slt          t6, zero, a1
                  sraiw        s5, s1, 26
                  srl          s3, ra, t0
                  and          a2, t4, ra
                  divw         a6, s8, t6
                  sltu         t6, zero, s9
                  rem          s10, s6, a6
                  slli         zero, zero, 25
                  divw         t4, s3, s4
                  addi         t0, zero, 140
                  sub          t0, s8, ra
                  slliw        t3, s11, 7
                  addw         zero, gp, a7
                  rem          s0, a5, s8
                  remuw        gp, t2, ra
                  sllw         a7, t3, s1
                  lui          t6, 553912
                  slt          a1, a6, a6
                  divu         a1, s10, s3
                  slti         s8, s1, -1356
                  add          s3, a2, t0
                  srl          a2, a0, a5
                  add          t0, s8, a1
                  sltu         t0, a0, t1
                  srli         t1, s7, 45
                  addw         a0, t3, s9
                  mulw         t0, a4, t4
                  srl          s1, s10, a5
                  divu         s4, tp, s3
                  remw         a4, s4, a2
                  andi         a7, s10, 69
                  sub          sp, sp, t3
                  sll          s1, t0, t5
                  div          zero, s11, s5
                  sub          a0, s1, t4
                  divu         a5, a6, sp
                  sltu         s1, a0, zero
                  addi         t1, t2, 426
                  divuw        a2, s9, s0
                  divu         a4, s0, a7
                  addi         a6, s3, 330
                  mulhu        a5, s1, a5
                  divu         t6, s2, t1
                  andi         a7, s11, 111
                  slli         s4, t0, 1
                  mul          a2, t4, t1
                  nop
                  sltiu        t6, t3, -1839
                  sllw         s10, gp, a6
                  sll          a5, t4, s7
                  remw         t6, a6, t1
                  divuw        s0, tp, s6
                  divuw        t3, a4, s3
                  xor          s2, s8, ra
                  srlw         gp, a6, a3
                  sllw         a2, a4, s4
                  addiw        a0, s5, 1653
                  sltiu        ra, t1, 569
                  ori          s9, a1, -862
                  mul          sp, s3, t6
                  srli         a0, zero, 37
                  srai         zero, a2, 12
                  slliw        a3, a6, 2
                  sraw         s9, s8, s1
                  div          a2, s1, a6
                  subw         s7, s8, s1
                  ori          s1, ra, -606
                  divu         a0, s2, tp
                  slt          s1, gp, s0
                  srlw         a5, s0, s5
                  ori          s4, a1, 566
                  and          s9, t1, a2
                  sub          s2, s11, s8
                  srai         s4, a7, 0
                  sraw         zero, s6, a3
                  andi         ra, s10, -1436
                  mulw         s2, t5, t1
                  sraw         a2, s7, t0
                  srl          ra, tp, s1
                  or           t1, s7, a7
                  addw         s0, s1, t1
                  and          s3, s1, s3
                  sraiw        s8, a6, 17
                  addw         zero, a7, s0
                  auipc        t5, 293724
                  remuw        s0, s4, tp
                  divu         gp, a4, a1
                  mul          s1, s11, a0
                  mulhu        t0, a0, a1
                  mulw         s11, s3, a7
                  mulhsu       a2, a7, s0
                  mulw         s11, s1, zero
                  xor          gp, s3, a7
                  remu         s10, s3, zero
                  slli         zero, s2, 52
                  sraiw        a7, a4, 20
                  ori          t5, a7, 1944
                  addi         a4, a3, -771
                  addw         s9, t1, s10
                  subw         s5, s4, s9
                  divw         a4, s2, t3
                  sub          a4, ra, s5
                  remw         s3, t0, t6
                  remu         a7, s1, s3
                  add          t1, a7, t1
                  remu         a1, ra, a2
                  addi         t0, a3, -338
                  addiw        s0, s4, -1189
                  srliw        ra, zero, 11
                  remw         s11, a1, a4
                  sltu         a2, ra, a4
                  mulhu        s9, a4, sp
                  divuw        t4, s1, a0
                  addw         t5, s2, zero
                  mulhu        a4, a6, a7
                  slli         s7, tp, 23
                  addw         t6, a0, t4
                  ori          t1, a3, 1630
                  srai         t6, s3, 40
                  addw         t3, tp, t3
                  mul          t1, tp, a4
                  mulh         a0, s7, t2
                  divw         zero, t6, a3
                  nop
                  srlw         a0, a6, a6
                  divw         s7, s4, zero
                  srli         s11, a0, 8
                  divu         a6, t3, a3
                  mul          a0, s8, a2
                  slt          a0, a7, s10
                  sll          s4, s2, s6
                  div          a1, t1, s8
                  sllw         a5, s10, t1
                  slli         s3, s8, 40
                  addiw        s7, a6, 1207
                  ori          a6, zero, -985
                  auipc        a4, 900199
                  mulhu        s3, tp, a0
                  remu         zero, a2, a4
                  sltiu        a1, s6, -1537
                  srl          s9, t4, s8
                  addi         s8, a7, -136
                  rem          s9, s10, t6
                  divu         a7, zero, a4
                  remu         s8, a2, s4
                  auipc        a4, 557934
                  mulh         s1, t5, s3
                  xori         a6, a0, -765
                  rem          s2, t1, a7
                  sltu         t1, s4, s7
                  mulh         s3, ra, t6
                  slt          s5, s7, t2
                  sltu         s7, a6, t6
                  srai         t0, s8, 36
                  nop
                  divu         a6, t1, ra
                  slliw        s4, t2, 31
                  addiw        a1, a7, -1234
                  sll          t0, s8, s11
                  xor          s4, s4, s4
                  andi         a6, a2, -1713
                  xori         s0, a3, 634
                  srlw         a5, t3, s3
                  mulw         a3, a6, a2
                  slliw        s9, s5, 3
                  slt          a5, a5, s8
                  srlw         a3, a5, sp
                  div          s2, a3, s8
                  remuw        a0, a4, s4
                  sltu         s2, t5, s3
                  and          s7, s0, a5
                  srli         t6, s3, 34
                  sub          s10, s4, a3
                  srl          s9, s9, a2
                  mulw         a4, s11, a6
                  slti         a7, s7, -1759
                  sllw         sp, t4, t5
                  remu         t0, s3, t5
                  div          t5, zero, s7
                  xor          a2, s6, s9
                  mulhsu       s1, t2, s1
                  remw         t1, s0, a4
                  srl          sp, sp, zero
                  remw         s4, t4, t3
                  srl          a5, s3, t1
                  xor          t1, t0, t5
                  slt          a2, s0, s6
                  xori         sp, s1, -920
                  sraiw        a3, sp, 7
                  mulhu        a3, s6, t0
                  addi         s4, a1, -1957
                  slt          a2, s6, a6
                  auipc        s1, 243421
                  srlw         s8, s5, a6
                  sllw         ra, a5, t1
                  addi         t5, a1, -35
                  sltu         gp, zero, s7
                  addiw        gp, a2, 1846
                  auipc        a6, 354810
                  sub          s11, gp, sp
                  sub          t0, a3, s5
                  srlw         a3, a5, gp
                  sllw         s3, s4, s11
                  mulhsu       gp, s3, t6
                  remuw        t1, t6, s1
                  and          ra, t3, tp
                  slliw        ra, s2, 5
                  andi         a5, a0, -1808
                  sll          s3, ra, s0
                  srli         t4, s11, 23
                  addw         ra, s6, t1
                  divu         zero, sp, s4
                  nop
                  xor          t1, s0, s9
                  srlw         a5, s2, zero
                  slliw        sp, t0, 6
                  sra          a5, a5, t1
                  slliw        a2, s8, 10
                  divu         s2, sp, s6
                  andi         s11, s3, 71
                  divw         t1, zero, t5
                  divuw        s11, s7, t1
                  sraw         s2, a7, s10
                  and          s11, ra, sp
                  srl          t1, t1, s8
                  sraiw        s8, a2, 0
                  divu         s7, s4, s2
                  mulhsu       t5, t0, a4
                  divu         s4, sp, s5
                  addi         t0, t6, -602
                  xori         a5, a6, 1978
                  andi         s2, a1, 1571
                  divw         s2, t1, s10
                  sllw         a0, s9, a3
                  divu         t5, a3, t5
                  remw         s3, sp, s5
                  mulh         s2, t5, a5
                  addw         t6, t6, a5
                  divw         s9, a4, a7
                  remuw        s4, s10, a1
                  mulw         sp, a6, a4
                  add          a4, a6, s5
                  divuw        s2, tp, t0
                  rem          s7, s8, s4
                  mulhsu       s11, a6, t6
                  sraiw        a6, s0, 30
                  slti         s8, s9, 1428
                  mulh         a4, a1, a3
                  xori         t6, s11, -1734
                  srl          s9, s1, s2
                  addi         s1, a2, -841
                  nop
                  nop
                  sll          a5, s10, sp
                  remw         s4, t2, s8
                  slti         zero, t3, -322
                  mul          s7, t3, a3
                  xori         t1, t1, -131
                  lui          s1, 853859
                  lui          t3, 493089
                  remw         a2, s7, sp
                  divu         a3, zero, s4
                  auipc        s2, 2781
                  sltu         t0, s3, a3
                  sraiw        a2, t4, 17
                  subw         sp, a1, a0
                  or           t5, t4, s7
                  srl          s5, t6, t4
                  divw         zero, tp, a1
                  ori          s1, a0, 1792
                  remuw        s1, a7, s10
                  sra          a2, zero, a5
                  sraiw        s1, a1, 12
                  remuw        a4, a4, s1
                  add          s8, s9, a3
                  srliw        s10, a0, 12
                  slti         a7, gp, 742
                  and          sp, s9, t0
                  and          a0, a5, s0
                  auipc        ra, 428067
                  sraw         a6, t5, a3
                  addw         s11, s4, s5
                  remw         zero, s2, a5
                  srliw        a5, s2, 25
                  sra          a6, s5, tp
                  addiw        s8, s6, 1186
                  mulw         a6, s5, ra
                  rem          s4, s6, s4
                  add          s8, t2, s6
                  mulw         a3, s11, a3
                  srai         s5, s0, 15
                  div          t0, s11, s11
                  div          s7, zero, s0
                  rem          s4, s4, s5
                  sub          a2, a0, a5
                  xori         s0, sp, 1816
                  sllw         s11, s9, a4
                  rem          ra, zero, s1
                  lui          a1, 921745
                  sraiw        a2, t0, 20
                  sltiu        gp, s0, 1507
                  sub          s11, a1, s3
                  addi         t0, gp, -505
                  slli         t5, s5, 35
                  srliw        s10, a1, 23
                  divu         a2, s4, t2
                  mulhu        s9, s8, a3
                  slliw        a2, s7, 1
                  sraiw        t3, a0, 4
                  andi         s9, t2, -148
                  ori          t0, a4, -1572
                  sraw         a5, tp, s10
                  srliw        a6, t3, 14
                  sltiu        s7, s1, -1367
                  and          zero, s11, t5
                  ori          t1, a1, 1894
                  sra          a3, a1, t3
                  mulw         s4, a7, s10
                  mulhsu       t0, s9, a0
                  remu         zero, s11, sp
                  and          t6, a4, t6
                  div          s2, a5, s6
                  sll          s0, s1, s10
                  sub          s2, a5, sp
                  addi         s3, s3, 802
                  add          a7, a6, t3
                  sraiw        a6, t0, 6
                  xori         t0, s8, 271
                  srlw         a6, t0, s10
                  srliw        s1, s9, 16
                  slti         s9, a7, 1255
                  sub          gp, a4, sp
                  andi         zero, s3, 1940
                  subw         a7, tp, s11
                  xori         a5, s6, -1517
                  mulhu        t0, a5, s1
                  addw         ra, ra, t1
                  remuw        a0, sp, s4
                  lui          s9, 201580
                  remw         s4, a7, a6
                  and          s9, a5, tp
                  mulhsu       ra, s10, tp
                  srai         s11, t0, 42
                  div          s2, a3, t1
                  div          a6, s8, s9
                  mul          s8, t1, t4
                  mul          a7, a2, a7
                  sltiu        s0, a4, 1388
                  add          a0, s2, s3
                  slt          a7, zero, s9
                  or           s7, a1, a4
                  sltiu        sp, s5, -1159
                  slli         s0, a5, 8
                  ori          t5, s0, 1724
                  srli         s3, s0, 30
                  remu         a3, s11, t1
                  remu         t0, t5, s3
                  mul          a6, s6, a4
                  or           s11, s3, t6
                  sub          s4, s4, s8
                  srlw         a5, s2, a4
                  srli         t6, s10, 38
                  slti         gp, s7, 1379
                  slli         a1, a6, 3
                  sraw         a7, s9, t5
                  mulhu        a2, a2, s10
                  divw         s1, s0, t3
                  or           s11, t2, a5
                  srai         t5, a0, 36
                  sub          a4, a6, a7
                  mulh         t3, a7, a5
                  mulhu        s3, s4, s2
                  andi         s2, ra, 1397
                  xor          ra, a3, ra
                  andi         s1, zero, 645
                  srai         a3, s10, 30
                  addw         t0, t0, s0
                  ori          gp, t6, 885
                  remuw        s4, a6, a4
                  lui          ra, 66161
                  mul          s5, s11, s11
                  srli         s10, t0, 12
                  andi         s4, s9, 811
                  xor          zero, s9, s9
                  divu         zero, zero, a6
                  srl          sp, zero, a2
                  sraiw        t5, t4, 16
                  sub          a5, s8, t0
                  and          t1, s1, s10
                  and          a3, tp, t0
                  sllw         t3, s7, a2
                  divuw        s3, a1, a2
                  divw         t5, s1, a4
                  nop
                  div          a7, s11, zero
                  div          a5, s6, s3
                  slli         a6, zero, 15
                  srl          a0, t6, s0
                  addw         a6, a7, s2
                  xori         t6, t4, -1415
                  sllw         sp, sp, sp
                  slliw        t5, t3, 21
                  sraw         s11, s2, s3
                  addw         a1, a1, a7
                  slti         s10, s11, 1102
                  remw         a5, s8, a5
                  sra          s7, s9, a0
                  remu         a1, s10, a4
                  addiw        a7, s8, 453
                  divu         a7, tp, t2
                  slliw        a4, a4, 14
                  sub          a7, t4, s7
                  remw         a2, a6, s9
                  srlw         s3, s10, s4
                  remu         s10, s5, s11
                  xori         t1, s6, 591
                  srlw         a5, s7, tp
                  nop
                  sub          a6, s11, sp
                  sub          s4, t6, s6
                  slli         sp, s8, 12
                  mulhu        a3, s10, s11
                  and          s1, s1, zero
                  sub          t5, t1, t4
                  sllw         t1, a7, a3
                  nop
                  slt          a2, t4, tp
                  sllw         a0, t1, s1
                  mulhsu       s3, s9, gp
                  add          s7, a3, zero
                  srlw         s4, t3, t6
                  sltu         gp, s7, s4
                  slliw        a4, s8, 24
                  and          s7, s11, s3
                  mulw         a1, gp, s11
                  slliw        t0, a4, 21
                  auipc        s11, 687779
                  sllw         t3, a4, t2
                  subw         s5, t2, s1
                  divu         s4, s9, t1
                  addiw        t5, t2, -243
                  slti         s11, s5, 1321
                  sub          t0, s8, a0
                  or           a1, t5, s6
                  srli         ra, a0, 47
                  srai         a1, s0, 34
                  remuw        s7, s5, s1
                  nop
                  or           a4, a5, a3
                  srli         t6, t5, 5
                  sltiu        s9, t3, 476
                  ori          t0, s7, -170
                  sltiu        a0, s10, 634
                  divu         zero, tp, s8
                  add          s9, a1, s11
                  srliw        t5, a1, 12
                  lui          a7, 149491
                  srai         s7, a3, 12
                  remu         s5, s4, tp
                  div          a2, s9, a3
                  remw         a3, a7, s7
                  sltu         a4, t2, a0
                  divw         s2, s11, s11
                  remu         zero, t6, t2
                  xor          zero, t5, s0
                  and          a4, s0, t0
                  andi         s1, sp, 1699
                  andi         a6, s1, 164
                  sraw         a0, a1, a0
                  sub          s4, zero, a6
                  auipc        a2, 640079
                  srai         t5, s5, 63
                  mulhsu       sp, a7, a6
                  slliw        t0, a7, 16
                  sltiu        a2, t2, -169
                  sub          t1, a7, gp
                  sllw         t0, s8, t1
                  srl          s4, a7, sp
                  slli         a0, zero, 42
                  divw         a4, sp, t2
                  srli         t5, t6, 14
                  remw         a4, s9, t2
                  xori         t1, s8, 1166
                  sraw         s1, s4, a4
                  xori         sp, t5, -730
                  slli         a6, sp, 59
                  ori          t5, t5, -1544
                  lui          a5, 309043
                  mulhsu       a2, a2, s3
                  sllw         gp, s4, a5
                  addiw        s2, s8, 1159
                  remuw        s7, s5, s11
                  sub          a3, s3, a3
                  slt          t5, t2, s0
                  divw         t4, s9, s7
                  xor          gp, zero, t1
                  sll          s5, s4, a6
                  ori          a1, tp, 801
                  or           ra, a3, a7
                  mulhsu       t1, t5, a0
                  lui          s0, 741830
                  divuw        gp, zero, gp
                  srliw        gp, s0, 4
                  srl          gp, t1, s5
                  srl          s2, t6, tp
                  sraw         t0, t0, s8
                  mulhsu       t1, a2, a4
                  mul          s3, ra, s11
                  divu         zero, s0, zero
                  sra          s8, s3, s8
                  remw         s2, t3, s0
                  divw         t4, s3, s2
                  lui          s3, 626179
                  mul          zero, t1, gp
                  sub          s11, s1, t4
                  sltiu        a2, a6, 1601
                  xor          t3, zero, t5
                  mulhsu       s4, s6, a5
                  addi         ra, a7, 219
                  subw         s3, s1, t0
                  or           t3, gp, s4
                  remu         gp, t6, s3
                  subw         t3, a4, a2
                  sll          s9, t5, s10
                  sltu         s3, s2, a0
                  auipc        zero, 388587
                  lui          s11, 864560
                  lui          a5, 492971
                  remw         s4, a0, a5
                  mulw         t1, a4, s11
                  sllw         s9, s0, zero
                  srliw        s1, gp, 28
                  sltu         t6, a1, s7
                  srliw        t6, s0, 0
                  div          a0, tp, s11
                  auipc        t0, 766753
                  slliw        a4, sp, 25
                  sra          s8, a4, t4
                  divw         s10, s0, s1
                  mulw         s2, a1, a1
                  sltiu        t6, s1, -1910
                  and          zero, sp, gp
                  slliw        s7, tp, 29
                  xori         s1, s2, -1256
                  sll          s2, s6, s5
                  remuw        a5, t1, t2
                  remuw        s3, sp, t0
                  nop
                  divw         a7, t5, t1
                  sll          a4, s7, a2
                  addiw        t0, s11, -115
                  add          a4, t1, s11
                  srli         s10, a1, 44
                  subw         s5, a2, s0
                  srliw        a1, a5, 15
                  slli         t3, t6, 23
                  remu         a5, s1, s6
                  sra          a5, s0, s10
                  slt          t1, tp, s9
                  divuw        gp, s0, a0
                  srlw         s9, s1, s4
                  divuw        s4, t5, a0
                  or           gp, tp, ra
                  divu         s1, t2, t0
                  sllw         t5, s1, a7
                  divuw        s11, ra, tp
                  addi         a0, a1, 452
                  slli         t1, t6, 55
                  remu         zero, t5, s10
                  divu         s10, tp, sp
                  slliw        sp, ra, 19
                  mulh         s11, s8, s8
                  sra          a4, a4, a0
                  mul          s5, gp, t5
                  srliw        a2, s4, 24
                  addiw        zero, t1, -750
                  ori          s4, t4, 8
                  sraw         t0, t6, s11
                  lui          t1, 158865
                  xori         t3, s6, -402
                  subw         t1, t5, t4
                  mulw         t5, a3, a4
                  divw         t5, a5, s5
                  rem          a6, a1, a2
                  xor          t5, gp, a0
                  sra          t1, t1, a0
                  mulhsu       s7, s7, s0
                  subw         ra, ra, a0
                  slti         s5, s10, 1876
                  remuw        a2, t6, a6
                  auipc        s8, 573944
                  sltiu        t3, ra, -59
                  mul          s5, t3, t2
                  divw         a4, t0, a7
                  mul          t1, s10, s1
                  remw         a3, t6, s1
                  slti         s9, ra, 1525
                  mul          a7, a0, tp
                  nop
                  add          s0, sp, s10
                  andi         t4, a4, 1283
                  srai         s0, sp, 12
                  ori          t5, ra, 1935
                  mulhu        a2, zero, s3
                  mulh         s5, s8, t0
                  remuw        sp, a6, a4
                  subw         t0, a5, t4
                  sraw         s3, a5, ra
                  ori          zero, s9, -1053
                  sraw         t5, s11, a0
                  lui          a5, 45920
                  remuw        a6, sp, a1
                  srli         s9, ra, 15
                  mulh         a6, t5, a5
                  mulhu        gp, s10, s4
                  remu         s2, a2, t0
                  remw         zero, t0, t6
                  srli         ra, t3, 49
                  srliw        ra, a0, 21
                  remu         a2, s4, a1
                  mulh         s7, a1, t5
                  addi         a7, s7, -1073
                  srlw         s9, t2, a2
                  sub          t1, s10, a4
                  addw         a1, s10, s11
                  divw         s10, a6, a3
                  slt          s2, s0, s10
                  srliw        s0, ra, 22
                  sraw         sp, t3, s3
                  mul          t0, t0, t0
                  auipc        a4, 348105
                  srliw        ra, t0, 2
                  remw         a5, s10, sp
                  sllw         a7, a3, t2
                  mul          a7, a3, s2
                  sraw         ra, sp, ra
                  and          a1, s5, a1
                  and          t1, zero, a7
                  auipc        t0, 633036
                  rem          s0, s11, zero
                  lui          s2, 74005
                  sllw         s9, a3, tp
                  lui          s2, 272983
                  slliw        s5, zero, 10
                  div          t0, a2, s6
                  mulw         s7, sp, t4
                  div          a5, s0, t2
                  mul          a4, a6, s7
                  addi         s5, gp, 80
                  mulw         s3, s0, s2
                  or           a7, a7, tp
                  subw         s9, s6, t1
                  sllw         gp, s5, a2
                  div          t4, s7, a2
                  slli         s0, a7, 15
                  mul          a0, s0, s9
                  divuw        s2, t3, s11
                  srai         t1, s4, 1
                  sraiw        t1, s6, 25
                  sll          s10, t5, t0
                  remu         t1, t4, s10
                  sllw         t4, a0, ra
                  mul          s1, a4, ra
                  srli         t0, a4, 5
                  sub          zero, s1, a6
                  lui          a4, 103316
                  andi         s3, t0, 286
                  srlw         t6, a3, s7
                  srliw        gp, s2, 1
                  auipc        t0, 136016
                  nop
                  or           s3, s4, a7
                  nop
                  slt          gp, t1, t5
                  mulhu        s1, t2, t0
                  addw         t4, s7, a0
                  lui          s10, 1027740
                  remuw        sp, s4, a2
                  addiw        a4, t5, -1639
                  addw         s2, zero, a5
                  slt          a4, a6, s9
                  andi         s0, a6, 595
                  sllw         s5, t2, a0
                  div          t0, s2, t3
                  slli         a4, s4, 1
                  andi         a3, ra, 808
                  slliw        s2, s1, 21
                  subw         s5, a3, s5
                  mulhu        a2, s9, t0
                  addw         t4, a3, a3
                  auipc        t0, 443431
                  slt          gp, t0, a3
                  sub          a0, a0, s1
                  slt          s11, s7, sp
                  slti         sp, a3, -1829
                  sraw         t0, t6, t3
                  mulw         a2, a3, s3
                  div          a4, zero, s9
                  sltu         ra, s10, a4
                  and          a7, a0, t2
                  mulw         s7, s7, gp
                  lui          s8, 228836
                  sltu         s2, gp, zero
                  ori          s5, a2, 86
                  sraw         gp, s6, s8
                  addiw        a6, ra, -777
                  divuw        s10, a4, s0
                  div          a0, s5, a2
                  addiw        gp, tp, 268
                  and          s2, t4, a6
                  sltiu        a7, zero, 657
                  sltu         t4, s1, s5
                  srlw         s1, t0, a5
                  divw         a3, t0, s11
                  xor          ra, s6, t5
                  srai         s8, tp, 18
                  auipc        t3, 904614
                  sltiu        s7, s0, -413
                  mulhsu       t4, zero, s6
                  addi         s2, t0, 155
                  remu         a6, tp, s11
                  ori          s7, s7, 816
                  srli         s1, s11, 50
                  xor          a5, t0, s4
                  auipc        a2, 199499
                  mulh         s5, tp, t2
                  addw         t0, zero, zero
                  and          s9, a3, a5
                  nop
                  and          t6, a1, sp
                  ori          t6, a4, -18
                  addw         a4, t3, t2
                  sllw         s3, ra, a2
                  addi         s10, s10, -1967
                  auipc        s10, 597389
                  slliw        a7, a5, 9
                  xor          s10, s7, t6
                  srai         a0, tp, 37
                  slli         t5, gp, 60
                  sltu         a4, s2, t5
                  addi         s3, gp, 1950
                  sll          gp, a2, s1
                  xori         a0, t0, -35
                  auipc        t4, 1037913
                  srliw        a0, s3, 24
                  remuw        t1, t6, a2
                  rem          s7, s3, s10
                  divw         zero, a0, s4
                  srliw        gp, s1, 21
                  divuw        ra, a2, a7
                  sra          a7, tp, tp
                  lui          s7, 656422
                  srl          s10, s8, a0
                  xori         t6, t2, 1037
                  addiw        gp, a4, -2023
                  sraw         gp, t4, gp
                  sllw         a4, s2, a4
                  srli         a7, s1, 56
                  remw         zero, sp, s1
                  addw         a5, s7, a1
                  auipc        s4, 752273
                  sub          t3, s11, s8
                  auipc        s7, 426011
                  sraiw        a7, sp, 28
                  addw         a2, t2, t3
                  slli         a1, s3, 54
                  or           s4, tp, a5
                  and          t5, s1, t6
                  sll          s4, t0, a6
                  sltiu        t0, tp, 1387
                  mulh         s8, t4, a7
                  srliw        s4, t2, 6
                  xori         a0, s8, 489
                  divuw        s1, sp, ra
                  divuw        a5, s8, a6
                  divw         zero, gp, s11
                  srlw         t4, t4, a6
                  divw         s3, gp, s7
                  srl          t1, t3, t5
                  mul          t5, s0, a3
                  nop
                  andi         s3, t4, 1905
                  div          t5, s4, t0
                  slli         t0, s6, 35
                  sllw         s5, a2, t1
                  mulhu        t6, t0, s8
                  sllw         t6, s5, s9
                  sraiw        a0, a5, 14
                  slliw        a2, s11, 15
                  addiw        t3, a2, 1763
                  sraw         a0, s3, a2
                  lui          t1, 45201
                  srlw         s7, s10, s5
                  addiw        t0, t3, -1869
                  rem          sp, sp, a2
                  remuw        s0, s4, a4
                  divu         s2, a3, s7
                  srai         s9, a2, 60
                  div          t6, a2, s9
                  add          s7, t2, s7
                  ori          t6, t5, -1063
                  divuw        s1, ra, sp
                  auipc        s0, 940956
                  rem          s7, s7, s6
                  slti         t6, t0, -1502
                  remw         a4, a5, s1
                  xori         t0, a1, 446
                  remu         a6, a2, s6
                  add          t4, s5, a0
                  or           a7, sp, t5
                  lui          s5, 355843
                  mulw         a0, s10, s2
                  mulhsu       a4, s5, ra
                  divu         s10, s8, s5
                  sub          t1, s6, s2
                  slliw        t6, t5, 26
                  sltu         a0, s2, a1
                  sraiw        s1, a7, 2
                  or           s2, t2, ra
                  sra          t0, t3, t1
                  srlw         t5, s5, s3
                  sll          s5, sp, a3
                  or           t4, t3, tp
                  xori         t6, s4, 1727
                  rem          gp, s3, gp
                  rem          t1, t5, t0
                  divw         s4, a4, s1
                  remw         a5, s6, a0
                  divw         s11, t2, s5
                  lui          s1, 499531
                  addi         t0, s6, 338
                  slt          gp, a3, zero
                  ori          t3, t4, 469
                  andi         s9, s9, 1836
                  div          a2, t3, a1
                  sra          s8, a2, s2
                  xori         s4, s1, 782
                  xori         s10, a3, 1868
                  slliw        t4, a0, 11
                  mulhu        t4, s0, s9
                  xori         t5, s7, 784
                  subw         a6, t6, zero
                  slli         a5, t6, 37
                  auipc        t1, 264775
                  mulhu        a7, t3, a5
                  xor          a5, s9, a1
                  addw         t4, s8, s1
                  rem          s4, s7, a6
                  add          a7, a4, a2
                  mulhsu       s4, a5, t1
                  remuw        zero, a0, a5
                  srli         a3, a2, 23
                  or           a6, s1, zero
                  addi         t3, s2, 9
                  remw         a2, a6, s9
                  sraw         a6, a7, s3
                  slli         s9, a2, 49
                  add          t5, s4, a7
                  remw         t1, tp, s4
                  divu         s4, a2, a2
                  addiw        s1, s7, 1545
                  mulw         t3, s10, a5
                  subw         t6, s4, a3
                  divu         t5, s2, s2
                  addw         a1, s3, tp
                  divu         t5, s5, s7
                  divu         t6, t2, s8
                  add          s0, tp, ra
                  rem          a2, s2, a0
                  sraw         s9, zero, a1
                  remu         t1, t2, t6
                  div          sp, zero, t5
                  lui          sp, 845909
                  mul          a5, ra, s11
                  slliw        s9, s5, 7
                  addw         s8, t6, gp
                  srlw         t1, s3, s5
                  slli         s9, s9, 42
                  or           a2, a3, t4
                  addi         t6, t5, -1392
                  srlw         s2, a3, a7
                  sraw         s9, t6, a6
                  slliw        t1, sp, 20
                  nop
                  mulw         a7, t4, t6
                  addi         a2, t1, 896
                  mulw         a5, tp, sp
                  sub          a0, a6, zero
                  ori          s8, t4, 919
                  mulhu        sp, s3, a3
                  or           zero, ra, a5
                  divuw        s7, a4, t3
                  srlw         s8, s7, sp
                  srli         s10, s1, 54
                  div          s4, sp, t1
                  slt          t1, t1, tp
                  sraw         a2, s3, s9
                  sll          s8, a3, a2
                  sub          s5, t5, s4
                  srliw        a5, t4, 0
                  divw         s8, a2, s6
                  slt          s9, s7, s3
                  divuw        zero, t0, s0
                  mulh         t6, ra, t3
                  sltu         gp, t4, t2
                  and          s2, t6, a6
                  addiw        a2, a3, -1662
                  sltu         a6, s5, s3
                  srlw         s4, a0, a4
                  sub          t0, s1, gp
                  mulh         s8, s7, s10
                  ori          s7, a4, -1988
                  mulhsu       a7, s0, s3
                  or           a0, t5, a7
                  sraw         t5, s2, t4
                  sra          gp, a3, s9
                  srl          s2, t5, gp
                  mulhsu       sp, t5, s5
                  nop
                  divw         s10, sp, s6
                  divu         t1, s1, a7
                  slliw        t3, a1, 30
                  div          a0, s7, s7
                  nop
                  sllw         s1, sp, s10
                  subw         s0, s10, zero
                  remu         s1, s7, t4
                  mulhsu       a3, s7, a7
                  xor          t4, t5, a0
                  sraw         s11, zero, a2
                  divw         a2, t3, sp
                  slli         a7, s8, 16
                  mulhu        t4, a7, t4
                  sub          a1, t0, t2
                  xori         gp, sp, 1327
                  or           a0, a7, a0
                  mulhu        t6, t0, sp
                  srl          ra, gp, t2
                  remuw        t1, t4, a4
                  sraiw        t1, a4, 5
                  mulw         a1, a4, s1
                  add          a5, s9, a4
                  addi         s8, t1, -1071
                  rem          a1, a7, a1
                  xori         s1, a7, 1844
                  slt          s3, s11, s1
                  divuw        s5, a4, a1
                  divuw        a2, t1, s11
                  srlw         sp, s2, a7
                  xori         s7, gp, -1318
                  divw         a4, a3, t1
                  srliw        s2, a5, 19
                  lui          a6, 748251
                  nop
                  andi         a5, a7, -560
                  srliw        t0, a0, 27
                  nop
                  sltu         s8, sp, s2
                  lui          gp, 26038
                  div          s1, s10, t5
                  slli         t1, s7, 60
                  sra          s7, a4, s10
                  sub          s0, ra, a4
                  ori          gp, s9, 526
                  and          s4, t1, s11
                  mulw         s8, a0, a6
                  slliw        sp, t0, 7
                  sra          zero, a5, t4
                  xori         s2, s9, -1665
                  addw         t1, ra, s5
                  slliw        s2, a4, 4
                  mulh         s7, s7, s0
                  srliw        s10, a7, 24
                  divu         s8, a4, sp
                  addw         t5, t2, zero
                  sub          a7, t5, t1
                  andi         s9, s3, 1826
                  rem          t1, s11, a1
                  nop
                  and          t5, ra, s7
                  srl          s2, s9, s8
                  slti         t1, s7, -1566
                  mulw         s2, s7, t2
                  sltiu        a6, a0, -750
                  mulhsu       s8, a1, ra
                  sraiw        s4, s4, 23
                  srliw        a3, s2, 28
                  sraw         s8, a0, ra
                  srliw        a5, a0, 12
                  srl          t1, tp, s5
                  srlw         s3, tp, t3
                  addiw        s11, a6, 1979
                  sll          gp, t4, t0
                  slliw        s5, s3, 26
                  auipc        sp, 706939
                  slti         a0, a0, 1081
                  addiw        t4, a5, 767
                  addi         a0, s7, 1172
                  subw         t6, gp, s7
                  sllw         a4, a1, tp
                  auipc        t6, 171184
                  mulh         s7, a7, tp
                  sraiw        gp, t3, 12
                  andi         s0, s9, 1304
                  sub          s9, a6, t4
                  rem          s9, a6, sp
                  srliw        ra, s3, 8
                  auipc        s7, 896187
                  sllw         t4, tp, a2
                  srai         a6, s11, 60
                  srlw         zero, s6, s1
                  srlw         ra, a1, a5
                  xor          t5, a1, t3
                  srliw        a3, s4, 21
                  mulhu        s3, t2, ra
                  divw         s1, t4, a6
                  slt          a5, tp, a7
                  sraw         s4, t3, a1
                  slti         s9, a1, -1708
                  srli         sp, s3, 11
                  mulw         a3, s8, a3
                  remu         gp, t1, s5
                  addi         t3, a4, -763
                  srli         s3, a1, 15
                  sub          s0, t6, s7
                  sra          a5, t0, s3
                  remu         t5, a2, t0
                  auipc        t4, 62307
                  sltu         gp, s1, s5
                  or           sp, t5, ra
                  sub          a2, sp, a3
                  and          t4, s7, a7
                  xor          t3, s7, s6
                  remw         s4, a1, a3
                  slt          s11, s11, a3
                  nop
                  mulh         s3, s6, t4
                  sllw         s2, a7, t1
                  mulh         s10, s5, s2
                  divw         zero, s3, s11
                  mulh         s5, a2, a2
                  srliw        s8, a4, 10
                  sub          s4, s5, s0
                  rem          t5, t1, a3
                  slti         t0, t6, 1292
                  add          s2, t4, a2
                  sllw         a2, a6, s4
                  rem          gp, s6, a2
                  srl          a3, s10, a4
                  auipc        sp, 1009560
                  mulhu        s11, t4, t3
                  xori         s2, ra, 173
                  mulh         s8, s7, s3
                  sltu         a0, a2, s1
                  subw         t3, t4, s2
                  rem          t6, s1, a0
                  sra          s3, s10, a0
                  sraw         a2, s10, tp
                  slt          s0, a7, a4
                  sraw         a2, a6, t4
                  sltiu        s7, s11, 505
                  slliw        t5, gp, 16
                  mulw         s7, t6, gp
                  addiw        s8, a7, 628
                  addw         sp, s4, s6
                  addw         t4, s4, zero
                  remw         s7, tp, zero
                  srlw         a5, a1, a1
                  slliw        s9, a3, 9
                  sub          ra, s3, s7
                  divw         t1, s5, sp
                  ori          a6, s9, 1007
                  slt          gp, gp, s3
                  srli         s10, s2, 46
                  remu         ra, zero, t4
                  sllw         s1, zero, t5
                  xor          t6, s9, t5
                  sltiu        s2, s5, 1120
                  div          t6, t5, s4
                  slti         sp, s4, 189
                  mulw         s0, s10, t6
                  xori         zero, t5, 1548
                  add          t5, a0, a7
                  ori          t4, s11, -10
                  sra          a6, t5, t3
                  srli         a7, t1, 3
                  slli         s5, a3, 10
                  remuw        s4, s6, s5
                  mulh         ra, a0, gp
                  srli         s1, a1, 32
                  xori         s10, a2, 1586
                  remuw        s8, t6, a2
                  sltu         ra, ra, ra
                  addiw        s10, s5, -1822
                  ori          t3, s6, 1100
                  slti         a2, t5, -270
                  mulw         s7, gp, t4
                  andi         gp, s0, 956
                  rem          s5, gp, s11
                  add          a7, s10, s2
                  srli         t1, s11, 8
                  srai         t5, t2, 26
                  sra          t0, a2, s2
                  divw         ra, zero, s2
                  sll          s8, a6, s9
                  srai         s2, t1, 4
                  srliw        t1, zero, 24
                  sll          a2, t2, s1
                  sub          ra, ra, s7
                  srai         a5, s2, 62
                  and          s2, t2, tp
                  divu         a7, a2, s0
                  mulw         s5, ra, a3
                  srl          t4, zero, sp
                  srai         a3, t6, 26
                  sub          sp, t2, s6
                  addw         sp, t0, zero
                  mulhsu       s4, t2, tp
                  and          ra, a1, t3
                  slli         a5, t5, 61
                  mul          sp, s0, s0
                  nop
                  xor          a5, t4, s9
                  and          s5, a0, t0
                  remuw        t5, s8, zero
                  divuw        s10, a4, s9
                  sraiw        a4, tp, 17
                  mulh         zero, s2, s1
                  remu         s5, a6, t4
                  slli         t5, sp, 36
                  sltiu        sp, t5, -1666
                  xori         s7, t3, -1981
                  sraw         gp, t3, zero
                  add          t5, t6, sp
                  divw         s9, t2, tp
                  srli         s9, s1, 50
                  sra          a6, a7, gp
                  sra          a1, s0, a2
                  slli         s8, s0, 62
                  mulhsu       t5, ra, s8
                  mul          t1, a1, a0
                  sub          s0, gp, s8
                  addiw        sp, a0, -42
                  slli         s4, a1, 35
                  divuw        gp, a7, tp
                  mulh         s7, a1, gp
                  slliw        gp, s0, 7
                  subw         s2, a7, gp
                  slli         s2, t2, 17
                  sraw         zero, s7, s9
                  mulhu        a2, s3, zero
                  nop
                  srli         s11, a6, 14
                  divu         a4, t3, sp
                  rem          s0, s8, s4
                  addw         t5, s10, s9
                  ori          ra, a1, -1705
                  subw         a1, s7, s1
                  addiw        a1, a2, -628
                  srli         t0, tp, 13
                  srliw        a3, a3, 4
                  slliw        t3, ra, 17
                  srl          t1, s1, s1
                  rem          s1, a3, s4
                  remw         s8, ra, a1
                  mulhsu       a2, ra, s3
                  sra          a2, a1, a3
                  srlw         a3, s0, sp
                  srlw         s2, t1, s10
                  sub          s2, sp, a2
                  divu         a6, s8, zero
                  srliw        sp, a4, 13
                  srli         t0, t1, 26
                  sraiw        t0, t3, 2
                  srl          t3, s8, sp
                  remw         a7, ra, t0
                  subw         s0, s9, a3
                  slti         s11, s4, 263
                  srlw         s1, a2, a0
                  srlw         s5, s4, s1
                  nop
                  sub          t6, s6, a6
                  srliw        a5, s5, 19
                  or           s3, s11, a1
                  srliw        t1, tp, 18
                  sra          t0, a5, t3
                  xor          a5, a5, s9
                  mulhu        a5, t6, s8
                  sllw         ra, s10, s2
                  sub          s1, t6, t6
                  sra          a2, s2, a3
                  sra          t4, t5, sp
                  sub          sp, s10, t6
                  slli         s4, t6, 45
                  mulhu        s1, a3, t6
                  mulw         s9, s4, s3
                  ori          s3, s2, -1736
                  addw         a2, s1, s7
                  or           s9, a6, a0
                  remuw        t4, s2, a0
                  remu         t5, tp, zero
                  add          s11, tp, s6
                  remuw        zero, s4, s2
                  div          t0, s10, s7
                  mulhu        a5, t2, a4
                  mulh         s5, a0, a0
                  sltiu        s5, sp, 708
                  remu         s9, gp, s0
                  add          s8, s11, s2
                  mulh         zero, a6, s6
                  sltu         t4, a1, s1
                  sltu         s7, t1, a3
                  slli         a5, t2, 10
                  slt          sp, a6, s7
                  divw         s8, s8, t0
                  ori          s1, zero, 715
                  remuw        ra, t2, gp
                  sll          s11, sp, a0
                  sllw         a2, a0, t0
                  slt          t5, a6, s9
                  srli         t5, s7, 24
                  mulh         a2, t5, zero
                  srli         zero, s10, 21
                  and          s8, s5, s1
                  div          a3, s11, s0
                  srlw         a7, s8, s8
                  div          zero, t2, s10
                  slt          t3, s4, t6
                  ori          zero, s2, 1090
                  remu         t3, tp, t0
                  div          t0, s6, s4
                  srai         zero, t3, 60
                  srliw        s2, s10, 18
                  slt          s9, s4, a4
                  sltu         s1, a6, t4
                  sraw         s4, s9, t0
                  sraiw        s8, a3, 13
                  mulw         s11, a7, a4
                  slt          ra, a0, s0
                  divu         a2, s6, t4
                  sllw         t4, ra, t5
                  andi         t3, t3, -12
                  srl          a0, s3, t2
                  sraw         s7, s5, t5
                  divw         t0, s9, t1
                  lui          zero, 184702
                  xor          a5, t4, t4
                  remuw        s9, s5, a2
                  addi         zero, a7, -1266
                  addw         t6, tp, sp
                  remw         s11, zero, a0
                  mul          t3, a2, t6
                  mulhu        s4, a1, s4
                  remu         t6, t4, t2
                  xori         t6, a5, 1875
                  lui          a3, 432064
                  nop
                  auipc        s11, 1013613
                  divuw        s0, t6, s9
                  rem          a5, s1, t1
                  remu         s10, t4, a3
                  divu         s1, t5, a7
                  xor          t1, a6, a0
                  sraw         a0, s3, s2
                  sltu         t0, a3, s11
                  mulhsu       s3, sp, s7
                  mulhu        a3, s10, a7
                  addiw        t0, s5, -1198
                  addw         s9, gp, t6
                  xor          a5, tp, s3
                  remuw        t3, s11, a6
                  sll          t5, a6, s5
                  divuw        t1, s3, s2
                  subw         s11, t1, ra
                  add          s0, s1, t3
                  sraw         s4, t1, a5
                  remw         s5, a5, s11
                  divuw        s5, s2, sp
                  srl          a6, s2, s2
                  addi         sp, a3, 1853
                  subw         s3, s7, a2
                  ori          a2, s11, 1159
                  ori          s9, t3, 1900
                  divw         ra, s11, s5
                  srli         s3, s0, 59
                  sltiu        t3, t4, -489
                  divu         a5, s3, s4
                  and          t1, t5, a5
                  sraw         t4, t3, t4
                  rem          a5, s3, s0
                  mul          s4, s3, a5
                  add          a7, a1, s1
                  divuw        t1, a1, t6
                  srlw         t5, s0, t0
                  sra          t1, a3, s3
                  mul          t3, s10, gp
                  and          s9, t4, t2
                  mulh         zero, t4, s4
                  xori         t0, s7, -984
                  mulw         t6, sp, a7
                  and          gp, tp, t6
                  and          t6, ra, sp
                  mul          zero, tp, a4
                  mulhsu       sp, s1, s1
                  addi         s7, s4, -511
                  addiw        s4, tp, -933
                  div          s7, s8, a3
                  srliw        a5, a4, 29
                  lui          a6, 618747
                  div          zero, zero, s0
                  slt          a7, t4, s6
                  addw         t0, tp, t3
                  remu         t6, s4, s9
                  addi         s0, s3, -190
                  subw         s3, s10, a1
                  andi         t0, s1, 620
                  sraw         s4, s11, s1
                  add          sp, s6, t6
                  sraw         a5, t2, s8
                  slliw        s4, s0, 24
                  addw         t1, s0, a3
                  srliw        s5, a3, 8
                  nop
                  sraw         a6, a7, gp
                  srlw         a1, t4, s1
                  mulhu        a4, a1, s1
                  subw         a0, s0, s9
                  slt          gp, s4, a2
                  addw         s7, a2, tp
                  slti         s9, t2, -1122
                  slli         s3, a6, 45
                  slliw        s5, a1, 10
                  mulw         a3, s3, t2
                  sll          t3, t0, a0
                  lui          a4, 34448
                  remuw        s3, t0, a7
                  addi         a6, a7, -1602
                  sll          a3, a4, gp
                  mulh         a3, s0, a5
                  slliw        t0, s9, 20
                  srlw         s1, t0, s9
                  mulh         t5, zero, s5
                  lui          s10, 513673
                  slliw        s0, t5, 8
                  auipc        t6, 623000
                  remuw        t0, zero, a5
                  srliw        a6, a4, 4
                  xori         s2, s3, 815
                  sltiu        t1, s8, 1571
                  sraiw        t4, t2, 8
                  remuw        t4, s1, s8
                  sra          s7, t5, a6
                  xor          s10, a2, t5
                  sraiw        s5, t5, 11
                  srlw         gp, s10, s6
                  sraiw        s5, t6, 9
                  srliw        s5, s3, 16
                  slliw        t1, a4, 3
                  divu         s7, t1, s9
                  mulhsu       t6, s9, t0
                  sraiw        a7, s2, 10
                  sllw         sp, a7, s11
                  and          a2, s0, t2
                  sra          s3, s9, ra
                  slt          s11, ra, a4
                  nop
                  srliw        a1, s10, 6
                  div          s4, sp, s9
                  srliw        s11, s10, 21
                  sra          s11, s5, zero
                  srai         s11, tp, 57
                  add          t3, t3, s0
                  srli         s10, s10, 54
                  slliw        a1, t4, 23
                  sraw         s7, t5, sp
                  srai         a1, s10, 36
                  sub          s8, ra, s3
                  remw         t1, s9, tp
                  lui          s5, 635018
                  divuw        gp, t3, gp
                  srli         s9, t1, 29
                  mulhsu       t1, s11, s0
                  mul          t1, s3, s4
                  addiw        gp, s5, -277
                  sra          s8, tp, t3
                  mulw         s2, s1, s5
                  rem          t1, a1, a4
                  srai         s5, a3, 38
                  srai         s10, t0, 21
                  srliw        gp, t4, 29
                  divu         s10, tp, sp
                  xori         s5, s9, -476
                  slti         t4, s5, 1751
                  slli         a2, s2, 37
                  divuw        a2, t3, s2
                  remw         s11, t4, s7
                  sraw         t5, tp, a6
                  nop
                  subw         t6, a7, tp
                  sub          s3, s10, s0
                  ori          t3, t1, 73
                  and          s0, s2, s1
                  sraw         a2, ra, ra
                  slti         t3, a7, -1531
                  subw         a6, a5, s4
                  add          a2, a6, s8
                  addi         s1, s8, -989
                  slliw        t5, s7, 15
                  slliw        a4, s10, 5
                  nop
                  or           a6, t5, sp
                  slliw        a3, s11, 2
                  divw         a5, s5, s10
                  ori          s11, a3, 1578
                  addw         s4, s7, s4
                  div          t1, s5, s7
                  mulh         t3, t0, s7
                  sra          s4, sp, t4
                  sra          s8, a5, t2
                  addiw        t1, s4, -119
                  sll          zero, a5, gp
                  divuw        t5, tp, zero
                  sll          s2, s7, t1
                  slli         t1, t5, 51
                  div          a4, s2, s4
                  sub          gp, t0, t2
                  sll          ra, a2, a2
                  divu         s2, t3, t6
                  sltiu        t1, zero, -1718
                  sraw         t3, tp, s2
                  mulw         ra, t3, a4
                  mulhu        t1, s0, t5
                  mulw         s11, a1, zero
                  nop
                  sll          s1, t3, a7
                  slli         s8, a7, 30
                  sraw         a4, s8, t4
                  sltu         t6, a1, s5
                  sraw         s10, a3, t3
                  mul          s7, a4, a1
                  and          ra, s1, t5
                  add          t5, tp, s7
                  sllw         s3, t3, s5
                  mulhu        s11, s3, t0
                  srli         s2, gp, 25
                  mulhsu       s8, s6, s1
                  xor          t4, s0, s6
                  xori         s7, t2, -757
                  slliw        s0, gp, 11
                  nop
                  remw         a7, a3, s0
                  srai         s7, s2, 12
                  slliw        sp, t6, 0
                  xori         s9, gp, -1886
                  or           a2, tp, s6
                  mulh         a7, t0, sp
                  mulhsu       zero, s2, t2
                  addw         t0, t3, t2
                  divu         a0, s0, a5
                  xor          s2, s3, s1
                  divuw        a5, a5, tp
                  subw         t4, s8, a2
                  sltiu        t6, a2, 345
                  ori          t6, a2, 1971
                  add          a5, s2, t5
                  mulh         zero, a2, t2
                  div          s7, a1, sp
                  remw         s5, s0, t1
                  slli         t3, s5, 12
                  srai         t1, a5, 44
                  srl          t6, tp, a7
                  slli         a5, s2, 31
                  xor          s10, a2, s8
                  sub          a2, t6, t4
                  sraiw        a3, t1, 9
                  auipc        s5, 314602
                  remuw        a4, s3, a7
                  sraw         s0, a4, s7
                  remw         s0, t2, a7
                  divw         gp, ra, s10
                  slt          s0, s6, t6
                  sltiu        sp, a4, 170
                  sltu         a5, t0, ra
                  sltiu        gp, s11, -1599
                  andi         zero, a5, -693
                  or           s1, a2, s11
                  andi         a1, s7, -1298
                  divuw        a1, a7, s1
                  srliw        t1, s8, 7
                  andi         s7, a2, 1806
                  or           s5, t2, s6
                  lui          t4, 69556
                  slliw        gp, s8, 8
                  auipc        s7, 427248
                  and          s0, a2, sp
                  slt          t1, t0, a2
                  srlw         a3, s10, s6
                  remw         s10, t0, a5
                  remw         s9, a6, s9
                  srai         s11, a7, 20
                  slliw        a1, s8, 21
                  divuw        s2, a2, s4
                  sllw         t3, gp, t5
                  sub          t0, s3, t6
                  sra          t1, s11, a4
                  remw         s9, s5, t6
                  sllw         a0, s4, t2
                  subw         s1, ra, sp
                  sraw         a2, s10, t0
                  divuw        s8, a0, a5
                  sltiu        s2, s4, 534
                  andi         a6, s11, 1419
                  srai         zero, s10, 31
                  sll          s11, s9, gp
                  slt          t0, gp, t4
                  srliw        ra, s0, 20
                  add          s9, t2, t6
                  sub          s8, zero, a5
                  srlw         a2, s6, t6
                  mul          a0, t0, t3
                  sltu         s5, t6, s4
                  ori          t5, a0, 678
                  div          s5, s3, sp
                  slli         s1, s3, 25
                  mulh         s10, gp, s1
                  and          a7, s2, zero
                  addi         a7, t1, 459
                  mul          s10, a7, s11
                  slti         s2, a7, -428
                  divuw        a0, a4, s3
                  remw         a4, s9, s5
                  sraiw        a6, s8, 29
                  div          t1, s3, s2
                  sltu         a7, s1, s4
                  sraw         a0, t2, a2
                  sra          t4, ra, t0
                  subw         t1, t4, a1
                  xori         t5, tp, 1791
                  sllw         t6, t5, s3
                  mulhu        sp, t2, a7
                  div          zero, s4, a4
                  remuw        a7, s11, a2
                  sllw         t6, t6, s5
                  slti         s10, a0, 1713
                  srai         a7, s2, 52
                  srai         a6, a5, 29
                  mulhu        s9, t6, a1
                  remu         t6, s4, s7
                  divw         sp, s5, tp
                  subw         s5, a0, t3
                  divw         t1, s11, a3
                  addw         s1, zero, s2
                  slliw        ra, tp, 11
                  slliw        a4, a2, 4
                  mulhu        s4, gp, s7
                  mulw         a2, t6, t1
                  divuw        s10, s6, s8
                  slliw        t5, tp, 2
                  slt          a1, a0, ra
                  lui          ra, 479927
                  mulh         a3, s5, a5
                  addw         t1, s10, t6
                  remuw        t4, a6, zero
                  slliw        a6, tp, 15
                  remu         gp, s8, s2
                  mul          t0, t6, a3
                  srliw        s3, s4, 12
                  sraiw        a6, a3, 12
                  addiw        zero, t2, 1817
                  remw         s2, s4, a1
                  addiw        a4, s2, 1734
                  mulw         t3, t1, s4
                  mulh         s11, t5, s8
                  srai         a5, s0, 16
                  ori          s5, t1, 410
                  sra          ra, s1, s5
                  slti         a3, t2, -1679
                  sltiu        a4, s9, -1677
                  divu         t3, t5, s4
                  slt          t0, t1, s2
                  srlw         s7, s6, t4
                  remuw        a3, t0, s7
                  xor          a4, a4, gp
                  slti         s11, s7, 1622
                  or           a1, s10, s9
                  addiw        t1, tp, 1524
                  sraw         s4, s8, a0
                  srlw         t0, zero, s10
                  srai         t3, a7, 53
                  lui          gp, 152396
                  sraw         t4, a1, s6
                  mul          s10, s9, t4
                  sraw         a6, s2, ra
                  srlw         t1, tp, s8
                  sltiu        a2, zero, 275
                  slli         s0, t3, 4
                  div          s10, s9, s5
                  sub          zero, s11, zero
                  sllw         gp, zero, a7
                  remw         a2, t1, s6
                  slti         t1, a6, -1460
                  remu         s2, ra, a1
                  subw         s0, t3, t5
                  addiw        a5, t1, -904
                  sraiw        s1, t2, 19
                  srli         t0, s5, 54
                  xor          s7, a4, t1
                  mulhsu       t3, sp, s11
                  sra          t3, s10, a2
                  remw         a0, tp, a0
                  srai         a0, zero, 11
                  sra          s11, ra, t4
                  mulh         s2, s5, s1
                  and          a2, a2, a5
                  srli         t0, s11, 48
                  nop
                  sllw         a1, zero, s6
                  addw         sp, s9, t0
                  slti         a2, s8, -110
                  mulh         s8, s4, s2
                  sraiw        s9, s9, 25
                  slliw        zero, a1, 27
                  div          zero, a4, s5
                  mulhu        s4, a2, tp
                  lui          gp, 17238
                  sllw         s8, s1, a7
                  addiw        t6, a2, 1215
                  subw         s2, s3, s9
                  sraiw        t4, gp, 22
                  mul          zero, sp, s3
                  and          s11, s0, tp
                  sltiu        a1, a0, 978
                  slliw        a3, s4, 9
                  sraiw        a7, s2, 28
                  sltiu        s4, s3, -712
                  and          s4, ra, s9
                  srl          a6, a4, a2
                  mulhu        s11, t2, a6
                  lui          t5, 763747
                  divuw        s5, a7, s3
                  divu         a3, t3, s0
                  slli         a6, s3, 37
                  srl          a0, a6, t0
                  andi         a0, s1, -78
                  srliw        s8, t4, 6
                  srlw         a4, s2, t1
                  divuw        t1, a1, tp
                  slti         s8, s2, 1053
                  srlw         s0, a7, a2
                  subw         zero, a4, s9
                  srl          s9, a7, s0
                  add          s10, a6, s10
                  addiw        s5, a4, 1584
                  sraiw        sp, s0, 7
                  xori         s9, gp, 1542
                  subw         a4, s4, a4
                  andi         a6, s1, 1934
                  remw         a2, a2, s7
                  auipc        s1, 47641
                  mulh         a2, t4, s6
                  sll          s3, a1, a4
                  srliw        gp, a0, 17
                  sll          t0, sp, s10
                  rem          s11, s11, s0
                  srliw        s0, a2, 25
                  mulhsu       t6, gp, s3
                  nop
                  subw         s9, t6, a6
                  divuw        t0, s11, s3
                  sltiu        s7, s3, -266
                  andi         t5, t3, 440
                  slliw        a3, tp, 20
                  sub          a3, s9, s6
                  divw         a1, t1, s10
                  ori          s8, tp, -100
                  andi         s1, s11, 188
                  sltu         a4, s4, gp
                  remuw        a4, a6, s11
                  nop
                  mulh         s2, a4, a6
                  or           a6, s7, s9
                  addiw        a3, s2, 825
                  slt          t6, a2, a5
                  div          sp, s6, t5
                  nop
                  mul          zero, t4, t5
                  sltiu        s4, s4, 2013
                  sub          a0, a4, a5
                  divw         s10, s3, a5
                  mulh         t1, s1, s2
                  srl          a2, t6, t6
                  srli         t6, sp, 29
                  sub          s10, a6, s1
                  mul          a1, a5, sp
                  or           a4, zero, t6
                  sub          s5, a6, a5
                  mulw         a4, s2, s9
                  subw         gp, t3, s10
                  ori          ra, t6, 888
                  addi         s4, s9, -1473
                  mulhsu       a5, a0, s1
                  mulhu        s7, a7, s8
                  sltu         s3, a0, t5
                  srliw        zero, t5, 0
                  nop
                  srai         s11, a2, 14
                  sraw         s2, s11, a2
                  xor          s3, s8, s4
                  sllw         s11, s1, t1
                  auipc        t1, 535649
                  addi         s2, t3, -1400
                  srliw        s4, a6, 28
                  sltu         s5, s1, s10
                  and          s9, t0, t5
                  sraiw        t4, t4, 3
                  slt          s2, s2, a7
                  auipc        zero, 114440
                  rem          s7, zero, t4
                  remw         t5, a4, s8
                  sra          s3, zero, a4
                  xor          s10, s0, a0
                  sraiw        s2, zero, 24
                  mulhu        s11, t5, t4
                  rem          s4, s2, s0
                  slt          zero, a2, a0
                  srli         s7, ra, 3
                  addw         t3, s5, s11
                  mulh         t0, t4, t6
                  sll          zero, a7, a1
                  andi         t1, ra, -1191
                  nop
                  slliw        t1, t2, 23
                  mulh         gp, tp, s7
                  xor          s5, ra, a2
                  sra          gp, a0, a2
                  divw         t4, t2, t5
                  remuw        a5, gp, s3
                  divw         t0, sp, ra
                  remw         s10, t1, a4
                  remw         a2, s5, s6
                  addw         t1, a6, s2
                  lui          a6, 77935
                  xori         t1, t4, 912
                  mulhu        zero, s9, s0
                  nop
                  slt          a7, t4, s10
                  sll          t1, ra, gp
                  sraw         s10, a1, a7
                  rem          s1, s6, s1
                  andi         a3, s8, -864
                  mulh         a5, s8, t3
                  rem          a1, t6, t3
                  srl          a2, t3, t5
                  mulhu        s10, zero, tp
                  sltiu        a7, a4, -352
                  slti         t3, a1, -1732
                  addi         s3, t5, 208
                  srli         a6, s4, 30
                  nop
                  srai         t5, t1, 25
                  srli         t1, s8, 1
                  addiw        t0, s4, 1064
                  sltu         t6, s8, a6
                  sraw         gp, a3, a5
                  divu         s4, s11, s11
                  add          s9, s10, a4
                  auipc        s0, 934974
                  sraiw        t1, a3, 12
                  andi         s0, a6, -203
                  remu         a4, t1, t3
                  srlw         zero, s8, t2
                  sltiu        s4, t3, -953
                  sllw         t3, t2, a7
                  and          s5, a4, ra
                  sub          s0, t0, s2
                  srl          t0, sp, a0
                  subw         t3, s7, s2
                  and          s2, s11, s0
                  mul          s1, ra, t5
                  mul          t5, t6, s0
                  div          t1, sp, s11
                  sra          t6, a1, a3
                  mulhu        a2, a4, a5
                  slt          a4, a7, a0
                  addi         a2, s5, 738
                  addw         gp, a5, s4
                  sltiu        gp, s11, -1127
                  sra          t6, s11, t2
                  remw         s8, s10, s4
                  mulhsu       s10, s0, s9
                  or           s1, t1, a1
                  addw         t4, s7, t3
                  sltiu        a3, t3, 853
                  or           a6, s1, s6
                  or           s8, t2, a0
                  srliw        s8, t5, 3
                  slt          a0, s8, t4
                  slti         t5, tp, -156
                  mulhsu       s3, zero, ra
                  sraw         s7, s3, s2
                  subw         t5, sp, s11
                  srli         t1, ra, 0
                  lui          zero, 75187
                  nop
                  and          a5, s2, s3
                  rem          s11, t2, s9
                  srli         s2, ra, 0
                  and          sp, s8, s9
                  subw         a4, a5, zero
                  sll          s9, zero, s5
                  rem          s7, s5, a7
                  slti         s0, s2, 1479
                  remuw        s7, t4, s0
                  sltiu        s5, a3, -518
                  and          a5, s6, s0
                  addi         t5, s6, 1364
                  slli         a0, tp, 37
                  sllw         a4, a0, s2
                  srai         s1, a7, 37
                  sll          s2, s0, sp
                  and          s3, a7, s3
                  rem          t1, s9, zero
                  mulhu        t6, a7, sp
                  srlw         s11, s3, sp
                  slliw        t3, a4, 10
                  srl          t1, s5, s0
                  sltiu        a3, t5, -1419
                  xor          a6, s1, a0
                  srai         gp, s4, 19
                  srl          zero, s1, s4
                  auipc        t5, 983431
                  sltu         sp, gp, s4
                  or           t3, a3, a5
                  slti         s10, sp, -274
                  sra          gp, t2, a1
                  remw         s11, sp, a2
                  addw         a4, s2, s4
                  subw         a2, s6, a2
                  slt          a4, sp, a4
                  slt          ra, s2, gp
                  slti         ra, a1, -1551
                  srlw         s3, s10, gp
                  sub          t4, s5, a7
                  subw         s4, a3, tp
                  ori          a6, s6, -211
                  sub          t4, t3, s11
                  divu         t3, s3, t4
                  mulh         s4, s9, s10
                  sltu         a4, t2, t1
                  srli         a1, t2, 4
                  and          s2, t1, a6
                  addiw        s11, a1, -322
                  div          a7, gp, t6
                  divw         t4, a6, zero
                  andi         zero, s6, -328
                  remu         s9, s1, a4
                  or           a0, s0, s10
                  rem          t1, s10, a7
                  mulw         s10, s1, gp
                  ori          a1, a5, -62
                  addi         ra, t2, -1807
                  srai         t5, ra, 10
                  add          s10, a4, t5
                  sraiw        a3, s3, 21
                  slt          s5, a3, a4
                  srli         s11, a2, 2
                  srl          t3, a4, a0
                  mulhu        s3, a7, a4
                  nop
                  slliw        s0, a2, 14
                  remuw        s2, s10, a2
                  addw         gp, ra, s11
                  addw         t5, s2, t1
                  mulh         s2, t4, a0
                  add          s0, zero, s8
                  nop
                  divuw        a4, s7, t5
                  slliw        sp, s8, 24
                  srli         a0, a7, 4
                  subw         a5, a2, ra
                  div          s11, t0, t5
                  sllw         a0, t6, s11
                  srl          a1, a1, a4
                  slti         s4, gp, 1138
                  subw         a2, s5, a5
                  srl          a4, sp, s2
                  or           s8, s4, s6
                  sltu         t1, a0, s9
                  add          t4, a2, tp
                  addw         s11, s6, zero
                  xor          s10, s8, s5
                  sltu         a4, a3, t4
                  mulhu        zero, a3, gp
                  rem          a4, a2, a2
                  or           s11, s7, t4
                  divu         s7, t1, s5
                  auipc        a3, 225652
                  srai         t1, t2, 63
                  divuw        s1, a7, a2
                  mulh         a2, s2, s2
                  srliw        sp, s9, 29
                  mul          zero, t0, zero
                  srai         t0, s2, 18
                  addw         s2, tp, s1
                  divw         t1, s11, t2
                  srliw        s2, s10, 13
                  mulh         s0, a4, a6
                  andi         gp, s2, 101
                  auipc        a7, 1030914
                  rem          s4, a5, t4
                  andi         s7, a6, 1853
                  divu         a5, t5, zero
                  lui          a2, 1007904
                  rem          s9, t1, t6
                  addi         ra, s11, 355
                  divw         s10, s1, s5
                  div          ra, s9, s1
                  mulhu        a2, s8, s10
                  ori          t1, t6, 1125
                  slti         s2, a3, -1124
                  remw         s3, t6, t1
                  divu         a1, t3, a0
                  srliw        a1, t0, 16
                  xor          sp, a7, t5
                  mul          t5, t2, a6
                  slt          zero, a6, a0
                  slli         s2, t1, 10
                  auipc        s3, 437835
                  div          s11, s9, s4
                  div          a3, gp, t2
                  sllw         a6, t6, gp
                  srliw        t1, a0, 20
                  slli         s3, s10, 50
                  mulh         gp, a4, s6
                  sra          t1, t1, t1
                  or           t6, a3, t6
                  or           s5, a4, a5
                  sraiw        s1, a3, 31
                  srlw         s8, s5, s8
                  mulh         a3, a0, s3
                  slt          t3, s4, a2
                  divu         gp, a1, a4
                  sllw         a6, a4, s7
                  remw         a5, s8, s8
                  nop
                  ori          a4, s7, 783
                  add          t0, ra, t5
                  remw         a4, t2, t2
                  auipc        gp, 853278
                  mulhsu       a1, t4, a2
                  srl          sp, s5, a5
                  sll          s5, s4, sp
                  or           gp, s9, a3
                  sraiw        t4, s1, 23
                  divuw        t5, t2, t1
                  addi         sp, s6, 1086
                  sra          s0, s6, t1
                  sraw         a6, sp, a2
                  divw         t3, s1, a6
                  mulw         t1, s7, t1
                  remw         zero, a0, t2
                  xori         a6, s4, 1106
                  add          t3, a6, s5
                  addi         t1, t3, 2030
                  rem          s5, t6, gp
                  sra          a3, gp, s11
                  add          t0, t6, s3
                  slliw        a4, s2, 9
                  addw         s4, s6, s2
                  remuw        s7, a5, tp
                  xori         t5, a1, -1607
                  sllw         t5, tp, s11
                  sltu         a3, t4, t6
                  divw         gp, a7, t4
                  sllw         s4, s8, a5
                  and          gp, t6, s10
                  mulh         s9, s11, sp
                  div          t3, t2, a2
                  sltiu        a0, s7, 112
                  and          gp, a4, s6
                  nop
                  addw         a6, s4, s4
                  divw         s2, s0, s5
                  mul          s4, t2, a1
                  and          s11, zero, t6
                  sraw         gp, s7, a5
                  and          gp, t0, t6
                  andi         s5, t1, 1602
                  andi         s0, s7, 434
                  srli         s8, a0, 34
                  mul          a0, s0, t6
                  sllw         s11, s6, ra
                  lui          s4, 713062
                  sra          a0, s4, t4
                  remu         s10, a0, a4
                  mulhsu       s7, s0, tp
                  slliw        s3, t3, 23
                  remu         t5, tp, s8
                  mul          a5, t3, s0
                  and          t1, s11, a3
                  sub          s5, a5, t4
                  srliw        s3, s5, 3
                  addiw        s7, t4, -1282
                  div          a5, s8, s10
                  sltiu        s4, a1, -557
                  sltu         s2, a2, s5
                  remw         s10, a2, sp
                  divw         s10, t5, s10
                  addi         a7, s6, -1711
                  srl          a3, t0, s7
                  sltiu        a6, t5, 1341
                  sraiw        gp, t6, 8
                  remuw        a4, s8, tp
                  sllw         a1, s3, a3
                  mulh         sp, s3, t4
                  srai         t5, t4, 38
                  divuw        t6, s11, a6
                  addw         a1, t4, t6
                  srli         t3, gp, 13
                  srlw         s5, gp, s8
                  slti         t5, t1, -1074
                  mulhu        t0, t3, s7
                  and          s0, s6, a2
                  remw         s9, s4, t6
                  sraw         s3, t6, s5
                  divw         gp, s0, tp
                  divu         a5, t0, s2
                  sllw         t1, s6, s1
                  addw         t4, a0, t0
                  slti         a3, s7, -697
                  addi         a0, tp, 1331
                  divuw        t3, t1, s2
                  or           zero, s4, a3
                  rem          s9, s10, a4
                  srlw         a3, s4, t2
                  sraw         s11, s3, s8
                  divu         s7, s7, s8
                  addi         s4, s5, -567
                  sllw         a0, s0, s6
                  slli         t0, s4, 58
                  mulhsu       t6, sp, tp
                  or           s7, t4, s9
                  srlw         t4, a3, s7
                  sub          gp, t5, s2
                  addw         s9, t3, t2
                  xor          s9, tp, t2
                  sltu         t1, a0, s4
                  mulh         s9, s0, s9
                  and          t5, s10, t3
                  and          a6, a3, s0
                  ori          a4, s9, 1384
                  sltu         t5, s8, tp
                  sltiu        s2, s0, 1451
                  mulh         s0, s2, s7
                  add          s2, s6, ra
                  lui          a6, 268118
                  slt          zero, t5, gp
                  lui          s1, 533502
                  xor          gp, a7, s9
                  srl          s4, gp, t0
                  srli         t6, s11, 11
                  mulh         s3, s9, a5
                  sub          a6, t5, gp
                  srliw        a2, t3, 3
                  lui          t1, 545378
                  srli         t6, t1, 46
                  srli         s7, gp, 57
                  ori          t3, s7, 694
                  divuw        a7, sp, s0
                  sll          s10, a2, s7
                  lui          gp, 434541
                  sltiu        a7, t5, -1244
                  divw         a4, s3, a4
                  sltiu        a2, a5, -669
                  addiw        t3, s3, -113
                  sllw         s2, a3, sp
                  ori          s9, s5, -1119
                  addiw        s1, s4, 1021
                  slti         a0, s1, 849
                  sraiw        zero, s1, 18
                  sub          a2, a3, s3
                  mulhsu       s7, a5, s3
                  mulh         t0, s2, a0
                  and          t6, a3, a6
                  divw         a6, t5, a6
                  lui          a5, 443090
                  andi         t6, s6, 1354
                  srli         s1, a6, 35
                  sra          a7, ra, t3
                  or           s7, a6, t0
                  srlw         s4, s8, t6
                  addiw        gp, t3, -599
                  addi         s8, t3, -1202
                  divu         a1, a7, s9
                  slliw        s7, t3, 29
                  mulhsu       a4, s11, a2
                  mulhsu       a1, t4, s5
                  sraw         a1, a7, t3
                  mul          s5, a6, a3
                  srli         t6, gp, 26
                  add          s2, t1, zero
                  srliw        s7, s3, 21
                  sra          t4, s10, s3
                  srai         a3, s4, 20
                  srai         a1, a6, 27
                  addi         a6, t0, -1276
                  nop
                  rem          a6, t5, a1
                  ori          t5, t0, -130
                  sltu         s0, s3, t0
                  srlw         s4, s5, a5
                  sraiw        s9, t1, 22
                  addw         a2, a5, a5
                  mul          t1, tp, s7
                  subw         a1, s8, a0
                  sub          sp, s9, s8
                  or           s7, t4, s10
                  srl          t3, t6, gp
                  srlw         s10, tp, s0
                  remuw        a4, tp, zero
                  sltiu        sp, s0, -1966
                  sra          t1, a4, t0
                  mul          s1, s8, a2
                  rem          s0, s1, t0
                  divw         t1, s3, s5
                  remuw        a5, gp, a5
                  remu         s7, s10, s5
                  xori         sp, tp, -470
                  addi         s1, t0, -520
                  slliw        a2, a6, 3
                  sllw         a2, t5, a5
                  lui          zero, 727449
                  or           a3, zero, t2
                  srliw        s4, zero, 16
                  addw         s7, s3, s7
                  remuw        s0, s8, t1
                  nop
                  and          t0, gp, t2
                  sraw         a4, ra, s11
                  slliw        gp, s1, 4
                  addi         sp, a2, -1701
                  slli         gp, t1, 62
                  sraw         a5, a7, t5
                  divu         t0, s7, s11
                  div          s0, tp, t0
                  srliw        t3, s10, 10
                  sll          a4, s7, t5
                  sraiw        t1, s0, 2
                  subw         t5, ra, t5
                  mulhsu       s5, a0, s2
                  sraw         s3, tp, a5
                  remuw        s9, a0, a1
                  srli         s1, s8, 59
                  divu         s1, s7, t4
                  sllw         s8, s11, s7
                  sraiw        a0, zero, 0
                  divw         s7, t2, s5
                  mulhu        zero, s2, s8
                  ori          s10, t5, 150
                  remu         a2, s9, s1
                  divw         a1, s6, a7
                  srli         t6, a5, 34
                  addw         s7, s9, s0
                  sub          s1, s11, a6
                  divuw        t1, gp, a0
                  addi         t5, s8, -1706
                  sltu         gp, s10, a6
                  slt          t3, t5, t3
                  addiw        s5, s1, -1227
                  sub          s1, a3, ra
                  nop
                  xori         s1, s1, -1764
                  mulw         s2, t3, s9
                  slliw        gp, gp, 23
                  rem          t4, a6, a1
                  remu         ra, s3, s5
                  sllw         a3, t0, ra
                  mulhsu       a3, s0, t3
                  lui          s7, 582892
                  addw         s2, gp, t3
                  div          t5, a3, zero
                  remw         t5, sp, s9
                  add          s8, s7, s7
                  sraw         a6, s0, t2
                  mul          t1, s9, s4
                  rem          t6, gp, s7
                  mulh         a1, tp, s6
                  sll          t5, zero, s7
                  remw         s8, gp, a2
                  remuw        s3, t1, a0
                  add          t4, a5, s0
                  remu         t1, s4, sp
                  srai         s3, s6, 8
                  mulw         s11, s5, a1
                  slt          s9, s9, s5
                  divuw        t4, ra, t3
                  sraiw        ra, s4, 3
                  nop
                  mulhsu       s3, a1, s7
                  remw         zero, a6, sp
                  mulhu        s0, a2, t6
                  addi         s5, zero, 1691
                  slti         t0, t3, -898
                  srliw        a1, s0, 14
                  mulw         sp, t5, s10
                  slti         t0, t6, -664
                  slli         gp, tp, 41
                  xor          s0, a1, a7
                  srlw         sp, t2, s2
                  mul          s2, a3, s9
                  xor          t1, t1, s6
                  xori         t0, s0, -115
                  divu         s7, s6, s9
                  remu         s1, s1, s3
                  ori          a3, s6, 1631
                  sub          s8, s6, t1
                  rem          s0, tp, t0
                  mul          t1, s3, a2
                  slli         a3, s11, 60
                  subw         t1, a0, gp
                  addw         s9, s4, s4
                  srai         gp, s0, 54
                  sltu         s2, s3, a0
                  addiw        s4, s6, -929
                  srlw         s3, t2, a2
                  and          t5, s3, a5
                  addi         a0, s7, -226
                  or           s0, s6, s1
                  auipc        a5, 519800
                  ori          s5, s8, -1154
                  divw         gp, zero, t5
                  mul          t6, ra, t4
                  divuw        a3, s1, s2
                  sllw         a2, t3, s3
                  sltu         s0, s11, s10
                  sll          s8, s10, a5
                  slti         a2, zero, -1112
                  sltu         a3, a5, s10
                  andi         s11, sp, 1878
                  srlw         s7, t0, zero
                  slti         s7, s7, 699
                  mulhu        t1, sp, s7
                  addiw        t1, sp, 1003
                  mulw         s4, sp, a0
                  mul          a5, ra, s0
                  mulw         t0, a2, s11
                  remw         s3, t6, t5
                  remw         ra, t2, s9
                  lui          zero, 94721
                  srlw         a2, t6, s1
                  andi         t0, s10, 1424
                  remw         a7, s0, s2
                  remu         s8, s4, a0
                  remu         gp, t0, a0
                  xori         t1, a5, -184
                  srliw        zero, t4, 13
                  remuw        s7, s6, a5
                  auipc        a4, 757365
                  andi         s0, s5, 1323
                  add          t3, a6, a4
                  and          s1, a6, s3
                  mulw         a6, sp, a6
                  divuw        a4, s1, t6
                  mulhu        a6, a2, a6
                  div          s2, t2, a5
                  addi         t3, tp, 406
                  xori         s4, a7, -3
                  sraiw        a3, a7, 10
                  andi         s5, s5, 210
                  srai         t1, s4, 45
                  mulh         s3, sp, s6
                  addiw        sp, s6, -875
                  div          s0, a5, s9
                  div          t4, t3, gp
                  mulh         s11, tp, s10
                  slli         a2, sp, 11
                  sltiu        a3, s8, 186
                  or           s10, a6, t1
                  andi         a0, s6, -1518
                  remu         zero, s10, t2
                  sltiu        s1, s1, -1364
                  srli         s3, a6, 63
                  and          t1, t6, t5
                  lui          t5, 105287
                  div          a6, a0, s4
                  sraw         a3, t3, a1
                  slliw        a0, s0, 2
                  addi         a7, tp, -1863
                  slti         a5, tp, -1879
                  remu         a6, t4, s11
                  srli         s9, s11, 26
                  xor          a5, s1, t6
                  srai         gp, s6, 30
                  add          a1, t3, s7
                  rem          gp, t0, s4
                  and          a2, t6, t1
                  xor          t0, s2, s6
                  andi         s11, t3, 1934
                  mulw         s9, s4, zero
                  sraw         s8, t1, s11
                  lui          gp, 604900
                  slt          t6, s10, a7
                  remw         t5, t5, t4
                  remu         sp, s10, s0
                  srliw        s4, t2, 17
                  remw         t3, a4, s1
                  sra          s3, t4, t6
                  sraw         t1, ra, a4
                  srli         s11, a7, 61
                  srai         t4, s3, 12
                  slti         t0, a1, -2015
                  lui          s11, 35110
                  sllw         s3, s7, s2
                  remu         t6, a7, a5
                  srlw         t1, s10, a1
                  srli         a7, t1, 52
                  mulw         s8, gp, s11
                  sraw         a1, t6, t4
                  addiw        a6, t0, -1558
                  or           t1, zero, a5
                  sraw         t4, a0, s2
                  xor          s9, t1, s1
                  srli         t1, s7, 8
                  divw         s2, a7, gp
                  srai         t0, a1, 50
                  sub          s2, s11, s1
                  srliw        t1, s9, 7
                  mul          sp, t3, t5
                  andi         s7, ra, -1015
                  addw         a3, zero, a6
                  addiw        a3, tp, -399
                  slti         s3, s6, 1175
                  or           s5, s7, s4
                  addiw        t6, a5, -930
                  rem          a5, s0, s11
                  sub          zero, a6, s1
                  slli         t4, s1, 10
                  div          a5, a1, sp
                  addi         s2, zero, 971
                  sll          gp, t2, s0
                  subw         s2, s6, a6
                  mulh         t3, a7, s3
                  mul          s2, t4, s6
                  mulw         s10, t0, a7
                  sraw         s1, t6, s5
                  divuw        s5, s4, a1
                  sltiu        s7, t3, -979
                  sub          a5, s2, a4
                  div          a7, s9, t0
                  andi         s1, s6, 1189
                  mulhu        s4, s2, t6
                  remuw        s1, s2, gp
                  sll          zero, s6, s9
                  mulw         a3, s3, s1
                  mulhsu       t3, s5, a3
                  nop
                  auipc        t3, 255414
                  mulh         t3, s9, s5
                  srl          t5, t5, s9
                  rem          s3, s1, s11
                  srli         t3, t4, 49
                  slti         gp, s8, -6
                  mulhsu       t3, a1, a3
                  or           a3, t4, t4
                  sltiu        t3, s4, 670
                  auipc        s11, 665045
                  mulhu        s11, s10, a6
                  ori          s1, t4, -901
                  srli         s3, s8, 48
                  slt          zero, s6, a2
                  lui          t6, 126051
                  addiw        a6, s2, 1337
                  mul          sp, s9, t1
                  slti         t6, t2, -1526
                  mulw         s1, s5, a5
                  sllw         s5, a0, s10
                  divw         s5, s0, s2
                  addw         s3, a1, t0
                  sll          zero, zero, t6
                  remuw        t1, s2, s2
                  remw         a1, t2, t3
                  add          t1, sp, a3
                  addiw        s8, zero, -1830
                  xor          s0, t3, s4
                  divu         s7, zero, a3
                  divuw        t0, s11, t5
                  remu         s8, a4, s6
                  nop
                  mulh         t1, a2, s11
                  sll          ra, t1, s3
                  addw         a4, t6, a5
                  rem          s7, a1, t0
                  div          t4, ra, t5
                  sra          a7, s11, s5
                  lui          sp, 905693
                  subw         s1, s0, sp
                  mul          t1, sp, s5
                  slt          t6, s9, t2
                  sra          t1, zero, t3
                  or           a5, t5, t2
                  sraiw        s0, t0, 16
                  srlw         s8, t0, s6
                  remuw        t4, s5, s4
                  or           s0, ra, s7
                  mulh         s2, s3, s0
                  srli         a2, s8, 8
                  mulhu        s4, a3, s4
                  mul          s3, t2, a5
                  lui          a3, 930839
                  lui          t3, 25258
                  or           s4, t5, t0
                  nop
                  srl          s7, s10, a1
                  lui          a7, 945258
                  slt          a2, s5, tp
                  addiw        t0, a1, 1798
                  andi         a2, s7, 126
                  sraiw        s9, s1, 13
                  srai         a4, s5, 44
                  add          s9, a3, s3
                  srlw         s5, s0, s7
                  auipc        a7, 305035
                  auipc        a2, 314960
                  add          s1, s0, s3
                  remuw        s7, sp, zero
                  sltiu        ra, s10, -1699
                  remu         s8, s6, s10
                  sllw         gp, s1, ra
                  sltiu        t1, s2, -525
                  sltiu        s7, s1, -139
                  mul          s2, t2, s8
                  xori         a0, a6, 589
                  add          s2, a6, t2
                  slli         s7, a5, 53
                  ori          a5, s3, 1313
                  addw         t0, t2, t5
                  mulhsu       s1, zero, a0
                  and          s11, zero, t3
                  slti         t5, s0, -1296
                  add          t5, t4, s9
                  remw         s1, ra, s0
                  remu         a7, s4, s1
                  div          t4, ra, t6
                  or           a2, a3, a4
                  divu         s10, s1, a1
                  sraw         sp, a1, a5
                  srl          a3, a6, s0
                  and          a5, a5, gp
                  sltu         s0, a4, s11
                  xori         s0, s7, 1541
                  sllw         t4, a2, s4
                  nop
                  divuw        t1, s3, t2
                  andi         gp, t5, 1058
                  xori         s0, a7, -255
                  remuw        t4, t4, a1
                  mulh         a4, s10, t4
                  xor          zero, a5, a1
                  xor          a5, zero, s9
                  or           a7, s4, s10
                  andi         a0, t6, 1108
                  divuw        t1, s0, s6
                  remw         s1, s4, s8
                  slli         t1, a2, 31
                  lui          a0, 926158
                  sraw         t0, s5, s9
                  mulh         zero, a4, s1
                  slli         t4, sp, 23
                  sraw         t6, t2, t4
                  srlw         a7, s6, s0
                  remu         a2, a0, s4
                  ori          t1, t0, -900
                  remu         zero, tp, t3
                  subw         sp, t6, s6
                  lui          t3, 611018
                  mulhsu       gp, s10, s2
                  add          s1, s10, s3
                  slti         ra, a2, -1921
                  lui          a2, 618313
                  srliw        t1, s7, 19
                  srai         a7, zero, 15
                  add          s3, s10, zero
                  and          a7, s10, s1
                  sraw         s0, t0, s11
                  ori          a1, a7, -1020
                  slti         t4, t4, 1698
                  slt          a5, tp, t5
                  sltu         t4, a5, a4
                  srli         a2, t6, 62
                  sra          s4, t5, a5
                  divw         s7, a0, t4
                  add          s11, a6, zero
                  srai         a7, a2, 3
                  remu         ra, s8, s11
                  sub          s9, ra, t2
                  sllw         zero, a0, s2
                  remw         a5, sp, a5
                  auipc        s10, 667650
                  slt          t4, s7, s5
                  xor          t1, zero, t2
                  ori          s3, s4, -1536
                  nop
                  and          a5, a1, a0
                  addi         a0, t1, 540
                  sraw         a6, a0, s1
                  ori          zero, t6, -1223
                  mulh         s7, s1, a4
                  rem          zero, t0, t1
                  divw         t4, a2, s2
                  srl          s8, a2, a4
                  sltu         a2, t0, a0
                  mulw         t3, s10, s5
                  slti         t4, a0, 1353
                  slliw        t5, s8, 2
                  mulhsu       s4, a6, a1
                  sll          s11, s7, gp
                  slt          t0, a4, zero
                  mulhsu       s7, t4, a4
                  mulh         t5, t5, a1
                  mul          ra, s0, s8
                  sllw         a1, a3, a5
                  sltu         s0, s0, t6
                  div          zero, s7, a5
                  srlw         gp, a7, a1
                  lui          s9, 895099
                  addi         a4, t1, 959
                  mulh         gp, zero, t1
                  auipc        t3, 913881
                  srliw        t6, t5, 18
                  xor          ra, t4, t3
                  lui          t5, 912627
                  and          s9, t4, s7
                  sllw         s5, t1, t6
                  addi         a0, a1, -1467
                  srl          a5, a4, a7
                  srlw         s0, a7, a0
                  mul          s2, s2, a0
                  remu         s3, gp, s2
                  nop
                  mulhsu       a3, zero, a6
                  sll          a3, t1, s9
                  addiw        s0, s4, -175
                  slti         t4, t6, -715
                  div          s3, t0, t6
                  mul          a3, s3, s7
                  ori          a5, t3, -65
                  xor          s8, a7, s5
                  div          s9, gp, s5
                  divuw        s2, ra, t2
                  slli         a3, s2, 39
                  mulw         t3, sp, zero
                  and          a0, t0, a0
                  sll          a4, t0, s2
                  mulh         sp, a7, t6
                  srl          t4, s3, s1
                  sll          t0, s0, s11
                  andi         t6, s2, -167
                  divuw        a5, a4, t5
                  sltu         t6, s1, s11
                  mulhsu       t4, s5, a1
                  addi         a7, s0, -410
                  sltu         ra, a3, t1
                  andi         a7, a7, 1197
                  auipc        s2, 189436
                  xori         a0, s7, -252
                  remu         a3, t2, s0
                  sraw         s8, a2, s6
                  divu         a1, s5, s7
                  srl          s3, s7, s10
                  xori         t0, t2, 4
                  divu         t5, gp, a4
                  div          s11, t3, t4
                  slliw        a7, t2, 16
                  xori         s11, ra, -727
                  slliw        s7, s1, 0
                  sub          t4, a0, a7
                  auipc        s1, 433603
                  add          s3, t6, a1
                  rem          a4, s9, a2
                  remw         t0, s9, s7
                  mulhsu       s3, t2, t3
                  divw         t5, a2, t1
                  divuw        s7, ra, a2
                  srai         t3, a3, 33
                  srliw        s11, s7, 25
                  nop
                  srl          s7, s2, a3
                  mulhu        s3, zero, s3
                  remw         s10, a5, t3
                  add          a2, t2, s4
                  mulhsu       a3, tp, a0
                  srai         gp, t4, 43
                  mulw         s7, gp, s2
                  srl          a4, t2, t6
                  divuw        a3, tp, t3
                  remuw        t4, s3, s11
                  slli         s1, a0, 41
                  add          s5, gp, a3
                  srliw        t5, t2, 2
                  sltu         sp, t0, t4
                  andi         gp, s3, 1056
                  slli         s10, s1, 58
                  lui          s2, 333010
                  slt          a5, s7, sp
                  slti         a0, a7, 1536
                  mulh         t3, zero, t0
                  srli         ra, tp, 27
                  sltiu        a7, a4, 562
                  lui          zero, 805676
                  srl          a0, s10, t5
                  remu         s10, t1, t0
                  slliw        t4, s10, 30
                  sllw         a0, a2, zero
                  srai         s3, t1, 56
                  rem          t3, t2, s1
                  lui          a2, 570991
                  mulhu        t3, ra, s5
                  mulw         t1, a2, s5
                  sllw         s11, t3, t1
                  slt          s7, a3, t5
                  mulhu        s11, a3, t6
                  sub          t3, a5, ra
                  divw         zero, a4, t5
                  addw         ra, s2, t1
                  sub          a2, s3, a3
                  slli         a7, ra, 19
                  sraw         a6, a2, a3
                  srliw        t1, t2, 17
                  div          s1, s5, a2
                  sub          s4, a6, s0
                  mulhsu       sp, ra, t0
                  srl          a5, t3, t5
                  rem          s5, s6, a4
                  remuw        t3, a3, s3
                  srliw        a3, a2, 21
                  srliw        s4, s4, 25
                  srl          s10, t2, t4
                  sltiu        s4, t6, 1718
                  sllw         s4, gp, a0
                  sraw         s5, sp, ra
                  slti         s1, t1, 8
                  subw         s0, s2, s9
                  div          s10, t1, t4
                  sll          t6, tp, a4
                  slti         s2, s9, 1839
                  divw         a2, gp, a7
                  sll          ra, a4, zero
                  remw         a1, t0, zero
                  mul          s5, sp, s4
                  remw         a2, s11, a6
                  sllw         s2, a2, s1
                  srai         ra, s1, 5
                  divw         s3, s9, t6
                  subw         s5, a0, a3
                  div          s4, t4, tp
                  auipc        t6, 180600
                  sltu         a1, t1, tp
                  andi         t6, s8, -878
                  addw         a2, s11, a3
                  lui          t1, 460193
                  slliw        sp, s3, 16
                  sll          a2, s1, a6
                  mulw         t1, a7, a7
                  sll          t0, s11, a1
                  divw         t4, t1, s4
                  srl          a2, s3, s11
                  addiw        gp, ra, 1052
                  sub          t0, s3, zero
                  slliw        s7, a2, 11
                  divw         a3, t6, a6
                  mulw         a6, s5, t2
                  mulhu        t0, s6, s10
                  subw         s3, a2, s10
                  mulh         t4, s1, s7
                  mulh         t6, s4, t3
                  srli         s7, t5, 56
                  addiw        s1, t4, 627
                  auipc        a6, 669076
                  xor          t3, a5, t3
                  srai         s1, t3, 2
                  xori         a2, s1, 999
                  sll          s0, a7, gp
                  slti         t3, s4, -1826
                  sraw         t5, s3, ra
                  srl          s3, s4, a6
                  remuw        s2, a0, s6
                  mulhsu       s0, s6, s3
                  and          s4, a1, a6
                  divuw        s2, a6, a7
                  srli         a5, ra, 31
                  subw         t5, s6, s10
                  srliw        t1, a4, 5
                  and          s0, s1, sp
                  mulhsu       zero, s9, t4
                  xori         a1, t3, 119
                  or           s1, s0, s5
                  ori          s1, t5, -1003
                  mul          t5, s3, s9
                  divu         a5, s2, tp
                  andi         s4, gp, -665
                  srliw        t6, s5, 10
                  sltiu        s1, s7, -1912
                  mulhsu       ra, s8, s6
                  sra          a5, s6, a7
                  sraw         ra, s3, s0
                  divu         t3, ra, s0
                  srai         t1, t0, 4
                  srai         t6, t2, 37
                  and          t1, s6, s6
                  divw         s1, t6, sp
                  sraiw        t0, zero, 9
                  srai         a7, s3, 15
                  andi         t0, a0, -1534
                  slliw        t6, a4, 19
                  sllw         s7, s0, ra
                  sra          s5, s2, a4
                  rem          s1, s3, s10
                  mul          ra, s5, sp
                  srl          s11, sp, a6
                  andi         t4, s6, -517
                  divu         zero, s7, a0
                  rem          s5, a3, s11
                  mulhu        gp, zero, t2
                  addi         s11, a2, -1963
                  and          a1, t3, s8
                  srl          s5, a7, t4
                  srai         s0, t4, 10
                  sllw         t5, s9, zero
                  addi         a1, a5, 645
                  divw         s7, s10, zero
                  srlw         a0, t0, t2
                  xori         t0, t4, 1434
                  slti         gp, a4, 928
                  mulhu        s4, s3, s6
                  addi         s4, s9, 39
                  andi         a7, t5, 1441
                  xori         t1, t3, 597
                  andi         s4, s10, 761
                  rem          t5, t3, s3
                  addiw        t6, s8, -1257
                  srli         s10, ra, 25
                  addw         a0, s4, a1
                  lui          s9, 954556
                  sltiu        a3, zero, 1696
                  sraiw        s2, s4, 29
                  srai         a0, t4, 34
                  slt          a6, s7, s5
                  sll          gp, s10, s6
                  nop
                  auipc        a2, 949630
                  sub          s1, s4, t1
                  remw         s7, s4, s3
                  addw         s10, t0, a3
                  divu         s10, s11, s11
                  remw         a6, s8, a7
                  andi         zero, a2, 413
                  div          s3, a5, s1
                  sllw         sp, sp, a4
                  sraiw        t4, s7, 22
                  div          a4, a4, s8
                  xori         t6, s3, 197
                  divw         s3, a2, s3
                  div          t6, s0, s0
                  mulhsu       t0, ra, t2
                  andi         s5, a4, 1777
                  slt          t0, t0, a7
                  srli         s3, gp, 2
                  rem          a3, t4, s8
                  mulw         a7, ra, a4
                  div          s8, zero, t1
                  remuw        s4, s1, t0
                  srli         s0, a1, 26
                  addw         s9, gp, gp
                  mul          t3, a7, s3
                  srl          a5, t6, a1
                  xori         s7, zero, 169
                  sltu         t6, s0, s8
                  and          s4, zero, s0
                  srliw        gp, s8, 18
                  mulw         a6, sp, s7
                  divw         sp, t6, a2
                  or           a5, t6, s9
                  mulhu        a1, s4, s2
                  srliw        s8, s7, 5
                  sllw         s3, t6, t1
                  mulw         zero, s2, t6
                  remu         s0, s6, s8
                  sraiw        s9, a3, 30
                  srlw         a2, a2, a3
                  remw         s4, a2, s10
                  xor          t4, s6, s11
                  sltiu        zero, s6, -488
                  srlw         t4, zero, zero
                  srl          s4, t4, a4
                  srl          a2, t6, t2
                  sll          s3, s7, s11
                  slli         s7, t0, 52
                  srl          a0, t0, s0
                  remuw        a3, zero, sp
                  mulh         t0, a5, a4
                  sltiu        t1, a0, -350
                  srli         gp, a2, 1
                  ori          s10, s0, -376
                  divu         t5, s11, s2
                  or           s4, s10, s9
                  sll          a7, tp, t4
                  nop
                  sub          s9, a3, gp
                  remuw        t4, a2, t4
                  divu         zero, t4, zero
                  ori          a5, a3, 102
                  srliw        a3, t4, 13
                  sltiu        a0, a6, -1387
                  remw         a3, tp, s0
                  sltu         a1, s2, t6
                  nop
                  slti         a5, s7, -388
                  remw         a1, tp, sp
                  srai         a0, s8, 38
                  mulh         a3, zero, tp
                  subw         s9, s1, a0
                  xor          t1, s7, s11
                  mul          s3, a7, s1
                  nop
                  slliw        a3, a2, 3
                  remuw        s2, s1, s1
                  subw         s9, a4, s4
                  ori          a2, s5, 1619
                  lui          a0, 1025696
                  xor          s2, a2, a0
                  addiw        t3, s2, -1533
                  slti         s2, ra, 452
                  sltiu        a1, a4, 472
                  auipc        s11, 104667
                  addiw        a2, s8, -997
                  srlw         sp, t2, gp
                  mulh         t5, a0, a5
                  remw         s7, s8, sp
                  subw         a1, s1, a0
                  sraiw        s10, t5, 28
                  srlw         t1, s0, sp
                  subw         s3, gp, ra
                  sltiu        s11, gp, 287
                  sllw         zero, zero, s0
                  addw         s4, a7, a1
                  mulh         s11, s11, a4
                  remuw        a6, s11, t3
                  mulw         a2, s7, s0
                  remuw        s4, a6, s6
                  srli         t0, s5, 25
                  mulhsu       t5, s11, a7
                  srai         t4, t0, 8
                  slti         t0, s11, 54
                  andi         s2, a3, -279
                  srl          a5, t2, sp
                  div          t1, ra, s0
                  nop
                  andi         s9, zero, 1911
                  add          s7, s9, a6
                  andi         s9, zero, 1324
                  srai         sp, s0, 27
                  sraiw        s1, t4, 31
                  xor          gp, a7, t0
                  remu         s4, s0, sp
                  divuw        a2, t0, s6
                  divu         s11, t2, s10
                  ori          t0, s1, 1764
                  mulw         s5, s9, t5
                  divuw        s4, a4, a1
                  xori         t4, a5, 671
                  div          s8, s1, zero
                  divu         a6, a0, s1
                  sltu         s7, s5, s2
                  sllw         ra, s6, a0
                  remw         ra, s6, zero
                  sra          s9, a1, t0
                  slli         s1, t3, 57
                  sltu         t1, zero, a1
                  addiw        a5, a1, 1077
                  lui          s9, 460544
                  auipc        t0, 685626
                  sub          t6, zero, tp
                  addiw        s8, a0, 777
                  slli         a5, s0, 21
                  addw         t1, s8, s3
                  sraw         t3, t4, a7
                  sltiu        a6, sp, 664
                  divuw        s2, s8, zero
                  auipc        s2, 31163
                  ori          s1, a4, -814
                  addiw        gp, t2, 1236
                  addi         a4, a4, -821
                  mulhu        s0, s8, a1
                  sraw         t1, t1, a6
                  srl          s9, s10, t5
                  auipc        a7, 787325
                  srai         t0, s1, 42
                  addi         zero, t2, -1807
                  srai         t3, a0, 13
                  divw         a7, t3, s3
                  xor          s1, s6, s7
                  remuw        s3, a7, s9
                  andi         t4, tp, -326
                  add          t0, a1, s7
                  remuw        ra, s5, s3
                  sub          a7, s0, sp
                  sra          ra, a4, a6
                  addi         t5, s11, 199
                  div          a5, s7, a0
                  srlw         s8, s5, t0
                  mulhu        t0, s8, t0
                  srliw        t1, t2, 17
                  mul          s2, s8, zero
                  remuw        a3, s9, t5
                  auipc        s9, 626511
                  xori         gp, s2, 469
                  mul          t1, a1, s7
                  mul          s2, t4, a4
                  addiw        a3, a4, 1602
                  slti         t5, a2, -559
                  remu         t5, a1, sp
                  ori          s4, zero, -1660
                  xori         sp, s7, 535
                  mulh         s2, s3, a2
                  add          a4, a2, s7
                  lui          t1, 357813
                  xori         a6, s11, 1901
                  sraiw        s8, s4, 0
                  srli         s8, t2, 36
                  mulw         t0, s10, a4
                  slt          gp, a6, ra
                  addw         s5, s4, gp
                  remu         s9, s10, t2
                  slliw        s11, a6, 28
                  remw         a6, a0, s1
                  sub          a1, sp, s3
                  rem          t4, a5, s4
                  remu         t4, a7, s11
                  div          s11, a0, t6
                  sllw         a6, s8, sp
                  mulw         t0, t1, t1
                  sllw         s9, gp, s8
                  addiw        a4, gp, -1422
                  srlw         s3, a5, s7
                  remuw        t1, s11, t2
                  addi         s9, s2, 1960
                  srlw         a7, a0, s1
                  addi         s0, sp, -361
                  auipc        gp, 101566
                  slliw        a5, s7, 16
                  slli         s4, s10, 33
                  slliw        t3, t6, 3
                  mul          t0, a2, tp
                  xor          a0, a7, s8
                  div          t5, s5, s6
                  auipc        t0, 307539
                  slliw        t1, a3, 8
                  remu         s3, s6, sp
                  div          t6, t2, gp
                  remu         a7, s2, s7
                  mul          a0, s4, s11
                  remw         s7, t3, a7
                  divu         t5, a0, gp
                  and          t4, t0, s2
                  div          t0, gp, s1
                  mulw         ra, t5, a0
                  subw         s11, t3, s6
                  srli         a0, s1, 12
                  sllw         a5, t1, tp
                  srli         a6, a4, 58
                  srai         t4, s6, 25
                  srliw        s7, a4, 8
                  add          t1, s10, a3
                  srai         t1, a0, 17
                  nop
                  remw         t5, t0, a1
                  mulw         a0, t2, t4
                  sll          t0, a3, s7
                  srai         t3, s3, 48
                  srai         t5, s3, 44
                  sltu         s2, t4, t5
                  sltiu        s3, s6, -1712
                  srlw         a4, s7, a1
                  slti         sp, s1, 1291
                  add          t0, s5, a5
                  andi         s9, s8, 1684
                  slti         t0, t3, -1582
                  slli         t6, s5, 38
                  slli         s4, s7, 20
                  divw         s2, t6, a2
                  sraiw        a3, s5, 31
                  slli         s3, a4, 28
                  slt          gp, s5, s6
                  sraiw        a7, t3, 17
                  sub          gp, s3, gp
                  div          s5, s2, s0
                  rem          t5, s2, t0
                  srl          t1, a5, s8
                  divuw        zero, a3, a3
                  remu         a1, a0, t5
                  remw         s7, s0, a6
                  ori          t4, s2, 87
                  srai         zero, t2, 43
                  divu         s4, s7, t2
                  mulhu        t6, ra, a1
                  slli         sp, s3, 20
                  xor          s1, s4, a1
                  and          t1, ra, t6
                  divuw        s5, a7, t6
                  sltu         s8, s11, sp
                  and          t1, t3, s0
                  or           ra, gp, t5
                  sra          s0, a5, tp
                  or           sp, a3, s3
                  mulw         t4, s8, sp
                  divu         s11, t4, a6
                  mul          a4, s4, s4
                  mulhu        a2, t4, s10
                  sll          t1, s6, s4
                  remuw        s4, a0, s7
                  subw         s4, s10, a2
                  slt          zero, s6, a7
                  srli         s4, t2, 43
                  auipc        t1, 839633
                  addi         s2, t2, -607
                  sraiw        gp, a5, 7
                  mulw         a7, a2, t6
                  mulhu        s4, s5, s10
                  addw         a4, s8, s5
                  sraw         s9, s7, t1
                  remuw        s3, a0, a1
                  or           s4, tp, s1
                  nop
                  andi         s0, a1, -1350
                  andi         s1, a2, 874
                  divuw        t0, ra, t1
                  mul          a1, a7, s5
                  mulhsu       a5, ra, t0
                  remw         a4, t4, a5
                  mulw         s1, ra, a5
                  sraiw        s10, a1, 27
                  divu         t3, s3, s10
                  mul          sp, a2, a0
                  sllw         sp, zero, s9
                  divw         s1, a0, t4
                  remuw        s11, a3, s2
                  sll          t3, s7, t5
                  slli         t5, a4, 59
                  sltu         s9, a4, sp
                  mulh         s9, t0, t0
                  srai         a2, s6, 54
                  mul          s2, s7, a7
                  or           s1, a6, s2
                  srlw         s11, s8, a0
                  div          s7, t6, a5
                  mulhu        t0, s2, s11
                  sll          s2, s4, s8
                  sll          a3, s4, t2
                  slti         t0, s2, 1092
                  sraw         s0, ra, s10
                  sraw         s11, a3, tp
                  sub          gp, ra, s1
                  slli         a3, s6, 21
                  mulw         s0, t0, a4
                  sraw         a2, s11, a4
                  and          t1, ra, t5
                  xori         gp, s8, 166
                  andi         s8, t1, 695
                  srlw         a0, s6, tp
                  or           zero, s3, t0
                  subw         a7, s7, s8
                  remuw        a7, t6, s0
                  div          a6, s6, a2
                  divu         a4, s0, t1
                  ori          t6, a6, -1532
                  slt          s2, s8, t0
                  div          s8, s8, t5
                  remw         a5, t0, s0
                  mulhsu       t5, s4, t2
                  srliw        s2, t0, 22
                  sltiu        s8, a1, 1078
                  sra          s3, sp, s10
                  srli         s4, a7, 6
                  sraw         t0, t2, t1
                  div          s4, ra, s8
                  sraw         s7, a4, s11
                  mulhu        zero, t1, a6
                  xor          a6, s0, s10
                  subw         s1, t2, t6
                  rem          a5, tp, a4
                  divu         a7, s8, a5
                  remw         ra, s9, a7
                  rem          a3, s6, a2
                  lui          t3, 237941
                  rem          s3, t6, s1
                  sra          s11, t3, t2
                  remu         a4, a1, gp
                  divuw        s2, s4, a5
                  auipc        a6, 715122
                  mul          a0, s10, a2
                  divw         a1, s1, gp
                  andi         s5, s11, 1852
                  addi         a6, t2, 1
                  auipc        s3, 824381
                  xor          s9, a5, s1
                  sra          s3, a7, t3
                  ori          s3, s8, -1126
                  mulhsu       s11, s3, s2
                  srai         t0, t0, 59
                  addiw        t0, a3, 1050
                  addi         sp, s4, -1863
                  mulhsu       a3, ra, a5
                  divu         s7, zero, s5
                  or           t5, t5, zero
                  sraiw        t0, zero, 5
                  sraw         s8, s4, a6
                  div          ra, s10, s7
                  and          a5, a2, a1
                  sltu         t4, a2, s1
                  or           a4, s7, s3
                  xori         a7, ra, -1563
                  subw         s2, s1, t1
                  srlw         s2, s10, s4
                  sll          s11, gp, t6
                  srliw        t5, s9, 15
                  mulhu        s3, ra, s7
                  sll          t6, a2, s7
                  divw         s7, a4, s10
                  sll          s3, a5, s11
                  rem          s0, a4, s1
                  and          t0, t3, a3
                  remuw        a7, t2, a1
                  srai         s11, s7, 2
                  sltu         s0, a0, a5
                  xor          a6, t4, s3
                  xori         zero, s6, -1800
                  add          t5, ra, s10
                  or           a5, a7, s5
                  addw         a4, sp, a7
                  remu         s7, t5, a0
                  divw         ra, s5, a7
                  nop
                  srai         s2, s8, 29
                  sraiw        a2, t3, 3
                  mulh         a2, a3, a6
                  and          gp, a4, s9
                  ori          ra, s0, 780
                  mulhsu       t3, s3, t4
                  add          gp, tp, s8
                  slliw        s1, a6, 18
                  mulh         a7, t1, s0
                  addi         sp, sp, -887
                  mulhu        a3, s4, s4
                  sra          s10, t3, gp
                  addi         a4, t0, 645
                  addi         ra, a1, -526
                  ori          s7, s2, -560
                  srli         s4, zero, 39
                  srai         a6, sp, 56
                  and          s11, a0, a7
                  or           a6, s7, a0
                  slli         s7, s6, 8
                  sll          a4, s8, s2
                  sltiu        s11, a3, 1748
                  mulw         gp, a2, a7
                  srliw        s10, gp, 0
                  sra          s3, t5, tp
                  subw         a5, t4, tp
                  sll          s5, s0, s8
                  divuw        s0, s7, a5
                  mulh         a7, s6, t0
                  remw         a5, s1, a0
                  ori          s5, a6, 268
                  andi         s4, t3, 598
                  xor          a1, s9, s7
                  lui          t4, 302127
                  subw         ra, tp, s5
                  sllw         s10, t1, a2
                  slliw        s0, s2, 2
                  and          s1, a2, s2
                  sraw         s4, s0, ra
                  srl          s11, s7, s9
                  rem          s9, ra, s7
                  slliw        a2, s5, 4
                  srliw        t4, t6, 19
                  mulhsu       a6, s5, sp
                  remw         t3, t1, a2
                  xori         a7, s9, 85
                  mul          s0, s7, a5
                  divw         s2, t4, s3
                  xor          s8, a2, s4
                  remu         s7, a4, s0
                  remu         t3, a0, a0
                  srlw         s7, t6, zero
                  nop
                  mul          a7, s6, s6
                  srli         sp, s6, 43
                  auipc        t6, 258704
                  sraw         t1, s9, s3
                  sll          t4, a6, ra
                  sltu         t6, s6, s8
                  addiw        t5, s7, -1872
                  lui          s2, 962069
                  divu         gp, gp, t4
                  auipc        ra, 266118
                  xori         ra, a0, 1661
                  divuw        a6, a2, s2
                  mulhu        t1, s10, s7
                  srai         t0, ra, 28
                  addiw        t3, t5, -2000
                  rem          zero, s2, t4
                  remu         t6, a7, s4
                  srli         s1, a5, 46
                  sltu         gp, t0, s4
                  sraw         s8, s10, s2
                  rem          a7, s9, t0
                  srli         zero, a0, 26
                  sltu         t1, s5, t2
                  addiw        a6, a1, -1877
                  srlw         t6, a2, s5
                  srli         t1, t2, 17
                  remu         zero, a6, t0
                  rem          sp, tp, t0
                  sltu         s5, s0, s9
                  slliw        a1, tp, 20
                  addi         t0, zero, 227
                  mulhsu       a3, t6, a1
                  sub          a3, a6, a1
                  subw         s7, a3, t0
                  sub          sp, ra, a3
                  mulw         a0, s10, ra
                  ori          t6, a5, 558
                  srli         t0, s7, 45
                  remw         s9, s7, t1
                  sllw         s10, a4, a6
                  mulhu        a2, s9, s2
                  sll          a0, t5, s3
                  remu         t4, s7, t3
                  srlw         s2, gp, s2
                  sllw         s4, t0, a7
                  srlw         s0, s2, s5
                  sraiw        s10, a1, 21
                  mulh         gp, a6, t0
                  mulhsu       zero, a4, a6
                  sllw         a4, t1, t6
                  srl          a2, tp, a5
                  and          a2, gp, s5
                  slli         s10, a5, 54
                  srliw        s5, s7, 17
                  sllw         s1, s8, gp
                  nop
                  slt          a7, s8, ra
                  sltiu        t6, t5, 1167
                  ori          s1, t0, -1527
                  slliw        s10, a5, 1
                  sraiw        t4, s0, 4
                  slli         a4, s3, 63
                  sraiw        s1, s6, 28
                  slt          zero, s5, a4
                  srli         t5, s7, 13
                  and          t1, s6, t2
                  div          s2, t5, s4
                  or           ra, t5, ra
                  srlw         a5, s9, t6
                  sltu         t1, tp, t4
                  mulhu        a0, t4, ra
                  addw         a3, t6, gp
                  auipc        gp, 527441
                  sraiw        t1, a0, 24
                  sraiw        t5, s2, 13
                  sraiw        s8, a1, 23
                  remw         s0, sp, t5
                  remuw        s11, t3, t1
                  srlw         s5, s2, s1
                  sraiw        t3, t2, 17
                  rem          s8, a1, t4
                  sltu         t3, t1, a0
                  slti         sp, s8, 1259
                  slli         s8, a6, 54
                  srliw        a0, s3, 11
                  divw         s3, s11, zero
                  srai         sp, a6, 45
                  srlw         s5, t2, a0
                  ori          a2, s10, 436
                  divu         a5, a7, zero
                  ori          zero, a5, -1638
                  lui          zero, 487463
                  sltu         s5, s4, t4
                  sltu         t6, sp, t4
                  divuw        s7, t3, a6
                  remu         s0, a7, t6
                  divuw        s10, a1, ra
                  srlw         s7, t2, s1
                  slt          ra, s4, a6
                  srli         t4, t0, 38
                  sltiu        a0, a5, -1700
                  remw         t1, a7, t2
                  mulhu        t1, zero, s1
                  or           s9, ra, sp
                  lui          s9, 1005118
                  and          t0, a6, s5
                  sllw         a4, s1, a0
                  or           s11, s8, s3
                  xori         s2, zero, 88
                  sllw         t5, a7, t1
                  add          a5, s0, t4
                  addi         a5, t4, -476
                  andi         zero, a2, -598
                  sllw         s9, s9, t3
                  sltiu        s3, a5, -643
                  mulhu        sp, a3, a4
                  sltiu        t3, a3, 1466
                  sub          s0, t6, s7
                  addw         a7, s7, a7
                  sraw         s2, ra, a1
                  slt          a6, t1, sp
                  mul          a6, a1, a6
                  addw         ra, zero, t4
                  div          t3, sp, a2
                  and          a0, a5, s8
                  add          s3, a2, a7
                  add          s11, sp, s9
                  sll          a3, zero, tp
                  sub          t4, tp, gp
                  sllw         a1, a7, s8
                  sll          zero, t3, a6
                  add          a6, zero, s3
                  remw         s3, t1, s7
                  remuw        t1, t1, s1
                  sub          a3, t5, s9
                  srliw        ra, a5, 26
                  sraiw        t0, s8, 11
                  divw         s10, gp, s0
                  andi         a1, t0, -1275
                  mulh         s8, s5, tp
                  slliw        s8, s1, 19
                  srli         s9, a6, 41
                  or           sp, a5, tp
                  sub          t1, t6, a7
                  srliw        t0, t6, 16
                  mul          t1, gp, s4
                  andi         zero, a5, -1684
                  div          a2, t5, sp
                  mulhu        s1, t6, s8
                  lui          a3, 948666
                  slti         gp, s9, 5
                  srl          t0, t2, ra
                  sraw         s4, zero, ra
                  sub          s8, t2, s7
                  addi         ra, t6, -316
                  slliw        a0, a3, 30
                  srliw        s8, t3, 21
                  subw         s2, t4, t0
                  andi         t5, t2, 1781
                  sraw         t3, a2, sp
                  mulh         s4, s6, s0
                  sltiu        s11, s8, -1277
                  lui          a6, 1039604
                  nop
                  mulhsu       a4, s3, a4
                  remw         s4, s4, t6
                  sraiw        s5, a5, 31
                  ori          s4, sp, 1952
                  srlw         t5, ra, t2
                  sltu         s5, a1, s8
                  ori          a5, t1, -220
                  or           t3, s8, ra
                  sraiw        a4, s0, 12
                  xori         a2, a2, 2011
                  sltu         t5, a3, s0
                  or           a3, tp, a6
                  rem          s8, s5, a1
                  andi         a4, t4, 150
                  add          s7, s7, a4
                  divu         t1, t1, t1
                  srliw        t6, s1, 11
                  sraiw        a3, t6, 17
                  rem          a6, sp, zero
                  and          t6, s5, s6
                  or           a2, s10, s2
                  addi         t5, t6, 1429
                  slti         s0, t1, -437
                  sraw         t5, t6, zero
                  xor          a1, ra, t1
                  addi         a2, s1, -1220
                  mulh         a2, s4, s6
                  sltu         s4, a5, s9
                  sltu         s1, a1, s0
                  sllw         t4, a5, a3
                  srliw        t1, s7, 13
                  srai         t1, a1, 29
                  divu         zero, a3, t2
                  sra          t5, a5, t0
                  auipc        t1, 939517
                  nop
                  sraiw        s10, tp, 0
                  subw         s5, ra, s0
                  mulw         t6, a2, a5
                  and          s1, s11, zero
                  srli         a7, s1, 55
                  div          s0, s2, a3
                  subw         a1, a5, s1
                  mulhu        a7, tp, t0
                  and          sp, a3, a5
                  addi         a6, t1, -130
                  sub          t0, s0, t0
                  addi         s0, a6, -1069
                  divw         s11, s5, s8
                  xori         a1, s10, -1904
                  slt          zero, sp, s4
                  addi         t1, a4, 1247
                  divu         t5, a4, a0
                  add          a2, t6, t6
                  mulhsu       a6, s4, s10
                  xori         s4, tp, 35
                  divuw        s10, s9, t4
                  rem          zero, t6, s7
                  mulh         s4, t4, gp
                  sra          a6, s0, tp
                  srliw        a2, a2, 27
                  div          s8, s5, s11
                  mul          a1, s7, t1
                  mulhu        s1, t2, t3
                  nop
                  div          s0, a7, t1
                  rem          s7, s3, t4
                  sllw         gp, a5, tp
                  srlw         a3, t3, a7
                  or           s11, s7, s10
                  srliw        gp, t1, 24
                  sll          a6, t6, zero
                  div          s4, zero, t6
                  remuw        s4, a5, s5
                  sra          zero, zero, a4
                  or           t3, s11, ra
                  sll          s0, s10, s8
                  mul          a6, s3, s4
                  or           t5, tp, s11
                  slt          t5, a0, s5
                  remw         a0, a7, a6
                  subw         a7, a3, tp
                  or           t5, zero, gp
                  remw         a5, s1, s11
                  mulhu        a0, s1, s0
                  xori         a7, s11, -2009
                  remu         a0, s2, s5
                  mul          a4, a5, t6
                  srli         s8, s1, 9
                  nop
                  slti         t5, s2, -1550
                  divw         a7, s5, s10
                  slliw        t0, a0, 26
                  slt          s5, a7, s8
                  xori         a3, s1, 404
                  slliw        s11, a4, 25
                  subw         ra, a2, s8
                  srliw        s8, t0, 0
                  sltu         s2, s1, sp
                  sltu         s9, s4, s4
                  srl          s2, s6, sp
                  mulh         s4, s3, a6
                  srliw        s7, s9, 23
                  subw         a2, t5, s3
                  sraiw        a6, gp, 19
                  sraw         a5, s6, t5
                  ori          t1, a3, 630
                  addiw        s11, s9, 381
                  slt          s9, s7, s2
                  sub          s3, t2, a5
                  sltiu        zero, a4, -793
                  andi         s1, a5, 1598
                  mul          s10, t2, a5
                  divw         s11, zero, a2
                  addi         a4, t2, 1061
                  remw         s7, s4, t2
                  nop
                  srli         sp, t0, 53
                  sub          t4, a1, gp
                  remw         s7, s8, a6
                  sllw         s9, s8, s9
                  sllw         t0, s3, s5
                  xor          a2, a3, s4
                  mulhu        s4, s1, t2
                  srli         t5, s7, 37
                  add          s3, ra, sp
                  srliw        a2, zero, 5
                  ori          s2, s8, -1899
                  rem          s2, t1, s4
                  sub          s5, t3, t3
                  slliw        t1, gp, 26
                  srli         a6, s1, 0
                  sltiu        s10, t6, 1839
                  subw         s3, s10, a7
                  andi         t1, s4, 1785
                  srl          a6, t2, a5
                  mulh         t3, t1, a2
                  div          a7, a6, s9
                  div          a1, a0, s5
                  ori          t5, t2, -1657
                  mulhsu       s0, t0, ra
                  srai         a0, s8, 1
                  subw         a3, s3, s8
                  divu         sp, s1, s10
                  srliw        s7, s2, 7
                  sltiu        s4, gp, 1065
                  addw         s1, a4, s6
                  addiw        s1, s4, 205
                  mul          s7, a5, gp
                  subw         s7, a6, t2
                  remw         s10, t4, a5
                  ori          a1, zero, 377
                  sra          s7, a0, t2
                  ori          s7, tp, -1040
                  srli         s0, t6, 33
                  addw         a4, s5, a5
                  slti         t0, a1, 74
                  sraiw        s10, s1, 30
                  mulw         t5, t6, a7
                  divu         s1, s10, t6
                  sltu         s8, a3, t6
                  addi         a3, t2, -1003
                  andi         t1, a1, -111
                  srlw         s1, s3, s10
                  mul          s7, zero, s5
                  lui          t1, 26961
                  slt          s0, a6, t5
                  srli         a2, ra, 15
                  lui          a2, 346959
                  sllw         a3, t5, a6
                  remuw        ra, s5, t2
                  sltiu        zero, s9, -100
                  sub          t1, a1, gp
                  srai         s8, zero, 23
                  divuw        s0, s8, a7
                  srai         ra, a2, 4
                  mulhsu       t4, t1, t6
                  sll          s4, tp, a6
                  or           t5, s1, s1
                  divuw        gp, gp, t6
                  srlw         ra, a6, t3
                  addiw        a5, tp, -1060
                  or           s10, tp, t2
                  sltiu        zero, s7, 833
                  mulh         a1, t1, zero
                  sub          a1, s6, gp
                  sra          zero, s2, s10
                  mulh         zero, a4, t0
                  slti         s8, s2, -1699
                  divw         s4, s9, a4
                  slliw        ra, s2, 16
                  divuw        zero, s6, tp
                  mulhsu       s2, s1, ra
                  sraiw        t0, s3, 12
                  lui          s0, 404930
                  slt          a6, gp, t4
                  addiw        a4, a7, -1962
                  divuw        sp, a7, s2
                  srai         s1, s10, 63
                  auipc        t1, 558829
                  div          s5, t3, s11
                  div          s10, s2, a6
                  remuw        s1, s11, s0
                  sltu         s5, s7, s3
                  remu         s3, a4, sp
                  mulw         s10, s2, s11
                  slli         s4, s11, 35
                  divuw        s0, s1, t5
                  sra          s0, gp, a7
                  sub          a5, s7, t6
                  xor          s1, t3, s7
                  and          s5, t1, a0
                  sltu         a5, t6, s9
                  and          a1, t2, s5
                  slt          ra, a5, t0
                  slt          t0, s0, s6
                  remu         t5, t3, s7
                  divu         a1, ra, a6
                  remuw        s4, a2, s9
                  subw         sp, a4, s9
                  sra          s0, gp, sp
                  mulhsu       s3, a6, a3
                  srai         s4, s10, 5
                  ori          t0, a0, 93
                  divuw        s1, s9, t2
                  sltu         t3, s7, t0
                  srli         s4, a1, 50
                  sllw         t0, a7, a4
                  mulh         t4, t4, a6
                  remw         s3, s7, s7
                  slliw        s8, a7, 1
                  mulh         s7, s10, tp
                  remw         s2, s10, s6
                  slli         s8, a2, 55
                  subw         s5, t2, s10
                  xor          s3, t4, s3
                  or           s4, s5, a6
                  remu         s2, s10, a1
                  sub          s2, s4, s6
                  xor          s8, a0, s0
                  sra          s11, sp, s1
                  sra          s11, s8, s11
                  sraiw        a5, s0, 6
                  mulhsu       s0, sp, s10
                  auipc        s1, 956771
                  mulhsu       s4, t2, a0
                  remu         gp, zero, s7
                  divu         t1, s1, t6
                  divuw        a4, a0, sp
                  add          t3, t0, s10
                  sra          a7, a3, t4
                  or           a3, a6, a4
                  rem          a2, t0, ra
                  sllw         ra, gp, t6
                  divuw        s7, s8, s7
                  sltu         a7, t6, s3
                  nop
                  remuw        t6, s2, t4
                  slli         s8, s8, 43
                  mulhsu       a7, s3, s1
                  addiw        t3, t5, 1710
                  lui          zero, 678042
                  slti         a0, t6, -173
                  ori          s11, s4, -560
                  sltu         a5, tp, t3
                  addw         s5, gp, gp
                  slt          t5, t5, a6
                  mulhsu       s10, s8, s2
                  srai         t3, a0, 9
                  mulw         a5, a7, s9
                  nop
                  divu         s7, t5, zero
                  subw         a2, s0, t6
                  mulhsu       s0, a7, s9
                  addw         s4, s1, t6
                  xor          s3, s4, t5
                  auipc        s5, 564312
                  remw         s2, tp, tp
                  slti         a0, s1, 469
                  srliw        s3, t6, 28
                  rem          zero, a7, s5
                  lui          t1, 169110
                  remw         s1, t5, t0
                  slt          t1, s6, s4
                  lui          a2, 234518
                  srli         ra, s6, 48
                  sub          s2, t4, a1
                  mul          a0, t1, s4
                  or           gp, tp, t4
                  srliw        gp, a4, 17
                  div          a1, s10, s0
                  addw         s2, tp, s0
                  slliw        s1, s9, 16
                  remuw        t0, a2, s2
                  divuw        a3, t6, a7
                  mulhu        s2, t2, s4
                  mulhsu       t1, tp, s2
                  srl          a6, s0, zero
                  sllw         t4, a3, s4
                  andi         s10, a3, 59
                  slti         s7, tp, -675
                  and          a6, s6, a6
                  ori          a7, s9, 1490
                  ori          ra, t3, -1435
                  div          s10, s0, t4
                  divu         a1, s10, s0
                  remuw        s11, t0, s0
                  slliw        s8, a1, 15
                  rem          a1, t6, a4
                  srai         t5, s5, 9
                  xor          s10, s10, t4
                  sra          s9, s2, s6
                  and          s4, a7, s6
                  sraw         s10, t4, s10
                  mulh         t0, a0, a0
                  addi         s3, a0, 716
                  addi         t4, t0, 547
                  xori         t0, gp, -1622
                  subw         zero, s3, a4
                  divw         s11, ra, a4
                  nop
                  lui          s5, 159365
                  srliw        s3, s10, 10
                  remw         gp, a7, s11
                  andi         a3, s11, -88
                  sraiw        s0, t6, 25
                  sllw         t0, t4, t6
                  mulhsu       t4, a2, s8
                  xor          a2, s2, a4
                  slt          a3, a2, a2
                  addi         s7, t3, -567
                  sltu         t4, t3, a2
                  sraw         s1, t5, t0
                  mul          s2, s9, a3
                  mulh         t4, s3, gp
                  sra          s3, a0, sp
                  sll          s4, t2, t2
                  addi         a1, a5, -276
                  divuw        s1, a4, s8
                  slt          a5, a1, a6
                  srliw        t0, ra, 5
                  sraw         t5, a6, a6
                  xori         s2, a6, -467
                  mulhu        a6, s11, t2
                  srli         s4, s2, 27
                  remu         sp, t3, s5
                  mul          t0, a4, s6
                  lui          a1, 840608
                  addiw        t4, t0, 14
                  sltiu        s8, t6, -1570
                  mulhu        s1, sp, s5
                  mulhsu       s10, s3, a2
                  remu         sp, s5, t6
                  addw         zero, tp, t6
                  slt          a0, tp, s4
                  sub          a1, t0, a1
                  add          a5, a3, ra
                  sraw         s3, t2, a6
                  sra          s3, a6, a5
                  mul          s4, t3, s9
                  mulw         a0, t4, tp
                  divw         zero, s6, zero
                  slt          t3, zero, a5
                  srli         s8, a7, 47
                  ori          s1, a4, -1220
                  addw         s10, s10, s3
                  lui          s1, 650533
                  srlw         s9, zero, a3
                  mul          gp, zero, t3
                  andi         s2, s10, -1045
                  mulhu        sp, t3, s5
                  mulhsu       s9, t6, s5
                  remuw        t0, a1, a5
                  sll          a0, ra, t2
                  xori         a4, t4, -1964
                  sra          t1, t2, a7
                  slli         t6, t1, 51
                  slt          sp, t1, t1
                  nop
                  srliw        ra, t4, 23
                  mulh         t0, a7, s0
                  remuw        a3, a4, ra
                  auipc        t1, 977557
                  srai         t0, a7, 22
                  sraw         gp, s2, sp
                  sraiw        t4, s9, 29
                  lui          gp, 29337
                  rem          s7, s10, t6
                  addw         a3, zero, s1
                  rem          a6, s11, s11
                  mulhu        t5, a3, s1
                  or           t6, s4, sp
                  or           t0, s3, a7
                  subw         a4, a5, t0
                  mulw         s1, a4, gp
                  sra          s7, s4, a6
                  lui          t4, 826041
                  slliw        t1, a3, 7
                  nop
                  slliw        gp, s9, 29
                  subw         t0, s7, t0
                  xor          a4, t1, a6
                  rem          gp, a7, t2
                  add          s7, s8, s0
                  srliw        a7, ra, 12
                  rem          s3, s5, t3
                  divu         a6, t6, zero
                  addiw        a3, t2, 1602
                  remw         sp, s4, a0
                  mulw         ra, sp, s0
                  sra          s4, ra, a5
                  mulh         a0, t3, s0
                  mulhu        s0, ra, a6
                  sltiu        zero, s1, 441
                  srl          t1, s5, sp
                  xor          a1, t1, s1
                  mulhsu       zero, t1, ra
                  srlw         s0, t2, s3
                  andi         s2, a0, -230
                  mulh         s5, gp, t2
                  divu         a3, s10, t5
                  slt          gp, s4, s3
                  slli         a4, a0, 53
                  srliw        s8, a3, 1
                  divuw        s10, t3, s0
                  div          a1, t1, a3
                  divw         ra, zero, s6
                  nop
                  mulhsu       s11, s2, t2
                  rem          t3, a1, s1
                  slt          sp, s9, t6
                  sllw         s7, ra, a4
                  div          zero, t0, gp
                  srlw         gp, a3, s4
                  mulh         a5, s0, s9
                  and          s11, a1, s7
                  slliw        a4, s11, 5
                  andi         s0, s5, 891
                  sraw         t0, sp, a3
                  addiw        a1, t1, -1804
                  rem          s10, s7, s10
                  srai         s0, t4, 62
                  srl          s2, s0, s5
                  div          s8, s1, a2
                  ori          s1, a4, 1071
                  slliw        sp, t2, 23
                  xor          s11, t6, t0
                  rem          s2, a2, s10
                  div          s8, s0, s3
                  add          a0, s11, t2
                  remuw        s7, a5, a1
                  ori          t4, s9, 599
                  ori          s5, s9, 819
                  mul          t3, s7, s1
                  srli         s10, t3, 63
                  mul          s9, a4, t3
                  rem          ra, s11, s10
                  nop
                  sraw         s3, s2, s4
                  srl          t3, a0, t0
                  slli         a1, t6, 2
                  mulw         ra, s9, a7
                  sraw         s10, s9, tp
                  srai         a4, t5, 7
                  addi         sp, s5, -1899
                  remw         a0, a5, a3
                  sllw         t3, a7, s9
                  and          zero, s1, sp
                  divuw        s9, s2, sp
                  sraw         s3, s5, s7
                  or           t0, s1, s6
                  nop
                  sltiu        s7, sp, -886
                  add          a4, t5, t5
                  subw         s3, tp, s11
                  and          s4, s3, gp
                  sub          gp, sp, gp
                  rem          t0, s10, t5
                  divuw        a4, sp, s2
                  srlw         s7, s4, zero
                  and          t5, s0, a4
                  sltu         a2, t4, ra
                  auipc        a5, 183951
                  sltu         t6, sp, s1
                  slli         a4, t0, 43
                  srliw        s2, t1, 23
                  mulhsu       ra, a6, t3
                  div          s1, a1, t0
                  srli         s4, a1, 53
                  mul          a4, t5, zero
                  mulw         s3, gp, a7
                  divu         t4, a2, s11
                  remw         a6, a5, s10
                  rem          a4, t0, s3
                  addiw        s10, t3, -1509
                  remu         t0, t5, s1
                  srl          a0, a2, tp
                  ori          s2, gp, 1341
                  sraiw        a3, t5, 15
                  remuw        s11, s0, t4
                  srliw        s7, s0, 18
                  add          a6, t2, t5
                  xor          s10, a2, t6
                  andi         s8, sp, -1767
                  xor          ra, t5, t5
                  and          gp, a0, a5
                  nop
                  srliw        s3, s0, 15
                  srl          a3, a7, sp
                  slli         s11, s9, 40
                  addiw        sp, s2, -1689
                  srliw        t6, a1, 17
                  mul          s10, s10, a5
                  mulhsu       a5, s9, ra
                  mulh         t1, zero, s2
                  xor          a2, s0, ra
                  srliw        a5, s11, 31
                  div          t3, a2, zero
                  or           a3, t5, s6
                  sraiw        gp, s5, 14
                  srliw        t1, a7, 0
                  slti         s4, a4, -677
                  divw         a7, a5, s9
                  slli         t0, s10, 18
                  srai         s10, s6, 38
                  sub          zero, a4, t1
                  andi         t1, t6, -2003
                  srli         a3, t1, 57
                  slt          a6, t3, t0
                  srliw        a1, s4, 7
                  sra          s8, t6, t4
                  sraiw        sp, a2, 7
                  remuw        s8, t2, s10
                  ori          s10, t4, 640
                  addi         s9, a2, 1846
                  xor          s4, a1, ra
                  srli         s10, t2, 38
                  rem          a7, t2, a7
                  sll          sp, a0, a0
                  slti         s7, t6, 935
                  slti         s8, t4, 1407
                  sll          a0, s5, s5
                  sub          t3, a1, s10
                  sltu         t1, t1, s10
                  sll          a5, s9, s7
                  srai         ra, zero, 49
                  lui          t5, 629581
                  andi         s4, a3, -499
                  subw         s1, s8, s6
                  slli         a6, s3, 15
                  nop
                  sltiu        zero, t1, 1764
                  xor          a3, s7, s1
                  subw         a3, zero, tp
                  srl          a6, tp, s6
                  and          a1, s6, s8
                  or           a1, t2, a0
                  remuw        a0, zero, s7
                  sllw         a7, t3, s10
                  slti         s7, s3, -1300
                  lui          s0, 1008576
                  sraw         t0, t4, s9
                  srl          t4, t2, s11
                  xor          s7, a0, s8
                  remuw        zero, s6, a4
                  mulhsu       s5, t0, a1
                  sltiu        a6, a3, 258
                  sra          s10, a5, s9
                  slt          a0, zero, t1
                  remu         a1, a2, s8
                  xor          sp, tp, s10
                  subw         s11, s8, t3
                  subw         t6, s8, a3
                  sltiu        gp, s4, -167
                  slli         s11, a4, 2
                  mulw         sp, s9, a3
                  srai         s4, t2, 54
                  slt          s9, t0, a1
                  addi         a5, a2, -1423
                  and          a4, s10, s1
                  subw         s1, s1, s8
                  auipc        s3, 315790
                  ori          s3, t1, 1986
                  srai         s1, t5, 23
                  remw         a7, s8, s2
                  sra          a5, s8, t2
                  remuw        a3, s0, t1
                  mulw         s1, a2, t5
                  xori         a1, t6, -99
                  ori          s10, zero, 110
                  remu         a4, a0, s2
                  srai         a7, zero, 5
                  divuw        s4, t2, a4
                  mulhu        t3, s0, s2
                  rem          s2, t2, s0
                  remw         a7, t6, t2
                  sra          ra, s2, gp
                  sub          a3, gp, s7
                  sll          a5, a3, s0
                  sll          a7, s9, s4
                  or           gp, t3, s7
                  remw         zero, a5, t5
                  div          a2, a0, s9
                  mul          s5, s10, s3
                  mulhsu       s7, t3, zero
                  divu         s0, t3, s9
                  sraiw        t1, s9, 13
                  srlw         s2, a3, zero
                  or           a5, a2, s9
                  lui          a7, 72883
                  mulhu        s7, t2, t3
                  rem          s4, s3, s7
                  remu         t5, a5, t2
                  addi         t6, a4, 914
                  mulhu        s7, s4, s5
                  remw         a1, s11, a1
                  sltu         a7, t5, ra
                  remuw        s1, s7, s5
                  slt          gp, a1, gp
                  mulw         s11, t6, sp
                  sub          s2, a5, a3
                  remuw        s3, s11, a0
                  ori          s5, s8, -479
                  rem          zero, s10, a7
                  slti         gp, s10, 1192
                  slliw        s10, s5, 1
                  lui          a3, 1017055
                  slliw        t1, a1, 14
                  mul          s10, t6, s4
                  addw         a6, t0, s5
                  divuw        a6, s8, t5
                  slli         a0, s2, 49
                  addiw        ra, tp, -1155
                  slt          s5, s4, t4
                  ori          s4, a6, 507
                  divw         a5, s4, s4
                  sltiu        t3, a4, -1395
                  add          s7, sp, t0
                  divu         t1, t0, t5
                  mul          t6, s10, s9
                  sraiw        s1, a2, 21
                  srai         a2, sp, 63
                  sltiu        s8, zero, -1499
                  xor          ra, t0, t1
                  sraiw        zero, t6, 20
                  sll          t0, s3, s0
                  nop
                  divuw        s0, a0, a3
                  xor          ra, s8, s1
                  divu         a2, s3, a5
                  sraw         a3, t5, s8
                  mul          gp, s6, s8
                  lui          t1, 374952
                  sltu         s1, a4, s1
                  ori          t5, a0, -1096
                  andi         s0, gp, -259
                  slliw        s8, a3, 22
                  mulhu        a1, s11, t0
                  mulhsu       s3, a5, t1
                  nop
                  div          gp, t1, s9
                  and          s11, t4, s7
                  srliw        s11, a2, 1
                  slti         s3, a1, -332
                  srliw        a6, t1, 19
                  slt          gp, t1, s11
                  lui          s3, 424854
                  slliw        a5, t5, 23
                  srli         t0, tp, 42
                  remw         s4, t5, s3
                  ori          s4, t3, -1865
                  slti         t5, s1, -715
                  slt          a5, a3, t0
                  srlw         t1, s11, t1
                  addi         sp, s4, 530
                  mulh         s11, t5, s1
                  sltu         t6, tp, s6
                  xori         s3, t5, 728
                  slliw        t5, tp, 25
                  remuw        sp, a4, a0
                  srl          s2, a4, a5
                  srliw        a1, t6, 27
                  or           s5, t3, s1
                  mulw         a2, a3, gp
                  sra          a0, s2, s8
                  srli         a5, zero, 27
                  remw         s10, s2, s9
                  rem          ra, t2, a2
                  mulw         s7, t3, a0
                  remw         s0, t6, sp
                  divw         s2, s3, s4
                  srai         s3, s8, 56
                  andi         s5, a7, 1191
                  mulh         s10, t5, t3
                  xori         t4, ra, -618
                  remuw        s7, s6, t2
                  divuw        t3, a7, tp
                  divuw        t6, s6, t1
                  sub          s1, s11, t1
                  andi         ra, a5, 161
                  remu         s3, t2, s6
                  sub          sp, t1, s2
                  xor          s2, t2, s9
                  or           s11, s7, s2
                  sub          ra, s5, t4
                  remuw        s7, a4, sp
                  rem          s2, s3, s10
                  mulh         a2, a2, t4
                  or           s1, a4, s9
                  ori          a7, a1, -192
                  sltiu        t5, ra, -599
                  lui          s9, 711463
                  srlw         a2, s4, s1
                  mulhsu       s8, t2, t1
                  or           t1, t2, sp
                  addw         a7, s1, a3
                  mulh         t0, s9, s9
                  subw         t1, sp, s1
                  div          t6, s8, gp
                  xori         a6, s8, -1999
                  or           s1, tp, s5
                  ori          zero, t1, 1743
                  divuw        t0, s6, t3
                  auipc        a2, 880291
                  srlw         t3, s2, a0
                  srai         a6, a3, 7
                  sraw         s2, s5, a5
                  slti         s3, sp, -520
                  add          sp, t4, s11
                  sub          a0, a2, a6
                  sub          gp, t6, s3
                  rem          a4, s7, s7
                  mulh         ra, t6, t0
                  srli         a5, s8, 48
                  remw         t1, a7, a5
                  divuw        s3, gp, s3
                  xori         a5, t1, -1705
                  srlw         t0, a3, s5
                  sltu         a7, a0, s8
                  rem          s2, t3, ra
                  srlw         sp, s2, a0
                  addiw        s0, t6, -1269
                  rem          a0, s6, a4
                  addiw        a1, s8, -256
                  divu         t4, a1, a3
                  ori          s2, s3, 381
                  sllw         t3, s8, ra
                  div          a5, a2, a2
                  xor          gp, t4, a7
                  or           s5, zero, a4
                  divuw        a1, a6, a2
                  xori         t3, s0, 9
                  remuw        t0, t3, t5
                  and          t6, tp, t5
                  addw         s4, a7, t0
                  xor          s7, zero, s11
                  sra          a2, s1, s2
                  divuw        s5, s9, s10
                  sltu         t0, a2, a6
                  srai         t0, a6, 17
                  sra          ra, s1, a4
                  slt          sp, s8, t2
                  nop
                  sraw         t5, s10, a3
                  sub          gp, zero, t2
                  slti         sp, s4, 1872
                  addi         ra, s9, 666
                  slt          t5, s7, t2
                  xor          t0, s4, s3
                  rem          a6, s1, a4
                  sraw         s9, ra, t4
                  sll          s0, t0, t3
                  sltiu        s11, tp, -773
                  sllw         a3, s5, sp
                  mulh         s2, a3, a1
                  srl          s2, t5, gp
                  srli         a7, t3, 8
                  sltiu        a4, a1, -1491
                  subw         t3, s2, a4
                  remu         s7, a1, t5
                  or           t5, a2, a3
                  addiw        s2, s4, -44
                  mulhsu       s7, tp, s1
                  slliw        a4, s1, 13
                  sll          t1, s2, s10
                  xor          a4, tp, a4
                  rem          s8, a4, t4
                  sltu         sp, a4, t5
                  addi         s8, t0, -637
                  sraw         s9, s4, a3
                  and          s11, zero, t4
                  add          s5, s3, t5
                  mulw         a7, t1, a4
                  divuw        a0, a2, a4
                  mulhsu       s9, s4, s10
                  and          t4, s4, t1
                  sllw         zero, a2, a6
                  and          zero, t1, a6
                  sltu         ra, a7, s7
                  andi         t0, t3, -307
                  mulhsu       s4, a7, sp
                  addi         ra, sp, -602
                  mul          s4, t3, s3
                  addw         t6, a0, gp
                  add          t1, t0, t3
                  srlw         s9, a3, gp
                  divw         s5, s4, s1
                  lui          gp, 454034
                  mulh         t6, s2, a0
                  srli         t0, s2, 9
                  srliw        s9, s1, 18
                  addw         s4, t5, tp
                  srai         s9, t5, 5
                  srlw         t1, a6, s9
                  mul          s11, t4, ra
                  subw         a5, t0, s8
                  lui          t5, 406361
                  rem          a4, t2, s6
                  slli         t4, ra, 60
                  div          gp, s4, t1
                  srlw         s7, sp, s1
                  srliw        a3, s4, 24
                  mulw         s7, t2, a0
                  andi         a6, s11, 647
                  srliw        s8, s4, 23
                  srai         a7, gp, 39
                  mulh         a2, gp, s8
                  mulhu        t0, s5, s8
                  addw         s8, a4, a2
                  mulw         t3, t6, s4
                  sltu         a3, s4, s2
                  mulhu        s10, s9, s3
                  addiw        t3, a7, -1797
                  sra          s8, t5, t2
                  or           t3, t4, s4
                  sltiu        t1, t4, 1596
                  auipc        t6, 802626
                  andi         t0, s11, 1181
                  addw         gp, sp, sp
                  sltiu        sp, t6, 1061
                  sraw         a1, s9, s6
                  addw         t6, sp, t6
                  sltu         a2, t2, gp
                  subw         sp, a1, s6
                  sltiu        a0, s6, 893
                  slliw        s0, a1, 27
                  slliw        s4, s6, 2
                  xor          t0, gp, t0
                  addw         t4, ra, a6
                  subw         t0, t3, a2
                  mulh         a1, zero, t1
                  ori          a4, t1, 1432
                  remw         a0, gp, gp
                  addw         t6, s10, zero
                  lui          t5, 210800
                  lui          t5, 890533
                  and          zero, s3, t2
                  sraw         t3, a6, a6
                  srai         s4, a0, 6
                  srl          a0, s7, s5
                  remuw        s1, t0, s4
                  lui          s11, 638202
                  addiw        s8, s5, 1136
                  remu         a5, a2, t3
                  slti         a6, t5, -1474
                  sub          a2, s6, gp
                  addi         t1, s8, -905
                  rem          s2, t2, s2
                  srl          ra, s0, a2
                  srlw         a1, sp, a6
                  srli         s7, s7, 4
                  remu         ra, ra, s8
                  remuw        a4, s2, t2
                  srai         a2, t1, 56
                  divw         sp, s0, gp
                  mulhsu       a6, s0, t4
                  slli         s5, a2, 41
                  ori          a6, sp, -1096
                  add          s4, t4, s1
                  or           s5, s7, a4
                  sraiw        ra, s8, 0
                  slliw        s1, s2, 21
                  divu         s5, s2, a6
                  ori          s1, t0, 1902
                  slti         t1, ra, -1287
                  rem          a1, a5, s7
                  addw         a1, t1, a0
                  sub          t0, a6, ra
                  divw         t3, tp, a6
                  subw         gp, s1, s6
                  or           a3, zero, a0
                  xor          s0, s3, t4
                  andi         a5, t1, 619
                  or           s3, a1, t1
                  remuw        zero, a2, t3
                  sltiu        t6, s0, 567
                  remuw        gp, s8, s3
                  divu         t4, a2, a4
                  and          s3, s11, s5
                  sltu         zero, gp, a1
                  mulw         a7, s2, s3
                  or           a5, s4, ra
                  sub          s10, s1, s9
                  mulhsu       a7, t1, t1
                  remuw        s11, tp, ra
                  mul          s0, s5, s9
                  addi         zero, s0, 1631
                  xori         s10, t1, -42
                  subw         a3, s2, a4
                  sraiw        s0, s11, 12
                  xor          t3, gp, s3
                  mulw         t6, a1, s1
                  remu         s11, t3, t4
                  sub          a5, zero, s1
                  addi         a3, t2, 1902
                  slti         gp, t3, -1291
                  xori         s9, s10, 638
                  sub          s5, s3, a3
                  nop
                  div          a2, a2, s0
                  and          a0, s6, sp
                  mulh         t1, a7, a5
                  add          t5, t1, t1
                  slti         sp, s1, -1692
                  and          gp, a7, s0
                  slt          t3, t4, a0
                  rem          s11, s5, t6
                  ori          s10, a7, -1191
                  andi         a1, ra, 1168
                  slti         a4, sp, -477
                  sll          s7, ra, s9
                  lui          t3, 507581
                  srli         t5, tp, 32
                  auipc        s1, 255014
                  sraiw        a0, a7, 24
                  divw         s1, a5, ra
                  slti         t3, s1, 1900
                  addw         s4, a5, a6
                  srlw         a2, s4, a7
                  mulw         s11, s9, t1
                  divuw        a2, s4, t5
                  srli         s4, s9, 34
                  remu         gp, gp, t5
                  srliw        ra, s11, 28
                  sll          a5, s1, t2
                  slt          s2, a2, t3
                  sllw         s11, t0, a3
                  sllw         sp, a5, t2
                  remu         t3, t4, gp
                  srl          zero, a3, s7
                  sraw         a3, s10, s10
                  and          s9, t3, a6
                  srli         a1, s10, 40
                  remw         a7, s0, s9
                  subw         s9, t5, a7
                  mulhsu       s1, t6, s1
                  mulw         t4, t5, gp
                  xor          a7, a4, a7
                  slli         t0, a3, 19
                  mulw         a2, s0, t6
                  sub          s4, a4, s2
                  xori         gp, s7, 999
                  remuw        a4, t2, a1
                  slti         a7, a4, -1716
                  sllw         s1, a1, a4
                  addi         s7, t1, -1162
                  mulw         t0, s2, s11
                  slt          a7, s6, sp
                  andi         s7, a1, 25
                  sraw         t0, zero, a6
                  addi         s1, a2, -1760
                  sltiu        ra, sp, 567
                  srliw        ra, t2, 8
                  remw         t5, t4, s5
                  remu         a4, sp, s1
                  and          t6, s7, s1
                  sll          sp, s0, a7
                  add          s10, a1, s11
                  sltiu        t4, t0, 1206
                  sraiw        a2, gp, 31
                  srai         a5, t5, 16
                  xor          s8, a1, t1
                  slt          s10, t4, t3
                  rem          s10, sp, tp
                  srai         t6, s7, 53
                  srliw        zero, t4, 21
                  auipc        s10, 270256
                  xori         s7, s10, -469
                  divw         sp, a2, s4
                  mulhu        s7, t3, s2
                  slti         a2, t2, -1694
                  slliw        s7, s5, 26
                  mulw         s5, s8, s6
                  auipc        a4, 534281
                  slti         s3, a6, 1295
                  sltu         s9, a4, a2
                  nop
                  xor          s4, t4, s0
                  sraw         t3, a0, s7
                  sra          zero, t5, ra
                  div          s8, s5, a0
                  addw         s8, t5, a6
                  mul          ra, t0, t3
                  xori         t1, a7, -434
                  subw         s11, a2, sp
                  slliw        a0, s1, 30
                  sltu         s2, s7, s4
                  mulhsu       s4, s11, t5
                  srlw         ra, a2, s7
                  slt          s2, s11, s3
                  divuw        a2, s3, a7
                  sltu         s2, s0, t0
                  mulhu        a7, s10, a2
                  or           s8, s11, s10
                  subw         sp, gp, gp
                  auipc        zero, 350432
                  addw         s1, s8, t2
                  slliw        s10, sp, 27
                  slt          gp, s4, t6
                  srliw        t0, a6, 25
                  remuw        t0, t4, t4
                  mulhsu       s1, t2, s5
                  sraw         t4, t1, a4
                  mulhu        s9, s2, ra
                  slli         s11, s9, 20
                  rem          gp, t1, t6
                  auipc        ra, 13811
                  slliw        s5, t1, 2
                  addi         t5, a7, -1607
                  slt          a0, s9, t5
                  mulhu        s2, t5, t5
                  remu         zero, a0, t1
                  and          t0, t3, s9
                  auipc        s3, 554696
                  sllw         sp, a3, s4
                  sraw         s1, t2, t4
                  andi         t1, t4, -1800
                  srliw        ra, s11, 31
                  srl          s3, tp, s9
                  or           s4, s5, t6
                  mulh         s4, sp, a6
                  srl          s4, tp, t4
                  xori         a4, sp, -1798
                  sraw         s7, tp, a2
                  rem          t0, s2, t1
                  divw         a5, s4, t2
                  mulhu        a2, t2, t3
                  subw         a2, gp, t3
                  remu         gp, t4, zero
                  srliw        s11, a5, 26
                  divuw        s5, a4, a5
                  slt          t6, s3, s9
                  mulhsu       s3, a2, s5
                  sll          a0, t3, t2
                  srai         t5, gp, 8
                  sltu         s1, a4, s11
                  sub          a0, a7, s3
                  remu         t1, a0, s5
                  subw         t4, t2, s2
                  divu         s4, s2, s7
                  sllw         s3, s8, a3
                  slt          a5, t2, s1
                  srliw        t1, a5, 21
                  remu         t0, s5, t5
                  mulw         s9, s8, s11
                  divu         zero, s1, a4
                  lui          s11, 959117
                  mulh         a6, t1, s0
                  xori         t4, s7, 938
                  srl          zero, a4, a7
                  srlw         s8, a4, gp
                  sub          a0, s11, s0
                  xori         a7, t4, -1471
                  slt          a2, sp, s8
                  sllw         t0, ra, s0
                  srliw        t6, tp, 25
                  divu         s3, ra, a1
                  remuw        zero, a0, tp
                  divw         s8, s7, s9
                  auipc        t4, 49243
                  ori          a6, s3, 302
                  lui          s11, 939600
                  sll          t0, t5, s1
                  rem          gp, sp, t4
                  remu         s5, s2, t4
                  auipc        s0, 195742
                  div          zero, zero, a5
                  add          a1, a1, s4
                  divuw        a5, t0, s8
                  lui          a0, 766996
                  rem          a5, a5, a7
                  or           t1, tp, a7
                  xori         a7, ra, 1108
                  sraw         a5, s5, sp
                  xor          a5, t3, t0
                  sraiw        a4, t5, 28
                  sltiu        a0, s10, -82
                  sub          s7, zero, s9
                  srai         a4, s4, 33
                  div          s11, t4, s4
                  srai         s1, s4, 25
                  slli         a3, tp, 48
                  slti         s3, t2, -1004
                  divu         t0, sp, s2
                  divuw        a1, a6, gp
                  addiw        s11, a6, 1229
                  srl          s3, s0, s3
                  mulhsu       a0, t1, s3
                  srl          s0, ra, s0
                  or           s0, a5, a5
                  sraiw        a7, t6, 8
                  slliw        s1, s0, 2
                  nop
                  slti         a0, s0, 607
                  andi         s8, t3, -530
                  nop
                  remuw        a2, s8, s0
                  ori          zero, s3, 887
                  and          t6, s5, a2
                  mulhu        s11, a3, t6
                  sll          a0, ra, a0
                  rem          a7, s8, tp
                  auipc        t3, 318403
                  mulh         gp, t3, gp
                  sraw         a4, s3, t4
                  div          t1, a4, a4
                  mulw         a1, a3, s1
                  srlw         s11, a5, a3
                  srli         a7, s2, 62
                  srlw         s9, s8, a2
                  xori         s3, s3, 2007
                  remuw        a3, a0, s4
                  slli         t0, t4, 0
                  divw         s0, a2, a1
                  remuw        a4, a2, gp
                  sllw         a6, a2, t5
                  remu         s0, ra, t2
                  mul          a7, s4, a5
                  srli         t6, zero, 32
                  mulhsu       t6, tp, t1
                  mulhsu       s8, a3, gp
                  srl          a5, zero, t1
                  and          s2, a4, s10
                  lui          s9, 804726
                  srli         s5, a4, 30
                  sltiu        a5, a2, 1409
                  mul          gp, s2, a5
                  slt          gp, sp, s11
                  mul          a6, gp, t1
                  andi         s5, a4, 2024
                  mulw         a4, t0, a7
                  addiw        ra, s2, -1514
                  sll          t0, a1, t2
                  sraiw        t1, t0, 0
                  sltu         t5, a0, tp
                  srli         s10, ra, 4
                  lui          ra, 209743
                  mulhsu       a5, s2, s3
                  sraiw        a5, t1, 4
                  sub          zero, t1, a4
                  remuw        s2, ra, t3
                  sltiu        s2, s0, -1989
                  divw         a7, a7, s9
                  sraw         zero, a3, gp
                  slli         a7, s1, 12
                  auipc        ra, 161386
                  auipc        a2, 729036
                  remu         s3, t0, a4
                  mul          s9, s6, a4
                  srl          a1, s4, gp
                  slti         t4, s2, 1652
                  slt          s0, a5, ra
                  auipc        s3, 133797
                  div          s8, t1, zero
                  srai         a3, s8, 18
                  div          zero, s0, s3
                  sraiw        t6, s7, 28
                  divw         gp, s3, t6
                  srl          a4, gp, a4
                  ori          t6, t6, -647
                  sub          s9, a6, a1
                  mul          ra, a0, a5
                  slliw        s4, t4, 29
                  divu         sp, ra, s1
                  add          t3, s5, a0
                  xor          ra, s8, zero
                  slt          t6, t0, sp
                  slli         s1, t1, 11
                  srli         t0, t6, 12
                  sra          t4, t6, s8
                  sltiu        s11, tp, 72
                  srai         s1, t0, 20
                  mulhsu       s1, a7, s10
                  subw         zero, s4, s4
                  rem          s1, a0, a4
                  mulhu        gp, t6, s3
                  nop
                  slliw        ra, a1, 9
                  div          zero, t4, s9
                  srai         a0, a4, 61
                  sllw         t4, s5, t1
                  divuw        s3, t2, t3
                  sltu         s10, a1, a6
                  sub          a2, a5, t6
                  addw         a4, s1, a2
                  nop
                  div          zero, s10, t3
                  mul          s5, tp, s8
                  slli         s1, s11, 57
                  addiw        s9, s1, 614
                  sll          gp, a6, t3
                  mulhu        a2, s5, s3
                  sra          s0, s2, t0
                  srliw        s2, s5, 5
                  srl          gp, s9, s8
                  xor          s2, t4, a7
                  andi         t0, t4, -962
                  sraiw        a0, s6, 21
                  slti         t0, a4, -2034
                  auipc        t0, 1027465
                  sraiw        a4, t5, 0
                  remu         t0, gp, t6
                  andi         s5, s4, 1042
                  div          s10, s7, a0
                  divuw        s4, a0, a1
                  add          t3, s8, a4
                  mulh         s1, a7, s3
                  subw         zero, s0, t2
                  div          a1, t3, s9
                  or           t4, s3, a6
                  sraw         gp, s4, s0
                  mulh         zero, a5, t0
                  sraw         t1, t6, a6
                  or           a5, a1, s3
                  slti         t4, a1, -1827
                  divw         s10, s0, s10
                  mulhsu       sp, t4, a5
                  sllw         s0, s8, a3
                  xori         a0, tp, -983
                  nop
                  mul          s3, s3, gp
                  auipc        s1, 313470
                  nop
                  remw         t5, t4, t0
                  lui          sp, 221289
                  mulh         s3, s8, s2
                  srlw         a3, a2, s2
                  subw         s5, s9, tp
                  divuw        gp, sp, s7
                  subw         ra, a4, s5
                  slti         s1, t6, -1624
                  add          gp, a4, s2
                  xor          a6, t2, a2
                  slliw        s9, sp, 9
                  nop
                  xori         s1, a4, -1730
                  lui          s11, 788933
                  ori          a2, t6, -1903
                  sltu         t1, tp, ra
                  mulhsu       gp, t3, a0
                  remuw        a7, s0, s4
                  and          s2, s2, s5
                  rem          s7, s8, s3
                  addw         a5, ra, t0
                  srli         t0, a1, 15
                  mulw         s8, a1, t3
                  remuw        a6, s9, s3
                  sraiw        t1, a6, 15
                  rem          s8, gp, sp
                  divw         t4, a3, s8
                  slli         a7, s3, 61
                  divuw        s2, gp, s8
                  srli         a6, s2, 3
                  slt          s0, a7, s6
                  slti         s4, gp, -656
                  sltu         t1, a0, sp
                  nop
                  sllw         a2, tp, a6
                  add          s5, a2, a4
                  subw         a3, zero, s1
                  sraiw        t3, a6, 8
                  slli         s10, t1, 42
                  nop
                  slliw        s4, a7, 22
                  divuw        s5, s4, s9
                  addi         t6, t6, -421
                  ori          a2, a5, 1924
                  addiw        t3, sp, -1251
                  srl          t5, t5, s0
                  divuw        t6, t6, t4
                  xori         t1, tp, -17
                  srai         a6, zero, 46
                  sllw         s4, s6, a4
                  auipc        a1, 830005
                  rem          a6, s2, zero
                  addi         a0, s9, -1125
                  add          s0, t1, s11
                  mulh         s5, t6, s5
                  remw         a0, a1, s8
                  sll          t1, s11, a2
                  remw         s5, a4, t5
                  mulh         zero, t0, a2
                  and          t5, a2, s7
                  sra          a1, a3, s2
                  sraw         s5, gp, s9
                  divuw        a7, a5, s3
                  mul          t4, s7, s8
                  sraiw        s4, s2, 17
                  sltu         gp, a5, t6
                  srliw        gp, s7, 4
                  sub          a6, a5, sp
                  remu         s4, t5, s2
                  sll          s7, a6, s0
                  addi         s5, s0, 1940
                  sra          s2, a0, a0
                  sraw         a5, t4, a1
                  remw         s3, s11, s5
                  addw         s2, gp, s4
                  xor          a2, a3, t0
                  slti         s8, gp, 160
                  mulw         s0, t6, t0
                  subw         s8, s0, s8
                  sraw         a3, a5, s4
                  srli         s2, t6, 20
                  sub          t3, t2, a7
                  xor          s9, s5, s11
                  mulhu        s8, gp, s9
                  andi         a1, t3, 1371
                  slliw        sp, a0, 23
                  srai         a0, sp, 54
                  divu         t1, s5, a7
                  or           s3, s10, t0
                  or           s7, a5, s10
                  divw         s10, a3, s3
                  xori         s10, t1, 1636
                  divw         t1, t6, t3
                  sraiw        a7, s0, 11
                  xori         s5, a2, -518
                  divu         t6, s7, t3
                  srli         s2, s3, 3
                  divw         a4, a4, a2
                  divw         gp, s7, t5
                  nop
                  srlw         s7, s1, s11
                  sraiw        s11, s6, 7
                  srai         t6, t4, 39
                  srlw         s11, t4, sp
                  addw         t5, sp, sp
                  rem          s11, s1, gp
                  sllw         s8, t2, s5
                  and          a1, s3, s2
                  andi         s0, s1, 1530
                  slli         s9, t4, 17
                  remu         a6, t3, gp
                  remuw        t1, s4, a3
                  sltiu        s3, s8, -1240
                  mulh         t5, s5, s9
                  slt          t1, ra, t5
                  addiw        gp, s11, -1705
                  sllw         a3, sp, a2
                  remw         s9, s0, s10
                  slti         s1, a0, 965
                  sub          a2, s1, gp
                  remuw        s5, t3, a1
                  xori         s4, a2, 781
                  add          t3, a3, t5
                  divw         t3, t2, gp
                  addiw        s11, s5, 622
                  remw         a4, s9, s10
                  srliw        a3, t1, 1
                  remuw        t5, s10, a3
                  add          t6, s1, t4
                  ori          t0, a5, 546
                  mulw         s2, a3, s2
                  divu         s5, t6, s3
                  sll          s0, s11, t0
                  mulw         gp, s3, s1
                  mul          a3, a6, t2
                  srlw         a1, t1, zero
                  lui          a4, 688092
                  addi         s10, s4, 782
                  addw         zero, t0, a4
                  sltu         s10, a1, s10
                  remw         gp, s3, tp
                  auipc        a6, 207216
                  ori          s3, a4, -148
                  srlw         s4, ra, tp
                  add          s11, s5, s9
                  remuw        a6, zero, s8
                  addiw        s11, t3, -2021
                  remuw        t6, a7, s1
                  remw         t6, s2, a1
                  nop
                  divu         s8, a2, s6
                  divw         s7, t0, s11
                  sllw         s11, s7, t5
                  mul          ra, a1, s0
                  sltiu        t4, t0, 1820
                  sltiu        s4, s9, -774
                  xori         t3, a3, -645
                  lui          t4, 846745
                  srli         s1, a7, 19
                  srlw         a5, s4, a6
                  sltu         s3, s9, s1
                  srli         s7, s0, 21
                  xori         s11, s5, -398
                  sll          a7, a0, t4
                  subw         a1, t3, s5
                  divuw        t6, a4, a6
                  rem          s7, s9, s11
                  slli         s11, a4, 52
                  srli         s3, t1, 43
                  rem          s1, t4, s11
                  mulhsu       s2, t2, s4
                  remuw        s4, a3, a4
                  mulhu        t5, s10, s0
                  srliw        s2, s8, 22
                  remuw        t4, a6, s9
                  slti         t0, s5, -1711
                  slti         t1, t6, 1160
                  add          a5, s11, a1
                  or           t6, zero, t2
                  sltu         t5, t3, t1
                  xori         t6, a1, -1152
                  slt          zero, s4, s8
                  sllw         s4, t2, a4
                  srli         a2, a2, 35
                  mulw         sp, ra, t2
                  add          s5, a4, a6
                  or           t0, s5, s2
                  slti         s5, a5, -1805
                  slli         s2, a7, 60
                  add          a5, t0, s2
                  srai         s4, s11, 20
                  sub          a0, s3, s10
                  or           a7, a3, s10
                  subw         a3, a5, t5
                  divu         a2, sp, s1
                  nop
                  sllw         gp, a5, t0
                  xor          s2, t5, a2
                  remu         s7, a1, a2
                  addw         s7, a3, a7
                  addw         sp, zero, s8
                  auipc        t6, 692335
                  subw         s11, s8, t6
                  srlw         a3, sp, s0
                  srai         s8, s10, 0
                  slli         a4, s10, 9
                  xor          zero, a0, gp
                  divw         s2, a2, s0
                  addi         zero, t3, 1989
                  divuw        t1, s4, ra
                  slti         a6, a4, 1738
                  lui          a7, 182012
                  addi         t3, gp, -1019
                  sub          s3, s10, s5
                  lui          s9, 188648
                  ori          s10, t2, -1370
                  remw         a4, t5, a2
                  divw         a2, t6, s3
                  xor          s5, t3, a5
                  addi         t6, zero, -344
                  auipc        a5, 688592
                  and          s11, s4, zero
                  addi         s7, a4, 1918
                  sra          gp, ra, a2
                  slt          a3, t5, gp
                  div          t0, zero, s2
                  or           s5, sp, s3
                  slt          t1, t5, a7
                  divuw        a7, s5, a5
                  srai         s8, tp, 25
                  mulhsu       t4, s3, a3
                  slli         s10, a5, 18
                  remw         s11, a5, t1
                  srai         sp, s10, 0
                  srl          ra, a6, a2
                  mulh         s10, tp, t1
                  slli         t1, a2, 52
                  srai         a6, a5, 45
                  auipc        sp, 625156
                  srli         a6, zero, 5
                  lui          a2, 268356
                  xori         t0, s1, 434
                  sltiu        s8, tp, 1006
                  sub          a1, zero, s8
                  mulhu        t5, t0, t1
                  addiw        s2, ra, 1163
                  sltiu        a3, s0, -727
                  mul          s5, s11, ra
                  remw         a5, a5, s7
                  addw         t3, s7, s3
                  addiw        a3, t5, 1629
                  divu         s7, a6, s0
                  mulhu        gp, t4, a2
                  addiw        a1, s7, -285
                  addi         s0, a4, -1412
                  mulh         t5, a5, a0
                  srlw         s2, s10, s9
                  remuw        t6, s6, a2
                  mulhu        sp, a0, a0
                  nop
                  remu         s7, a1, a2
                  srlw         s0, a7, s1
                  slliw        a5, a4, 11
                  subw         s8, t2, sp
                  remuw        zero, a0, s1
                  or           s7, s8, a2
                  sraiw        a3, s2, 17
                  addw         gp, zero, a0
                  xori         zero, a5, 967
                  sra          t5, s8, sp
                  rem          a4, s4, s11
                  xori         t0, s7, -862
                  mulw         a0, s1, a3
                  slt          ra, s7, s0
                  addiw        t0, t4, -1727
                  srliw        s10, s5, 2
                  divuw        s10, s10, sp
                  mul          s11, t6, t5
                  auipc        t6, 845386
                  addw         t0, s4, tp
                  div          t1, t4, a5
                  remuw        gp, sp, t2
                  mulh         t1, s1, a5
                  rem          s4, t4, a3
                  srl          sp, s8, zero
                  addi         s2, zero, -711
                  sltu         s11, ra, a1
                  srai         a3, s2, 61
                  subw         s0, s1, t2
                  addw         t6, tp, a4
                  subw         t3, t0, s2
                  nop
                  or           a2, s0, s3
                  addiw        s10, sp, 1749
                  mulhsu       s10, s5, s6
                  auipc        gp, 676831
                  slliw        t1, s1, 20
                  sraiw        a1, a2, 31
                  xor          t0, s11, s1
                  sraiw        ra, gp, 10
                  rem          a5, a3, a1
                  slti         s9, sp, -825
                  mulhsu       s7, t0, tp
                  lui          a1, 1030660
                  sll          s8, s0, s3
                  add          s7, a6, a4
                  addiw        t5, t1, 853
                  remw         s1, s8, s9
                  divu         s2, a3, t3
                  srl          s0, t6, s6
                  mulhsu       s10, t0, a7
                  slli         s5, t0, 50
                  divu         t1, a2, a6
                  sltu         a7, a6, a1
                  sraw         a2, a7, t5
                  sltiu        a4, s10, -1762
                  div          s11, tp, t2
                  slt          t5, gp, ra
                  remw         s9, s4, s9
                  divw         a2, a0, s7
                  divw         s11, t4, t6
                  srl          gp, a2, t6
                  addw         s5, sp, t5
                  subw         s10, a6, a2
                  mulw         a7, tp, t2
                  sltiu        zero, s8, 812
                  srliw        s5, s11, 8
                  lui          t0, 822393
                  slt          s8, gp, s5
                  srai         a1, s8, 0
                  sra          a6, s11, a5
                  mulh         s5, s10, s10
                  addi         a0, a5, 2023
                  xori         a5, a6, -1918
                  addi         zero, a6, -1348
                  or           s3, s6, s7
                  mulw         s9, zero, sp
                  sra          a1, ra, sp
                  srai         s2, s3, 20
                  sltu         t3, s1, t0
                  sraiw        a2, tp, 3
                  divuw        s8, a0, s4
                  nop
                  xori         a3, s1, 970
                  addw         gp, s9, s4
                  mulw         ra, gp, a7
                  div          a5, tp, s10
                  slt          a1, zero, sp
                  xor          t1, t6, t2
                  divuw        s9, ra, a1
                  slliw        t1, t1, 22
                  divw         t3, zero, s0
                  slli         a5, s7, 40
                  srliw        s4, zero, 26
                  srl          s7, s11, s7
                  mul          a6, s2, sp
                  sllw         ra, s1, t6
                  remw         t6, s4, ra
                  sltu         t5, tp, s4
                  addiw        s7, s7, 1774
                  divw         s9, a7, s0
                  or           zero, t4, s9
                  sllw         a5, a5, a2
                  subw         t5, gp, t3
                  sltiu        a7, zero, 1145
                  ori          s9, t1, -225
                  slti         a0, a6, -1195
                  remuw        a6, t3, s0
                  srl          t6, a1, s11
                  mul          a2, zero, s3
                  divu         s4, s6, t4
                  add          s7, sp, t6
                  and          gp, zero, t3
                  slliw        s1, s4, 31
                  slt          a5, s2, a2
                  srai         a1, tp, 12
                  remu         sp, a6, s9
                  slt          s1, a2, a6
                  addw         s7, s7, s6
                  nop
                  srl          a2, t6, s8
                  sll          a0, gp, a1
                  mulw         a6, t3, s6
                  nop
                  srai         t6, tp, 35
                  addi         ra, s10, 455
                  lui          s2, 81211
                  mul          s9, ra, s1
                  nop
                  xor          s0, sp, t6
                  mulhu        a3, a7, s8
                  slt          t5, s9, a4
                  sra          a1, t4, t5
                  divw         s8, s11, t2
                  mulhsu       a7, s8, a6
                  slli         a7, s10, 35
                  slt          s1, s11, s10
                  andi         a5, s9, -1394
                  add          s4, s11, t1
                  ori          s5, s0, 1085
                  mulhu        s7, t1, sp
                  nop
                  divuw        t0, t0, s9
                  srl          gp, a7, tp
                  auipc        s3, 1009196
                  slti         zero, s8, -181
                  slli         a5, s0, 5
                  sll          a7, t6, a5
                  srl          zero, s3, s0
                  srai         t1, t3, 45
                  divw         s5, sp, s4
                  remw         s4, gp, s6
                  sltu         s3, t6, t5
                  remuw        a2, s7, s0
                  divuw        s11, a3, s5
                  slliw        sp, t3, 9
                  srli         zero, s1, 42
                  slt          s5, a0, s7
                  auipc        t0, 874063
                  and          s0, s0, gp
                  sraiw        s1, t3, 2
                  remuw        a5, a6, s2
                  srlw         sp, s4, a1
                  xori         s1, a3, 362
                  srli         t1, t5, 35
                  addw         t1, a6, gp
                  mul          s2, s6, s0
                  remw         s11, a3, a2
                  ori          a3, s7, 1550
                  mul          s2, s4, s2
                  srlw         gp, a3, s2
                  sll          a4, t2, zero
                  andi         a7, t1, 578
                  sra          s2, s10, s1
                  mulhu        s8, a4, s6
                  addiw        s3, s9, -1621
                  lui          a3, 180614
                  divu         t3, t6, s7
                  lui          gp, 453547
                  divu         s1, a3, s11
                  and          gp, s4, tp
                  sraw         s11, a7, zero
                  srai         zero, s11, 31
                  andi         s9, s2, 299
                  srai         s10, t2, 50
                  remuw        gp, s0, s5
                  auipc        a2, 348196
                  slt          s10, t4, s9
                  sllw         t1, s5, s1
                  mul          s10, s5, t4
                  slti         s2, a4, 1621
                  srl          s9, a7, t5
                  or           s4, t6, zero
                  divuw        a5, s0, s2
                  remw         a0, t6, t3
                  srlw         a1, s0, s3
                  mulhu        a3, s4, gp
                  sra          t5, t3, ra
                  ori          t6, t3, 1608
                  xor          sp, s7, s8
                  remw         s7, a5, a7
                  and          a0, t1, gp
                  divu         s2, s8, s2
                  srlw         t3, s0, tp
                  slliw        s8, a6, 3
                  addiw        s4, a5, 726
                  sltiu        a6, t2, 179
                  remuw        gp, a0, tp
                  srli         s4, a2, 12
                  ori          a0, s0, 1511
                  mulh         t5, s2, s3
                  mulhsu       a1, t4, a6
                  srl          a3, s4, a6
                  div          s9, a5, gp
                  sll          t1, ra, a0
                  divu         s9, t0, t2
                  divuw        t0, t6, s1
                  slli         s3, a7, 9
                  sll          t1, a3, a5
                  addw         a4, t3, a2
                  slti         a2, s2, -1629
                  srli         t1, s6, 14
                  divu         zero, t3, zero
                  nop
                  sll          a4, a2, a0
                  addi         t1, s0, -619
                  srliw        t6, s0, 27
                  ori          gp, s7, -1897
                  srl          a4, s3, s7
                  srliw        s3, t6, 27
                  mulhsu       s10, t6, a0
                  srlw         s0, gp, s9
                  div          zero, t2, a3
                  auipc        sp, 85340
                  remuw        sp, t0, t0
                  slti         s10, t3, -377
                  remu         s9, s1, a1
                  lui          s3, 180091
                  mul          a5, a0, a7
                  addw         s3, a2, a7
                  srl          t3, a7, s1
                  subw         t0, a1, s4
                  sll          s8, s2, s6
                  srlw         t4, s9, s0
                  nop
                  sraiw        s7, t3, 4
                  and          s9, t0, a4
                  srli         s4, s1, 23
                  and          a6, s11, s8
                  lui          a2, 58448
                  ori          t0, t6, 988
                  sraw         a7, zero, t4
                  remu         a3, sp, a5
                  srliw        a4, a5, 17
                  srliw        s8, t0, 4
                  srlw         a5, ra, sp
                  remw         sp, t0, s8
                  addiw        s5, t6, 1113
                  srli         s3, t0, 61
                  auipc        s9, 819818
                  sll          s9, tp, t5
                  xori         ra, s11, -1266
                  div          t4, t5, s9
                  sra          s0, a6, s3
                  slliw        s4, t5, 28
                  nop
                  divu         t5, t2, sp
                  remu         s5, t1, a5
                  sraw         s5, a6, s2
                  and          s10, a3, a3
                  slliw        s11, s3, 9
                  divw         gp, s8, s7
                  sraw         t4, gp, s11
                  remw         a7, t2, gp
                  remuw        s7, t0, s2
                  remu         s7, a4, s7
                  sltu         a2, tp, s1
                  srliw        s5, s9, 4
                  and          a3, a1, a6
                  srliw        t6, t4, 6
                  xori         t5, sp, 511
                  slti         s1, s7, -1020
                  ori          zero, a4, 261
                  sllw         s9, s9, gp
                  rem          s4, s5, ra
                  sll          a0, zero, a7
                  divuw        a1, s6, s7
                  sllw         zero, sp, t0
                  or           a6, ra, t5
                  or           t4, a7, ra
                  mulhu        a5, a0, s10
                  or           t0, s1, s9
                  sllw         a6, t5, zero
                  addi         a0, t1, -1614
                  sra          s11, t5, s4
                  mulhsu       s4, tp, a1
                  slliw        gp, zero, 3
                  remuw        a5, t6, a2
                  add          a5, ra, a5
                  divu         s1, t6, t3
                  nop
                  rem          t1, s6, a5
                  slti         s9, s2, -1024
                  sllw         a1, t3, s5
                  mulw         a2, gp, s6
                  srai         s9, t1, 23
                  addw         s2, s10, a0
                  mulw         t4, tp, a6
                  remw         zero, a7, s5
                  andi         s5, s5, 211
                  remw         t5, a2, s2
                  mulh         a5, a1, t3
                  sltu         zero, t2, t1
                  srli         s11, t1, 5
                  ori          s9, a0, -1932
                  srai         s1, t5, 52
                  add          s8, a4, a6
                  sra          s7, s11, a3
                  addi         a6, a1, 1460
                  slli         s8, a2, 14
                  srliw        ra, t5, 18
                  srlw         s4, a7, zero
                  remw         a3, a6, t6
                  sll          s2, s8, ra
                  subw         s3, s1, a7
                  divuw        a3, a5, a3
                  addiw        t1, t1, 186
                  xori         s11, t5, -1178
                  and          t0, a1, s1
                  mulh         t0, s7, a5
                  xori         s1, t2, -1226
                  slt          t5, a7, t3
                  sllw         sp, a4, a3
                  add          t3, s8, t6
                  sraw         zero, a4, s4
                  divu         sp, t0, a5
                  div          s4, zero, s10
                  divw         s3, s7, s7
                  divu         sp, a7, a3
                  xori         s7, s7, 243
                  subw         a4, s11, a3
                  sltu         s4, s7, t0
                  sltiu        s0, s2, 1662
                  slti         a1, a5, -1409
                  srai         s0, a4, 27
                  mulhu        a5, a3, s4
                  slti         s8, a2, -1188
                  sraiw        a7, s1, 10
                  mulhu        s10, a5, tp
                  divu         a7, t0, s0
                  auipc        s1, 685130
                  mulh         t6, s0, zero
                  add          t0, a6, t4
                  add          s0, s3, gp
                  divw         a7, s6, ra
                  xori         sp, t3, -1756
                  remu         a1, zero, sp
                  srl          s2, a0, s11
                  andi         gp, s3, 224
                  sraiw        t1, t5, 4
                  mulw         a1, s7, s4
                  mulw         a1, s0, s7
                  slt          gp, a0, s1
                  slti         s7, s10, -343
                  srli         a6, s7, 7
                  auipc        ra, 362665
                  addi         sp, ra, -1265
                  divuw        t1, t2, gp
                  remuw        a1, s2, t0
                  sub          ra, s7, t4
                  sub          s3, t5, t4
                  sltiu        a4, s5, 603
                  slliw        s3, t4, 7
                  slli         s0, a5, 56
                  mulw         a4, a6, a2
                  auipc        ra, 373888
                  auipc        t0, 687354
                  or           t1, t0, s6
                  subw         a2, s9, s10
                  xori         zero, a5, 871
                  divu         a4, a7, a4
                  remu         s11, t2, s0
                  sub          s4, gp, a3
                  mul          a4, s7, s3
                  div          s5, a0, gp
                  sra          t0, a7, sp
                  add          t3, tp, ra
                  sraw         s1, t2, s2
                  srai         s7, tp, 22
                  mulhu        t6, s9, s7
                  sraw         t3, gp, s11
                  mulhsu       a3, t5, s5
                  sraiw        s2, s1, 1
                  and          s5, zero, t0
                  mul          s5, s8, s4
                  lui          a1, 779844
                  srliw        s5, s3, 24
                  sub          s0, gp, tp
                  slt          s2, a4, s9
                  xori         a6, a3, 1413
                  slliw        zero, a1, 21
                  mulhu        a2, s5, a4
                  mulh         sp, a6, a2
                  srlw         sp, t5, a4
                  sraiw        a7, t2, 25
                  remuw        ra, a1, t0
                  addw         t5, s7, s2
                  and          s2, a1, s3
                  and          s8, sp, s6
                  divu         s2, s2, s1
                  auipc        a2, 180380
                  sltu         s8, t0, t2
                  srl          ra, s6, s5
                  divu         t5, s10, s2
                  sltiu        t1, s7, 192
                  slti         s7, s1, 880
                  srli         a7, s9, 16
                  rem          s2, s1, s1
                  xori         ra, s3, -688
                  srl          s7, zero, a7
                  slliw        gp, a2, 25
                  sra          a3, s3, s11
                  or           a7, s7, t6
                  slt          a2, s6, tp
                  mulh         s9, a4, t5
                  xori         a5, a1, 1249
                  srl          t5, s4, t4
                  xor          t1, s5, s0
                  srli         zero, s6, 15
                  mulw         s3, a0, a6
                  remuw        a5, s10, t2
                  lui          a7, 53606
                  sra          a0, zero, s1
                  mulh         s5, t6, s5
                  or           ra, s6, t4
                  sllw         a4, ra, s6
                  and          t0, s10, t1
                  addi         a7, zero, -2014
                  remu         s0, a0, s5
                  mulw         s3, s8, s8
                  addiw        s2, t0, 266
                  divu         a5, gp, a6
                  sltiu        s4, a2, -1796
                  remuw        t3, s4, a2
                  xor          s7, ra, s7
                  divw         a1, s2, t6
                  sra          t3, s7, t5
                  srl          s7, a6, zero
                  mulw         s4, a5, t3
                  slli         t1, a5, 29
                  remuw        a7, gp, t1
                  lui          s11, 157749
                  addi         s8, s10, 1751
                  ori          s1, ra, 510
                  ori          s10, s9, 1058
                  divw         t5, a2, a7
                  slt          t3, t6, a7
                  mul          s5, zero, a3
                  nop
                  srlw         s3, s1, a7
                  srai         s7, t0, 1
                  sltiu        t6, s5, -1138
                  addw         s7, a4, t5
                  rem          t5, s7, t2
                  srlw         zero, a2, a1
                  or           a1, s4, a0
                  remuw        zero, t6, t3
                  subw         t5, s10, s4
                  subw         a5, t2, a0
                  addw         s9, s2, s2
                  remu         a6, a4, t5
                  sltiu        zero, a7, 646
                  mulhsu       s5, a4, a2
                  divuw        s8, s6, s4
                  divu         s5, gp, s2
                  remuw        t6, s0, s11
                  mulhsu       s7, s4, t0
                  srai         s3, ra, 57
                  remuw        s7, t0, t4
                  sraiw        a5, a6, 6
                  srliw        t0, t0, 6
                  slli         t1, s10, 13
                  and          t6, gp, s5
                  sra          s2, s2, a2
                  mulw         s3, a1, zero
                  ori          t3, a3, 1728
                  sraw         s5, ra, t6
                  srli         t6, s10, 37
                  sll          a6, s9, a1
                  addw         t0, s10, s7
                  srai         s0, a7, 18
                  and          t1, t1, a5
                  remuw        t6, s0, a2
                  add          t3, t1, s11
                  and          a3, a4, s8
                  srliw        a4, zero, 4
                  add          s1, ra, a4
                  addw         sp, s8, a5
                  and          s4, t6, ra
                  srliw        t1, s11, 29
                  andi         a2, ra, 926
                  sra          s2, a7, t0
                  addi         s5, s6, 1221
                  sll          s8, t1, ra
                  remuw        s4, a4, t1
                  mul          s10, t6, t4
                  auipc        zero, 326165
                  remuw        s9, s9, s4
                  addw         a1, a6, a3
                  slli         a2, s2, 8
                  sll          s4, t1, a5
                  rem          t3, s1, a0
                  srai         zero, s5, 62
                  add          s0, a7, tp
                  slli         s0, a4, 16
                  addi         s11, t5, -90
                  remu         s3, s5, s9
                  and          t6, s10, t6
                  remw         t1, sp, gp
                  sub          a1, t4, s4
                  slt          a0, t1, a3
                  sub          t5, s2, t0
                  addi         a2, tp, -1276
                  sraiw        t5, sp, 26
                  div          t4, a5, s1
                  xori         a0, tp, 334
                  subw         s10, a1, t2
                  addw         t6, a4, a7
                  divw         a6, a2, a7
                  slliw        t1, s11, 7
                  auipc        t3, 543696
                  slli         gp, s8, 31
                  addiw        a4, t6, -1653
                  auipc        s4, 641921
                  rem          a7, s5, ra
                  remuw        t6, s2, s9
                  addiw        a0, a4, 69
                  srl          t1, s4, t2
                  slt          a6, a1, t3
                  srliw        a4, a5, 17
                  mulh         s8, s6, a6
                  addw         a6, t4, gp
                  mul          a2, s11, t2
                  divw         ra, a1, a5
                  ori          gp, s7, -476
                  srli         a1, a5, 62
                  remw         s1, s8, s9
                  slti         t5, t6, 264
                  sub          s2, s6, s9
                  auipc        t3, 411075
                  remw         a7, t5, s1
                  mulhsu       t0, s1, a6
                  remu         t5, a2, t3
                  addiw        s1, a0, 301
                  xor          t1, s1, s11
                  auipc        t5, 147225
                  srli         a4, gp, 47
                  slliw        s9, t6, 30
                  div          a6, s9, a5
                  srli         ra, s5, 29
                  divu         s10, t0, s4
                  mulhsu       t3, s6, ra
                  xori         sp, s9, 686
                  auipc        a2, 241586
                  rem          t6, t4, a0
                  mulhu        s5, a3, s10
                  srlw         t1, t1, s3
                  sraiw        a4, t1, 13
                  mulw         t5, t2, zero
                  addw         ra, t0, s9
                  remu         s7, t3, t4
                  divu         t0, s5, s4
                  mul          a2, s8, s1
                  addi         t1, s2, 2029
                  div          t0, s2, tp
                  slt          sp, s1, s2
                  auipc        t4, 333955
                  lui          s0, 855886
                  add          a2, s11, a2
                  addi         s7, s6, -1355
                  remw         zero, s7, s1
                  xori         a1, t0, 1269
                  slli         t4, t2, 34
                  remuw        ra, s1, t0
                  remuw        s0, tp, a0
                  and          t5, sp, t3
                  remw         t1, s7, t5
                  addi         t6, t0, -1372
                  slti         gp, a6, 1012
                  sub          s11, zero, t6
                  srli         s11, s2, 8
                  slti         t5, t1, -390
                  xor          s8, a4, sp
                  sub          a0, t4, a5
                  srli         s1, tp, 59
                  add          s0, t1, s11
                  srai         s1, a2, 21
                  sub          s8, s1, s3
                  mulh         gp, t5, t3
                  mulhu        s0, a0, a0
                  lui          t0, 13193
                  slli         a6, a1, 50
                  remuw        a1, s9, s2
                  slli         t0, a7, 61
                  mulw         zero, gp, sp
                  slli         t0, ra, 16
                  andi         a5, a0, -1515
                  sraw         a0, t5, a7
                  remuw        t1, t1, zero
                  mulw         a4, ra, s7
                  divu         s4, a4, s6
                  lui          t5, 365677
                  remw         t1, t4, gp
                  div          s7, tp, s4
                  divuw        s1, t5, a3
                  srai         zero, a5, 6
                  andi         a1, t3, 1112
                  addw         s7, ra, s2
                  lui          t0, 222054
                  sra          t6, a5, t3
                  andi         s8, s2, 132
                  sub          a0, s4, a3
                  or           s7, t4, s10
                  nop
                  remw         a1, a7, a0
                  divuw        s3, zero, s6
                  addiw        t0, zero, 883
                  or           s5, s11, t1
                  mulhsu       s1, a1, tp
                  sllw         a1, t5, t5
                  mulhu        a4, s1, s9
                  srliw        s9, s3, 4
                  mulh         s10, s10, t2
                  mul          zero, s10, s10
                  srlw         zero, s10, s8
                  remuw        s11, s6, sp
                  and          s4, zero, s5
                  or           a1, s0, a2
                  mulhsu       t1, s11, s1
                  lui          s3, 547700
                  mulhsu       a6, t1, s5
                  addiw        zero, s2, 1090
                  remu         s5, t2, s4
                  slt          t0, s7, a3
                  slliw        a5, t0, 14
                  sraiw        t1, a7, 7
                  remuw        sp, a7, gp
                  sraiw        t0, s10, 30
                  sub          s5, t6, s2
                  xor          t1, s2, s10
                  remu         a7, t3, sp
                  div          t4, a0, a0
                  mulhu        a5, zero, s2
                  sltu         t4, t1, t4
                  sraw         a1, tp, s3
                  divu         a6, t2, a0
                  lui          a5, 68218
                  mul          sp, t4, a1
                  sub          a2, s2, s1
                  and          s0, s9, s2
                  rem          a7, t0, s5
                  divuw        s11, t2, a6
                  andi         s5, t2, 1998
                  mul          t5, s7, a3
                  mulw         t1, a3, sp
                  srliw        a6, t1, 21
                  remu         t0, gp, t0
                  divu         s10, s8, s6
                  auipc        a0, 427601
                  sll          a5, s11, t5
                  lui          a5, 653811
                  slti         s3, t1, -1306
                  add          s1, s7, a0
                  rem          s4, t3, s1
                  addiw        a5, sp, -135
                  ori          a2, tp, 141
                  nop
                  srli         t6, s4, 11
                  mul          t6, s6, t2
                  add          s5, t1, s5
                  mulh         gp, s1, s4
                  rem          s0, s5, a7
                  and          s9, a4, t6
                  sra          s0, s4, zero
                  divw         a1, a1, a2
                  sra          t6, t5, s11
                  srai         s3, t1, 6
                  divu         s5, a2, a7
                  mul          ra, s7, a3
                  slt          ra, s11, s3
                  divu         sp, t6, tp
                  or           a3, ra, s10
                  remw         zero, s2, s11
                  and          a3, s4, sp
                  srai         t3, a2, 51
                  srli         a5, s1, 22
                  srli         sp, t4, 9
                  srliw        s0, a7, 15
                  div          s1, t6, t3
                  add          a2, s5, t2
                  xor          s3, zero, tp
                  remuw        ra, t4, a7
                  addiw        s3, s1, 959
                  sraiw        a4, ra, 12
                  mul          a1, s11, a2
                  auipc        t1, 211990
                  sllw         s4, s5, t3
                  remw         t3, t2, t0
                  auipc        a5, 623001
                  remuw        gp, a6, s0
                  addi         t5, s5, 191
                  add          a5, a4, zero
                  sltu         a5, t0, a1
                  and          t6, s0, sp
                  slt          a6, gp, s0
                  mul          s10, a2, sp
                  sll          s3, s2, s1
                  mulw         s10, t3, s5
                  or           a6, a4, s9
                  addiw        s10, s1, 964
                  slli         t1, a1, 56
                  or           zero, s10, s8
                  mulw         s11, a3, a2
                  divu         a4, s3, zero
                  addiw        s3, s0, -1745
                  mulw         s4, a0, s10
                  sltu         s7, s5, s8
                  sub          a7, sp, tp
                  xor          s1, a0, t2
                  sra          t0, ra, t1
                  srlw         s11, s11, a7
                  xor          zero, a4, t4
                  divuw        s3, s7, gp
                  andi         s5, s3, -1125
                  slti         zero, gp, 1949
                  sllw         a7, s3, a6
                  srli         s5, gp, 62
                  nop
                  slliw        t0, a0, 4
                  subw         s2, gp, tp
                  lui          zero, 514310
                  addi         zero, t5, 805
                  sltu         a0, s3, t1
                  divuw        s9, a6, s10
                  subw         a2, t5, a3
                  remw         s2, s0, s2
                  slt          a0, t1, t0
                  ori          gp, a1, 892
                  remuw        t0, s10, a3
                  lui          s4, 879384
                  slti         sp, a2, -547
                  mulhsu       s0, a2, a2
                  lui          s11, 879336
                  slti         gp, s1, -471
                  slti         t0, gp, -1652
                  srli         a7, a5, 30
                  srai         s4, s10, 58
                  and          t6, ra, t3
                  remu         a5, a0, a0
                  mulhsu       zero, s4, t1
                  sltiu        a7, t5, 1083
                  mulh         a3, s6, s7
                  nop
                  div          a6, a5, s1
                  xori         t0, t3, 143
                  remu         s11, s0, a4
                  subw         s3, t4, ra
                  srliw        a5, zero, 13
                  xor          a3, a5, s0
                  mulhu        s3, a7, s11
                  mulw         s1, t6, gp
                  divuw        a2, a5, s10
                  sraw         s5, s1, a3
                  divu         t0, s1, a3
                  sraw         s7, s10, t6
                  auipc        t1, 478371
                  lui          s8, 296549
                  sub          s5, a1, t2
                  mulhu        a5, t0, t4
                  mulhsu       ra, ra, s5
                  sub          t0, t0, t4
                  sltiu        t1, ra, 772
                  sra          a6, t3, tp
                  addi         s4, s0, 658
                  ori          gp, zero, 769
                  srl          t0, a6, t1
                  addiw        a7, s7, 738
                  or           s7, a5, t2
                  addw         s4, zero, a3
                  mul          s3, s10, tp
                  slt          s2, s9, t1
                  sltiu        t1, a1, 1242
                  slt          s10, gp, a5
                  srlw         s5, t1, sp
                  slli         s3, t2, 62
                  subw         a6, t2, a5
                  mulhsu       s3, t4, a2
                  sltu         sp, a5, s10
                  remw         gp, t5, t4
                  mul          a0, zero, s11
                  xori         a4, s10, 274
                  mulh         t0, t0, a6
                  divu         zero, s5, s4
                  srlw         sp, s4, s0
                  addw         gp, t3, gp
                  mulhu        t0, zero, s1
                  srl          t1, a5, a1
                  slt          a1, s7, a3
                  and          ra, a4, t3
                  addi         zero, a3, -172
                  rem          a5, a1, s1
                  mulhu        a7, s0, s11
                  sll          a0, zero, s5
                  mulh         s8, t6, t2
                  srli         t0, t4, 8
                  slti         t3, s3, 681
                  mulh         a7, s7, s1
                  remuw        t0, a3, t5
                  sllw         s8, t6, a2
                  or           s2, a4, s8
                  sraw         s9, t0, s3
                  lui          t1, 676092
                  mulhu        a7, s3, a7
                  sltu         s11, t5, ra
                  mul          a3, s7, s0
                  nop
                  remu         t1, s8, s1
                  or           a7, s10, t5
                  and          a2, s0, t1
                  sll          a0, t2, a3
                  or           s0, s11, a2
                  mul          ra, s4, s4
                  srl          s10, s5, s7
                  nop
                  andi         a2, a3, 1931
                  ori          a5, s9, -1995
                  subw         a0, a2, a3
                  addw         s10, a5, a0
                  divuw        s5, t6, s11
                  slt          s4, t1, t2
                  addw         s0, s2, s8
                  mulhsu       sp, a4, s9
                  remu         t1, t4, ra
                  xori         s11, a2, -828
                  xori         s8, s1, 26
                  div          zero, t6, t3
                  sltiu        a4, s0, 1214
                  slli         t1, a3, 30
                  auipc        s8, 491836
                  sraiw        s5, a2, 12
                  mulhu        a0, a4, s9
                  lui          a3, 509865
                  remw         gp, a3, a7
                  srai         t3, a5, 45
                  divw         a2, a4, s11
                  mulhsu       t5, t3, a2
                  mulw         a7, t2, gp
                  divu         a5, a6, t5
                  sltu         s9, s10, t5
                  slti         s1, s6, 198
                  add          a2, t2, t3
                  slti         s5, gp, -532
                  sraiw        a7, t2, 24
                  remw         s5, s10, a1
                  addi         s10, s9, -1927
                  addiw        s11, ra, 522
                  auipc        gp, 435799
                  srli         s11, gp, 39
                  sltiu        t4, a7, -509
                  mul          a6, s11, a1
                  sllw         gp, s1, a4
                  sra          t6, tp, t5
                  addw         a7, s11, s8
                  divu         t1, s10, s7
                  mul          gp, t0, t0
                  srliw        a2, a5, 26
                  rem          s9, t5, sp
                  slt          a6, s8, s7
                  subw         t1, s4, s3
                  mulh         s10, a0, s3
                  andi         s2, sp, 529
                  auipc        s3, 829981
                  rem          s0, t4, s5
                  divuw        s7, a5, a6
                  divw         t5, s8, s9
                  or           t6, a1, t2
                  sltu         s0, t6, t1
                  andi         s1, a0, 1745
                  rem          a1, a4, s3
                  slli         zero, s2, 6
                  remu         a2, a5, s0
                  and          t4, s4, t1
                  srliw        s3, s9, 19
                  divu         t5, a5, s1
                  srl          s0, t6, s5
                  xor          s3, s7, a0
                  addi         a5, sp, -1148
                  slt          sp, a7, gp
                  remuw        zero, t6, t3
                  xor          s8, a6, t1
                  mul          t1, s6, t1
                  sll          a5, s8, s11
                  addi         ra, a3, 642
                  slli         ra, s0, 12
                  mulw         t1, ra, a5
                  sltu         s11, s9, t1
                  sub          gp, s2, a6
                  lui          s2, 626562
                  mulhsu       gp, a2, t6
                  rem          s11, gp, gp
                  srai         s4, a3, 31
                  srliw        s2, sp, 4
                  ori          s5, a6, 1355
                  sltu         t5, t5, a6
                  nop
                  and          s11, s1, a5
                  sraw         gp, zero, s9
                  sraw         s4, a0, ra
                  mulhsu       s1, a7, t4
                  sll          s9, a1, t2
                  srliw        t0, s7, 22
                  or           s1, a3, a2
                  srai         s8, a2, 57
                  divw         s7, s9, s6
                  remw         s0, t6, s4
                  or           t1, s1, a6
                  xor          t3, s4, t2
                  addw         t0, s2, s4
                  sllw         sp, a4, t5
                  sltu         gp, t5, a7
                  remw         a3, a4, s3
                  remuw        t1, s2, t2
                  or           s8, s10, t1
                  ori          a7, ra, -2010
                  mulw         s5, s8, s7
                  remw         a6, a6, t2
                  xor          s9, tp, a7
                  srai         s7, a7, 42
                  slliw        a2, a3, 31
                  divuw        s8, a6, s11
                  divuw        gp, t0, t6
                  sltu         t5, s11, t4
                  slliw        s8, a7, 19
                  lui          a4, 161413
                  sraiw        t5, s7, 30
                  mulhsu       a5, t0, zero
                  xor          t6, t2, a6
                  auipc        a2, 58275
                  auipc        zero, 769311
                  sraw         zero, s6, s0
                  slli         s8, s6, 45
                  sltiu        a3, t5, -1562
                  sra          s11, a0, a0
                  sltiu        s8, t0, -634
                  mulw         s4, a6, s4
                  ori          zero, t3, -101
                  auipc        s2, 875734
                  sltiu        s10, t2, -240
                  srlw         s8, t3, s4
                  sraiw        s11, s6, 26
                  mulh         a5, a3, s10
                  andi         a3, a2, -441
                  xori         s1, a2, 2039
                  sllw         s8, s4, s10
                  divu         sp, s2, ra
                  sll          a1, s6, ra
                  slti         t1, a7, -411
                  xor          t3, a1, t2
                  andi         s5, t1, -184
                  divw         a2, tp, t1
                  andi         t5, t6, -1578
                  mulw         t5, a4, s3
                  auipc        s1, 671005
                  srli         t0, a0, 57
                  sltiu        a1, a0, 1756
                  sltiu        t5, s0, -450
                  sub          a4, s2, t6
                  sra          t1, s11, s0
                  addw         a5, t4, s10
                  remu         zero, s9, s2
                  slli         t5, a7, 10
                  mulh         a7, a3, s4
                  ori          a0, sp, 1048
                  divw         s7, a5, s5
                  or           s0, s0, s8
                  xori         a1, a1, -1900
                  xori         a0, a3, 1906
                  slt          a6, t0, a0
                  div          t3, t0, s4
                  addiw        a1, a4, 1982
                  ori          a3, tp, -1354
                  sllw         s4, s3, t3
                  addiw        gp, tp, -620
                  ori          s4, t4, -1829
                  rem          zero, ra, s8
                  divu         s3, s8, s11
                  sraiw        a2, a2, 4
                  sltu         t1, s6, t6
                  sraw         s9, s7, s7
                  and          s10, s8, s7
                  divuw        gp, s3, a4
                  nop
                  sltu         t4, gp, a4
                  mulh         t3, a2, t6
                  divuw        s7, a7, a7
                  sub          t4, t1, s5
                  srai         s1, a6, 13
                  mulh         zero, gp, tp
                  slt          s7, a7, zero
                  divw         ra, zero, gp
                  addiw        a1, tp, 6
                  remw         zero, t2, t6
                  srliw        zero, s4, 12
                  xori         t5, a4, -1266
                  sraiw        a7, tp, 18
                  srai         s4, a6, 19
                  remw         s3, a5, s3
                  divuw        s3, gp, s3
                  divw         s1, tp, t0
                  rem          a5, t5, a2
                  xori         t3, a4, 1547
                  slliw        s0, ra, 14
                  subw         s7, s7, sp
                  and          ra, ra, s6
                  sll          s8, sp, a1
                  mul          s3, ra, s6
                  nop
                  sll          t1, a5, s3
                  srliw        a0, s10, 15
                  slli         s8, a7, 3
                  andi         a7, t1, 437
                  remuw        a1, s7, s9
                  sraiw        s3, a6, 24
                  addw         s7, sp, s8
                  remu         s0, s8, a2
                  sraiw        a3, a0, 29
                  slt          t4, s9, zero
                  addiw        a7, t6, -448
                  xori         s8, a2, 1327
                  sraiw        s5, t0, 7
                  and          s4, a0, s5
                  and          t0, a1, s7
                  mulhu        s4, s4, t4
                  sltiu        s7, a5, -1152
                  sra          gp, tp, s9
                  andi         a1, s4, -1055
                  addiw        a2, a2, 1693
                  addiw        a4, s1, 49
                  mulw         s4, s5, a6
                  mulw         t5, tp, a4
                  divu         t3, a3, s5
                  ori          s2, t2, -10
                  remuw        t1, a1, tp
                  slliw        ra, s4, 27
                  slt          t1, s0, a6
                  mulh         t3, a6, s7
                  andi         t0, a3, 826
                  mulh         s11, t3, s1
                  remw         a0, t1, zero
                  divuw        a3, ra, s9
                  addi         zero, s1, -388
                  slliw        s5, gp, 4
                  slti         zero, a3, -1910
                  ori          a6, s8, -1812
                  sraiw        t1, s2, 6
                  ori          a6, t3, 1046
                  sltu         a0, t1, t4
                  andi         s4, s1, -285
                  remu         a0, a4, s11
                  addiw        s5, t4, -835
                  sll          gp, s10, zero
                  remuw        a5, a2, t0
                  add          s1, tp, zero
                  srli         s10, t0, 34
                  rem          s11, s0, a6
                  srliw        a6, s10, 19
                  andi         s7, s8, -1182
                  divu         s9, s5, s10
                  srli         a5, t6, 46
                  remuw        s7, s8, t6
                  div          s0, s1, s0
                  add          gp, a5, s5
                  sub          t1, t3, s0
                  or           t6, a5, a2
                  andi         s5, s11, 1470
                  remw         a7, s3, s0
                  slt          a5, s9, t0
                  srliw        s3, s6, 2
                  mulw         sp, t0, s9
                  and          a3, t2, a7
                  divw         a2, s7, s8
                  sub          a6, s4, s7
                  sra          s0, a3, a1
                  or           a2, s6, a0
                  sra          s8, a7, a5
                  mul          t0, t4, gp
                  slliw        sp, a0, 2
                  mulh         s7, a1, a1
                  srli         s10, s0, 51
                  slliw        t0, s4, 6
                  or           s10, s0, s0
                  srai         s4, zero, 53
                  rem          s9, a6, t2
                  remu         s5, t1, sp
                  and          a2, s1, t3
                  mul          s3, s6, gp
                  mul          a2, a1, s3
                  nop
                  remw         s4, s9, a7
                  sub          s3, t1, sp
                  sltu         s4, s4, t0
                  remuw        t0, t6, t0
                  srai         t3, s8, 57
                  sub          a5, s7, s0
                  mul          gp, t0, s9
                  addiw        t0, s5, 1665
                  xor          s11, a6, t6
                  mulw         t1, a4, sp
                  slt          ra, s5, t5
                  mulhu        s11, s10, a4
                  auipc        t0, 719572
                  slt          t5, ra, a3
                  mulhsu       t6, a1, s3
                  ori          t6, a3, 375
                  mulhu        s5, a3, a1
                  srliw        s10, a2, 21
                  srl          s4, s6, a6
                  srlw         t0, s8, t1
                  add          a4, t5, a4
                  lui          s9, 849387
                  slt          a3, t6, s8
                  andi         a3, s1, 647
                  srlw         s2, s6, s5
                  nop
                  divu         t5, tp, s6
                  rem          s5, s9, s0
                  auipc        t1, 890962
                  divuw        ra, t2, s5
                  mulhsu       t4, a3, a7
                  sll          a7, a2, a3
                  remw         a0, a1, tp
                  auipc        s2, 867225
                  divuw        s9, sp, a7
                  srai         s5, s1, 48
                  remuw        gp, t3, a6
                  sltiu        gp, t2, 692
                  addi         s0, s4, 1007
                  sllw         t4, a7, sp
                  mul          t3, s8, ra
                  andi         a0, a4, 1751
                  or           sp, sp, a6
                  sltiu        s1, s9, -901
                  srliw        a6, t3, 31
                  srliw        t5, s4, 22
                  auipc        s5, 1007177
                  xori         s3, t3, 1891
                  slt          a3, a4, s0
                  mulhsu       sp, a2, s6
                  remuw        s11, s3, tp
                  remuw        s10, s4, t4
                  slti         s8, t4, -400
                  divuw        zero, s4, t0
                  nop
                  nop
                  srliw        t0, s3, 21
                  add          s8, s11, a3
                  slt          s1, s5, gp
                  mulhu        t3, gp, t5
                  addiw        s7, s6, 1593
                  rem          s7, a0, s7
                  srai         a2, a2, 61
                  slli         s2, sp, 49
                  add          t1, t2, t3
                  xori         s8, t2, -1477
                  sraiw        a2, a4, 27
                  remw         s2, a3, sp
                  divuw        t6, a0, ra
                  slt          a3, zero, s6
                  sraw         a4, a4, a7
                  srai         a6, ra, 39
                  lui          s11, 329156
                  srlw         sp, gp, t0
                  sllw         s10, s1, a3
                  srliw        a3, s0, 30
                  addiw        a5, s0, 2018
                  slliw        s1, s7, 12
                  slliw        s9, s8, 13
                  remu         t0, s9, t6
                  mulw         a7, a3, a5
                  remuw        t5, s11, a1
                  sltu         zero, t3, s4
                  addw         t5, s11, sp
                  subw         a5, a7, s8
                  mulw         t4, s6, s2
                  mul          s3, t1, a4
                  sraw         t5, a2, a6
                  slliw        s9, tp, 9
                  divu         s9, a3, s1
                  div          t6, s7, t3
                  auipc        s0, 803872
                  divu         s11, s5, zero
                  sllw         s9, t4, s6
                  sub          a7, a3, a1
                  sub          a5, sp, a5
                  andi         gp, s0, -1533
                  addiw        s9, s9, -1800
                  slli         s5, a5, 40
                  sra          gp, t4, a4
                  slli         a4, s4, 49
                  slliw        s0, s9, 25
                  addw         s7, t2, t3
                  ori          s5, t3, -1997
                  sraw         s0, s6, a5
                  remuw        s5, s1, sp
                  sraw         s9, s0, s8
                  slti         s8, tp, 1829
                  remuw        ra, s0, sp
                  or           t0, s4, a5
                  slt          a4, a7, s7
                  subw         a6, tp, sp
                  srli         a0, s3, 13
                  lui          s5, 106238
                  srliw        sp, s11, 7
                  slt          gp, t3, t1
                  rem          t5, a4, s5
                  sltiu        zero, a5, -174
                  divu         t4, a2, a1
                  mulw         t0, a0, s6
                  subw         s4, t3, s7
                  divu         s3, s3, t0
                  mulhu        a3, s7, s4
                  srai         zero, t6, 0
                  mulh         a2, t2, s0
                  slti         a0, a7, 2009
                  divw         a7, s1, ra
                  remuw        a6, a3, s7
                  addiw        t3, a4, -1274
                  divu         t6, a3, t1
                  divw         s3, zero, t6
                  divu         a7, t1, s9
                  rem          t3, a6, s10
                  and          zero, t5, ra
                  addiw        t6, sp, 1042
                  and          a1, t5, a5
                  sra          t1, s11, tp
                  slli         a6, zero, 58
                  or           a3, tp, a5
                  srai         s0, s5, 53
                  sraw         ra, s10, s10
                  div          a1, a3, tp
                  divw         a4, a4, s2
                  lui          a4, 683417
                  sub          s0, t3, s3
                  sra          s8, zero, s3
                  divw         t5, a5, s11
                  remu         s10, s5, s9
                  subw         a2, t5, a7
                  srlw         a6, s9, t4
                  remw         t3, sp, a7
                  mulw         t0, s1, t3
                  mulw         t4, gp, s7
                  slt          t1, s7, t2
                  or           s7, s4, s11
                  slti         s0, s4, -723
                  mulhsu       t0, a3, gp
                  sraiw        s11, sp, 14
                  or           s3, s10, a3
                  xor          s4, t3, a0
                  srliw        s3, t5, 24
                  srl          a2, tp, a1
                  subw         a7, t2, a2
                  divuw        s7, t4, a6
                  sltu         s8, s1, s6
                  nop
                  rem          s1, ra, ra
                  divw         t1, tp, s11
                  ori          t5, ra, 248
                  srli         a2, gp, 2
                  divuw        a3, s10, sp
                  rem          a4, ra, ra
                  ori          t1, a0, 479
                  mulhsu       s7, a2, s11
                  sltiu        t3, gp, -419
                  mulh         s0, s10, ra
                  add          s8, s1, a5
                  divw         s2, t6, s5
                  slti         t5, t6, 277
                  sub          s7, t6, s0
                  addiw        zero, t0, 1765
                  addw         t5, t1, tp
                  slliw        a2, sp, 19
                  srliw        s8, s0, 19
                  addi         s4, a3, -960
                  sub          s9, a3, s7
                  auipc        a2, 983966
                  srliw        s3, t0, 11
                  slti         t5, s6, 77
                  ori          a4, t0, -1975
                  slliw        zero, a5, 5
                  sll          s9, t0, s2
                  sltiu        gp, t2, 1753
                  andi         a0, a6, 984
                  addi         a0, t5, -302
                  andi         a1, t6, 1807
                  remuw        t4, s1, s10
                  div          s8, ra, t3
                  sll          a3, t0, t6
                  srl          s5, s2, s4
                  sllw         sp, sp, ra
                  rem          s8, tp, a5
                  andi         s11, t6, 1871
                  mulhu        s2, t3, t6
                  slli         a2, t2, 59
                  sub          s4, tp, a3
                  divuw        s8, a0, sp
                  slt          s11, s4, t1
                  srlw         t4, s2, s0
                  divw         ra, a2, a4
                  subw         s5, t6, t1
                  xori         t0, s6, 119
                  mulhu        zero, gp, ra
                  mulhsu       t0, t6, s5
                  subw         t4, s8, s0
                  slliw        s7, s8, 28
                  divw         s7, a4, sp
                  addi         s9, a6, 281
                  srliw        t6, s7, 23
                  srliw        s2, s6, 14
                  add          s10, t5, sp
                  xori         s0, a4, 1947
                  sub          a0, gp, t5
                  slt          s5, t4, t2
                  addi         t0, s0, -49
                  divu         a7, a1, sp
                  sub          s1, a4, s9
                  sll          t5, gp, s4
                  sltiu        s4, s9, 1149
                  or           t6, s9, t0
                  div          a5, t3, s7
                  add          s7, s4, t5
                  auipc        a7, 385420
                  nop
                  addi         t4, a2, 535
                  srai         s8, s0, 42
                  or           s5, s5, t2
                  sll          s10, zero, t1
                  addi         t0, a5, -594
                  andi         t4, s3, -902
                  xori         t5, s5, 1066
                  mulhu        t3, t1, sp
                  srli         s2, t5, 43
                  xor          s4, a4, s6
                  sltiu        s3, a6, -1022
                  srliw        s2, tp, 24
                  divuw        t5, s0, zero
                  srlw         s1, t5, s5
                  srlw         s1, t0, s6
                  add          s8, t4, a4
                  mul          s0, t5, s1
                  mulhsu       s3, tp, s9
                  remuw        a0, gp, s3
                  sub          s1, sp, a6
                  mul          t1, s2, t3
                  mulhu        t3, t5, s1
                  srl          t3, s0, a4
                  mulw         t5, s8, gp
                  slliw        t1, t4, 20
                  slt          t6, t2, s11
                  subw         a4, tp, t1
                  xor          t5, s5, t2
                  mulhu        a2, a2, s0
                  srlw         a6, a5, s0
                  sra          gp, s7, t1
                  addi         a5, a1, 29
                  addw         s1, s1, a3
                  divu         zero, t2, s11
                  remuw        s5, s5, s2
                  addiw        a6, s4, 200
                  mulw         a6, t6, t4
                  mulh         s1, s9, s10
                  add          s2, gp, a5
                  srai         a6, s4, 57
                  xor          s7, s9, a4
                  sllw         t4, tp, s10
                  subw         a1, s7, zero
                  auipc        a7, 385811
                  mulh         t4, a3, t5
                  sltiu        a7, s0, -1491
                  sltu         a3, a6, t0
                  slt          s7, s11, s0
                  subw         a4, t1, a2
                  mulw         a4, tp, s9
                  sra          sp, a5, s10
                  slli         s2, tp, 25
                  slli         a3, s1, 11
                  slt          s11, t6, a4
                  remw         a1, a4, t5
                  xor          a7, t6, tp
                  srli         t0, tp, 12
                  remw         a1, t1, a6
                  sltiu        t0, s8, -1684
                  rem          s0, a3, s3
                  sll          s3, t2, t2
                  mulhsu       s11, s2, s4
                  addiw        t0, t4, 1397
                  sra          a6, s0, a7
                  auipc        s4, 926916
                  add          a7, a2, t6
                  srai         t3, t0, 10
                  divw         a4, t5, t5
                  sltiu        s2, t4, -535
                  rem          zero, a3, a4
                  xor          gp, s9, t1
                  divuw        t1, t6, sp
                  nop
                  sll          t0, t0, sp
                  mul          a1, t1, s7
                  srl          t4, a3, t4
                  sraiw        s2, s2, 19
                  remuw        a3, a6, s6
                  remw         s7, tp, s6
                  remuw        a4, t0, s7
                  div          t4, s4, s7
                  auipc        s9, 839138
                  sra          s5, t5, a5
                  mul          ra, s1, s7
                  and          t4, a4, t2
                  sll          a4, tp, s11
                  slti         zero, a1, -101
                  remu         a7, t5, s11
                  mulw         s11, s11, sp
                  srli         s1, t6, 63
                  sra          t3, a6, t6
                  subw         t5, t3, s8
                  xori         t4, s11, 910
                  divuw        t5, s3, s9
                  sllw         s7, zero, a7
                  div          ra, a6, t0
                  slt          s9, t6, t3
                  srli         gp, t2, 54
                  xor          sp, s1, gp
                  sub          t4, a6, s2
                  addw         t1, s1, a3
                  sraw         t3, t2, s10
                  remuw        s5, s0, t1
                  sll          a5, s10, a0
                  slliw        s3, s3, 6
                  add          t1, a7, s0
                  sllw         s8, a5, s7
                  mulhu        gp, s9, tp
                  auipc        s5, 175883
                  subw         ra, s6, a1
                  sllw         s7, s3, s1
                  srli         s10, a7, 4
                  addiw        t0, ra, 1754
                  mulh         t3, s10, zero
                  mulhsu       s2, gp, a1
                  rem          s2, t5, a1
                  divuw        s2, a6, t4
                  or           a3, s11, a4
                  addi         s10, s4, 1475
                  mulw         gp, a5, s4
                  divw         t0, zero, a2
                  mul          s5, a4, tp
                  addw         s0, t5, s3
                  sll          a7, a5, a2
                  div          ra, a5, s5
                  sllw         ra, s2, a0
                  subw         t0, a6, a7
                  srlw         s4, s1, s9
                  add          s8, t0, zero
                  srliw        a3, tp, 25
                  sraw         s8, t0, t4
                  xori         s4, sp, -2012
                  addi         s2, t4, -1509
                  srai         t5, s6, 13
                  or           t4, t2, s10
                  divw         a0, a3, t2
                  divuw        a1, a7, a2
                  mulhsu       s9, t5, a6
                  sraiw        s7, zero, 21
                  slliw        a3, s10, 18
                  remw         gp, a7, a1
                  srlw         s1, a2, t5
                  rem          a6, t2, s8
                  mul          s0, a5, s6
                  srai         gp, ra, 46
                  or           s4, t1, a5
                  sraw         a1, t2, s0
                  remu         s10, gp, a0
                  xor          gp, t1, a3
                  addw         a0, t4, a0
                  or           t1, a7, s7
                  sllw         zero, a7, t3
                  slli         s9, a0, 14
                  or           t6, gp, zero
                  slli         t1, zero, 7
                  ori          s10, s2, 601
                  remu         t5, s1, t3
                  mulh         a5, t0, a4
                  remu         s2, gp, gp
                  slli         a3, a5, 26
                  addiw        sp, s6, -85
                  divu         a3, s0, tp
                  addw         s1, a4, s7
                  or           a5, t6, a2
                  slt          a4, a1, a6
                  subw         s11, s2, s10
                  slti         gp, a5, -507
                  sll          t1, s11, zero
                  divuw        t5, tp, a4
                  div          t0, tp, zero
                  sllw         a6, s1, s2
                  div          t6, a3, s2
                  mulw         s2, zero, s10
                  sra          t3, t1, a4
                  divw         s1, t6, t3
                  add          s0, t0, a4
                  and          a4, a1, ra
                  addiw        a7, ra, 163
                  xor          s10, a5, s9
                  and          a0, gp, s11
                  sltiu        a0, tp, -1729
                  mul          a2, s2, t0
                  srliw        t0, a4, 29
                  srliw        s8, zero, 26
                  xor          s7, t5, a5
                  slli         s4, t2, 38
                  slti         s8, a7, 1908
                  sltiu        zero, s1, 1889
                  subw         a6, s5, s7
                  div          a6, s5, zero
                  and          s11, s4, s2
                  divu         s4, s1, s2
                  slli         s9, a4, 28
                  sltiu        a0, t1, -222
                  srl          zero, t0, s3
                  sltiu        s5, t5, -991
                  ori          t6, s4, 1749
                  rem          a3, t0, t4
                  slti         a6, t3, -262
                  remuw        t4, s4, s8
                  sra          sp, tp, s1
                  srliw        s11, s9, 24
                  sltiu        s5, s6, 248
                  addiw        a5, s8, 37
                  xori         ra, s3, -142
                  srlw         s1, t4, a3
                  div          a2, s11, t4
                  srlw         t3, a6, t1
                  lui          a2, 874606
                  srai         t5, t3, 52
                  sltiu        sp, s10, 1838
                  srliw        t4, gp, 9
                  auipc        t5, 26262
                  srli         s9, ra, 4
                  sraw         t5, t6, sp
                  addw         s3, s3, t5
                  mul          s10, s5, t2
                  srl          a1, s2, s6
                  auipc        s2, 487594
                  lui          s10, 64544
                  sllw         a5, a2, s3
                  mulh         s8, t4, s3
                  srai         s2, t0, 61
                  div          s2, s6, s10
                  xor          s11, t4, t0
                  sub          s9, s3, ra
                  nop
                  mulhu        a0, a4, a3
                  sltu         s4, s2, s7
                  sltu         s7, s2, t6
                  mulhu        s2, t4, s9
                  sllw         a6, a3, a6
                  sra          a5, t1, s9
                  addw         t0, s5, a7
                  xor          a0, t1, a0
                  divuw        s8, s9, s3
                  nop
                  lui          a4, 662026
                  srlw         s7, s4, a4
                  rem          a4, s7, s11
                  or           a6, t2, a1
                  srliw        a0, s9, 27
                  mulhu        a4, s7, t1
                  lui          t0, 222021
                  sraw         t4, sp, a2
                  srl          s2, s4, a7
                  andi         t6, s0, -1027
                  divw         t6, gp, s0
                  slliw        s2, ra, 9
                  slt          a5, t1, tp
                  xori         t5, a7, -523
                  auipc        a5, 159536
                  rem          s0, a0, s9
                  sra          a2, t6, gp
                  sub          s3, t3, a1
                  mulw         ra, t0, a3
                  divu         t5, s2, ra
                  or           a2, s7, t6
                  sltu         a1, a5, zero
                  lui          t0, 566834
                  mulhu        s5, t2, s6
                  slt          a5, s4, s8
                  ori          t4, ra, 424
                  or           sp, a7, s7
                  sltiu        a2, t1, -1167
                  sra          a7, sp, gp
                  sraiw        a3, a1, 10
                  sltiu        t6, zero, 2028
                  sltiu        a2, t3, 553
                  xor          s2, s2, t2
                  sltiu        s1, zero, 1423
                  remw         sp, a3, s1
                  srl          t6, s9, s11
                  mulh         t1, t1, t6
                  xori         t1, s2, -1414
                  addi         s4, s4, 628
                  srli         t4, t6, 16
                  nop
                  srai         s10, t0, 38
                  sll          a5, t3, ra
                  divuw        ra, a0, s8
                  sll          sp, a6, s6
                  addiw        s5, s9, -1265
                  lui          s4, 256148
                  ori          t0, t4, -1922
                  sraw         s3, a7, s10
                  srlw         t1, ra, a2
                  mulh         a3, a3, s9
                  srli         a3, s2, 0
                  divw         s0, s1, t5
                  rem          sp, t4, t0
                  sraw         a1, t6, a2
                  sraw         s7, s9, t6
                  addw         s8, sp, s8
                  mulw         t0, s11, s11
                  sub          gp, s3, s11
                  srli         s7, t6, 16
                  andi         s8, t2, 1647
                  slli         s4, s2, 32
                  slti         a2, a0, -294
                  mulh         s0, s10, a3
                  addi         s1, tp, 435
                  ori          t1, a5, 767
                  slli         s3, s1, 1
                  slli         t4, t4, 51
                  add          a6, t2, s7
                  addi         s10, a2, 225
                  remw         t0, s8, sp
                  addw         t6, a2, t5
                  slliw        s4, sp, 31
                  remw         s0, t4, a0
                  xori         sp, s5, 576
                  remuw        sp, gp, gp
                  div          t1, s3, t6
                  addi         s8, a4, -1550
                  sra          s9, s7, a3
                  nop
                  mulhsu       a0, a3, a1
                  sra          a5, s5, s5
                  remuw        s7, s5, s1
                  slt          a1, t5, t4
                  slti         s9, a5, 1548
                  srai         t4, a2, 15
                  remuw        t4, s11, t4
                  srliw        a5, s9, 19
                  slt          sp, sp, tp
                  srl          t3, gp, s3
                  slti         a3, ra, -1759
                  sltu         s1, s3, t2
                  sltu         s1, s8, s4
                  slliw        gp, s1, 27
                  remw         t0, a1, s6
                  auipc        sp, 365484
                  sltu         s9, zero, s7
                  srai         t3, s2, 27
                  slti         s7, t4, -1867
                  lui          t1, 806893
                  mulhsu       a5, s11, t4
                  srai         s0, s9, 53
                  or           s0, t3, s8
                  mulhu        sp, t2, a6
                  slti         t0, s9, 160
                  sltu         a3, a3, s2
                  sltiu        s10, a7, -728
                  srlw         t3, s7, s10
                  slti         s10, t2, 601
                  divuw        s3, t2, a2
                  mulw         s1, s11, a1
                  sraiw        s7, a1, 25
                  sllw         s0, t3, s1
                  mulhu        t6, s1, t0
                  sltu         s8, a0, t6
                  remw         s7, t6, sp
                  sra          a2, ra, s2
                  addw         s7, t4, s7
                  sltu         t5, s7, s11
                  sltu         t1, a5, t3
                  remu         a3, t4, s2
                  srliw        t4, ra, 30
                  sllw         a0, s3, t0
                  divw         a7, s0, a6
                  auipc        gp, 669412
                  lui          s11, 208876
                  srli         a3, t3, 51
                  addi         a1, s11, 1136
                  sltu         s8, s4, a3
                  slti         s1, s10, -560
                  ori          a3, a3, 1301
                  add          a5, s8, s1
                  mulhu        a6, a2, s0
                  sll          a2, s7, s4
                  xori         a7, gp, -207
                  lui          a7, 563879
                  mulw         t1, ra, a2
                  andi         t0, s9, -2041
                  srlw         t0, ra, s1
                  nop
                  divw         t6, t1, gp
                  mul          a4, s9, s4
                  srl          s8, s1, s6
                  mulhsu       s4, sp, t6
                  ori          s5, ra, 189
                  and          s7, zero, sp
                  and          ra, s4, a1
                  sll          s8, s0, ra
                  subw         s1, t6, t3
                  sraiw        s0, zero, 1
                  xor          t4, s6, a4
                  mul          s7, t0, t3
                  sltu         s4, t4, t5
                  sra          a6, a4, t3
                  nop
                  or           a6, s7, t1
                  srliw        s5, s7, 9
                  andi         t6, a7, -497
                  rem          a6, ra, s4
                  xori         a4, t2, 1930
                  auipc        s4, 529773
                  addiw        s2, s4, 1490
                  slli         a4, t3, 19
                  sraw         sp, s8, s7
                  srlw         s7, t0, a6
                  or           s8, t6, s7
                  mul          s10, gp, a0
                  sltu         s9, t3, s0
                  mulhsu       s10, s5, t6
                  mulw         a4, s4, a0
                  ori          s2, tp, 229
                  mulhu        a1, s10, s6
                  mulhu        gp, t3, t4
                  sraw         s1, a4, t6
                  ori          a2, a0, -1354
                  slt          t1, s7, a1
                  mul          s8, t4, a2
                  and          s3, a1, a5
                  srai         s7, t4, 45
                  or           s9, gp, s11
                  mulh         s3, tp, t1
                  srlw         s11, s9, a7
                  sraiw        a5, tp, 30
                  srl          s5, s6, a5
                  andi         t3, a2, 730
                  and          t3, a7, t5
                  sra          a2, s2, a5
                  and          s8, a1, s0
                  div          t0, t6, gp
                  srli         a2, a3, 14
                  divu         a7, s0, t6
                  addi         ra, s0, 1757
                  xori         t5, t5, 1014
                  ori          t5, zero, 1723
                  xor          t1, gp, a3
                  addw         s5, s1, tp
                  divw         a5, a1, a7
                  sraiw        s9, s7, 16
                  srl          s11, a6, s4
                  mulhu        a1, s2, t3
                  srliw        a4, s7, 5
                  sraiw        zero, a4, 23
                  auipc        s4, 802038
                  sltu         s9, t3, a3
                  slli         s8, t6, 28
                  rem          ra, s10, s3
                  divuw        t3, a7, t0
                  ori          a4, s10, 856
                  sll          s10, a2, t4
                  slliw        s5, s1, 22
                  slli         ra, sp, 45
                  nop
                  or           zero, a4, a6
                  srli         t6, a7, 0
                  srliw        s4, s2, 13
                  rem          a4, t4, t5
                  sllw         s8, s5, t4
                  slti         s7, t1, 1045
                  divu         s7, s6, ra
                  sltu         s3, s8, t1
                  or           a6, a0, t5
                  sltiu        gp, a2, -1204
                  sltu         zero, s8, t3
                  srli         a7, a5, 35
                  sraiw        t6, ra, 17
                  remu         t1, a3, s6
                  divuw        a4, s1, tp
                  srlw         s9, a3, s3
                  divuw        a5, s1, s11
                  srai         s10, zero, 37
                  auipc        s3, 269554
                  div          t5, zero, s4
                  remuw        s8, t1, a0
                  sra          t1, t5, s8
                  or           s2, s2, a5
                  mulhu        s10, s5, t6
                  add          s9, s2, s7
                  mulhu        s7, t4, s8
                  srlw         t1, s1, t1
                  div          sp, t3, sp
                  remuw        t3, s6, a1
                  lui          s3, 334923
                  addi         s4, s11, 1269
                  mulw         a4, t5, s3
                  and          a4, t6, sp
                  srli         a6, a6, 31
                  slliw        a3, s11, 10
                  lui          s4, 211303
                  rem          a7, a6, t2
                  sraiw        s0, s7, 4
                  srlw         a7, t4, a4
                  mulw         s8, t5, a1
                  mulh         t5, a0, ra
                  sub          a3, t6, a3
                  remw         ra, t5, s10
                  mulhsu       s3, t5, zero
                  srai         s8, ra, 61
                  div          a6, a5, s9
                  addiw        s7, t1, 1122
                  xori         s11, s2, -1612
                  mulhu        s10, t1, s9
                  xor          s0, tp, a4
                  andi         t3, zero, 1728
                  subw         s9, a6, t3
                  sub          t1, s11, s1
                  sub          a6, a3, s8
                  srl          s5, t3, t5
                  xor          s10, s5, s11
                  sraiw        t5, s3, 29
                  srai         s0, s11, 49
                  slt          ra, s10, gp
                  sll          a6, s10, s0
                  sltu         t6, tp, a0
                  sll          ra, s9, sp
                  rem          a1, s3, s10
                  srliw        t6, t4, 14
                  mulh         s3, a0, t0
                  sltu         a0, s7, t1
                  xori         s9, s3, -1226
                  remw         a1, gp, s1
                  mulw         gp, t3, t2
                  lui          s7, 853905
                  add          s11, t2, t5
                  nop
                  sltu         t4, t2, t3
                  slt          t0, s3, s3
                  srai         ra, s5, 40
                  div          s4, s7, s1
                  ori          t6, a2, 1449
                  sll          s0, a1, a3
                  add          s11, s0, tp
                  sraiw        t5, t2, 25
                  add          t4, ra, a4
                  sraiw        a3, s4, 6
                  divuw        s11, t4, s9
                  andi         s2, tp, 1165
                  slti         s10, t4, -680
                  rem          t5, s5, t0
                  srl          a2, s10, s11
                  srli         a7, a7, 27
                  and          t3, t4, a1
                  srli         a5, a7, 17
                  sltiu        s11, gp, -406
                  and          a4, s6, s6
                  divw         s1, sp, sp
                  lui          a5, 359196
                  srlw         s8, tp, s7
                  mulh         s3, t2, a3
                  remu         ra, s9, t0
                  sltiu        s11, s8, 1349
                  slti         t5, t6, 1973
                  slli         t6, s5, 39
                  divu         t1, s3, s5
                  lui          s3, 476760
                  mulhsu       s8, t5, ra
                  sllw         s7, a5, ra
                  slti         s1, s2, -1073
                  srliw        s5, sp, 31
                  mul          s2, s0, s10
                  divu         s10, s9, t0
                  subw         t0, a6, s2
                  andi         t5, t1, -652
                  ori          s4, a6, 1087
                  andi         t3, a3, -578
                  divw         s2, s8, s9
                  srli         t0, s5, 23
                  slt          s2, a6, a4
                  srlw         gp, s0, s2
                  mulh         a1, s3, a3
                  subw         s7, s7, s9
                  mulh         s10, a3, a1
                  sraiw        t0, s6, 18
                  sub          a2, a5, a7
                  slt          s0, s0, s1
                  slli         s2, t2, 4
                  ori          s10, gp, -659
                  srli         a5, tp, 34
                  remuw        s10, s10, a3
                  or           zero, s1, a3
                  mulh         a7, s9, a1
                  mulh         a5, s5, t4
                  sraiw        gp, s5, 25
                  divuw        s2, sp, s10
                  remu         gp, t5, t6
                  andi         s8, s3, -1282
                  andi         s7, t0, 1655
                  divuw        t4, s10, s4
                  slli         t3, sp, 55
                  sraiw        s7, tp, 8
                  srliw        s5, t6, 0
                  remuw        a4, s0, t5
                  addi         ra, gp, -1593
                  srai         s4, s1, 57
                  add          s0, sp, a7
                  addi         a4, s10, 270
                  andi         a2, s2, 245
                  addw         a7, t6, a5
                  mulw         s2, sp, s8
                  sraw         a5, a7, s11
                  mul          s9, sp, zero
                  addi         t6, a4, -231
                  divuw        s3, s1, s7
                  sraiw        s11, ra, 20
                  divuw        s11, ra, s0
                  sllw         a6, a2, t3
                  sraw         s1, a6, s11
                  addw         a4, a1, s8
                  slli         s4, ra, 41
                  remu         s8, t2, t2
                  sllw         a6, a2, zero
                  slt          sp, s1, a1
                  xor          s2, t4, tp
                  lui          t4, 820350
                  mul          s7, a4, tp
                  lui          s4, 996989
                  mulhu        a1, t6, ra
                  addi         a4, a7, -1331
                  srl          s11, s6, a4
                  mulh         s7, sp, s5
                  sltu         sp, s5, a4
                  mulhsu       s0, s8, s3
                  slli         sp, t2, 10
                  rem          s0, s9, gp
                  sll          s11, s0, zero
                  addiw        t0, a4, -1
                  lui          t3, 419653
                  sraiw        zero, s2, 20
                  slti         a4, sp, -1869
                  sraw         s5, t4, a1
                  mulh         s4, t5, s10
                  sllw         a5, s1, t4
                  xori         s7, s5, 1451
                  sub          a3, t2, zero
                  mulh         t6, s8, zero
                  and          s8, gp, t1
                  slti         s10, a2, 203
                  rem          t0, a3, a6
                  sll          t4, a4, t2
                  mulhsu       t0, zero, t0
                  sraiw        s10, s6, 2
                  mul          gp, s8, s9
                  addiw        t6, s5, -1713
                  sltu         s3, a6, ra
                  slli         ra, a6, 4
                  divu         s5, t4, a2
                  divu         s1, t6, a0
                  nop
                  andi         s3, t6, -1284
                  auipc        t1, 828086
                  xor          a7, a4, t6
                  slti         zero, a5, -1520
                  mulh         t0, gp, a4
                  slti         t5, s4, 1966
                  div          s5, s4, t1
                  mulhu        s11, gp, gp
                  mul          s4, t0, s3
                  mulw         t5, s11, s0
                  auipc        a1, 130520
                  mulw         t4, t5, s4
                  mulw         t6, sp, a3
                  slti         a1, t1, 1346
                  sub          a3, t2, ra
                  subw         a5, zero, t3
                  remu         t1, zero, s9
                  addw         s10, a7, a0
                  slti         s0, t1, -774
                  mulw         s9, s2, zero
                  remw         a6, t5, s5
                  srliw        a5, s1, 20
                  nop
                  sllw         a2, ra, s4
                  mul          s8, a7, s10
                  divw         a3, s3, a1
                  srliw        gp, sp, 19
                  mul          a4, s6, s9
                  sltiu        t6, s9, 879
                  divw         a1, s1, t0
                  xori         t5, a3, -829
                  subw         s5, t4, t0
                  mulw         s8, a3, s1
                  lui          a7, 75534
                  addi         a4, s6, -891
                  remu         sp, s1, s0
                  slti         s4, a3, 1352
                  sub          s7, s11, s3
                  lui          t5, 641671
                  mulw         a3, s4, s10
                  nop
                  mulh         s8, s3, zero
                  srliw        t0, gp, 10
                  xori         s9, s7, -1040
                  sltiu        t4, t6, -23
                  mulhsu       a7, s11, sp
                  div          s0, a3, a6
                  srai         s10, a0, 12
                  srai         s2, t2, 21
                  slti         a5, s8, 1783
                  add          t4, s8, sp
                  ori          a6, a5, 1729
                  addw         t4, a2, a7
                  mulh         s10, a3, s11
                  sltiu        s1, s10, -1209
                  xori         s0, a3, -1026
                  srlw         t0, s9, gp
                  srl          s10, t1, ra
                  remu         t4, s6, a5
                  addiw        s7, a0, -812
                  add          s5, s11, s8
                  srliw        s10, tp, 20
                  remw         t0, a5, s7
                  mul          a3, s6, s5
                  subw         s10, sp, t0
                  srlw         t5, s4, s5
                  sub          s8, s6, t1
                  mulh         s10, s6, t0
                  srai         t1, zero, 59
                  auipc        t5, 330885
                  addw         gp, t2, t0
                  andi         a3, zero, -626
                  mulhsu       t0, t2, s3
                  xor          s11, sp, s6
                  mulw         a1, t2, s11
                  and          gp, a2, s6
                  addw         a6, s7, s8
                  la x7, test_done
                  jalr x0, x7, 0
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
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x3f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  addi x22, x22, -4
                  sd  x4, (x22)
                  add x4, x22, zero
                  addi x4, x4, -256
                  sd  x1, 8(x4)
                  sd  x2, 16(x4)
                  sd  x3, 24(x4)
                  sd  x4, 32(x4)
                  sd  x5, 40(x4)
                  sd  x6, 48(x4)
                  sd  x7, 56(x4)
                  sd  x8, 64(x4)
                  sd  x9, 72(x4)
                  sd  x10, 80(x4)
                  sd  x11, 88(x4)
                  sd  x12, 96(x4)
                  sd  x13, 104(x4)
                  sd  x14, 112(x4)
                  sd  x15, 120(x4)
                  sd  x16, 128(x4)
                  sd  x17, 136(x4)
                  sd  x18, 144(x4)
                  sd  x19, 152(x4)
                  sd  x20, 160(x4)
                  sd  x21, 168(x4)
                  sd  x22, 176(x4)
                  sd  x23, 184(x4)
                  sd  x24, 192(x4)
                  sd  x25, 200(x4)
                  sd  x26, 208(x4)
                  sd  x27, 216(x4)
                  sd  x28, 224(x4)
                  sd  x29, 232(x4)
                  sd  x30, 240(x4)
                  sd  x31, 248(x4)
                  add x22, x4, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x2, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x2, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x1
                  beq x2, x31, instr_fault_handler
                  li x31, 0x5
                  beq x2, x31, load_fault_handler
                  li x31, 0x7
                  beq x2, x31, store_fault_handler
                  li x31, 0xc
                  beq x2, x31, pt_fault_handler
                  li x31, 0xd
                  beq x2, x31, pt_fault_handler
                  li x31, 0xf
                  beq x2, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x2, _start
                  sd x0, 0(x2)
                  sd x1, 8(x2)
                  sd x2, 16(x2)
                  sd x3, 24(x2)
                  sd x4, 32(x2)
                  sd x5, 40(x2)
                  sd x6, 48(x2)
                  sd x7, 56(x2)
                  sd x8, 64(x2)
                  sd x9, 72(x2)
                  sd x10, 80(x2)
                  sd x11, 88(x2)
                  sd x12, 96(x2)
                  sd x13, 104(x2)
                  sd x14, 112(x2)
                  sd x15, 120(x2)
                  sd x16, 128(x2)
                  sd x17, 136(x2)
                  sd x18, 144(x2)
                  sd x19, 152(x2)
                  sd x20, 160(x2)
                  sd x21, 168(x2)
                  sd x22, 176(x2)
                  sd x23, 184(x2)
                  sd x24, 192(x2)
                  sd x25, 200(x2)
                  sd x26, 208(x2)
                  sd x27, 216(x2)
                  sd x28, 224(x2)
                  sd x29, 232(x2)
                  sd x30, 240(x2)
                  sd x31, 248(x2)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
                  mret

load_fault_handler:
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
                  mret

store_fault_handler:
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x4, x22, zero
                  ld  x1, 8(x4)
                  ld  x2, 16(x4)
                  ld  x3, 24(x4)
                  ld  x4, 32(x4)
                  ld  x5, 40(x4)
                  ld  x6, 48(x4)
                  ld  x7, 56(x4)
                  ld  x8, 64(x4)
                  ld  x9, 72(x4)
                  ld  x10, 80(x4)
                  ld  x11, 88(x4)
                  ld  x12, 96(x4)
                  ld  x13, 104(x4)
                  ld  x14, 112(x4)
                  ld  x15, 120(x4)
                  ld  x16, 128(x4)
                  ld  x17, 136(x4)
                  ld  x18, 144(x4)
                  ld  x19, 152(x4)
                  ld  x20, 160(x4)
                  ld  x21, 168(x4)
                  ld  x22, 176(x4)
                  ld  x23, 184(x4)
                  ld  x24, 192(x4)
                  ld  x25, 200(x4)
                  ld  x26, 208(x4)
                  ld  x27, 216(x4)
                  ld  x28, 224(x4)
                  ld  x29, 232(x4)
                  ld  x30, 240(x4)
                  ld  x31, 248(x4)
                  addi x4, x4, 256
                  add x22, x4, zero
                  ld  x4, (x22)
                  addi x22, x22, 4
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
