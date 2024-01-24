.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x14, 0x8000000000001105
                  csrw 0x301, x14
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x101800
                  csrw 0x300, x14 # MSTATUS
                  li x14, 0x0
                  csrw 0x304, x14 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0xb8277680
                  li x3, 0xdf44a4ce
                  li x4, 0x80000000
                  li x5, 0xf6b6706d
                  li x6, 0xa77f265e
                  li x7, 0x0
                  li x8, 0xf50eceaa
                  li x9, 0xff220a3e
                  li x10, 0xf5b3e32b
                  li x11, 0x0
                  li x12, 0xf772ff2e
                  li x13, 0x3
                  li x14, 0xdd8012cb
                  li x15, 0xa2d12c55
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x3
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x2f7edb6e
                  li x24, 0xe
                  li x25, 0x80000000
                  li x26, 0x55140fba
                  li x27, 0xb
                  li x28, 0x80000000
                  li x29, 0xf448af48
                  li x30, 0xff784e3e
                  li x31, 0x4fa0a1af
                  la x16, user_stack_end
main:             ori          s8, s2, 80
                  lui          sp, 292652
                  mulw         s5, a0, a2
                  srai         zero, a1, 0
                  slliw        ra, t5, 22
                  sraiw        t5, s6, 24
                  sraiw        sp, a2, 25
                  and          s5, t5, s5
                  sltu         a2, s1, t2
                  addw         s8, s2, s3
                  xori         t1, s3, 1047
                  sraiw        t4, t3, 24
                  xor          a5, s7, s7
                  srli         t2, t2, 20
                  srli         t2, s5, 5
                  and          s4, a7, t4
                  slli         t1, s11, 28
                  addiw        s8, t5, 225
                  addiw        a3, a5, -1517
                  slti         t4, s11, 1282
                  subw         zero, s1, t2
                  andi         a2, t3, -506
                  sllw         tp, t4, a4
                  sraw         ra, a4, a2
                  sll          zero, s8, ra
                  auipc        s11, 181663
                  ori          s10, a1, 866
                  srai         s4, t4, 21
                  ori          s4, t2, 1732
                  mulhu        t6, s7, s9
                  remw         sp, s1, t5
                  lui          a3, 659891
                  sllw         a1, s5, t2
                  mulhsu       s4, s8, s3
                  mul          s3, t6, a1
                  srlw         s5, s1, t0
                  remu         s5, s2, gp
                  and          t2, t2, gp
                  addi         s3, gp, -1999
                  slti         s5, t3, 319
                  xor          s7, s11, gp
                  divuw        ra, t0, s4
                  subw         s8, s7, a3
                  subw         a3, s1, s1
                  andi         t3, a6, 105
                  divuw        s11, t3, tp
                  divuw        t1, s4, t5
                  or           t4, t1, t1
                  mul          s5, t2, s5
                  sraw         s3, s10, a1
                  addw         s11, ra, t5
                  auipc        ra, 13282
                  divuw        t5, gp, ra
                  remw         t1, a5, a7
                  ori          s7, a5, 1248
                  or           s8, s6, s5
                  andi         s5, ra, -1590
                  remuw        a1, s2, s0
                  addiw        s2, sp, -1389
                  sra          s6, a6, t0
                  subw         t2, sp, t6
                  sllw         a0, s3, s5
                  sraiw        t1, a5, 19
                  sltiu        sp, t3, 118
                  slli         t3, a2, 11
                  sll          a5, tp, t3
                  mul          s7, s0, a1
                  sraiw        s5, t5, 10
                  remw         s3, a2, a7
                  slti         s5, s9, 1871
                  addi         s7, a5, -166
                  sra          s5, s0, s11
                  slliw        t3, a0, 4
                  andi         s6, s6, 107
                  nop
                  addiw        s3, t6, 1663
                  addiw        t1, t0, -827
                  sllw         s2, a2, s0
                  addi         ra, s7, 1248
                  slliw        t3, s2, 22
                  srl          s6, a6, s9
                  remw         s3, s7, s2
                  or           t1, s1, zero
                  subw         sp, s1, a4
                  sllw         a3, t2, a0
                  rem          s9, a3, t3
                  addiw        sp, t1, 1757
                  rem          s9, tp, a0
                  addiw        sp, tp, -1884
                  divu         t2, tp, s10
                  srai         t0, s6, 44
                  slli         a3, s0, 11
                  sub          s9, t3, t1
                  mulhsu       s10, a5, s9
                  remw         a1, s3, a3
                  remuw        a3, a2, s9
                  and          zero, s10, a3
                  sra          a0, s6, a4
                  slti         a5, a4, -1401
                  xor          a3, zero, s9
                  srliw        s6, s4, 28
                  srli         s3, t5, 38
                  xori         t1, t4, -403
                  srliw        t3, s5, 20
                  xori         s2, s8, -10
                  sltu         a4, s4, ra
                  auipc        t0, 895847
                  mulh         s8, t2, s6
                  auipc        zero, 98483
                  sraw         s6, s4, s4
                  sllw         a0, s8, s7
                  add          a2, zero, a5
                  or           s6, s9, s3
                  divu         zero, a5, s4
                  divw         t3, s4, sp
                  sraiw        a2, s9, 1
                  and          s4, s7, s4
                  srli         s8, s2, 22
                  sraiw        a3, s11, 2
                  srai         a5, t2, 40
                  sltu         tp, s0, s1
                  div          a1, t0, t6
                  xor          a3, tp, a2
                  add          t6, a0, a5
                  auipc        sp, 817565
                  ori          t0, a1, 1590
                  srliw        t6, s9, 31
                  div          sp, s5, zero
                  sllw         sp, a1, t4
                  sub          t4, t4, s8
                  sll          s2, s1, t2
                  divw         s3, t1, s6
                  remuw        s4, a6, s9
                  slt          a1, t4, a2
                  sllw         s2, s4, s10
                  mulh         s5, s5, t0
                  andi         s2, s6, -947
                  sraiw        a1, s6, 19
                  sub          s6, s1, s0
                  srlw         t1, s10, s7
                  remuw        tp, gp, s11
                  or           sp, a0, s10
                  xor          tp, t4, s6
                  lui          a3, 269387
                  sll          s9, s9, tp
                  lui          s10, 344768
                  srlw         sp, s10, s10
                  slli         s3, t5, 51
                  sltu         a0, a0, t6
                  mulw         a3, s6, a2
                  divu         s4, s2, s7
                  ori          s9, a2, -579
                  slt          a3, t2, s9
                  div          s11, t1, s11
                  addi         s0, s11, 1830
                  divuw        s2, s11, tp
                  divuw        s6, a1, s5
                  add          t6, a7, s6
                  auipc        t1, 518282
                  rem          a1, s7, s0
                  slti         t5, a4, 885
                  mul          a1, s4, s3
                  addw         t1, tp, t4
                  add          sp, t4, t2
                  addiw        t1, a0, -548
                  rem          t2, t1, s9
                  srl          a2, a2, ra
                  and          sp, s9, t5
                  mulhsu       s9, t0, s8
                  xori         a3, t2, -363
                  remuw        a3, s2, s7
                  add          s5, s11, s8
                  mulh         s4, s11, a5
                  addw         s0, a7, gp
                  addi         a0, a0, -928
                  sltu         s10, s5, s10
                  subw         s10, a3, a2
                  slliw        a4, tp, 24
                  remw         s8, sp, a5
                  slti         a1, a0, -245
                  divw         t3, s0, t0
                  and          sp, ra, a4
                  slt          ra, t3, t4
                  or           s9, s4, a7
                  slliw        s11, a3, 14
                  ori          a3, s3, 957
                  and          s5, sp, zero
                  add          s8, a1, a1
                  andi         s7, tp, 869
                  subw         s6, s0, s0
                  sra          a4, t1, gp
                  slliw        ra, a5, 6
                  rem          gp, ra, t5
                  mulw         s10, tp, t0
                  mulh         a1, t4, gp
                  sraw         t3, s0, zero
                  rem          t4, s9, s2
                  remw         s0, a2, ra
                  sltu         s0, a7, t2
                  sraw         t5, s4, s6
                  slti         a3, s7, 1792
                  nop
                  rem          s7, a7, a5
                  slt          t5, s10, t5
                  add          t4, s9, a0
                  sltu         t5, zero, t2
                  sraiw        s10, a4, 27
                  rem          s7, a5, a6
                  mulhu        t1, s11, t6
                  srliw        s5, t1, 28
                  mulw         s10, s9, zero
                  sraiw        s7, a1, 13
                  andi         a2, t1, -711
                  div          ra, gp, s1
                  addw         a0, t2, s8
                  sll          s9, a0, a1
                  sll          t4, s3, s5
                  slti         s5, a5, -1694
                  auipc        a4, 261470
                  andi         s6, t3, 1471
                  divuw        a2, s11, a3
                  sraw         t6, t1, s3
                  srliw        s9, s2, 27
                  xori         a5, zero, 1018
                  lui          s0, 919689
                  sra          s4, t4, s11
                  rem          a5, a0, s3
                  sltu         s5, s8, sp
                  mulh         t4, ra, s0
                  sraiw        s3, t4, 22
                  addi         s9, a6, -1835
                  or           t4, a2, a5
                  mulw         s4, sp, s9
                  sltiu        s4, a0, 1413
                  rem          ra, a5, s10
                  srl          t3, a6, s5
                  remuw        tp, s6, s1
                  nop
                  div          t3, t5, s7
                  nop
                  mulhu        a0, s0, s10
                  slliw        t6, zero, 14
                  mulhsu       s0, s8, s5
                  nop
                  mulhsu       ra, s9, sp
                  slliw        tp, a0, 26
                  srl          t5, sp, t5
                  andi         gp, s11, -232
                  mulhsu       s11, sp, s5
                  remuw        tp, a2, a7
                  mul          a3, ra, s10
                  sub          a3, s2, a3
                  srlw         a3, t3, t1
                  divw         t4, t1, ra
                  mulhu        t0, s8, zero
                  slliw        s3, a3, 21
                  or           s2, sp, s1
                  sltiu        t6, s6, 291
                  sll          a1, t1, gp
                  divuw        a0, a6, s1
                  sub          s9, s2, ra
                  srl          s3, a1, s0
                  mulw         t5, t2, s0
                  subw         a3, ra, s5
                  slt          tp, s6, t4
                  remw         a3, a0, a4
                  mulhsu       s7, a5, a6
                  andi         s3, a3, 1939
                  slli         a0, s11, 7
                  sllw         a0, a5, s4
                  ori          t6, t6, 1447
                  slt          a3, s8, t4
                  mulw         t4, t2, s5
                  addiw        s3, s9, 1725
                  mulh         a3, t6, s10
                  mulw         sp, s6, t1
                  lui          s3, 799683
                  rem          s6, t0, a5
                  srlw         a1, t5, a6
                  srlw         t6, s4, a7
                  srai         t0, t3, 54
                  srlw         a1, a2, a6
                  mulhsu       s6, a3, s0
                  sraiw        s0, a3, 13
                  srl          sp, t5, a5
                  srl          s0, sp, a2
                  remu         tp, s5, s11
                  srai         s0, gp, 35
                  addiw        t3, s6, -2029
                  ori          a5, s10, -1941
                  ori          a0, s7, -1713
                  addw         s8, t1, a7
                  auipc        s9, 311867
                  nop
                  srlw         t5, s2, ra
                  divw         tp, s5, ra
                  divw         t5, t6, a0
                  srl          s3, t3, s9
                  auipc        s3, 447092
                  slli         a3, t2, 30
                  srlw         a3, ra, s5
                  auipc        zero, 346582
                  srai         gp, s6, 22
                  sltiu        a4, sp, 1693
                  sraw         a2, t6, t0
                  sraw         s5, s1, a5
                  mul          a4, a3, a3
                  lui          a5, 988136
                  or           t5, a2, t1
                  mulhu        t6, a5, a5
                  add          a5, a3, tp
                  srl          a0, t2, s7
                  ori          tp, s4, -1611
                  sltu         s9, s6, s9
                  xori         sp, a0, -985
                  mulh         s4, a1, a0
                  srl          s3, t1, t2
                  mulw         a0, zero, t1
                  mulhsu       s3, a6, s0
                  rem          gp, ra, ra
                  xori         a1, s11, 152
                  auipc        t0, 868896
                  lui          s9, 752828
                  sraiw        s4, s7, 26
                  sltu         s5, t0, ra
                  slliw        a0, zero, 26
                  addiw        t4, s11, 1339
                  ori          a2, a2, 1456
                  auipc        gp, 581868
                  srai         a1, s10, 43
                  sub          s11, s5, s3
                  div          a2, t4, t4
                  remuw        tp, t4, s6
                  srli         a1, a1, 54
                  xori         t3, a7, -1331
                  sllw         t1, s9, s8
                  mulhu        t4, s9, s3
                  slli         s9, t3, 51
                  srli         a5, a6, 59
                  auipc        s3, 192913
                  divuw        s11, t2, t5
                  xori         ra, t2, -1486
                  divw         a3, a1, t4
                  or           a1, t3, a4
                  remuw        zero, s7, t6
                  divuw        a1, tp, sp
                  srli         s8, tp, 1
                  slliw        t3, s9, 3
                  div          ra, t6, s11
                  mulhu        t1, a2, t4
                  divw         s3, t2, s3
                  ori          s11, s11, -1423
                  remw         t3, s5, s0
                  subw         a2, a0, s2
                  addiw        s4, s9, 1095
                  add          t4, s8, zero
                  srli         t5, s6, 25
                  mul          t3, s10, s4
                  mul          a3, a1, a1
                  nop
                  xori         t2, a3, 476
                  divuw        a1, s0, t5
                  sra          gp, a0, t5
                  sra          gp, s1, s3
                  slli         a3, a0, 28
                  lui          a3, 95329
                  slt          a2, a1, t6
                  xori         s2, s8, 467
                  slt          a5, s1, sp
                  sltiu        s9, s7, -1535
                  divuw        s6, t4, s4
                  sltu         sp, a6, a0
                  sltiu        t6, a5, -1985
                  lui          zero, 845576
                  sllw         s3, a2, s9
                  remw         ra, s5, s8
                  andi         s2, s11, 252
                  srlw         s9, a3, s3
                  sll          a5, s9, t5
                  lui          t0, 532241
                  xor          gp, a1, a5
                  addiw        s2, a4, 1716
                  srli         s10, s2, 60
                  sraiw        gp, a6, 2
                  divw         t3, s4, s6
                  add          ra, t0, tp
                  sra          s0, t5, gp
                  slt          t1, tp, a5
                  slt          t4, s2, s10
                  sub          s2, t5, s0
                  subw         s3, s8, t5
                  sll          a3, s10, s3
                  sltu         s5, a4, s3
                  auipc        s7, 921276
                  auipc        s6, 544516
                  div          s6, s0, t4
                  sllw         a3, s4, t6
                  remu         a4, a7, s6
                  sll          sp, a4, t6
                  andi         a1, sp, 1631
                  slti         t3, a6, 889
                  and          ra, sp, s1
                  add          s3, a7, ra
                  sll          s8, s10, a7
                  slti         zero, s1, -6
                  sltiu        s4, s11, -123
                  sraw         s4, s3, s0
                  lui          t0, 310108
                  mulhsu       a1, sp, tp
                  srl          s5, s2, t1
                  sltu         sp, a4, t3
                  xori         s3, zero, 227
                  sra          s7, a2, s5
                  xori         t3, t4, 1238
                  slliw        s8, s10, 25
                  srlw         a1, s2, s11
                  mul          s10, t0, s8
                  srli         a4, t6, 29
                  sllw         a2, s8, a2
                  sraw         s3, t3, s6
                  srl          a3, s11, t0
                  sraiw        tp, s3, 12
                  slliw        t3, ra, 16
                  srlw         s8, s10, a2
                  slt          a0, a4, t0
                  addw         t2, t1, s10
                  and          t6, t4, t2
                  lui          s11, 505229
                  remuw        tp, s7, s0
                  and          t4, t5, a4
                  srli         t6, s1, 35
                  addw         a1, s7, t1
                  sraw         s11, s11, s1
                  mulhsu       t3, s1, a1
                  slli         a5, a7, 52
                  remuw        a0, a3, s5
                  mulw         t3, s10, s9
                  addiw        s8, s8, 476
                  slti         t4, s2, -486
                  sllw         s7, a3, a5
                  sltiu        s6, s8, 944
                  ori          a2, a4, 1277
                  slliw        a2, t0, 13
                  mulh         t4, gp, gp
                  mulw         s3, t2, s2
                  addiw        t3, s4, 1896
                  and          s5, t0, s3
                  divw         a5, ra, zero
                  div          s8, a0, zero
                  rem          a1, s7, s8
                  mul          t5, s2, t4
                  andi         t6, s7, 393
                  remw         a0, t6, s4
                  sra          a0, s9, s11
                  sltiu        gp, a3, 1045
                  sltiu        gp, s2, -1569
                  or           t3, s5, t1
                  sltiu        a2, s3, -1452
                  sll          t2, ra, zero
                  sltu         t3, a3, s6
                  srliw        t2, t0, 7
                  andi         t1, s3, 2024
                  lui          t3, 289248
                  srai         a0, a7, 28
                  mulhsu       t1, t2, t0
                  slli         s3, a5, 4
                  sraiw        sp, t2, 9
                  mulh         s0, s5, s8
                  and          s4, t1, s4
                  mulw         a0, s9, s10
                  lui          a3, 633972
                  mulw         t0, zero, t0
                  remw         t3, a6, t5
                  auipc        s3, 196684
                  sll          zero, a6, a3
                  slli         ra, a6, 21
                  sltiu        sp, t3, 2042
                  sra          zero, t2, a0
                  addiw        a5, t5, -939
                  srlw         s10, s3, t3
                  sltiu        s8, gp, 1377
                  mul          s8, s11, s10
                  slt          a4, a0, a7
                  addiw        zero, ra, -191
                  addiw        s11, a7, 994
                  mulhsu       a0, s0, zero
                  mulhu        s3, t5, s0
                  slti         a2, s8, -387
                  slti         zero, t4, -1895
                  srlw         s7, s2, zero
                  auipc        s0, 335014
                  srai         a4, s10, 19
                  addw         s0, s9, s7
                  mulhsu       ra, s10, t1
                  addw         zero, a3, s7
                  mulhsu       a0, s0, s10
                  mulw         a0, s7, t4
                  subw         a3, zero, gp
                  sraiw        tp, t4, 9
                  auipc        s3, 855835
                  divu         a2, a6, t1
                  remw         a3, a3, s5
                  mulh         tp, tp, s9
                  srlw         tp, a4, tp
                  srlw         t1, a1, a4
                  xori         s9, t6, -194
                  remu         s8, a4, t6
                  slliw        s9, s0, 11
                  srliw        s4, t2, 9
                  sra          a2, t4, s7
                  div          t4, a5, s9
                  sra          a2, zero, s1
                  addi         a3, s7, 1750
                  srli         s2, zero, 40
                  subw         zero, t4, a5
                  sub          ra, t2, a6
                  srliw        a3, t3, 19
                  div          a0, t3, t6
                  slliw        s4, t1, 31
                  remu         ra, t1, t3
                  div          t1, zero, tp
                  srlw         a3, sp, sp
                  sllw         s7, t4, s0
                  or           s6, t0, t0
                  xor          s6, zero, t2
                  mulh         tp, a1, t5
                  ori          zero, tp, 757
                  or           s7, sp, a4
                  nop
                  addiw        s3, a3, -1490
                  srli         a4, a1, 20
                  addiw        a0, s10, -247
                  srl          a4, a7, a3
                  srli         ra, sp, 0
                  div          s9, a0, sp
                  divuw        a1, a5, t5
                  lui          tp, 610856
                  addw         s5, s7, s10
                  addiw        tp, t4, -1397
                  mulh         a4, a5, tp
                  remuw        s3, t1, s4
                  sub          zero, s1, a5
                  remw         s6, a1, sp
                  divu         t1, s0, t3
                  slti         s5, a4, -10
                  mulhu        s9, s10, s10
                  mulhsu       t1, s0, t2
                  remuw        s9, s0, t6
                  ori          sp, s8, 1659
                  remuw        a1, t4, a0
                  srlw         a3, s5, s6
                  slt          s0, s8, t6
                  sll          s11, t4, gp
                  ori          s3, s10, -1322
                  addw         t5, a3, tp
                  subw         t2, t1, a5
                  auipc        a1, 517071
                  slli         t1, a6, 28
                  sub          t4, a5, s5
                  auipc        s4, 980908
                  slliw        s10, s7, 26
                  divw         a0, sp, a5
                  div          a0, t4, ra
                  mulhu        gp, sp, s1
                  sll          t5, gp, t1
                  andi         tp, s1, 581
                  rem          a2, t0, s1
                  sltiu        s6, zero, 599
                  divw         a3, s0, t3
                  slt          s4, a0, t1
                  subw         a2, a5, a6
                  mul          s4, t1, zero
                  srlw         a1, s4, t1
                  slliw        ra, t6, 19
                  sll          a1, t6, s10
                  xori         s6, a6, 92
                  divw         t0, a2, gp
                  addiw        s4, s10, -1255
                  mulh         s7, zero, t4
                  slt          sp, s5, s8
                  auipc        a3, 914938
                  sub          a4, a6, s4
                  sll          s6, s2, t2
                  xor          a3, tp, a0
                  srlw         tp, s4, s5
                  sraiw        ra, s3, 4
                  sltu         s8, s10, a1
                  and          s0, s1, a4
                  auipc        s11, 725288
                  and          a0, s7, a2
                  ori          gp, s11, 505
                  slli         gp, t0, 48
                  subw         sp, a7, s2
                  srl          s5, a2, s11
                  sra          t1, s10, a3
                  slti         t0, s5, -1575
                  ori          ra, ra, 335
                  sraw         s10, a1, s5
                  mulw         t5, a7, s7
                  sltu         s4, s0, s0
                  srl          a1, a2, s1
                  rem          ra, t2, s8
                  sraiw        s3, a6, 0
                  mulhu        t0, a4, t2
                  slti         s8, a0, -1328
                  sraiw        s4, gp, 7
                  srl          a5, a1, s3
                  div          tp, s3, s5
                  and          sp, s1, a6
                  mulhu        s5, s4, t2
                  xor          s4, sp, s1
                  sltiu        gp, a6, 157
                  slliw        s6, s4, 19
                  sll          s11, t6, a5
                  sltiu        a1, s11, -1074
                  divuw        t3, gp, t5
                  divuw        a1, s10, s2
                  xor          s8, t3, a4
                  sub          s9, a7, a6
                  mulhsu       t5, t2, s6
                  add          s5, s9, s6
                  nop
                  slt          s3, a3, s9
                  nop
                  xori         s11, s1, 1788
                  div          a2, t2, gp
                  sra          t5, a6, sp
                  remw         a4, t3, a5
                  mulh         a2, zero, s7
                  remu         gp, s1, s10
                  addiw        zero, t3, 1449
                  lui          s9, 71250
                  addw         tp, tp, s7
                  sltiu        a1, s11, 1281
                  addw         a1, t5, s0
                  srli         a3, a1, 23
                  srliw        a2, s7, 29
                  andi         t5, s3, 1458
                  remu         s3, s4, a6
                  nop
                  ori          s0, s2, -1232
                  auipc        s4, 108606
                  divu         s11, t3, s10
                  addiw        a0, a2, -1260
                  remuw        a0, ra, tp
                  auipc        t3, 663624
                  slliw        a2, t0, 10
                  mulh         s9, s6, s4
                  sra          t5, s5, s6
                  remu         a3, a0, t1
                  mulhsu       a2, s11, t1
                  mulhu        s7, s3, s5
                  add          s10, s1, s5
                  add          gp, t2, s6
                  srliw        sp, s7, 7
                  sltu         zero, s0, a4
                  add          s9, s6, a4
                  srai         s0, t1, 30
                  mulhu        zero, a5, ra
                  xor          s3, t5, a7
                  srai         s7, t4, 50
                  sll          a5, t3, t1
                  and          s2, a2, a1
                  sltu         t5, a2, s4
                  divw         s8, sp, zero
                  subw         t0, gp, s6
                  mul          t3, t4, t5
                  lui          s7, 238474
                  ori          t5, s11, 2013
                  slti         t2, s4, -338
                  andi         t4, s2, -1416
                  sub          s6, s11, a0
                  sll          s8, a7, t2
                  div          s8, s4, a7
                  srl          zero, s6, s3
                  and          s8, s5, ra
                  srliw        a0, t1, 6
                  divw         t6, s7, t3
                  slti         s4, s9, -1113
                  slli         s8, s8, 61
                  rem          s2, a1, gp
                  mulhsu       a4, zero, s2
                  sra          a3, a4, a3
                  sltu         t5, s6, ra
                  rem          ra, tp, a4
                  slliw        a4, s3, 29
                  lui          zero, 630783
                  remu         t2, s0, a3
                  sllw         s6, s11, a7
                  remw         gp, t5, s3
                  slti         s3, a2, -1275
                  sltu         gp, t3, a6
                  div          a2, s0, s4
                  srl          s9, a5, s4
                  sraiw        s7, tp, 26
                  slt          s9, a2, t1
                  sltu         a0, s10, a2
                  srai         s3, zero, 24
                  mul          s6, s9, s3
                  mulhsu       s9, a6, a2
                  srai         ra, zero, 55
                  and          zero, s8, sp
                  remuw        a0, s2, s7
                  div          s4, s4, sp
                  sltu         tp, a7, tp
                  sllw         s9, s4, s9
                  or           a3, t6, a2
                  mulhsu       s3, t3, a0
                  remw         a0, t2, s9
                  divuw        a5, s11, a4
                  divu         a1, s6, t5
                  addw         a4, t3, s4
                  sltu         a4, a2, s6
                  slti         a0, a1, 938
                  nop
                  xor          gp, t3, a4
                  rem          s4, t0, s0
                  addw         s3, s10, a2
                  rem          s3, ra, s0
                  srai         s2, s6, 45
                  addw         t2, s0, s0
                  slliw        a3, s9, 12
                  or           a2, a6, gp
                  srli         sp, t0, 2
                  divw         s0, a2, zero
                  slli         ra, s7, 40
                  divu         s6, s5, s8
                  addiw        a3, t1, -634
                  sra          gp, a4, t1
                  srai         s7, s7, 11
                  srliw        s7, ra, 7
                  remuw        s0, t5, s5
                  nop
                  remuw        sp, t3, s0
                  mulh         tp, s10, s0
                  srai         s11, s0, 6
                  mulh         s3, a2, t1
                  add          t6, s4, gp
                  and          s7, a3, a2
                  andi         s6, sp, 1199
                  srl          t2, a1, sp
                  srli         t3, s10, 34
                  sllw         t1, s0, s0
                  xori         s0, a4, 1476
                  divu         s0, a7, t6
                  remu         t0, a3, tp
                  divw         s3, s5, t2
                  slti         a1, t3, -494
                  addi         t5, sp, 1290
                  mulw         s7, t1, s0
                  andi         s8, a1, 543
                  mulhu        s7, t1, s11
                  xor          s7, s5, s8
                  srai         s6, s2, 3
                  divu         sp, t6, a1
                  sub          ra, s1, sp
                  sltiu        s9, a3, -1213
                  sraw         a5, s6, a3
                  sltiu        a4, a6, -1394
                  mulh         t0, s9, s6
                  mulhsu       a3, a2, t2
                  add          a2, s5, s8
                  add          a5, gp, t4
                  slli         s10, s2, 8
                  xori         a4, a3, -1994
                  xor          s9, a0, t3
                  or           s10, s9, s4
                  mulh         t2, a0, gp
                  slt          s0, s9, s3
                  mulw         s9, t1, s4
                  sltu         sp, s9, s8
                  ori          t0, s0, -1647
                  auipc        s10, 892101
                  div          a4, s3, a0
                  srliw        s6, t5, 16
                  and          ra, gp, t4
                  mul          a3, s8, gp
                  mulhsu       s6, s1, t2
                  add          t2, ra, t2
                  sltiu        s11, t0, 1320
                  sllw         a4, a5, s8
                  xori         s6, s7, 1240
                  add          s4, s1, a0
                  srliw        ra, zero, 1
                  srliw        t4, s8, 16
                  xori         gp, a5, -1927
                  ori          t5, tp, 328
                  xori         s5, a7, -1340
                  slli         a3, s11, 20
                  add          a5, s3, a4
                  add          a0, s5, s8
                  srli         t4, zero, 45
                  remu         t6, s2, s1
                  xor          t1, t5, zero
                  and          a5, tp, t5
                  add          s8, s1, sp
                  mulh         a1, a3, s4
                  nop
                  lui          s0, 550032
                  srlw         s0, t2, a7
                  addiw        a2, t4, -1196
                  divu         zero, a0, s8
                  remw         t2, s9, ra
                  remw         t3, a6, s0
                  slti         a0, t5, -617
                  xori         a0, t0, -2034
                  divw         gp, a0, a0
                  divu         ra, s10, a4
                  slli         s2, zero, 32
                  andi         a4, t3, -1957
                  addi         a0, t6, -1658
                  remu         t0, s7, s8
                  and          zero, ra, t1
                  andi         s3, t0, 1117
                  and          s2, a4, s11
                  div          zero, t5, t3
                  or           s11, zero, gp
                  mulh         s2, a3, t3
                  addi         t6, ra, -1926
                  div          t5, a7, sp
                  slliw        gp, s2, 30
                  subw         s7, s4, s6
                  addiw        s9, s6, -1475
                  slt          a1, s8, s3
                  srl          t1, t3, a5
                  addiw        t3, s4, -622
                  slti         s7, t3, 530
                  divuw        ra, a6, s0
                  sltu         t0, t4, s1
                  sltiu        a1, a5, -1701
                  sub          a4, t6, a0
                  srlw         s4, a5, t0
                  nop
                  nop
                  sllw         s8, s7, a1
                  srl          s4, a3, s4
                  mulh         s9, gp, t4
                  remuw        t3, tp, a1
                  addw         s2, a5, s1
                  ori          s10, s4, -723
                  subw         a2, a7, t6
                  sraw         t4, s3, a0
                  mulw         a4, s6, tp
                  mul          s9, a6, s4
                  nop
                  or           a3, t5, s6
                  remuw        s3, zero, s4
                  srl          s8, s2, t3
                  addw         a1, a2, gp
                  srli         t3, t1, 26
                  mulhu        s4, s3, sp
                  slliw        s10, t5, 27
                  divu         t1, t2, gp
                  srl          t5, s2, s11
                  slt          s2, a2, s2
                  mulhu        s0, t3, a0
                  xori         zero, s2, 2023
                  nop
                  ori          t6, t2, 361
                  divuw        s9, a1, s7
                  nop
                  divuw        s9, a7, tp
                  nop
                  add          a3, t1, s4
                  sub          s0, a0, t4
                  add          a5, s8, t4
                  divuw        s9, gp, t1
                  sraiw        s3, a7, 31
                  auipc        s6, 971787
                  srl          s0, t0, t4
                  remuw        t6, t6, a1
                  div          s8, s0, t5
                  sraiw        s4, t5, 6
                  mulw         t0, a5, s3
                  sub          t3, s0, ra
                  slli         t2, s11, 14
                  slliw        t5, s10, 18
                  divw         a4, s9, s9
                  mulhu        s5, s8, a5
                  addw         a4, gp, a3
                  srliw        s2, t1, 6
                  auipc        s7, 286307
                  mul          a1, a6, a4
                  xori         zero, s5, -357
                  srlw         t5, s4, t1
                  sltu         a4, s5, a5
                  slli         s3, t4, 46
                  mulhsu       t2, zero, t4
                  div          s8, s7, s4
                  remw         a1, a3, a1
                  sraiw        sp, s1, 1
                  sra          t6, s7, s8
                  slli         s11, s6, 47
                  sraiw        t5, t1, 31
                  srl          s8, s5, s2
                  remuw        s8, s5, a3
                  divw         a1, a2, zero
                  lui          s8, 228558
                  divuw        t3, s8, a4
                  mulhsu       ra, t6, t0
                  remuw        s7, s9, t4
                  xor          s9, a4, a3
                  divuw        s3, s11, s4
                  sra          a1, t2, sp
                  srli         s5, a1, 45
                  srai         t3, s6, 59
                  srliw        t1, t3, 30
                  subw         s7, s8, a5
                  and          a3, a5, t6
                  sraw         s5, t4, a6
                  mulhu        a2, s4, tp
                  add          s4, t4, ra
                  sraiw        s0, s1, 31
                  xori         ra, t6, -506
                  slt          gp, a7, a7
                  or           a4, a2, t6
                  sraiw        ra, a0, 8
                  sll          ra, a7, s1
                  subw         s5, t2, s9
                  mulh         a4, t5, ra
                  srlw         a1, t2, t2
                  mulw         zero, a6, s7
                  slti         s5, s10, -850
                  addw         a0, sp, s10
                  divu         t6, s11, s4
                  andi         s10, a2, 187
                  remw         t6, a6, t1
                  rem          s8, a4, s7
                  remuw        s2, t4, s7
                  and          s4, a5, t2
                  addiw        s6, a0, -749
                  xor          a4, s1, ra
                  addw         a1, a1, a5
                  slti         s11, s7, 289
                  addw         s4, sp, s4
                  subw         gp, a5, a6
                  srai         t1, sp, 19
                  srai         ra, t1, 49
                  remw         t6, a6, a7
                  srai         t2, t2, 29
                  ori          t4, s6, 1916
                  rem          s9, a5, t3
                  sub          sp, s2, s8
                  srai         sp, a6, 35
                  mulh         gp, t3, s4
                  xor          zero, gp, zero
                  addiw        a0, s3, -1674
                  add          sp, s1, t2
                  srliw        s8, sp, 3
                  sll          t5, t4, a2
                  srai         a2, s6, 47
                  remw         t2, ra, s11
                  sll          s11, t2, s9
                  remu         a5, s10, a2
                  srai         a3, s4, 23
                  slli         a0, zero, 4
                  slli         s6, t6, 3
                  addi         s4, a7, -1832
                  ori          s10, a2, 1880
                  nop
                  subw         a0, a3, s5
                  remw         t0, a6, a2
                  sll          s8, a2, s10
                  addiw        t5, s11, -665
                  nop
                  lui          t4, 783642
                  sll          gp, sp, ra
                  srlw         s2, t1, s7
                  srl          a3, t4, s8
                  sub          a1, zero, a5
                  xor          zero, s3, sp
                  slliw        t2, t5, 30
                  auipc        t0, 34913
                  andi         s3, t2, 1753
                  sub          t2, gp, t6
                  sra          zero, s6, t1
                  sra          t3, t0, t4
                  divuw        tp, a4, s10
                  sltu         a1, t3, s11
                  divu         s9, s9, t1
                  xori         a1, t1, -376
                  xori         s4, s6, 185
                  andi         a4, s5, -18
                  sltu         s2, t3, s9
                  srlw         a4, a5, t0
                  sllw         a0, a6, t0
                  slti         s5, s6, 328
                  mulhsu       t6, s4, a4
                  or           t2, s0, a7
                  srli         s8, s8, 18
                  divuw        s2, s0, s5
                  ori          a1, s9, -887
                  mulw         a1, a0, a4
                  sltiu        s4, a1, 1998
                  divw         zero, s2, sp
                  or           s11, a1, a1
                  mulhsu       t3, a7, s9
                  sltu         s7, t0, s8
                  ori          s0, s4, -959
                  srli         t3, t1, 6
                  srlw         sp, s11, s8
                  srai         a0, s7, 1
                  or           t1, zero, s11
                  lui          a0, 602530
                  lui          s9, 421936
                  slti         s0, sp, -1894
                  srl          t1, ra, a1
                  srai         s7, s11, 10
                  sll          a2, s2, s9
                  srl          a3, a3, s5
                  andi         gp, t0, 379
                  srliw        zero, s8, 29
                  rem          t0, s2, s10
                  sltu         gp, t1, s1
                  or           s4, sp, tp
                  slli         s4, t5, 54
                  slt          ra, s1, s4
                  mulhu        t5, t4, tp
                  srai         a5, s8, 20
                  div          s9, s6, t5
                  xor          gp, s10, s6
                  xor          a5, s1, t6
                  and          t3, s6, t2
                  divw         s3, s4, t2
                  divw         s6, a7, s7
                  addw         s9, s5, s4
                  srai         s2, ra, 24
                  mulhu        s9, tp, t4
                  divw         s4, a1, a6
                  sra          s0, t6, s0
                  sltu         t5, t6, a5
                  auipc        a2, 151887
                  rem          t6, a2, a2
                  mulhsu       s6, a3, t3
                  sraiw        ra, a7, 19
                  rem          s10, tp, a7
                  and          a1, a1, zero
                  lui          s3, 139962
                  addw         s10, s6, a4
                  mulh         t4, a1, a6
                  xori         t1, t6, 885
                  slt          s5, a3, tp
                  srai         s9, tp, 60
                  mul          zero, a1, s10
                  andi         s9, s5, -1273
                  divu         s0, tp, s8
                  srli         s6, a3, 0
                  slt          a4, s2, tp
                  addw         s10, a2, t5
                  remw         a2, s0, a1
                  lui          a0, 749034
                  mulhu        t6, t3, s7
                  srl          s9, a1, zero
                  sraiw        t3, t5, 31
                  remuw        s10, a4, gp
                  xori         a5, s8, -1115
                  xor          a2, zero, a5
                  slli         s9, zero, 16
                  xori         s10, s3, 1020
                  srlw         t0, s8, tp
                  mul          t1, a7, s6
                  xori         sp, s2, -1583
                  remuw        s8, s9, t0
                  xor          sp, s0, t2
                  srlw         a2, a5, s0
                  srlw         s8, a3, a7
                  mul          t0, s0, s6
                  slli         tp, t4, 55
                  subw         t2, a7, sp
                  ori          sp, a0, -45
                  slti         a1, zero, 1472
                  sra          s8, t3, s8
                  lui          tp, 807393
                  xori         t0, a1, 1223
                  srliw        t0, a5, 15
                  or           sp, t1, t5
                  andi         zero, s3, -188
                  addi         s6, t2, -184
                  slliw        t2, t2, 3
                  addw         s7, t5, t1
                  srai         s2, gp, 6
                  lui          a4, 363010
                  mulw         s4, s1, a1
                  divuw        t2, t1, t0
                  sra          t4, s2, s10
                  srli         t3, a1, 48
                  divw         a5, s9, t2
                  mulh         a0, ra, t5
                  or           s2, s0, t4
                  mul          gp, s3, a4
                  sltiu        t3, t6, -1641
                  sra          s8, t4, a1
                  sllw         s8, t1, s8
                  srliw        ra, t2, 19
                  slli         s6, s5, 30
                  sllw         a3, ra, a1
                  remw         s5, ra, s5
                  add          a3, s6, s1
                  mulhsu       a1, s3, zero
                  divuw        a3, s10, s6
                  subw         a5, s1, ra
                  srai         a2, a4, 4
                  subw         s7, zero, t3
                  srai         t0, a1, 26
                  srlw         t4, a7, a3
                  or           a0, t1, a0
                  mul          ra, t3, s11
                  rem          s5, s5, a3
                  divw         s9, s4, s10
                  addi         s8, s6, 1881
                  slli         s10, s4, 8
                  slti         a0, gp, -1988
                  divu         s3, s4, zero
                  srliw        s11, a5, 17
                  srlw         s8, a1, a1
                  srliw        s0, t3, 26
                  xori         s10, a7, 634
                  and          s2, t1, a3
                  xor          s8, s4, zero
                  and          s9, tp, a3
                  sltiu        t1, a7, -788
                  mulh         t2, a5, s9
                  nop
                  remw         a5, s1, tp
                  auipc        gp, 966800
                  div          a0, a2, t0
                  slt          s7, t4, s9
                  divu         zero, a5, s8
                  sraw         s7, s6, t4
                  srli         t1, s9, 52
                  mulh         s9, s0, a4
                  addi         t0, t0, -284
                  sraiw        s5, gp, 7
                  srli         a3, a2, 46
                  xor          t1, tp, s10
                  nop
                  sltiu        s11, sp, 1569
                  sub          t1, a2, s7
                  andi         s0, a5, -435
                  and          s10, s3, a0
                  sra          s2, s7, ra
                  divu         t1, s9, t2
                  mul          s2, a0, a6
                  xori         a1, a3, 1409
                  slt          sp, t6, t2
                  mulhu        tp, a0, a1
                  addw         s11, t4, a5
                  srliw        t6, s11, 5
                  srlw         s5, s7, gp
                  or           t2, s10, a7
                  sltiu        t3, zero, 1860
                  divuw        gp, ra, s5
                  xor          a0, s7, t6
                  add          a3, a0, a7
                  subw         sp, a4, t2
                  addw         s10, a0, gp
                  xori         a3, s3, -415
                  srai         t2, t1, 59
                  remu         t3, s1, a5
                  divuw        s9, s4, zero
                  rem          s7, s6, a1
                  andi         sp, s0, -1311
                  addiw        a1, s8, 1519
                  or           s5, t6, s9
                  remuw        t0, s1, t1
                  add          t4, a5, s4
                  auipc        a3, 530060
                  mulh         s8, gp, s8
                  sraw         tp, a7, s6
                  sraiw        s9, s5, 23
                  srl          t3, a7, a0
                  addw         tp, s5, gp
                  srliw        t5, s6, 9
                  sltu         s2, a2, a7
                  sra          s8, ra, s10
                  srlw         s6, t6, sp
                  slliw        s4, s6, 16
                  remw         tp, t2, s9
                  xori         t6, s10, 1213
                  remw         t4, s6, a4
                  sra          s6, sp, ra
                  divu         a0, t4, a7
                  sltu         s3, a3, s0
                  addi         a5, a5, 1324
                  sll          t2, a7, s4
                  sraw         t0, t2, a1
                  nop
                  divuw        a2, t4, s10
                  divw         zero, a3, s3
                  sra          t3, zero, a1
                  and          s8, t6, s5
                  srai         t4, s11, 22
                  srlw         s8, a7, t4
                  rem          zero, t2, t5
                  or           a2, a2, s2
                  srli         s9, t6, 36
                  sraw         s2, s6, s3
                  slliw        a1, s11, 18
                  remw         a3, t4, t2
                  addiw        a0, t2, -1206
                  addw         a0, ra, a0
                  srl          t0, ra, t3
                  remuw        a0, zero, s0
                  sub          a4, t3, s1
                  add          s5, s2, zero
                  subw         t6, s4, s1
                  and          s0, gp, sp
                  or           s4, s6, t6
                  sll          zero, s4, a3
                  mulh         t5, sp, t1
                  add          ra, s5, s0
                  divw         s11, t4, s2
                  auipc        s6, 134920
                  srl          s3, s8, tp
                  divu         s11, t3, a1
                  ori          t3, a3, 1530
                  divuw        gp, sp, s10
                  slli         s7, t6, 29
                  add          s8, ra, a0
                  slliw        s2, a4, 9
                  divuw        a1, tp, t2
                  srl          a3, s6, s1
                  and          a5, a7, sp
                  slt          s0, a2, t0
                  srli         s3, ra, 14
                  sub          t1, a5, s3
                  addw         s3, gp, s9
                  mulh         s8, a3, t2
                  srlw         t1, s7, t0
                  srl          t6, t1, t0
                  slli         tp, s8, 43
                  xor          t4, s3, a0
                  mul          s9, t0, t5
                  remu         s7, a6, gp
                  andi         gp, s9, 1988
                  div          a5, s6, a7
                  srlw         s10, tp, t2
                  sltu         s2, a7, s6
                  mulhsu       a3, s3, a3
                  sltu         s9, s4, sp
                  andi         s11, a2, 113
                  or           s5, a4, s9
                  mulw         a2, s5, t2
                  or           s3, s3, s5
                  sra          s9, t2, s4
                  srlw         s9, a1, t0
                  divuw        ra, s10, s5
                  srai         s8, a1, 18
                  srlw         t3, s3, s3
                  sraw         s2, t3, a6
                  mulhsu       t2, s1, t6
                  mul          s9, a5, zero
                  remu         a4, t6, s2
                  sub          t5, s5, s9
                  remu         zero, t3, zero
                  sllw         s7, s11, s6
                  xor          t3, t4, a0
                  remuw        t6, gp, s2
                  add          s10, tp, s0
                  remuw        s3, sp, sp
                  sub          a0, a4, a7
                  mulhsu       a3, s10, s0
                  and          tp, a5, t5
                  remuw        s2, tp, t6
                  sll          t6, a4, s11
                  slt          s8, ra, s10
                  mul          a4, t5, s4
                  sraw         a1, a7, s8
                  srliw        s2, t1, 11
                  and          t3, a5, tp
                  rem          a1, s6, a0
                  mulhu        t4, s10, s4
                  rem          s8, a5, t1
                  sraw         t6, s0, a4
                  slli         a3, s2, 34
                  sllw         s2, t2, a7
                  sraiw        t2, a0, 21
                  sllw         t5, s11, s0
                  or           t3, t6, a2
                  sllw         ra, s5, a2
                  sra          a3, s4, a2
                  div          t1, gp, a0
                  lui          t5, 352329
                  slli         zero, s4, 39
                  slti         t2, a0, -781
                  mul          t3, a2, s2
                  or           t0, s2, a7
                  addi         s4, a3, 550
                  remw         s10, s1, t6
                  sraw         s8, t1, zero
                  srli         s5, a4, 24
                  lui          a5, 147052
                  addw         gp, s3, a6
                  sltu         s10, t4, s0
                  auipc        t3, 110228
                  sraw         t1, s2, t5
                  slli         a0, s0, 60
                  add          gp, s2, s3
                  sra          a0, a1, tp
                  srliw        t2, s7, 31
                  nop
                  remw         a2, t0, t2
                  and          s3, s3, a0
                  sltu         sp, s5, s6
                  remu         s8, a2, t6
                  srlw         sp, s2, a2
                  sraiw        a1, zero, 16
                  nop
                  divu         s2, s11, a2
                  xor          s8, a5, a3
                  sllw         a4, a1, t0
                  remuw        s0, s11, s11
                  srliw        t0, gp, 28
                  slli         s2, t3, 3
                  sll          a2, t0, a1
                  slti         a4, s2, -1247
                  sra          a5, a5, t6
                  addiw        s5, sp, 1790
                  xori         s9, t5, -228
                  divu         ra, sp, s9
                  mulw         s9, a7, s9
                  srl          t2, a2, zero
                  auipc        s5, 88626
                  divuw        tp, s10, gp
                  subw         s3, s11, t0
                  srli         t2, ra, 6
                  xori         a3, a0, 646
                  addiw        s6, zero, 1575
                  srliw        s5, s10, 25
                  remuw        s3, t0, a7
                  add          s3, a4, t6
                  sraiw        t6, s9, 29
                  sltu         s0, s10, a6
                  mulw         s0, tp, t4
                  sraiw        s3, s7, 2
                  ori          s11, a7, -1212
                  lui          s7, 5938
                  addw         ra, t6, a4
                  sll          zero, t3, t1
                  sltu         s6, t2, a6
                  div          t2, s0, a7
                  mulhu        s0, s6, t4
                  srliw        t2, s2, 15
                  slt          s6, t5, a0
                  and          t0, s5, t1
                  ori          ra, a4, -1199
                  or           s6, s6, s5
                  divw         s8, ra, s4
                  mulh         s9, s7, s8
                  xor          t3, a0, t3
                  sraiw        t0, a3, 31
                  divuw        t4, zero, zero
                  ori          s8, tp, -1918
                  divu         s10, t6, t6
                  sltiu        s8, gp, -501
                  sra          t0, a3, s2
                  sllw         s11, a0, t2
                  mulhsu       t0, a7, s4
                  auipc        t3, 399000
                  mulh         t5, s1, a6
                  srai         a2, a3, 20
                  divuw        a1, t3, tp
                  srlw         gp, s9, s8
                  addw         s8, s7, t1
                  or           t4, a4, s11
                  srli         t1, tp, 6
                  sll          t3, ra, s11
                  or           zero, s0, s1
                  sraiw        a0, t0, 3
                  slt          tp, a0, s0
                  xori         a2, tp, 255
                  divw         t2, sp, tp
                  xor          s4, s4, s8
                  srli         t2, a4, 34
                  addw         t4, tp, a6
                  addiw        ra, ra, -1043
                  sub          t0, a7, s0
                  xori         t2, t5, 1886
                  mul          s4, s6, t3
                  slti         s2, s8, -1453
                  sltu         zero, s11, s11
                  sub          a5, a4, s9
                  srai         s10, s0, 28
                  sraw         s6, a2, sp
                  divw         t3, s9, a0
                  srliw        a2, a1, 9
                  and          t2, s0, t2
                  slt          t1, s7, s10
                  auipc        a2, 498701
                  remuw        s5, s7, zero
                  sub          s5, s2, s7
                  slti         a2, a3, 2022
                  or           s11, s3, a5
                  subw         s0, t1, t2
                  divuw        s7, s4, a3
                  remu         s8, a6, a6
                  slti         t6, a2, -926
                  auipc        t6, 646078
                  srlw         s6, a2, s10
                  ori          s7, s8, -1418
                  and          s2, s11, sp
                  mulh         sp, s5, t2
                  remw         t2, t2, s3
                  addiw        t0, s10, -1789
                  divuw        s2, t6, zero
                  slti         s2, s10, 9
                  sub          s8, s5, a6
                  ori          t3, t1, 724
                  auipc        s10, 307947
                  remu         tp, s5, t0
                  sraiw        t5, a5, 15
                  sra          s8, t4, s2
                  subw         s11, s0, a2
                  sltu         a2, a2, a3
                  lui          ra, 667515
                  remu         s0, t4, gp
                  div          s9, s0, s2
                  slti         t0, t6, -946
                  mulh         a0, t5, t0
                  nop
                  div          s9, t0, a3
                  addiw        s2, tp, 1858
                  sltiu        a5, t1, 1357
                  xor          t0, a1, a3
                  sub          s0, a7, tp
                  addi         s4, t4, -223
                  srliw        t5, sp, 10
                  slli         s3, a2, 34
                  subw         t4, a1, s8
                  or           zero, gp, a0
                  auipc        s10, 439800
                  slti         t0, s10, -511
                  slliw        sp, t1, 20
                  slli         s8, s0, 17
                  addi         a1, t2, -1401
                  remuw        a0, s3, t3
                  add          a1, a0, t6
                  slliw        s3, a3, 14
                  srai         a0, a5, 30
                  lui          a0, 569635
                  srli         sp, tp, 41
                  divuw        zero, s3, s10
                  nop
                  or           t5, s7, a0
                  divw         s2, a6, s3
                  addi         a1, s9, -1740
                  addw         s3, ra, s4
                  mulhsu       t5, a2, a5
                  sltiu        s2, gp, 1223
                  srli         s8, a2, 32
                  srli         zero, s2, 46
                  mulhsu       t5, s11, sp
                  addw         sp, a3, s9
                  slli         s4, zero, 3
                  mulh         s5, s8, t6
                  sra          t2, t4, t1
                  and          sp, s6, t0
                  mul          a5, a2, s4
                  srliw        t6, sp, 15
                  divw         s11, a6, tp
                  slti         a2, t5, -1475
                  slliw        gp, s1, 31
                  sltiu        t6, s0, 885
                  sraiw        s6, tp, 6
                  subw         a3, t4, s1
                  subw         s5, a6, a0
                  divw         zero, s9, s9
                  xor          s0, ra, a2
                  addw         t1, a0, t0
                  sraw         s0, zero, t4
                  sllw         s7, s1, t2
                  addi         s2, sp, 208
                  mulhu        a1, sp, s11
                  srlw         zero, t2, a0
                  srli         s10, a7, 20
                  add          a3, a7, s7
                  sraw         ra, s6, ra
                  srliw        s2, tp, 5
                  auipc        t0, 80311
                  mulhu        s6, a2, t1
                  remu         s4, a0, a1
                  slt          s4, ra, t0
                  add          ra, s5, ra
                  sraw         s7, ra, s8
                  srliw        a2, gp, 14
                  remw         s9, s1, t4
                  ori          s8, t2, 877
                  subw         s6, a7, s10
                  mulhu        t5, s4, s7
                  sltu         a3, tp, s3
                  remuw        s5, s8, a2
                  div          ra, s6, a6
                  xori         s6, t2, 514
                  remuw        s11, t5, t1
                  subw         s9, tp, s6
                  sraw         s11, ra, sp
                  addiw        s3, s8, 947
                  sll          s7, t4, t3
                  remu         gp, s10, s10
                  mulhu        t0, t4, s9
                  sltu         sp, tp, s0
                  addi         s4, s0, -764
                  subw         t4, s11, a6
                  addi         a0, zero, -1417
                  srliw        s5, a6, 15
                  nop
                  subw         t2, t3, t2
                  srli         s2, a0, 11
                  sraw         gp, a6, zero
                  sraw         t2, a2, s0
                  andi         a1, a2, 1524
                  and          s9, t5, ra
                  sraiw        s2, s0, 17
                  remu         s10, a3, ra
                  sub          ra, a0, a1
                  addiw        s2, a1, -530
                  mulhsu       s0, t2, tp
                  lui          a0, 2370
                  mulhu        s2, s4, tp
                  sltu         s5, s3, gp
                  remw         t4, ra, s4
                  remw         t0, t0, s5
                  rem          t1, s5, s4
                  sraiw        s11, s1, 31
                  mulw         t4, a5, sp
                  srai         a2, t2, 26
                  addi         tp, t2, -1010
                  mulh         s9, a1, s9
                  srai         t3, s3, 48
                  remuw        a0, zero, gp
                  div          ra, s7, s10
                  addiw        t6, t4, -1178
                  divw         a0, t2, t2
                  sltu         a3, tp, a2
                  sra          s9, t0, a1
                  andi         s6, s6, -1349
                  sraw         s7, tp, a3
                  slt          a0, t3, a6
                  sltu         t0, sp, s6
                  and          t4, s1, ra
                  srli         zero, tp, 5
                  mulhu        a0, a3, zero
                  sraiw        s10, s9, 13
                  remu         s11, a3, a7
                  divw         s4, ra, s5
                  sltiu        zero, s5, 660
                  sllw         ra, s4, s1
                  addiw        t2, t5, -1671
                  div          t6, gp, s1
                  slli         s6, a2, 40
                  add          s5, a0, sp
                  srliw        t5, a2, 2
                  remuw        a2, s5, s11
                  sltu         zero, t1, ra
                  auipc        s9, 75518
                  remu         s3, sp, ra
                  mulhu        t0, t5, a5
                  andi         tp, s10, 677
                  sraw         a3, s10, a5
                  addiw        s2, t1, 1559
                  slti         t3, a1, -1170
                  divw         s2, tp, a6
                  slt          s9, s8, s0
                  divuw        s6, a0, t1
                  divu         s7, s10, s7
                  mulh         s7, a7, sp
                  sraiw        s6, t3, 2
                  rem          zero, s5, a0
                  mulhu        t2, t6, t5
                  remu         sp, s7, a6
                  and          a5, s9, a6
                  addi         tp, t6, 318
                  xor          s7, s9, a6
                  remuw        t0, s9, a5
                  srliw        s10, a0, 18
                  sll          zero, t0, a0
                  xor          t4, s9, t5
                  mulhsu       sp, t2, a3
                  addi         tp, ra, 1989
                  srai         t1, tp, 15
                  remw         a4, t0, s11
                  rem          s0, t2, s0
                  xori         s5, t1, 256
                  xor          s10, gp, s5
                  addi         s3, a1, -76
                  sllw         s3, s5, s5
                  sraiw        s7, a4, 22
                  sltu         t0, a6, s7
                  nop
                  divuw        a3, t1, a5
                  sra          a2, s2, s7
                  addw         s2, ra, s10
                  divw         sp, s7, t1
                  slliw        sp, t3, 14
                  addiw        s9, t6, 727
                  lui          sp, 232877
                  sltiu        a1, gp, -244
                  sub          s10, s2, zero
                  addi         s10, a2, 259
                  sub          t6, gp, a3
                  sraw         t2, s1, a3
                  remw         s4, s4, s8
                  sub          sp, a5, s11
                  slliw        s4, a4, 11
                  and          gp, s11, zero
                  ori          a0, s8, -1864
                  divw         s9, ra, a2
                  remuw        a1, t6, t5
                  slt          t6, a0, s1
                  andi         a4, s9, 680
                  auipc        gp, 495248
                  mulh         s10, t5, s11
                  remu         ra, a7, a5
                  sraiw        tp, s0, 18
                  remuw        a0, gp, t0
                  xori         t1, a0, 230
                  srli         s4, a3, 17
                  mulh         s10, s3, a3
                  srlw         s8, a6, s2
                  sllw         s0, a6, s3
                  slliw        s2, a6, 18
                  sraw         s7, a7, s6
                  mulh         a3, a1, a5
                  or           s3, a5, s1
                  divu         s9, t5, s10
                  xor          t6, t0, a5
                  subw         sp, a3, gp
                  divu         ra, a0, tp
                  mulhsu       s8, s4, s2
                  srl          s5, s4, s11
                  nop
                  add          s8, a0, a2
                  mulhu        s6, s0, a4
                  mulhsu       sp, gp, zero
                  srli         tp, s6, 0
                  divu         s4, t4, t4
                  slliw        a2, s4, 24
                  ori          a0, a6, -699
                  auipc        s11, 361593
                  auipc        t1, 315575
                  sra          a1, a0, s5
                  sll          a0, t6, t1
                  srai         s6, a3, 11
                  div          a2, s9, s5
                  auipc        gp, 799520
                  remw         s9, t6, t1
                  sub          sp, s11, t3
                  xor          s9, s11, s9
                  ori          s2, t6, -1675
                  rem          tp, s8, a1
                  sraiw        s6, a7, 12
                  mul          ra, s9, t5
                  mulh         s4, sp, s6
                  sub          s8, t3, s11
                  xori         s0, s11, -53
                  sll          a4, a3, s9
                  sra          s2, s6, s5
                  divuw        zero, s2, s0
                  addi         a0, a2, -1306
                  auipc        t3, 720592
                  srai         s5, s3, 50
                  mul          t5, s3, s0
                  subw         s2, s6, t0
                  addw         s6, t5, a4
                  ori          a1, t5, -939
                  srli         s9, a5, 53
                  srlw         s4, tp, a6
                  srliw        ra, zero, 28
                  mulh         ra, s7, s8
                  remuw        zero, s11, s4
                  srli         zero, a7, 34
                  div          s5, t3, a6
                  remw         s11, s0, gp
                  mulh         t5, ra, s7
                  divuw        a4, a5, ra
                  or           s6, s0, a5
                  sllw         s7, a6, t3
                  nop
                  addiw        zero, t6, 545
                  slliw        a2, t4, 16
                  auipc        s0, 865030
                  srlw         t3, t3, gp
                  divu         a1, s9, s0
                  sllw         s8, ra, s11
                  ori          s10, a7, 190
                  xori         s6, s2, -310
                  remw         ra, s10, t4
                  srai         a3, a4, 44
                  srli         s4, a7, 51
                  remuw        t0, a7, t2
                  and          s11, s0, s3
                  addi         s8, tp, 785
                  srai         gp, s10, 8
                  addiw        a2, s8, 388
                  srlw         t1, s5, gp
                  sltiu        ra, s6, -892
                  nop
                  slliw        t4, t5, 5
                  srl          s2, s5, a5
                  srl          t1, t0, sp
                  rem          s5, s6, tp
                  rem          ra, t5, ra
                  divu         t5, s11, s9
                  rem          gp, a3, s9
                  slt          a4, s3, sp
                  divu         s5, gp, s9
                  mulhsu       s2, s5, a2
                  slt          s5, t1, s10
                  srli         tp, a0, 31
                  sraiw        a5, a2, 23
                  slli         s4, s7, 42
                  or           t3, t1, ra
                  xori         a2, a1, -1438
                  slti         s5, s5, 1280
                  mulh         t5, a7, a2
                  divw         s11, t1, ra
                  divw         s2, s11, ra
                  add          s7, s2, s5
                  remu         t0, s11, s0
                  slliw        t3, t0, 28
                  slt          s7, t5, t6
                  divu         s9, s8, s10
                  srliw        t1, a4, 13
                  auipc        t3, 448141
                  srl          s3, t4, a7
                  or           a1, s2, s8
                  slliw        a2, t4, 3
                  div          s0, sp, sp
                  srai         zero, gp, 0
                  mulhsu       t6, t1, s5
                  mul          s5, s8, a5
                  andi         t0, s9, -504
                  srli         sp, s10, 62
                  div          s2, s1, tp
                  remu         a1, sp, s11
                  mul          ra, s8, s6
                  rem          s11, t5, a4
                  sraw         t3, a3, a4
                  srai         s10, t1, 8
                  sraiw        gp, t6, 26
                  slti         t1, a0, -586
                  rem          gp, t5, a1
                  sll          zero, t6, a0
                  mulh         s0, a4, t1
                  sll          t5, ra, a3
                  sltiu        s6, a0, 1193
                  slti         zero, gp, -1749
                  sra          s9, t5, t6
                  sllw         t2, a0, a4
                  slt          s7, t1, s3
                  srli         s9, s11, 43
                  sub          a3, s6, ra
                  addiw        s0, s2, 431
                  and          gp, a0, a4
                  sra          s4, t4, s1
                  or           s10, a4, t6
                  lui          a0, 396458
                  sub          a3, t2, t6
                  auipc        a3, 452780
                  srlw         s3, s7, gp
                  sraiw        s5, a4, 9
                  nop
                  xori         s10, t3, 638
                  lui          a0, 829709
                  addi         s9, s9, -1021
                  addiw        a3, s2, 1853
                  and          s2, s5, a2
                  divuw        a4, t3, s8
                  srai         s9, s7, 59
                  subw         s4, s6, gp
                  srlw         t0, a6, a0
                  sltiu        s0, a4, 1123
                  addi         s7, a2, -464
                  mulh         a1, s8, t0
                  sllw         t1, a5, s10
                  mulhu        t5, a7, a5
                  remw         s0, t2, s6
                  auipc        a4, 648107
                  mulw         t4, zero, t3
                  rem          gp, zero, s4
                  divuw        t0, s5, s10
                  divu         s7, sp, s7
                  mulhu        s9, s6, zero
                  mul          a1, t6, t3
                  srlw         s0, s6, s0
                  and          t4, a0, s10
                  or           t0, t5, a4
                  divu         sp, tp, zero
                  sltiu        t1, a3, -1260
                  srlw         t6, gp, a6
                  slt          a1, a5, a5
                  sltu         a5, s9, t1
                  xor          a1, s9, s3
                  slliw        tp, a2, 19
                  mulhsu       s8, ra, t3
                  addw         s3, s4, a5
                  subw         t4, t0, s6
                  sub          s9, t1, t0
                  sllw         s0, s9, a1
                  remu         t5, s2, s8
                  sllw         t5, ra, a5
                  rem          s2, t5, a4
                  srli         s3, s1, 7
                  nop
                  srai         zero, a4, 44
                  sub          s3, s8, t5
                  sraiw        s9, s9, 15
                  addiw        a1, s9, 1394
                  mulw         s8, s10, a5
                  sltiu        s9, a4, 1488
                  and          s4, t0, a3
                  sllw         s4, t6, ra
                  slti         s0, sp, -851
                  srli         a2, s3, 26
                  mul          ra, zero, a0
                  remw         s3, s10, s7
                  remu         s7, gp, a5
                  or           s6, t3, t2
                  and          a2, s2, s3
                  ori          zero, t1, -1971
                  and          tp, s10, a2
                  sltu         zero, a3, zero
                  and          a4, s3, tp
                  and          gp, s10, t2
                  divw         a3, zero, s0
                  subw         s8, s0, s3
                  divu         a1, t0, a3
                  slli         a1, t4, 20
                  mulh         tp, a4, s8
                  addiw        t6, ra, 517
                  sllw         t2, a6, s1
                  srl          a3, ra, s8
                  xor          s8, s2, s5
                  nop
                  subw         s0, a5, s2
                  subw         a5, s11, t1
                  addi         a5, s0, 1642
                  mulh         zero, t4, a7
                  sraw         gp, zero, gp
                  srl          s6, s2, s7
                  mulw         s11, s8, t6
                  mulh         s3, s7, s11
                  sltu         a2, t5, s10
                  xor          a2, a0, s2
                  or           s9, s10, ra
                  divu         s8, sp, a0
                  sraw         s2, s7, t1
                  sra          s4, a2, t6
                  or           t0, s11, t0
                  rem          a3, t5, t3
                  xori         s5, zero, 1754
                  srli         t3, ra, 52
                  sllw         ra, a2, tp
                  subw         s4, a6, t4
                  sub          t5, t0, t2
                  sllw         gp, gp, ra
                  subw         zero, s6, s9
                  srli         t3, t3, 26
                  addiw        ra, s0, 1674
                  sraw         a5, a4, t3
                  mul          s2, zero, s2
                  sll          s10, a3, t2
                  mulw         gp, s4, tp
                  or           t5, a2, a2
                  slt          s3, s3, a5
                  add          a1, a4, t4
                  and          s5, a6, s7
                  slliw        s10, s7, 14
                  remw         t3, gp, zero
                  sraw         s5, s4, gp
                  srliw        s7, s6, 16
                  remuw        t2, gp, s11
                  slt          s4, s6, tp
                  addi         s5, s7, 1886
                  subw         a1, s5, gp
                  remu         zero, s0, gp
                  sllw         sp, t0, s1
                  sll          s9, s6, a0
                  mulh         t2, s3, t3
                  mulhu        s11, t5, t0
                  sub          a2, s10, t5
                  or           a0, a1, a4
                  mulh         a2, gp, a6
                  div          t3, s6, tp
                  nop
                  srliw        s9, a6, 3
                  sra          t6, t5, s8
                  nop
                  sra          s2, s7, s3
                  rem          t2, a4, a4
                  rem          t0, t0, a1
                  srai         t4, t6, 27
                  remu         t6, s6, s4
                  ori          s3, t6, 394
                  srli         s2, tp, 39
                  srliw        s9, t0, 7
                  remu         t0, a4, a3
                  ori          t6, zero, -1157
                  sraiw        ra, t5, 10
                  divu         s10, s6, a2
                  sltu         s5, t2, s4
                  srli         s5, t1, 11
                  slliw        s2, a3, 0
                  ori          s3, s4, -975
                  rem          a2, sp, a3
                  andi         s3, t3, -1220
                  ori          t4, t5, -1854
                  sltiu        sp, t1, 1300
                  mulhsu       s0, s9, s5
                  xori         s8, s1, -2027
                  sub          t0, s11, s5
                  srliw        gp, s7, 18
                  mulhu        s10, s4, s9
                  srl          t1, s8, t3
                  sltu         a5, a1, a4
                  div          t3, s9, sp
                  sraw         a3, a7, t1
                  mul          a3, a4, t6
                  sub          t2, zero, a5
                  slli         a1, a7, 20
                  sraiw        t6, a7, 15
                  addw         t1, sp, zero
                  srlw         a0, s2, a0
                  mulh         gp, a6, a6
                  divuw        ra, s2, zero
                  sraw         s0, a6, s8
                  slliw        s7, a5, 6
                  slt          a3, t3, t6
                  or           a0, tp, a6
                  mul          gp, a0, t2
                  divuw        zero, s8, t2
                  or           s0, s10, t6
                  rem          a3, a3, s6
                  mulh         s11, s3, s8
                  sltiu        sp, s4, 1769
                  xor          a4, s4, s2
                  slti         sp, a7, 915
                  sltu         gp, s11, s2
                  mulhsu       s2, s7, s10
                  sltiu        a0, s3, 874
                  srl          s8, t2, s8
                  andi         s10, a1, 1905
                  mulhsu       t3, sp, s11
                  sllw         t5, t1, s3
                  divuw        a0, t4, a7
                  ori          a3, a3, 1763
                  subw         t5, a3, s1
                  slliw        s9, s2, 11
                  srli         a1, sp, 55
                  lui          s6, 460989
                  andi         s9, s9, 1169
                  or           s9, s2, a4
                  sltu         s2, gp, s1
                  ori          s8, sp, -1990
                  subw         s4, zero, ra
                  or           s5, t2, s6
                  srlw         t2, s4, t4
                  slti         t3, a6, 1338
                  divw         a1, t3, s5
                  and          tp, t2, zero
                  slliw        s5, sp, 12
                  slliw        a0, ra, 7
                  mulhu        s8, t3, s8
                  srli         a4, tp, 36
                  slli         t6, s6, 56
                  xori         s2, t4, 1725
                  remuw        s11, s0, t4
                  mulhu        gp, s11, s9
                  srliw        t6, s8, 9
                  remw         s2, s7, t4
                  or           a1, a1, a5
                  sltu         s4, t0, s2
                  add          s8, t1, a0
                  mul          sp, s7, s11
                  sll          tp, gp, s2
                  addi         s3, a7, -61
                  mulhsu       a1, a4, zero
                  xor          s0, zero, a2
                  add          tp, t3, a1
                  div          s3, s4, s7
                  srlw         zero, a6, s3
                  slli         s8, t1, 38
                  divuw        s10, sp, s3
                  sltiu        ra, t6, -1856
                  sllw         s7, t0, a0
                  addw         a0, a5, t1
                  andi         ra, a1, 1232
                  sllw         s7, a3, s3
                  xori         s5, tp, 622
                  srlw         s0, s11, s7
                  sll          a4, s5, t3
                  sraw         a3, sp, s9
                  xori         a1, s0, 986
                  sraw         s4, s7, s9
                  sra          t4, a6, t4
                  ori          ra, a0, 142
                  auipc        t3, 607915
                  xor          a4, a4, s5
                  sra          a4, t4, t5
                  mulhsu       a2, t3, t0
                  srli         a4, s4, 26
                  div          t1, s10, s6
                  ori          ra, a3, 768
                  or           s8, t0, s10
                  add          s9, s7, a1
                  andi         ra, ra, 600
                  remu         tp, s9, t5
                  slti         t2, a6, -101
                  divw         t0, a0, s6
                  nop
                  rem          s3, t6, t1
                  remu         tp, s9, t1
                  ori          zero, a3, 1586
                  mulhsu       s0, s6, tp
                  rem          s6, tp, gp
                  auipc        s6, 143985
                  slliw        t2, s8, 25
                  addi         s3, gp, -1343
                  or           s10, a1, s0
                  addiw        t6, a7, -1712
                  mulw         s9, gp, t6
                  xori         a1, s2, -1994
                  sll          s4, a1, s9
                  srli         tp, s7, 63
                  sraw         s10, s10, t0
                  addi         a0, s0, -1057
                  sraw         a1, s1, s0
                  or           ra, s10, gp
                  xori         s9, gp, -30
                  sltu         a4, ra, t2
                  sub          t1, zero, t3
                  subw         t5, t1, a5
                  xor          a0, t3, t6
                  slt          a4, t1, t4
                  andi         s0, s5, 1299
                  or           sp, t6, s10
                  slliw        s3, s3, 1
                  sub          s4, t1, t2
                  add          a0, a6, t3
                  srli         ra, t0, 23
                  sltiu        t6, t2, 1153
                  and          s11, tp, s8
                  mulh         a3, s7, s5
                  lui          s9, 457137
                  sltu         sp, gp, a5
                  slli         ra, a0, 22
                  remuw        s11, a5, s10
                  lui          s7, 422155
                  remuw        t2, s2, s7
                  srliw        t6, s9, 7
                  srai         a1, a1, 55
                  srl          s5, a1, a6
                  and          gp, s7, a0
                  sra          ra, a2, a0
                  sraw         tp, t6, a6
                  and          t3, a1, s11
                  srlw         t0, s9, s11
                  srliw        s4, a4, 3
                  ori          t6, a7, 671
                  or           tp, s2, t0
                  sraiw        a0, t5, 21
                  slliw        s9, s9, 13
                  sra          s6, s4, t0
                  mulhu        t1, s7, s0
                  mulw         s0, sp, s9
                  sraw         zero, t0, s10
                  sraw         s5, s3, s3
                  remw         zero, zero, t3
                  divu         s5, a2, s4
                  nop
                  remuw        ra, s4, ra
                  mul          s3, ra, t0
                  add          a5, s5, a4
                  sll          s10, zero, ra
                  lui          a1, 465182
                  mulh         t1, t3, s8
                  mulh         t2, tp, a6
                  mulw         t3, a7, t1
                  remw         s2, tp, tp
                  addi         a0, s11, -824
                  add          s11, s6, t3
                  divuw        a3, sp, a4
                  auipc        a0, 824889
                  divu         t6, ra, s11
                  remw         s6, s3, s11
                  and          s6, t1, s6
                  sraiw        s9, s9, 0
                  slliw        gp, s2, 23
                  mul          s0, a0, a6
                  slt          a2, s3, tp
                  slti         zero, t6, 551
                  add          s10, zero, tp
                  divu         t1, s0, tp
                  addw         a5, t5, s4
                  mulhu        s3, s3, s2
                  sltu         s5, a4, s3
                  ori          a1, t2, 1444
                  mulh         s4, s5, a4
                  sll          s10, s3, s3
                  addi         s7, s4, 1300
                  sraw         a5, a4, a2
                  auipc        t2, 9111
                  sltiu        s2, s6, 270
                  mulhu        t6, a4, s7
                  andi         s7, a0, 403
                  srli         s6, s0, 24
                  divw         zero, zero, t5
                  andi         t6, s11, 396
                  slliw        s2, s10, 11
                  remw         zero, s0, t4
                  remw         a5, s3, a0
                  srl          s3, t1, t1
                  srlw         t0, a5, s8
                  slt          a2, a1, t5
                  sraw         s11, t6, t3
                  div          t1, t6, s8
                  andi         sp, s11, 1103
                  subw         s8, t6, s10
                  mul          tp, s2, t5
                  subw         s9, t6, zero
                  mulw         s8, s10, s7
                  sra          s0, a6, t5
                  slli         s7, t0, 25
                  xori         s10, s9, -1800
                  lui          ra, 311675
                  xori         s0, a2, 1098
                  sll          s10, s6, a3
                  addiw        a3, s9, -88
                  divuw        s5, gp, ra
                  add          a5, t4, a3
                  sll          s9, a1, t1
                  sub          a4, s3, t6
                  and          t3, a1, s10
                  divu         s4, a6, t5
                  sub          tp, a5, s5
                  auipc        ra, 18248
                  rem          t1, tp, s6
                  srl          s2, s6, t6
                  sraiw        zero, t4, 16
                  srl          a0, a7, t1
                  mulhsu       gp, s0, a5
                  lui          s0, 721510
                  sraw         s10, a7, a3
                  nop
                  sll          a3, s9, s1
                  sll          t2, s5, zero
                  lui          s4, 76758
                  srai         t5, s10, 60
                  slliw        t2, s4, 5
                  mulhsu       s10, zero, zero
                  div          s9, s5, a0
                  mulhsu       a3, s4, t3
                  subw         s2, s0, a0
                  mulh         s8, sp, t5
                  remw         s3, s5, s11
                  rem          s9, s5, s8
                  sraiw        s8, t6, 21
                  andi         a0, s4, 1619
                  srli         s3, ra, 9
                  auipc        t6, 213075
                  slti         t6, a6, -1913
                  mulw         t3, s4, t6
                  subw         s5, s3, zero
                  addiw        s9, t0, 1459
                  xor          a3, ra, s6
                  mulw         a4, t6, t3
                  addi         a3, s0, -1970
                  remw         a2, tp, a2
                  subw         t4, a2, sp
                  and          s3, s8, s2
                  slli         s9, a3, 5
                  and          a0, t5, tp
                  srl          sp, s6, tp
                  slli         gp, a5, 15
                  divu         zero, tp, s4
                  sraiw        gp, s2, 18
                  sllw         s11, t6, t0
                  ori          t2, t4, 1263
                  mulhu        a4, t2, sp
                  divu         a5, a4, s5
                  sraiw        t6, t2, 1
                  addw         a5, gp, t6
                  slt          sp, gp, a0
                  divu         a2, s9, a7
                  slti         gp, s4, 408
                  sltiu        zero, a5, -1903
                  subw         t1, a4, t6
                  sltu         s11, a2, a7
                  nop
                  slt          s9, s9, a4
                  slti         a0, s10, 234
                  remu         tp, s3, s11
                  sltu         s4, sp, tp
                  divuw        s2, s5, s9
                  auipc        s6, 218568
                  addw         s2, a6, t6
                  mulhsu       s3, t2, t0
                  srli         s9, s1, 38
                  srli         zero, s7, 17
                  sltiu        a3, s10, -1993
                  xori         a4, s10, -98
                  sub          a3, s1, s0
                  sraw         ra, s2, s3
                  addw         zero, s5, s4
                  sra          t0, a5, s9
                  sltiu        t2, s6, 742
                  sra          s9, t2, s10
                  remw         t4, t0, a3
                  remu         s0, a1, a3
                  remuw        t0, s0, s2
                  addiw        t2, a5, -385
                  subw         ra, sp, a7
                  mulhsu       a3, s2, s10
                  mulh         s5, a2, s4
                  addi         s7, a6, 360
                  srli         gp, a4, 39
                  sraw         sp, a1, s1
                  sltiu        s11, a5, -19
                  nop
                  lui          tp, 343816
                  mul          a1, s11, s4
                  andi         a2, a5, -719
                  ori          s2, a7, -1079
                  rem          sp, t1, t4
                  or           s8, zero, a3
                  remw         s11, s2, tp
                  addiw        a0, a2, -57
                  sllw         s6, s2, a1
                  xor          s5, t5, a5
                  mul          s5, a5, t3
                  subw         ra, a5, gp
                  lui          s4, 1032362
                  srl          t0, a5, a4
                  xori         t5, tp, -1520
                  mul          s5, a0, s11
                  srli         t4, tp, 18
                  sltiu        a0, a3, 587
                  addw         t0, s9, s6
                  srai         a4, s11, 27
                  slliw        s4, t5, 27
                  addiw        t1, zero, 550
                  srl          s5, s3, ra
                  rem          t1, s6, s2
                  slli         t3, tp, 6
                  auipc        s4, 284815
                  nop
                  sll          zero, t5, t5
                  mulw         s3, s4, sp
                  srai         s8, a1, 24
                  sll          zero, a0, t3
                  xor          t5, zero, s5
                  divuw        a1, a1, s5
                  srl          a0, ra, a7
                  mulw         s8, s4, s8
                  srlw         a5, a6, t2
                  sub          gp, gp, s6
                  srliw        s9, s8, 18
                  addw         zero, s9, t4
                  remw         s9, zero, t3
                  add          t4, s10, t5
                  srli         s0, t6, 60
                  nop
                  addw         s9, t6, s3
                  nop
                  lui          a1, 970883
                  divw         s8, t2, s9
                  sraiw        t3, s1, 15
                  sraiw        s8, s9, 3
                  sub          zero, s0, s8
                  divuw        ra, t4, t5
                  or           s5, t6, t0
                  srl          s3, s11, a0
                  ori          a3, s1, -540
                  srlw         s2, t0, t6
                  addi         sp, a3, 619
                  and          t0, a3, s6
                  and          a2, zero, t5
                  rem          s10, ra, t1
                  addiw        s6, s1, 1284
                  divw         s5, t6, a0
                  divuw        s8, t5, a2
                  auipc        s7, 646398
                  addw         s4, t5, s4
                  sra          s5, s10, a1
                  remw         a5, ra, s6
                  srli         s10, s5, 60
                  auipc        s11, 655713
                  sub          sp, sp, zero
                  srl          tp, s3, t5
                  divuw        a0, t6, t6
                  mulw         a0, a0, t1
                  subw         t6, s9, s8
                  or           s9, gp, s10
                  remw         s11, s8, s10
                  sllw         gp, t3, a6
                  xori         a1, s5, -44
                  sltu         s7, t6, gp
                  subw         a2, s7, s2
                  mulhu        s10, a1, s6
                  mulhsu       t4, t6, s7
                  rem          s3, t4, a1
                  nop
                  divw         a3, t0, s3
                  srlw         zero, a4, sp
                  divw         t2, ra, a0
                  srai         t4, s5, 52
                  srai         sp, t4, 9
                  divu         s0, s6, t4
                  lui          s7, 1023094
                  xor          ra, s0, s10
                  remw         s2, s5, s4
                  srl          a4, zero, t1
                  divu         s8, s10, sp
                  xor          t3, t3, t1
                  andi         s8, zero, -373
                  addw         s3, a0, s2
                  remuw        s11, t4, t2
                  nop
                  mulhsu       s7, a6, s8
                  srai         t3, t4, 61
                  mulhsu       zero, s5, s6
                  slli         s3, a2, 3
                  remw         s4, s0, gp
                  mulhsu       t2, t1, s9
                  sra          s7, t6, a2
                  sltiu        s9, a6, 1170
                  nop
                  divu         a2, sp, tp
                  srai         t4, t3, 46
                  auipc        t2, 973675
                  mulhsu       a4, a1, a6
                  srl          a1, s5, a2
                  slli         s2, s1, 49
                  auipc        a3, 858268
                  andi         t2, s0, -307
                  sub          tp, s4, tp
                  div          t3, a3, t3
                  lui          s7, 847838
                  divu         s8, t1, a3
                  mul          s3, a0, s2
                  sub          ra, s4, zero
                  lui          a4, 311075
                  mulh         t6, t1, t0
                  subw         a3, gp, a7
                  addi         a1, t3, 1326
                  sllw         s7, t3, s5
                  slliw        t0, s2, 2
                  nop
                  sra          tp, s2, t0
                  divu         t2, zero, t2
                  ori          s8, s9, 139
                  srl          t1, a7, t4
                  addw         s9, s11, tp
                  sraw         t3, s3, a0
                  subw         s11, a4, a5
                  sltu         s8, s9, s11
                  addi         t4, s8, -156
                  srli         s7, a3, 2
                  mulh         s0, s2, a7
                  nop
                  add          s10, t5, s4
                  remw         s3, t2, sp
                  divu         s5, s8, t3
                  sllw         t1, s6, s7
                  remu         s8, t3, s9
                  sllw         s0, a0, s2
                  mulhu        s3, gp, a0
                  divu         s6, t6, s3
                  div          s2, s11, a6
                  divu         a4, t6, s6
                  lui          t3, 19808
                  mulhu        s6, a2, t0
                  sltiu        s5, gp, 1335
                  and          zero, ra, sp
                  mulh         a3, zero, s0
                  sltiu        sp, s3, 337
                  addiw        ra, a0, -626
                  srlw         s0, ra, a5
                  slt          s2, s3, s9
                  slt          s9, s9, t2
                  srlw         t6, t3, s1
                  ori          s2, t3, -1716
                  subw         t5, s4, t5
                  nop
                  slti         s8, a5, -1185
                  remu         s5, t0, s2
                  rem          t3, s1, a2
                  srliw        s9, s2, 14
                  slli         a5, t3, 11
                  addiw        s9, s1, 1571
                  remu         s9, s8, a3
                  or           ra, a0, s1
                  or           a3, a3, a3
                  mulw         a4, t4, a3
                  auipc        t4, 902071
                  or           a3, a2, sp
                  mulhu        t1, t3, a2
                  divu         zero, a5, a7
                  sll          t6, gp, a5
                  and          a4, s8, s5
                  srliw        t2, s7, 24
                  slliw        s5, s7, 1
                  divu         t0, t0, t1
                  sll          t4, s5, sp
                  mulw         s4, s1, a5
                  andi         a3, s4, -1869
                  sll          s8, s0, t6
                  addiw        s5, t0, 211
                  div          s2, t2, s9
                  srai         sp, a0, 47
                  subw         s4, t5, zero
                  srliw        s6, t0, 25
                  remuw        ra, s0, a0
                  sra          s0, a6, s1
                  addi         s11, a7, -1622
                  and          s2, t6, t0
                  addiw        s11, ra, -1066
                  sltu         s5, s9, a0
                  sub          tp, t5, tp
                  auipc        sp, 290099
                  nop
                  or           tp, s6, a7
                  sltiu        tp, zero, -1432
                  srl          t1, s2, t3
                  xori         s5, s7, -1981
                  srl          zero, a3, s11
                  remw         s5, s7, zero
                  srli         s3, gp, 2
                  add          s0, a3, t1
                  sllw         s2, a3, s3
                  remu         a4, sp, s9
                  xor          s11, s6, t5
                  addw         s5, s7, zero
                  sraw         zero, s7, zero
                  auipc        s8, 921233
                  slt          gp, t4, tp
                  or           t2, t3, s10
                  sraiw        gp, s2, 7
                  xori         t4, a4, -525
                  xori         s0, s5, -1762
                  divuw        t6, a5, t4
                  srli         t2, a3, 28
                  lui          a1, 967337
                  addw         s4, a1, s11
                  divu         t2, s9, a7
                  slt          t4, a2, s7
                  slt          s2, s11, a2
                  or           t0, t5, s6
                  add          zero, a7, s6
                  lui          t2, 833777
                  add          s5, s7, a3
                  sraiw        t5, sp, 15
                  addiw        a2, t2, -945
                  mulh         s7, a3, s6
                  remuw        s8, s2, a7
                  andi         t2, s7, 1819
                  sraw         s2, a7, s2
                  mulhu        s3, s1, s11
                  remuw        t1, a5, a3
                  divw         s9, s1, tp
                  srl          s5, s4, t2
                  addiw        s4, a1, -1709
                  mulh         a2, a3, s3
                  or           s10, a7, zero
                  slli         t3, a7, 18
                  xor          s7, s5, sp
                  lui          t2, 678820
                  addi         sp, s8, -1057
                  sll          s3, s9, a1
                  sraiw        tp, t1, 31
                  sltiu        a2, t2, -2034
                  divu         s8, a0, t1
                  srliw        s5, t5, 22
                  sltiu        a1, s6, -722
                  div          s3, s4, s4
                  sraw         s10, gp, s6
                  srl          a0, a0, a1
                  sub          sp, a1, s11
                  divuw        s4, s6, t5
                  divw         t2, sp, s8
                  addiw        s10, s11, -1571
                  srai         s6, t2, 6
                  auipc        gp, 978643
                  slti         a5, a6, -1798
                  slt          s7, ra, a1
                  nop
                  sltiu        s3, t0, -35
                  rem          s7, s0, s6
                  remw         s0, a4, s4
                  sub          s7, t6, t0
                  addw         a2, a2, t0
                  mulh         t1, s8, s11
                  srli         ra, t4, 21
                  srl          ra, a3, s0
                  divw         gp, t3, a3
                  addiw        a1, t4, -2044
                  mul          a3, s10, s1
                  divuw        a0, t4, s5
                  sltiu        t3, t3, -662
                  ori          a1, s8, 1881
                  mulh         s0, a0, s8
                  srai         t0, a0, 22
                  slti         t4, s9, 1329
                  slli         s4, sp, 50
                  sraiw        t0, s4, 27
                  subw         s7, zero, ra
                  mulw         ra, t4, s4
                  lui          sp, 428143
                  slliw        t2, t5, 13
                  or           t1, gp, s6
                  xori         gp, s0, 1505
                  addiw        sp, s2, 1589
                  lui          s9, 942149
                  addiw        s6, a7, 1806
                  ori          a2, t3, 661
                  srl          a5, a0, gp
                  srli         s4, sp, 16
                  addiw        s10, zero, -1021
                  ori          t1, t5, -348
                  mulh         s0, a3, s8
                  mulhsu       s6, t5, s6
                  divuw        t5, t4, a2
                  add          s5, s5, t5
                  srlw         s8, zero, s6
                  ori          a5, s0, 67
                  slt          t0, gp, a1
                  divu         tp, s3, s9
                  sllw         t5, s5, a3
                  slli         s0, t4, 62
                  sllw         a3, zero, s3
                  mulhsu       a2, s11, t4
                  nop
                  slli         s4, t1, 30
                  srai         t2, sp, 17
                  srai         s9, s8, 7
                  slt          t5, ra, s10
                  slt          s10, zero, s9
                  xori         t4, t4, 1732
                  srli         s3, a6, 44
                  srlw         ra, s7, s3
                  subw         t4, t2, s1
                  mulw         s6, a4, a6
                  lui          a3, 708438
                  or           a2, t2, s4
                  slliw        t5, a4, 13
                  mulhsu       s5, s2, a2
                  srliw        t3, s8, 24
                  addiw        t1, tp, 1995
                  remw         s0, s10, a4
                  mulhsu       s4, s8, s7
                  mul          s7, sp, tp
                  lui          zero, 937102
                  sraiw        sp, s7, 17
                  rem          s5, s7, a0
                  addi         s8, s9, 949
                  remuw        a2, gp, t4
                  mulhsu       s4, s8, s8
                  mulh         t3, t3, t0
                  sll          a2, s9, s7
                  mulh         sp, zero, t0
                  mul          ra, t5, t3
                  xor          t1, sp, sp
                  subw         gp, a6, s1
                  mulw         a3, a0, s2
                  addiw        t4, a0, -1933
                  rem          s9, s8, tp
                  addw         s2, sp, sp
                  subw         s6, a3, a2
                  and          s8, s9, zero
                  divuw        t6, gp, s6
                  mulh         t2, sp, s5
                  divu         s7, ra, a7
                  nop
                  sraiw        s6, s5, 13
                  rem          t2, a6, a3
                  sltiu        a3, s3, 1427
                  srli         sp, tp, 38
                  lui          s5, 509959
                  mulh         zero, s0, gp
                  sraiw        s3, s5, 29
                  mulhu        t0, a6, a6
                  subw         t1, s6, s10
                  andi         s2, t4, 184
                  rem          s0, a4, t3
                  div          s7, tp, a1
                  remu         t6, s0, t2
                  addw         s6, tp, s3
                  sub          s8, a5, s0
                  sub          s5, a4, a5
                  srliw        a3, a2, 5
                  remw         s6, s7, t2
                  divw         s9, a2, gp
                  slti         t4, ra, 206
                  subw         s9, s9, t0
                  div          zero, a1, s10
                  lui          s4, 651593
                  add          a4, s5, t2
                  slti         a5, t3, 1245
                  sraw         s9, tp, s2
                  divu         t3, s8, t2
                  nop
                  srlw         a0, s9, s6
                  addw         s8, gp, t1
                  mulh         t5, ra, a4
                  or           ra, t2, a5
                  or           s9, a7, a6
                  div          a5, s9, s11
                  srli         gp, t5, 37
                  sraiw        t0, s3, 13
                  slt          s4, s0, t2
                  add          s10, sp, ra
                  sub          s6, zero, s9
                  sltiu        s5, a1, -1618
                  subw         a0, s6, s8
                  sra          a1, s0, gp
                  mulh         zero, s2, t0
                  sraiw        tp, s0, 14
                  mulhu        s6, a5, s4
                  andi         t0, a0, 1794
                  xori         s10, s1, -954
                  lui          s5, 738647
                  mulh         a2, t4, s6
                  slliw        t2, s2, 30
                  sra          a4, a2, s3
                  add          t1, s9, t4
                  andi         s6, a2, 175
                  srl          s10, s3, zero
                  addw         a2, zero, t3
                  divu         s8, t0, s10
                  remu         s3, a5, t2
                  slti         s9, sp, -1426
                  slt          s9, s6, a3
                  sll          t6, zero, a6
                  addw         s0, a3, s2
                  sll          s6, a3, s9
                  sraiw        ra, t5, 26
                  addi         a3, sp, 208
                  add          a5, s7, ra
                  mulhsu       t3, s11, s11
                  auipc        zero, 74477
                  mulw         t6, s11, zero
                  sll          zero, sp, t1
                  mulhsu       a5, gp, t1
                  div          s8, s9, a7
                  add          s5, s9, tp
                  remw         s2, a6, s9
                  add          t2, t1, t3
                  subw         a5, a2, a2
                  slliw        s4, s3, 26
                  mul          a0, s11, s9
                  srl          s7, zero, a2
                  sub          s11, sp, zero
                  auipc        s5, 239976
                  slt          s0, s2, t4
                  slti         s2, zero, 853
                  div          s8, a1, t0
                  sraiw        a0, s9, 1
                  xori         t0, s2, -1532
                  divuw        s8, a7, t1
                  addiw        a5, a4, -955
                  ori          a1, t5, 460
                  sltu         a2, s1, gp
                  srai         s5, a1, 18
                  div          t4, a2, s0
                  divuw        s5, t4, s0
                  remw         a2, a0, a6
                  ori          tp, s11, -1806
                  slti         sp, s3, -458
                  add          s9, a2, s4
                  sltu         s5, s4, s6
                  addi         ra, sp, -1224
                  sraiw        a1, a7, 19
                  subw         a5, a3, t4
                  slli         t0, t3, 36
                  sltu         t5, tp, t3
                  auipc        a3, 474819
                  slti         s8, s10, 196
                  remuw        t0, a3, s8
                  divu         s9, gp, t6
                  srli         s8, a1, 18
                  add          a5, t6, a3
                  subw         s11, a3, s8
                  lui          s9, 527757
                  mulhu        s11, s9, tp
                  or           s9, s3, sp
                  srl          s11, s6, a0
                  xori         t4, tp, -1283
                  div          s3, ra, zero
                  rem          a0, t3, s8
                  sraiw        t2, t0, 2
                  sltu         sp, t5, ra
                  auipc        s10, 1037285
                  div          t0, t0, t4
                  remuw        t1, tp, t4
                  slti         s5, t1, -1497
                  sraw         s9, t2, t6
                  xor          t5, a4, s1
                  ori          t0, a7, -1571
                  rem          s7, sp, a6
                  addiw        ra, s1, 916
                  subw         a0, s8, t4
                  rem          a2, gp, s8
                  nop
                  sraw         a0, a7, s5
                  ori          s6, t0, -401
                  sltiu        t0, a6, -1775
                  slti         a5, gp, 1089
                  andi         a3, s6, 1466
                  remw         a3, t4, t5
                  srliw        t1, a6, 5
                  addw         a3, a2, s3
                  nop
                  and          sp, ra, a7
                  sraiw        s8, s5, 12
                  sub          s9, t3, gp
                  nop
                  ori          t0, a0, 1600
                  remuw        a3, s6, s7
                  sra          s2, t5, a0
                  srai         a1, s9, 27
                  srl          t4, t4, s4
                  sub          a1, t5, s1
                  subw         s2, sp, s6
                  sra          ra, sp, a5
                  or           s9, t2, t4
                  srlw         a3, t2, t1
                  xori         a1, t2, -292
                  sltiu        t4, a3, -1961
                  divw         a5, s6, s6
                  srlw         gp, a5, s0
                  slliw        s0, a6, 27
                  div          a3, t0, tp
                  or           ra, s5, s9
                  div          s2, t3, s2
                  divu         s9, s0, t6
                  sraw         t1, sp, t1
                  div          s0, gp, t3
                  xor          s4, s0, s0
                  slt          t0, s0, s4
                  divuw        a4, s0, s4
                  mulhu        s2, ra, a7
                  mul          ra, t4, a4
                  slti         s9, s2, 974
                  addw         zero, a1, a0
                  slli         t2, s1, 30
                  remuw        a5, s2, zero
                  remu         a2, sp, s9
                  auipc        s7, 423211
                  addi         t6, gp, 1753
                  sraiw        a4, t0, 18
                  addiw        s2, sp, 1097
                  sraiw        t1, s4, 15
                  sra          s7, ra, s7
                  mul          s9, t4, s1
                  lui          s6, 406504
                  slliw        a1, t4, 3
                  slt          s7, s11, t4
                  srlw         s4, t4, zero
                  and          a0, s2, s6
                  srli         tp, t1, 50
                  slli         tp, a2, 4
                  add          s8, s11, a6
                  remw         a0, a2, t0
                  sraw         s0, zero, s2
                  sraw         s0, s0, a7
                  addw         t6, t3, s10
                  slli         a0, a7, 25
                  sll          zero, s6, t3
                  sllw         ra, t1, a3
                  mulhu        s9, t3, s2
                  rem          s0, t2, zero
                  addiw        ra, t5, -564
                  sraiw        ra, s4, 13
                  andi         sp, a1, 1636
                  srl          s0, s10, s5
                  rem          ra, s9, a7
                  slli         s3, s8, 54
                  rem          a5, s5, t6
                  addi         t4, a2, -835
                  addi         s0, s4, 281
                  slti         t0, s1, 466
                  div          t5, t6, t3
                  or           a3, a3, a3
                  sraiw        a3, ra, 10
                  remu         gp, t4, a4
                  lui          t5, 748483
                  mulw         t3, tp, s9
                  xori         s11, a7, -477
                  subw         t6, tp, s5
                  sub          s8, t3, t2
                  mulhsu       s6, s6, s6
                  mulw         zero, t5, s0
                  srl          t5, s4, ra
                  andi         t1, tp, 1801
                  nop
                  xori         s7, s11, -415
                  and          t5, a6, s4
                  subw         t6, t4, t3
                  divuw        s3, gp, a2
                  andi         s5, s8, 1023
                  or           s7, s5, s7
                  mulhsu       s0, a7, t2
                  and          s7, s11, a1
                  add          s7, a5, t4
                  add          t1, a1, t0
                  andi         t5, a2, 31
                  srlw         t2, a0, s10
                  srai         zero, s8, 58
                  addi         a4, s6, -1181
                  add          ra, s2, zero
                  auipc        ra, 459377
                  mulhu        t4, ra, t3
                  divu         t6, s2, a0
                  sraiw        a5, s8, 3
                  sub          gp, tp, t5
                  mulhsu       s6, t1, s3
                  sltiu        s7, a1, -1383
                  remw         s0, a1, s5
                  div          s8, s2, a3
                  or           s3, s8, a3
                  slli         s9, s9, 14
                  add          s2, a0, t4
                  subw         s9, a6, s8
                  mulh         s4, tp, gp
                  sra          t2, s4, ra
                  divw         s2, a3, a3
                  sltiu        s3, sp, 109
                  andi         s4, s5, 1899
                  sra          s10, gp, zero
                  mulw         tp, a4, s6
                  remuw        t1, a0, t4
                  subw         s3, s9, t2
                  sll          t0, a1, a1
                  srl          t4, a7, t4
                  or           s6, t2, zero
                  mul          gp, s9, zero
                  mulhsu       sp, t4, s4
                  and          s5, s11, a4
                  auipc        t4, 394528
                  sll          s2, s9, t2
                  div          t1, a6, s3
                  slt          ra, a6, s5
                  mul          s7, t5, s4
                  xori         s0, a5, 646
                  sub          a2, a7, tp
                  lui          t2, 330652
                  mulhu        zero, a7, t4
                  divw         s8, s8, a0
                  sub          ra, t4, s8
                  srl          t6, s9, tp
                  remu         a0, s3, s7
                  remw         a1, gp, s6
                  nop
                  and          s11, t2, s2
                  sltiu        zero, sp, -1441
                  slli         s5, s7, 0
                  mulhsu       s8, s2, s10
                  sll          a0, s8, s7
                  slli         s0, gp, 30
                  srai         s3, a0, 6
                  mulw         s8, a5, tp
                  ori          zero, a4, 1090
                  slti         t2, s9, -730
                  lui          s4, 764034
                  slli         sp, s4, 49
                  mulw         s8, gp, t2
                  srliw        s10, a0, 12
                  sll          t0, a6, s4
                  or           a3, s9, sp
                  mulw         a3, a4, tp
                  sraw         t3, t6, t3
                  srliw        a5, a7, 1
                  sllw         s8, a0, ra
                  remu         zero, tp, a3
                  ori          s10, s6, 481
                  sll          t6, a5, t5
                  srl          s5, s6, a0
                  nop
                  sltu         s4, t3, t4
                  nop
                  mulw         t4, s11, a2
                  xor          s2, tp, s6
                  srli         s5, s9, 60
                  xor          s4, a3, t3
                  mulhsu       t2, a6, t2
                  andi         a5, a0, -942
                  sllw         t0, t3, a6
                  nop
                  rem          s6, s7, a6
                  remuw        t0, tp, s11
                  divuw        s0, a0, t2
                  sll          s3, a1, t4
                  mul          t6, a7, ra
                  divu         t6, t1, s9
                  rem          s10, tp, zero
                  slli         gp, gp, 27
                  mulhsu       gp, s8, a2
                  and          a3, sp, t2
                  slliw        gp, t2, 31
                  sltu         t0, s10, t1
                  subw         t0, s4, s1
                  mulh         s2, s10, t2
                  sltu         s11, t4, s9
                  divu         s0, s8, zero
                  srliw        zero, t6, 22
                  divuw        t3, s10, t6
                  or           s3, zero, a7
                  srliw        ra, sp, 26
                  remw         tp, zero, a5
                  divuw        s2, t5, t3
                  sll          s3, t0, a4
                  addw         s3, ra, gp
                  sltu         s10, s10, a0
                  sll          t4, s10, t0
                  and          t2, s10, a6
                  mulhu        s7, a6, gp
                  rem          s11, a1, t4
                  sltu         s3, t0, sp
                  addw         a4, a6, ra
                  mul          s4, s11, a4
                  sltiu        a5, a3, 558
                  sub          s7, a1, s5
                  srl          a0, s5, s8
                  nop
                  slti         a5, s1, -1916
                  mulhsu       sp, a2, t2
                  sub          s5, s7, sp
                  addw         s9, sp, zero
                  xor          t3, a1, t0
                  addw         t1, s0, a3
                  and          s4, a3, t0
                  srlw         t5, s11, t3
                  sraiw        tp, t2, 6
                  sra          zero, a0, a4
                  mulh         s6, s9, a5
                  srli         s9, a4, 44
                  lui          t3, 886803
                  slt          s0, s4, a2
                  sraiw        a0, s11, 20
                  ori          a5, a0, 1198
                  mul          t4, t4, a2
                  addw         t0, s0, sp
                  mulhu        s3, t2, t5
                  subw         s9, s2, t6
                  mulhsu       gp, a3, a3
                  remw         s0, s6, a5
                  or           s3, s1, a1
                  slliw        a5, tp, 27
                  slti         s8, a1, 162
                  lui          a3, 784384
                  remw         s2, t4, a5
                  divu         t1, s5, s2
                  add          sp, s5, s0
                  lui          gp, 946637
                  xor          s8, gp, zero
                  mulhsu       a3, gp, tp
                  sltiu        t3, tp, -1308
                  xori         a3, t3, -1770
                  rem          t3, t5, zero
                  add          s8, a5, t3
                  sraiw        zero, a1, 9
                  remuw        zero, s7, t4
                  addi         s7, ra, -1757
                  sraw         a1, t4, s3
                  sra          t0, s5, t5
                  srlw         a3, a4, t2
                  mulhu        a5, s2, a6
                  sraw         s4, a5, tp
                  mulhu        t3, t4, t4
                  rem          s4, a0, s10
                  divuw        s0, s10, zero
                  mulw         gp, tp, sp
                  srai         s9, tp, 31
                  sltiu        a5, s9, 2001
                  mulh         s0, a6, a5
                  subw         a1, a1, t5
                  divw         sp, zero, t2
                  auipc        a0, 441572
                  mulhu        s9, zero, t4
                  addw         s4, sp, s0
                  remw         zero, s6, s8
                  divuw        t2, a5, a5
                  srliw        a5, a4, 30
                  or           t0, a7, t1
                  div          tp, a4, a1
                  or           zero, a3, t4
                  divw         t1, sp, tp
                  divw         t5, s5, s9
                  divu         s2, s9, s2
                  lui          s7, 563873
                  xori         s6, t6, -1261
                  srli         s10, s7, 16
                  srai         a0, s2, 8
                  srl          t0, s0, zero
                  slli         t4, s9, 34
                  slt          zero, s8, t6
                  sraw         s3, t3, s3
                  rem          s2, s9, t4
                  srli         t3, s10, 25
                  nop
                  slti         s2, t6, -599
                  ori          s11, gp, -411
                  lui          t0, 483939
                  srliw        s5, s0, 27
                  divw         a1, a4, t0
                  srli         a5, a6, 33
                  divw         s5, t2, a3
                  slliw        s5, a2, 19
                  divuw        t2, a5, zero
                  mulhu        s8, s3, t5
                  or           ra, t6, s4
                  divw         gp, a4, t6
                  addw         s6, s3, t0
                  srai         s5, a2, 36
                  auipc        a5, 468972
                  srlw         t3, s8, s5
                  addi         s9, t0, 720
                  slti         t5, s7, -1517
                  addi         s10, s10, -388
                  sraiw        a5, tp, 22
                  srlw         t4, a3, a5
                  sraw         a2, a4, sp
                  lui          zero, 407162
                  srli         t6, t6, 6
                  addw         tp, a6, s6
                  sra          a1, zero, a6
                  srlw         a2, s4, t6
                  addiw        s7, t0, 263
                  auipc        t2, 172278
                  ori          s0, s11, 1947
                  slti         a1, ra, -865
                  add          a2, ra, s3
                  addw         zero, a6, t5
                  sub          t0, s3, ra
                  mulhsu       s8, s5, ra
                  sltu         a0, sp, a1
                  div          tp, t2, s4
                  add          t2, ra, s11
                  sraiw        a4, a5, 20
                  mulw         ra, a7, s0
                  lui          t6, 48032
                  rem          t0, t6, t6
                  srli         t5, s6, 24
                  divw         a1, s8, a0
                  sltiu        s0, t0, -1783
                  remu         s5, a6, t1
                  sraw         ra, a0, zero
                  slliw        ra, a6, 29
                  ori          a5, s5, 1984
                  mulhsu       t2, a4, s6
                  sraiw        s3, s1, 10
                  addi         a2, s4, 1471
                  and          ra, s9, s10
                  remu         a3, a0, s4
                  remuw        sp, t5, t2
                  andi         a3, tp, -556
                  srai         s9, s3, 21
                  addiw        a0, tp, 460
                  sll          t2, a2, s6
                  sllw         ra, s2, t3
                  addiw        a2, s0, 1106
                  ori          t3, s6, -1817
                  srli         ra, a7, 23
                  remuw        s8, a6, t5
                  sraw         t6, t4, tp
                  sllw         s5, s1, s6
                  addiw        s10, a7, -997
                  mulhsu       t4, sp, t1
                  divu         ra, t4, s5
                  subw         t1, s3, a1
                  ori          s3, sp, -65
                  xor          gp, s9, s5
                  sltu         s3, t0, a7
                  rem          t3, s5, s6
                  divw         zero, s2, gp
                  slti         s6, t4, -238
                  sltu         t0, s7, a6
                  sraw         ra, a1, s0
                  sll          s0, a5, t2
                  remuw        s2, s0, t3
                  sll          a1, t1, a0
                  or           a1, s0, s1
                  divw         a5, s3, s10
                  sraiw        t0, a0, 21
                  remw         a3, zero, t1
                  divuw        s10, a3, a5
                  srliw        t5, ra, 10
                  srli         s11, ra, 28
                  mulhsu       s6, t5, a1
                  remu         s2, s9, ra
                  addi         tp, a1, -355
                  remw         a1, s3, a5
                  xor          gp, a7, tp
                  mul          s7, s11, s3
                  srliw        s3, s1, 29
                  divuw        t0, t3, a5
                  and          t1, s11, s7
                  rem          s11, a6, s9
                  andi         t3, s2, 101
                  slti         a1, a0, 805
                  ori          s2, a5, -139
                  remuw        a0, s1, s0
                  divuw        t0, s4, a4
                  slti         s4, s5, -308
                  remuw        s4, t0, zero
                  sub          t1, t3, t5
                  slli         a5, t1, 20
                  sra          a3, s9, tp
                  sub          a0, a6, a4
                  srlw         s0, t4, t2
                  andi         s6, a0, 1717
                  addw         s0, t1, s8
                  addi         t4, a0, 2000
                  xori         t1, t5, 1584
                  sraw         sp, a4, a7
                  ori          gp, zero, 243
                  slliw        s3, s5, 21
                  mul          s4, s3, s3
                  addi         s11, a2, 1646
                  mulhsu       s5, s4, s6
                  slli         t4, t4, 19
                  sraw         t3, sp, a7
                  div          a2, zero, t2
                  divuw        t6, t2, t4
                  sltiu        a3, s2, 1413
                  rem          a4, t2, s8
                  srliw        a0, t0, 9
                  sra          a0, a6, a1
                  sraiw        s8, t3, 3
                  sltu         t2, gp, s3
                  ori          t0, a3, 361
                  remw         t4, t3, a1
                  andi         t5, t3, 355
                  slliw        s6, a6, 24
                  lui          s2, 996553
                  sltiu        t5, a1, 1105
                  sll          ra, t2, ra
                  addw         tp, s2, s4
                  nop
                  add          ra, t5, t3
                  div          s10, a6, s1
                  addiw        t0, s9, 361
                  mulw         tp, s11, s8
                  xori         gp, s11, 1572
                  slti         s2, a0, 1487
                  srliw        s5, t4, 9
                  slli         s3, s6, 59
                  srliw        a1, a7, 11
                  sraw         a0, a6, s8
                  nop
                  addi         a5, s1, -106
                  sll          gp, a7, s8
                  sub          sp, a2, t3
                  srl          s6, a2, t0
                  or           t3, s0, a2
                  srliw        t4, sp, 28
                  srli         gp, a5, 14
                  slliw        a2, sp, 20
                  andi         t4, s3, 919
                  addiw        s8, s2, 1119
                  xori         s0, s7, -271
                  addi         t1, tp, 1991
                  slti         s4, s10, -1435
                  andi         s5, t1, 1170
                  mulh         tp, a7, a6
                  divw         s0, a6, zero
                  or           s5, s2, s11
                  sraiw        sp, gp, 4
                  add          s5, a1, a1
                  sll          t4, a7, a3
                  mulw         tp, s2, a4
                  slli         gp, a3, 52
                  divuw        a2, s3, tp
                  and          a2, s6, a1
                  mulh         t6, s9, s2
                  slt          ra, s9, s11
                  sraw         t0, s5, s8
                  srlw         s9, s5, a7
                  slt          sp, s1, a0
                  slliw        t6, a4, 28
                  sraw         t6, t0, zero
                  divw         s4, t5, t5
                  subw         s4, a5, s1
                  srai         s7, t4, 9
                  andi         t0, s6, -725
                  sraw         t0, s8, sp
                  mul          t2, a0, s4
                  remw         s6, t1, s10
                  sll          ra, gp, t2
                  sraiw        s11, s6, 22
                  sltiu        s2, t1, 1182
                  remw         s0, a3, s2
                  sub          t1, s2, s11
                  addw         s9, a2, a5
                  remw         s9, a0, s6
                  divu         t1, a5, a6
                  xor          s3, a6, t4
                  sllw         s0, s8, s4
                  slli         gp, s10, 7
                  srliw        s5, s6, 22
                  auipc        s2, 647722
                  addiw        t3, s11, 1440
                  sraw         s11, a3, a7
                  slli         a0, s2, 42
                  slti         zero, a4, -902
                  srli         t6, a3, 40
                  sub          t1, s1, s7
                  slliw        t0, a4, 21
                  sltiu        a0, s11, -1813
                  divu         s5, s6, s6
                  div          s3, t2, a5
                  rem          t1, tp, ra
                  andi         t3, a7, -980
                  remuw        s10, a6, s6
                  remuw        t5, tp, a0
                  addiw        zero, t5, -1602
                  sraw         s6, a4, a0
                  mulw         s8, a6, s6
                  and          t2, sp, a7
                  sltu         s2, zero, zero
                  and          sp, ra, s5
                  addw         a3, t3, zero
                  sraw         a3, a3, s2
                  slti         a4, t3, 124
                  or           s9, t1, sp
                  divuw        s10, s8, a0
                  subw         s4, s11, zero
                  andi         t3, t5, 1060
                  divuw        zero, a6, s11
                  div          s9, t0, s10
                  addw         s6, a4, a0
                  rem          s2, s6, s11
                  mulh         t3, s4, s3
                  addiw        ra, s8, 596
                  addw         a2, a6, a7
                  remuw        s2, a2, a0
                  sraw         sp, t1, sp
                  mulhsu       zero, s10, tp
                  nop
                  andi         zero, a7, 468
                  remu         s7, ra, s2
                  sltiu        tp, a1, 108
                  srlw         tp, a1, s10
                  slliw        a0, t2, 9
                  slti         s3, s3, 1084
                  subw         t2, a6, a2
                  addiw        s2, a0, -642
                  div          a0, t0, a2
                  sraiw        zero, a5, 28
                  slti         a4, s3, 660
                  addiw        t1, t3, -297
                  mulh         tp, t6, a5
                  sll          tp, s7, s8
                  or           a1, a7, sp
                  remu         a2, ra, t1
                  srai         s2, s1, 33
                  sraiw        a5, s1, 4
                  xori         ra, s5, 2029
                  srliw        a5, s9, 22
                  mulw         s8, t3, a5
                  addw         t1, s2, a6
                  addiw        a4, s5, 1598
                  remw         a3, a6, zero
                  srliw        ra, t5, 3
                  xori         sp, s3, 1549
                  slti         s7, a7, -1785
                  sll          t5, s3, s8
                  xori         sp, s10, -1600
                  divu         tp, sp, t6
                  rem          s2, s0, t0
                  div          t0, a6, s5
                  sllw         s10, s5, s7
                  sltiu        t1, gp, 380
                  divu         a1, s4, sp
                  sltiu        a2, a2, -1440
                  remu         s3, t3, a7
                  slti         s3, ra, -1765
                  mulhu        sp, a4, t2
                  or           s3, a5, t4
                  sra          t5, s9, a3
                  addiw        s5, t6, 2009
                  remuw        s2, a3, t0
                  sra          t5, a4, a3
                  remuw        a1, s2, zero
                  sraiw        a0, s5, 20
                  addiw        s6, t5, 888
                  mulw         s10, s8, s9
                  add          s11, s8, tp
                  mul          a5, s6, t4
                  sraiw        s0, s8, 21
                  srai         s2, s5, 54
                  xori         a2, sp, -609
                  mul          s6, s0, s10
                  div          a2, tp, s1
                  ori          tp, ra, -733
                  sltu         a5, t3, s11
                  sltu         s0, s11, sp
                  srai         a4, s3, 60
                  srl          t5, zero, s10
                  mulh         t0, gp, a6
                  nop
                  remuw        s4, sp, s6
                  addiw        s4, s3, 1258
                  sra          ra, s7, a4
                  sltiu        t5, t1, 1021
                  ori          a5, s11, -1046
                  addiw        t4, a0, 1743
                  mul          s9, s3, a1
                  divu         a1, t4, s1
                  sra          a1, t2, a5
                  addw         s11, ra, a4
                  nop
                  div          ra, a3, t6
                  sraw         a2, t0, zero
                  slli         a3, t3, 53
                  or           tp, s8, a6
                  remu         s8, gp, a3
                  mulhu        s8, a2, s3
                  sll          s2, t2, tp
                  addw         s11, tp, t2
                  subw         t2, s3, a0
                  sraiw        s9, t1, 28
                  xor          ra, zero, s4
                  sra          s5, gp, s1
                  addi         a4, t3, -653
                  slliw        a5, sp, 30
                  addiw        t0, sp, -1975
                  srliw        t1, tp, 16
                  addi         s3, a2, 1461
                  divu         s0, a3, s9
                  sub          s10, t4, s2
                  sraw         s10, t6, tp
                  mulh         s8, s11, s3
                  sub          s11, s5, t5
                  slt          s11, s0, a2
                  sll          s7, s11, tp
                  div          a2, sp, tp
                  mul          zero, tp, s9
                  andi         s2, gp, -1347
                  srliw        s2, s8, 25
                  xor          s8, s4, t5
                  mulh         t5, s0, t4
                  auipc        s10, 209694
                  addi         a0, a4, -273
                  slt          a1, t1, t6
                  addiw        t0, a7, -1692
                  sll          a3, t2, tp
                  divu         ra, t3, s10
                  mulhsu       s0, s0, s6
                  nop
                  remuw        a5, a3, s4
                  ori          zero, a5, -300
                  mulhsu       s5, t5, t3
                  mul          s10, s11, gp
                  sraw         s4, s7, t2
                  add          s8, a3, s4
                  div          a3, t1, s10
                  mulh         t4, t0, s2
                  mul          t4, t3, gp
                  sra          a0, a4, s6
                  addiw        t3, t4, -1862
                  remw         gp, s0, gp
                  srliw        s8, ra, 14
                  srlw         ra, s8, t5
                  srai         s9, s11, 28
                  srai         a4, a6, 15
                  srlw         tp, ra, gp
                  addi         t5, t2, -1731
                  ori          s5, zero, -1532
                  mulh         s10, ra, s9
                  andi         gp, s4, -423
                  srlw         s0, tp, a2
                  auipc        a2, 912131
                  xori         a3, a3, -1465
                  srl          s7, s2, a7
                  srl          t4, t6, s8
                  slt          gp, s8, s1
                  sltu         a2, tp, a6
                  remuw        s9, gp, s1
                  divuw        t2, a1, ra
                  sltiu        gp, a3, -1895
                  addw         tp, s2, a4
                  srliw        s11, t1, 11
                  and          t0, s7, tp
                  slt          t4, gp, a6
                  xori         s10, s9, 741
                  sra          t1, a0, s5
                  srl          a4, s3, t6
                  lui          a2, 985178
                  subw         a0, s9, t2
                  nop
                  lui          a5, 675558
                  remu         s6, t4, a2
                  mulhu        gp, ra, t0
                  mulhu        ra, s11, a2
                  ori          t3, s8, 1382
                  div          t0, a3, s8
                  addi         t2, sp, 1187
                  mulh         t1, s6, a0
                  remuw        sp, a4, a5
                  sltu         tp, a1, s7
                  sraiw        t4, zero, 31
                  mulhsu       s7, a2, a5
                  slli         s8, t4, 5
                  addiw        s11, a0, -1166
                  slli         gp, t3, 50
                  srl          zero, t3, a4
                  sll          a3, t6, a2
                  srl          a1, t2, s11
                  xori         s4, a6, 1382
                  sltu         s0, s3, a6
                  mulw         t2, t0, a5
                  sltu         s3, a3, s9
                  ori          t3, s0, 1355
                  srliw        s2, s9, 16
                  slti         ra, sp, -1801
                  subw         t6, s11, a0
                  divu         s5, s0, t1
                  mulw         s9, t0, s3
                  slti         t4, a0, 1002
                  mul          s11, s0, t2
                  sltu         s10, sp, gp
                  divw         a2, t3, t2
                  nop
                  sll          t5, tp, t1
                  xor          s6, s6, s8
                  srl          s5, s8, ra
                  ori          sp, zero, -356
                  slti         s0, s7, 1798
                  subw         s8, a4, a4
                  mulhu        t1, sp, a2
                  subw         s4, zero, a1
                  nop
                  auipc        s5, 666618
                  addiw        s0, t2, 346
                  addiw        a1, sp, 1098
                  srliw        s2, s11, 31
                  rem          s3, s0, s7
                  ori          gp, t1, -184
                  subw         s6, t4, a2
                  mulhu        gp, gp, zero
                  mulw         a1, t1, tp
                  or           s2, t3, t4
                  srliw        sp, sp, 22
                  sub          t2, s3, a5
                  sltu         t6, t6, a3
                  add          s7, s7, s11
                  div          a3, s5, t4
                  mulhu        zero, t6, s11
                  srliw        t2, t4, 15
                  srai         s6, a4, 40
                  lui          a3, 535858
                  slt          s4, s6, s0
                  rem          t3, zero, t0
                  divw         s0, s11, gp
                  auipc        t2, 923553
                  and          s0, s8, a3
                  mul          s9, a2, s6
                  mulhsu       a1, zero, t2
                  mulhu        a2, t2, tp
                  auipc        s10, 112189
                  slli         gp, s5, 11
                  auipc        s5, 866699
                  remuw        t1, a5, a2
                  mulh         t6, ra, s6
                  divuw        s2, s1, t0
                  xor          t4, t6, a2
                  rem          tp, s9, a1
                  sraw         zero, s10, zero
                  sub          sp, ra, a3
                  srliw        s5, s0, 9
                  xor          s6, t5, zero
                  and          gp, sp, s11
                  subw         t6, s5, s10
                  and          s11, a0, t1
                  divw         t6, a5, a5
                  ori          s10, s3, -24
                  remuw        t1, tp, t0
                  sub          zero, a3, gp
                  sltu         s11, zero, s0
                  andi         s0, s3, 784
                  div          s9, s11, s8
                  sll          s2, t0, s5
                  mulw         t0, s9, tp
                  nop
                  mulhu        t0, t6, a3
                  auipc        t4, 466372
                  srli         ra, a6, 59
                  add          s5, s7, gp
                  divuw        tp, a5, ra
                  xor          t1, t0, gp
                  mulw         s2, s4, s5
                  mulhu        gp, s1, t5
                  xori         a0, t2, 1216
                  xori         s2, s2, 1832
                  mul          a0, s9, s9
                  divuw        t1, a0, s2
                  mulhsu       a4, t0, gp
                  auipc        t3, 731213
                  divuw        ra, s9, s8
                  andi         s5, sp, 1724
                  slli         t5, s11, 59
                  divw         a3, zero, s9
                  srlw         s2, s8, t2
                  addiw        a2, a5, -1902
                  addi         s8, a6, -1111
                  mulh         s8, t0, t6
                  mulw         a5, s6, ra
                  subw         s2, t3, gp
                  mul          t5, s0, a5
                  xor          zero, ra, s2
                  addi         zero, tp, 1141
                  remw         s6, a3, s0
                  remw         t3, s8, s1
                  div          s9, ra, s7
                  sraiw        ra, tp, 26
                  mulhu        t3, a6, s2
                  lui          a2, 525968
                  slliw        a2, s5, 21
                  subw         s11, s7, a2
                  add          t0, gp, s11
                  xori         sp, s2, 1034
                  slliw        a3, t2, 24
                  sraiw        a5, a6, 11
                  srliw        a2, t4, 4
                  xori         t0, s9, 1985
                  xori         s9, a6, 765
                  mulhsu       s9, s7, s11
                  remw         t5, a3, a2
                  lui          s9, 374441
                  ori          a2, a7, 443
                  slli         s5, s8, 47
                  sll          s0, a6, tp
                  mulhu        t5, sp, s0
                  slliw        s10, s9, 13
                  slti         tp, s6, -1741
                  and          t4, gp, gp
                  srlw         tp, s8, a7
                  rem          s4, a0, s7
                  sraiw        gp, a7, 6
                  remw         s6, s1, s5
                  divw         t1, a6, s6
                  mulh         t0, a4, zero
                  sra          s8, a6, s7
                  slti         t1, a1, 118
                  srli         t5, a1, 55
                  nop
                  lui          s10, 834814
                  mul          s8, s11, s1
                  sll          s0, s1, s10
                  srli         sp, s11, 62
                  slti         s10, s5, -2032
                  mulhsu       t3, gp, s2
                  xor          t0, sp, s3
                  srl          s0, gp, a0
                  xor          a4, s6, a2
                  sltiu        s2, tp, -812
                  andi         s2, gp, 218
                  srliw        tp, a7, 2
                  srl          t6, s8, t6
                  lui          a0, 736864
                  or           a3, zero, a3
                  sraw         s3, s4, s6
                  divw         s8, a5, a4
                  remw         zero, a6, s9
                  mulh         s2, t1, t4
                  srl          s4, t2, a6
                  sra          a2, a2, s8
                  srai         s10, s10, 57
                  srliw        a1, s4, 8
                  srli         s10, s8, 29
                  or           s11, s7, a5
                  addw         s6, s10, a3
                  slti         s8, a2, -675
                  remuw        t6, a5, ra
                  subw         t3, s11, tp
                  divuw        s6, sp, t5
                  add          t5, s1, t4
                  srai         s0, a7, 44
                  sll          s10, tp, a2
                  addiw        s9, s11, 1610
                  mulhsu       a3, t6, t3
                  nop
                  sltu         t6, s4, t1
                  andi         sp, a7, -1461
                  addiw        s5, t3, -1108
                  srl          a2, a5, s9
                  div          a1, s5, s7
                  sllw         t3, t3, s0
                  addw         s9, t3, a1
                  xori         t0, gp, 193
                  srliw        t6, a0, 22
                  lui          s2, 759918
                  add          sp, t6, s7
                  or           t5, t1, t2
                  addi         a5, a1, 1807
                  div          s2, t3, a2
                  slli         s4, a5, 21
                  mul          s7, t4, s7
                  srlw         zero, t5, s11
                  mul          gp, s5, a1
                  mulw         ra, t5, t4
                  mulh         a0, s7, s7
                  remu         tp, a7, a3
                  sra          a2, s0, a6
                  or           a4, s10, s4
                  sllw         a0, s2, s1
                  srliw        s3, t0, 23
                  srli         s5, t0, 1
                  remu         zero, tp, t6
                  srli         a1, a5, 43
                  divw         s2, ra, a6
                  sraw         s7, a1, t0
                  divw         s7, s0, a3
                  sra          s3, s2, s8
                  addw         s6, a3, s1
                  sraiw        ra, s3, 15
                  srli         t6, s8, 2
                  auipc        t2, 1047332
                  rem          s6, t6, a6
                  sraw         t5, s2, s9
                  sub          a1, tp, a6
                  mulh         s6, s1, s11
                  auipc        s6, 905895
                  addiw        sp, gp, -329
                  sra          s4, s0, a4
                  sltu         s2, a0, t0
                  sltiu        s7, zero, 381
                  and          a5, tp, s5
                  slti         t4, s1, -965
                  mulhu        t4, t1, s8
                  ori          t4, s1, -1020
                  addw         s8, s3, t5
                  xor          s4, a4, s6
                  slli         t2, t1, 61
                  divuw        t6, t5, a3
                  addw         t0, t4, a2
                  srliw        s2, t2, 27
                  remu         t2, zero, a2
                  srli         s10, a1, 43
                  add          s6, zero, gp
                  srli         tp, t1, 15
                  sll          a4, t4, a3
                  sltiu        s10, s1, 1870
                  lui          t5, 819183
                  auipc        a2, 688734
                  remu         ra, ra, a5
                  srli         a5, s0, 57
                  sltiu        ra, s10, -302
                  sraiw        a2, tp, 14
                  divw         t2, t2, a7
                  xori         ra, s6, -661
                  srlw         t5, s10, a4
                  remuw        s4, s6, a6
                  sltu         ra, s4, gp
                  addiw        gp, s9, -373
                  mulw         t0, zero, s3
                  and          t3, s5, s7
                  auipc        s7, 392140
                  srliw        a0, t6, 27
                  rem          ra, tp, zero
                  mul          a2, a6, s0
                  srliw        a4, s6, 21
                  rem          a5, s8, zero
                  mulhsu       t3, s0, a1
                  slt          a0, s0, s7
                  ori          t6, s3, -10
                  andi         a1, t5, -218
                  mulh         s5, gp, s5
                  mulhu        a2, s1, t3
                  addi         a1, s3, 773
                  remuw        t4, s7, a2
                  slt          zero, s10, tp
                  addi         ra, gp, 1291
                  sllw         s0, s3, s4
                  sltu         ra, a1, s8
                  nop
                  xori         t1, a1, 41
                  divuw        t6, a1, a4
                  sltiu        a0, t4, 1472
                  slli         s6, a4, 54
                  mulh         t3, s10, s8
                  remw         s6, t0, s7
                  mulh         s10, a1, tp
                  srliw        s8, a0, 1
                  remw         gp, t5, s9
                  srliw        a5, a2, 8
                  addi         t4, t3, 376
                  slliw        s5, s7, 12
                  divw         s10, s7, t3
                  remw         a2, s5, t1
                  remuw        t3, t3, t2
                  mulhsu       zero, t3, a1
                  lui          s3, 92240
                  andi         t1, a7, 565
                  nop
                  divw         t6, t6, a1
                  xor          a1, s10, gp
                  divu         a4, t3, s7
                  auipc        s2, 129009
                  and          s3, a4, s10
                  rem          a4, t0, s11
                  sltu         ra, sp, a7
                  sra          sp, zero, sp
                  sub          ra, zero, t2
                  addi         s9, s2, -439
                  divuw        s4, a6, sp
                  remu         a2, gp, a7
                  remu         s3, zero, a1
                  xor          a3, s6, gp
                  remw         a5, a2, tp
                  addiw        sp, gp, -124
                  slli         s4, ra, 32
                  xor          s6, t2, s0
                  ori          a4, s8, 2024
                  slliw        s5, a6, 24
                  and          s8, a4, s9
                  lui          s11, 891949
                  ori          zero, s11, -583
                  addiw        t5, t3, -1984
                  remw         gp, a0, sp
                  divuw        a5, s11, s6
                  srliw        s7, t5, 16
                  srli         t0, a4, 45
                  srai         s3, a1, 33
                  or           a4, s0, s11
                  sraw         t3, gp, s7
                  nop
                  xor          t2, sp, a4
                  srliw        s11, t3, 10
                  remuw        t2, a4, s5
                  addiw        s11, t0, 57
                  divuw        s8, s5, s6
                  sllw         s5, s8, a7
                  sra          s8, s3, zero
                  slli         a1, s2, 3
                  sraiw        s4, s2, 3
                  srlw         zero, s8, s3
                  and          a1, ra, s7
                  div          s0, gp, a6
                  srl          s10, zero, s3
                  and          s8, s2, t4
                  mulhu        a4, s3, a6
                  addiw        t1, s7, 670
                  slliw        s7, t0, 24
                  sraiw        s2, tp, 11
                  sra          a4, tp, s3
                  slt          t2, sp, t4
                  sra          tp, t1, t3
                  divw         a4, t3, s7
                  divuw        a3, s10, s3
                  srliw        t4, t0, 20
                  remu         s2, t6, a0
                  divu         a2, s0, a6
                  srliw        zero, a1, 7
                  remw         a0, s2, zero
                  srai         t0, s1, 59
                  sll          s5, a3, s9
                  xor          s8, ra, a0
                  xori         s5, a7, -1573
                  mul          t4, a6, s11
                  mul          gp, s11, zero
                  mulhsu       s2, s0, s9
                  srai         ra, a3, 27
                  srl          ra, a0, s5
                  sraw         t2, s10, tp
                  sllw         s3, t5, a2
                  addw         ra, a0, a2
                  slliw        a5, sp, 14
                  divu         t1, t4, s8
                  divuw        t4, zero, t6
                  mulhsu       t5, gp, t4
                  remuw        s8, s0, a1
                  andi         a1, t1, -1904
                  sub          s10, a6, s6
                  rem          gp, a1, t4
                  srliw        s8, t3, 9
                  srl          t6, s2, a7
                  mulh         a5, a5, t5
                  mul          s4, a5, s5
                  mulhsu       s7, a3, s8
                  andi         ra, t1, 113
                  mulh         a3, a5, s2
                  divw         s9, a6, s11
                  add          zero, s3, t2
                  srliw        zero, s7, 20
                  srlw         s8, a0, s7
                  srai         s9, s6, 34
                  remu         gp, tp, a6
                  addi         t2, ra, -843
                  add          a3, s0, t3
                  slt          s4, sp, t5
                  slliw        t3, zero, 26
                  andi         a2, s9, 733
                  andi         t1, a3, 71
                  ori          ra, s11, 782
                  divu         a4, t3, s6
                  mulw         t3, a6, s4
                  addw         s11, a2, s10
                  sraw         s11, t4, a6
                  slli         s0, a5, 26
                  slli         s4, s5, 7
                  andi         ra, s4, -437
                  srai         a0, s11, 1
                  add          a4, t4, a2
                  srl          s11, a3, a2
                  srliw        t6, s10, 29
                  slt          a5, s8, t1
                  rem          t5, s2, s3
                  slli         a2, t5, 3
                  add          s11, s6, s11
                  sub          t3, s9, a7
                  add          a5, s8, t4
                  slli         a3, a6, 44
                  slti         s10, t4, -1460
                  divuw        s2, s5, t2
                  divuw        a0, t2, s5
                  addw         t3, a3, s7
                  srliw        ra, a7, 14
                  mulhu        s8, s11, t3
                  sll          t4, s10, gp
                  mulw         a3, s6, a1
                  srl          gp, a5, s5
                  rem          tp, t6, tp
                  div          ra, s9, s7
                  div          a1, s7, s0
                  mulh         s0, tp, s8
                  ori          s0, s10, 110
                  srli         t2, t1, 23
                  srliw        t5, t2, 9
                  sraiw        s7, zero, 12
                  auipc        s4, 364648
                  subw         t6, t4, s6
                  subw         s8, s6, a6
                  divw         s9, t2, a0
                  xor          s11, a0, ra
                  div          t0, t4, a5
                  addw         a0, s5, a6
                  slliw        s0, s8, 26
                  or           zero, s7, a2
                  lui          t4, 492745
                  slliw        s5, s5, 17
                  sra          a4, t3, zero
                  sllw         s10, a5, s0
                  sll          t4, s6, tp
                  mul          zero, t6, a5
                  ori          a3, s4, -19
                  divu         t0, t2, a4
                  sraiw        t5, s1, 12
                  addiw        s0, t0, -603
                  srli         zero, t3, 61
                  srlw         ra, s5, s0
                  nop
                  mulh         a4, t3, a0
                  xor          tp, s3, a1
                  lui          t5, 192261
                  mulw         s3, sp, a2
                  addi         a4, s1, -453
                  addiw        a4, s9, -317
                  add          t4, s10, s7
                  divw         s7, t1, s9
                  sltiu        s8, s1, 1863
                  srli         t4, s5, 28
                  sraw         s3, a2, t2
                  mul          s8, s2, t1
                  sra          ra, t4, zero
                  mulhsu       s8, s0, sp
                  auipc        s3, 923596
                  and          ra, t1, a4
                  lui          a0, 152630
                  sll          tp, s3, tp
                  sub          a1, s8, a5
                  slli         t0, gp, 52
                  div          t5, tp, a3
                  xori         ra, a3, 222
                  divuw        a4, a1, a1
                  ori          t3, s10, 1956
                  lui          s5, 825224
                  ori          a5, gp, 2018
                  srlw         a0, sp, s9
                  andi         s7, s9, 242
                  or           s10, t4, ra
                  srl          s0, s2, a3
                  mulh         t6, ra, s0
                  addw         t5, ra, s10
                  sltiu        a4, a5, -1001
                  xor          t0, a0, s6
                  sll          ra, a4, a5
                  srl          a0, s1, t4
                  and          s7, zero, s2
                  andi         t0, s4, -1695
                  sraiw        t6, t2, 14
                  srl          a3, s8, s2
                  sltiu        a2, zero, -1165
                  remuw        gp, s8, s11
                  srl          a5, t4, tp
                  sra          s3, t3, s6
                  ori          a2, s11, 539
                  sltu         a2, zero, a7
                  xori         s7, a0, 1418
                  divuw        s3, a5, a2
                  xor          s4, t0, t6
                  sraiw        ra, s0, 9
                  addw         s0, s11, zero
                  sltiu        a3, a3, -374
                  and          a0, a1, s5
                  slliw        ra, zero, 4
                  or           s6, sp, t0
                  rem          a2, s1, s2
                  slti         tp, s9, 1000
                  remu         a5, t6, a2
                  sub          s0, t5, ra
                  divu         t5, t0, a1
                  lui          gp, 169856
                  or           s3, s10, s6
                  srlw         s9, s8, s9
                  divw         t6, s4, gp
                  remuw        s5, a7, s9
                  or           t4, a7, s7
                  sll          t2, s10, t3
                  lui          s3, 140267
                  addw         s10, t5, a1
                  divw         s7, s11, s8
                  mulh         ra, t5, s5
                  sraiw        gp, t4, 3
                  sraw         s5, s8, zero
                  mulw         t3, s9, s9
                  remu         s5, t2, zero
                  srliw        s5, s2, 24
                  subw         a1, a0, s1
                  srai         s10, s1, 7
                  mulw         s3, s6, t4
                  srlw         s11, s4, s7
                  srai         zero, t1, 61
                  sraw         s0, a6, tp
                  nop
                  sltiu        t2, a4, -1996
                  sltiu        s8, t4, 1815
                  divuw        a3, s3, s1
                  mulhu        a0, t4, a3
                  sllw         s2, t3, t2
                  divuw        a3, t0, t6
                  andi         t2, a5, -1959
                  srlw         s2, s9, ra
                  add          s11, t5, s10
                  auipc        s8, 727255
                  srl          a2, s11, t4
                  divw         s9, s4, t2
                  slt          ra, gp, a1
                  and          zero, s1, t3
                  sra          t1, gp, a6
                  div          s9, a0, gp
                  sll          s5, s4, t2
                  srai         t2, s9, 23
                  subw         t6, s1, zero
                  divuw        t4, s11, t6
                  mulh         zero, t4, a6
                  sltu         a4, s3, s1
                  sraiw        s5, t6, 28
                  srli         t2, a1, 55
                  and          s10, a7, a4
                  sraw         ra, a4, a2
                  xori         s2, s9, 1216
                  sltu         a1, a1, tp
                  mulhu        a1, a4, a4
                  slliw        s11, a0, 4
                  mulhsu       s11, a7, t1
                  sltiu        s10, a2, 692
                  mulhu        zero, t1, s2
                  srli         s4, s10, 62
                  remu         s7, t1, s7
                  div          s2, s2, ra
                  div          gp, a3, t1
                  and          s11, s8, a6
                  sraiw        t4, t5, 7
                  xori         a3, a6, 1925
                  mulh         t0, t2, t0
                  divuw        s10, t2, s1
                  subw         t4, gp, s1
                  div          t0, zero, t0
                  slli         s11, t0, 52
                  sraw         s3, s10, tp
                  addi         s8, ra, 1294
                  xor          t6, ra, s10
                  sltu         t2, t6, a2
                  sltiu        tp, t2, -1248
                  rem          sp, t6, s1
                  andi         s8, s10, 224
                  sraw         a5, s5, a6
                  addi         s7, t6, 89
                  andi         s4, t4, 1553
                  rem          a4, a5, s1
                  xori         t5, a4, 1745
                  or           s6, t1, t1
                  divu         a4, s9, s6
                  srl          s3, a5, t2
                  mulw         gp, s2, s7
                  ori          a1, s9, 327
                  rem          t4, t3, s3
                  sraiw        s8, t1, 27
                  divuw        s7, s2, zero
                  nop
                  or           s7, a4, t2
                  nop
                  srli         s0, a2, 63
                  srl          t4, a1, s5
                  auipc        s5, 122636
                  remw         s10, t2, ra
                  sra          t5, s11, a0
                  sllw         s11, s5, a3
                  srl          a3, s10, a2
                  ori          a2, t5, -1762
                  mul          a1, a6, tp
                  srli         s2, t2, 1
                  remw         s6, t5, a0
                  remuw        t4, s5, s1
                  slliw        s0, s1, 13
                  sllw         s8, s8, a6
                  sra          ra, t4, t6
                  add          a4, a0, s8
                  sltiu        s9, t1, -1638
                  mulhsu       t3, a2, t6
                  slti         s7, t4, -330
                  xor          s2, a5, t3
                  mulh         zero, zero, s5
                  mulh         t1, s10, s10
                  or           s11, t1, s8
                  sltu         zero, s3, s0
                  slliw        a3, gp, 12
                  sub          s0, zero, s2
                  remuw        zero, sp, s1
                  srai         a0, s4, 31
                  srai         ra, a1, 23
                  sltu         s2, s4, t0
                  sraw         s4, s3, a1
                  sltu         s8, s10, a2
                  srlw         a1, tp, s0
                  addiw        t0, s7, -651
                  andi         sp, a6, -1243
                  sraiw        t2, s6, 3
                  subw         s11, t1, t4
                  auipc        s0, 538833
                  div          t3, a2, t3
                  lui          s6, 497540
                  srliw        s2, ra, 29
                  srai         a2, s5, 54
                  xor          a4, t6, a1
                  xor          a2, s3, t1
                  sraw         s2, t1, a4
                  divu         s2, s2, s7
                  sraw         s6, a2, s7
                  srai         s6, s7, 57
                  divw         s5, a0, a2
                  remuw        ra, ra, s2
                  andi         t3, t6, -418
                  auipc        t0, 508470
                  divu         tp, s0, t1
                  srliw        a2, t4, 30
                  divuw        t5, t2, s9
                  remw         a5, a0, s7
                  slli         ra, t6, 34
                  remw         tp, s9, s11
                  rem          a3, s3, s3
                  remuw        sp, s2, s5
                  srai         tp, s1, 37
                  divw         s3, s5, t4
                  slliw        t3, s11, 9
                  mulw         t6, s2, s4
                  mulhsu       tp, t6, a3
                  addi         ra, s1, 228
                  auipc        ra, 137662
                  auipc        t1, 850931
                  or           a5, s5, s8
                  mulhu        a0, s8, sp
                  addw         a2, s9, s4
                  divw         s10, a0, s8
                  remu         t0, t0, s8
                  remw         a5, s0, s10
                  srli         a3, a6, 59
                  sraw         t0, s2, s5
                  remw         s8, a4, t2
                  add          t0, s0, t1
                  rem          t6, sp, tp
                  sraiw        zero, zero, 17
                  lui          a1, 481652
                  lui          s5, 584950
                  and          a1, t6, a5
                  sltu         a3, a4, sp
                  and          a0, a0, a0
                  mulhsu       s7, zero, s6
                  and          t1, a2, a2
                  srai         t4, s7, 35
                  mulhu        s8, t0, t2
                  srai         s3, s0, 51
                  auipc        s6, 977034
                  sub          ra, s3, sp
                  div          t6, t6, s9
                  and          s6, a1, s8
                  addiw        ra, t6, 672
                  slti         t1, s10, 114
                  or           s0, s6, s6
                  mulhu        a4, gp, s1
                  sub          s2, s7, s7
                  addiw        s0, s8, 1956
                  srli         a2, s9, 50
                  remu         t3, s1, a2
                  divuw        s5, a5, s2
                  mulhsu       s10, t4, gp
                  sub          t2, t6, tp
                  ori          a0, t4, -871
                  or           s3, s7, s11
                  srai         a5, t0, 30
                  sub          s11, t2, a6
                  and          s3, gp, a5
                  sraw         t3, s11, t6
                  mul          a0, a2, s11
                  xori         t1, t0, 1917
                  divw         s4, t2, s2
                  mulhsu       t2, a3, t3
                  divw         s0, t3, s8
                  mul          t4, t4, s10
                  srl          s6, s8, a6
                  or           gp, s6, s7
                  slt          s8, tp, s0
                  sllw         a1, s6, s5
                  mulhu        t3, s5, a2
                  remu         a5, s2, s11
                  remu         ra, gp, zero
                  slti         a0, s8, -3
                  sraiw        s4, a0, 26
                  and          zero, s3, s7
                  srai         s2, s7, 43
                  div          s3, t2, a7
                  andi         s10, a0, 1920
                  mulw         t6, a5, s4
                  remuw        t6, t2, t4
                  slli         a4, t1, 59
                  addw         a4, s4, s8
                  mulh         a2, s9, s10
                  add          t3, s2, t1
                  divw         a3, tp, a2
                  or           t6, t4, t3
                  mulhsu       s11, s6, s6
                  divu         s5, a3, s7
                  or           t5, zero, t6
                  sllw         a2, zero, a3
                  mul          sp, t6, s0
                  xor          s9, a4, a6
                  xor          a0, t6, s7
                  srl          s9, gp, zero
                  andi         t0, a3, 276
                  remw         zero, a2, a6
                  slliw        s4, s3, 17
                  sra          sp, zero, gp
                  slliw        s10, s1, 29
                  slliw        t0, s7, 7
                  srliw        a1, t3, 4
                  mul          s3, a4, zero
                  divu         s11, s9, s7
                  sltiu        zero, t5, -1209
                  mul          s10, t4, s5
                  remuw        t4, s1, s3
                  addi         s9, s3, -927
                  mulw         a3, t3, s4
                  sraw         s9, tp, a4
                  slli         t1, s7, 16
                  rem          t1, t6, t0
                  sraw         s2, t5, a6
                  divw         s3, s3, s8
                  mul          s3, t2, a7
                  mulhsu       zero, s11, a7
                  subw         a4, gp, t2
                  addiw        s3, s2, -455
                  and          s11, zero, s0
                  mulhu        tp, s9, s3
                  sllw         s2, sp, a6
                  sub          t5, tp, s9
                  slliw        a5, a1, 14
                  xori         sp, s9, 1925
                  sltu         s10, t1, gp
                  srai         s8, s6, 61
                  srliw        t3, s11, 18
                  addi         s0, s5, -365
                  slliw        s2, t2, 27
                  sraiw        a1, t2, 20
                  or           s0, s1, a1
                  mul          ra, a0, s5
                  addi         zero, t4, 227
                  remuw        t3, t0, t4
                  slti         t5, a5, -1336
                  addw         s4, a3, sp
                  lui          t4, 652331
                  addiw        s5, s3, -1427
                  nop
                  add          s2, s8, a0
                  div          a1, t4, a1
                  xor          s4, a1, s7
                  ori          a1, a7, -1367
                  subw         gp, s7, ra
                  sll          s10, t1, s11
                  xori         a0, sp, -1641
                  sub          sp, s10, s9
                  sub          a0, s8, a4
                  srai         a2, a0, 8
                  mulh         ra, s8, t3
                  mulh         t4, sp, s0
                  slli         s5, a5, 50
                  remuw        s2, t2, t1
                  divuw        s4, t1, s6
                  auipc        s8, 447636
                  xor          t1, a3, t4
                  addw         a5, a3, s3
                  ori          s7, zero, 1007
                  addi         a5, gp, -1623
                  srlw         s6, t5, t5
                  xor          s0, s1, a7
                  andi         a3, s5, 1011
                  slli         t1, t1, 24
                  addw         s11, s4, s2
                  sll          a3, s5, s9
                  div          gp, t1, a5
                  mulhu        t4, t3, t1
                  auipc        a4, 240090
                  remu         s3, a3, tp
                  slliw        s11, ra, 27
                  sll          t1, a1, s5
                  srl          ra, t2, t4
                  sraiw        tp, t4, 20
                  sltiu        s9, a0, 683
                  slti         t4, s5, -687
                  subw         zero, s0, s0
                  mulhsu       t1, a1, a5
                  remu         t2, a1, t6
                  divuw        ra, s7, s10
                  sltu         s11, zero, a7
                  mulw         t4, a2, a1
                  slt          a0, t6, t5
                  remu         ra, ra, s11
                  divw         sp, s9, s0
                  ori          zero, a6, 395
                  srl          sp, s3, a4
                  srl          a1, gp, zero
                  andi         ra, t1, 1741
                  mulhu        s2, sp, sp
                  mulh         a1, s5, s9
                  srl          s7, t1, s10
                  ori          s6, zero, 1210
                  srliw        t0, s9, 4
                  nop
                  mulhsu       a2, s4, zero
                  lui          t4, 7257
                  sltiu        s9, t0, 412
                  remuw        s0, t1, sp
                  auipc        gp, 373105
                  andi         s6, s8, 1109
                  sltu         s8, s2, s11
                  remw         s2, s3, a1
                  auipc        sp, 524722
                  mul          zero, t4, t1
                  mulh         t6, t0, a4
                  sltu         t2, s1, a4
                  srlw         s2, s3, s9
                  sll          ra, s10, s0
                  mulhsu       a1, t5, s2
                  sra          s9, t3, s3
                  rem          ra, a3, a2
                  mul          s0, s2, t2
                  mulw         sp, s7, t6
                  subw         ra, s8, t3
                  slt          sp, s6, sp
                  mul          t1, s1, t6
                  remu         s8, a3, a7
                  remw         a1, s9, s2
                  ori          a3, a7, 1502
                  addiw        a5, ra, -667
                  srli         sp, s9, 7
                  sll          t0, s10, t4
                  srl          a4, t6, t6
                  addi         s2, t4, 1111
                  srlw         tp, s2, t2
                  add          s3, a5, t6
                  mulhsu       a1, zero, s3
                  divu         ra, s10, gp
                  add          s3, a7, s0
                  remw         a4, s8, s10
                  slli         zero, t2, 34
                  sub          t3, a5, s0
                  xor          s0, a2, a4
                  andi         s3, s7, 1503
                  mulhsu       t4, s2, s1
                  and          a2, s5, t3
                  div          ra, s8, a0
                  auipc        s2, 99319
                  rem          s10, a6, s8
                  sraiw        s11, gp, 30
                  subw         s4, t3, s6
                  addw         s7, s1, s0
                  addw         t4, a5, ra
                  sltu         t0, t4, s5
                  sllw         s5, s0, t2
                  addiw        t1, a3, -1441
                  subw         s7, s7, s8
                  sltiu        s8, a0, -632
                  sra          s9, s11, s10
                  srli         a3, a2, 22
                  mul          s8, t3, a0
                  sraiw        a2, a7, 1
                  divu         a0, t0, sp
                  addiw        gp, s9, -119
                  slt          t3, t0, t0
                  slli         ra, s10, 15
                  ori          t1, a4, -884
                  lui          t2, 501033
                  rem          s4, a1, s4
                  srliw        s5, s0, 11
                  remw         s2, s11, a6
                  srlw         s10, t5, t4
                  ori          ra, t5, -973
                  mulhsu       t2, s8, s1
                  divuw        s6, t3, zero
                  xori         s9, s2, 117
                  remuw        s3, s10, a0
                  ori          t2, a5, 1000
                  sll          s2, t6, t6
                  srl          s3, sp, t2
                  andi         t2, s3, 1578
                  divw         s3, a7, a1
                  remuw        a2, a2, t0
                  addw         a5, t1, a5
                  slliw        s9, s0, 5
                  lui          s4, 91798
                  divu         a4, t0, s4
                  slli         a0, s7, 32
                  addiw        tp, a5, -922
                  sllw         tp, s9, a1
                  xori         ra, a7, 1631
                  sub          s9, s9, zero
                  subw         s7, a1, zero
                  remw         ra, s8, s5
                  divw         s5, s11, ra
                  sraw         s9, a5, s2
                  add          ra, s11, s0
                  sra          s0, gp, s2
                  auipc        s9, 207736
                  xor          s8, s0, s11
                  rem          a3, s6, a3
                  sra          tp, sp, s7
                  sraiw        tp, a1, 15
                  div          gp, t3, ra
                  mulhsu       s0, t4, a7
                  srliw        t1, s6, 28
                  srai         t2, t0, 12
                  lui          t2, 759884
                  slli         tp, s7, 20
                  srlw         s0, a2, s1
                  sraiw        s5, gp, 28
                  mul          s5, zero, s2
                  sltu         s9, s2, t6
                  xori         a3, t5, -785
                  lui          s7, 321130
                  divuw        s11, a2, sp
                  sltu         ra, t1, t0
                  srli         a3, s4, 32
                  rem          t6, s9, s11
                  srlw         t2, a4, s6
                  sra          ra, a3, t0
                  ori          s9, s7, 611
                  srl          a0, a0, s2
                  div          t5, a2, t5
                  mulh         ra, s4, a6
                  add          t3, s7, s9
                  add          s6, zero, t3
                  mulh         t3, sp, t2
                  slli         t1, s9, 33
                  ori          t2, t2, 1677
                  or           zero, zero, t3
                  xor          s2, gp, ra
                  remu         s11, a0, sp
                  rem          a1, t6, a6
                  slliw        s4, s11, 17
                  srli         a1, t4, 48
                  lui          s5, 614885
                  slt          zero, a2, a7
                  and          t1, s2, s3
                  subw         sp, gp, s3
                  sra          s8, gp, s6
                  slt          t4, a4, a3
                  sub          s11, s7, s9
                  srliw        s0, s3, 20
                  srai         sp, s4, 14
                  srliw        tp, s5, 0
                  srlw         s5, tp, s9
                  srai         a4, a6, 32
                  ori          a3, t0, -88
                  addi         s0, s2, 1805
                  srliw        zero, s0, 2
                  add          s2, a3, t2
                  xori         sp, s6, -1533
                  remuw        sp, tp, s2
                  addiw        gp, t5, 584
                  and          zero, a1, s11
                  xor          s2, t1, s4
                  srl          s9, a1, a5
                  sraiw        a3, a5, 12
                  ori          t5, t0, 1226
                  addw         s11, a2, a6
                  addi         sp, s8, -1742
                  lui          zero, 783154
                  sraiw        a0, s3, 4
                  srl          s0, a3, t6
                  or           s11, s3, a1
                  divuw        tp, tp, s1
                  remw         ra, s9, s0
                  sra          t6, gp, s11
                  and          t1, s5, gp
                  sllw         s5, s0, s11
                  srliw        a2, s3, 12
                  divuw        a5, a2, s5
                  mulhu        s5, ra, t3
                  rem          s9, s5, s9
                  sra          a3, s11, a1
                  srl          a3, t5, s2
                  sraiw        s5, t4, 13
                  slti         s5, a2, 1726
                  remw         t5, s1, a7
                  nop
                  nop
                  lui          s4, 820611
                  divuw        gp, gp, a2
                  srl          gp, s11, s10
                  add          tp, a4, a2
                  div          s5, a2, s7
                  rem          a2, a7, t2
                  sraw         t5, s5, a6
                  rem          s2, a1, a6
                  srli         a5, t5, 16
                  xor          s9, tp, s10
                  auipc        s11, 893039
                  ori          a1, s11, -2028
                  slt          s2, a0, tp
                  or           s8, t0, s9
                  xori         s11, a3, -584
                  remw         ra, sp, gp
                  addw         s5, t3, s4
                  mulw         s2, t0, s10
                  sub          ra, a3, a5
                  mul          s4, a5, s7
                  sraiw        sp, a1, 24
                  srl          a3, t1, a5
                  and          t5, s8, a6
                  sll          tp, zero, t4
                  sll          a4, gp, a7
                  slti         sp, a4, 1847
                  srliw        s2, a5, 25
                  lui          sp, 462032
                  sub          s9, t2, s3
                  auipc        s7, 404987
                  slti         t3, sp, 224
                  subw         s3, s3, s4
                  mulw         s5, s6, a4
                  subw         t2, ra, sp
                  sltu         gp, zero, a6
                  andi         t2, a2, 1429
                  mulhu        t1, ra, s9
                  srliw        a4, t5, 19
                  divw         s2, ra, tp
                  srl          s10, s7, s9
                  slliw        t2, t5, 29
                  xor          a1, t1, t3
                  divw         a2, a6, a2
                  mulh         t0, a0, s0
                  srl          s9, a0, s8
                  slli         a2, a1, 22
                  remuw        a2, zero, t3
                  xor          t2, s5, s0
                  mulh         zero, s6, s3
                  mulhu        a3, tp, s1
                  sltu         s8, t2, ra
                  divu         s9, s0, s11
                  sraiw        t4, a4, 12
                  xori         a2, s7, 111
                  srli         t6, t1, 10
                  remuw        a3, a2, a5
                  addiw        a1, gp, 483
                  srli         s0, sp, 15
                  mulh         zero, t1, t5
                  andi         s0, s1, -1666
                  auipc        s5, 126781
                  or           zero, t5, zero
                  subw         t5, a6, a6
                  sra          ra, s10, t1
                  xor          sp, s9, s8
                  addiw        a4, sp, -183
                  slti         zero, t4, -399
                  div          ra, a6, a5
                  xor          a4, s8, zero
                  slt          t2, s4, gp
                  subw         s0, s2, a7
                  andi         a2, zero, -1296
                  addi         a1, s3, -1875
                  slli         t0, s6, 34
                  divw         zero, t4, a0
                  sub          s3, s4, ra
                  mulh         t1, t0, a6
                  xor          gp, s7, s4
                  srl          s5, ra, s3
                  mulhu        s3, tp, s4
                  mulw         t2, t4, a4
                  sllw         gp, t2, s8
                  mulh         t1, s10, s7
                  divuw        a5, t4, s9
                  addiw        s11, a0, 1012
                  srli         s11, tp, 10
                  srli         s0, sp, 57
                  sll          sp, s2, s8
                  remw         t3, t5, s5
                  ori          s0, ra, -836
                  srl          a1, s0, s2
                  sraw         tp, a3, a5
                  slliw        s8, s1, 30
                  mul          t0, s5, a5
                  divw         sp, s7, s6
                  mulhsu       a1, a2, a6
                  divw         zero, t6, a5
                  or           s11, a7, gp
                  and          s0, s7, t4
                  mul          s9, ra, a5
                  sltiu        zero, sp, -1190
                  xor          a3, a5, a1
                  sraw         s6, tp, s10
                  rem          a5, zero, s5
                  remw         zero, t6, s5
                  auipc        s3, 320245
                  srlw         t1, s8, sp
                  addw         s10, t4, a0
                  mulhsu       ra, t6, a2
                  addiw        s8, zero, -1065
                  divuw        sp, sp, s10
                  slti         a0, a0, 1634
                  sll          a5, s7, ra
                  srl          s3, a3, gp
                  xori         sp, s5, -381
                  subw         s0, s8, s1
                  div          s2, t2, s2
                  sraw         s5, s2, s0
                  mulw         t3, t4, a1
                  remw         s6, t4, t5
                  divu         a3, s4, ra
                  mulhsu       s0, tp, s8
                  sub          s4, s9, t1
                  slti         s3, t1, -903
                  and          s2, s4, a7
                  srai         s2, t2, 41
                  divu         t1, s8, a3
                  slt          s0, tp, tp
                  mulhsu       t2, s10, t3
                  sltu         gp, s4, s2
                  mulhsu       ra, a6, s7
                  slti         t4, s9, 1454
                  addi         a4, s9, -156
                  auipc        s7, 940047
                  divu         s5, s8, s4
                  and          a1, s8, ra
                  xori         ra, s8, -880
                  remw         sp, t6, s7
                  mulhu        sp, s5, s5
                  divw         s7, a6, t4
                  add          s3, t6, s1
                  sll          s4, s6, a5
                  srlw         s7, s2, t0
                  addiw        s9, s0, -1507
                  divw         a2, s8, s4
                  ori          t1, t4, 814
                  divw         s11, s4, s1
                  sraw         a1, a5, s4
                  nop
                  divu         s7, t3, a7
                  add          s9, a3, a2
                  remw         s3, s11, s4
                  add          t1, zero, s9
                  srai         s7, s11, 39
                  remu         zero, s4, s11
                  srliw        s10, s8, 6
                  auipc        a3, 643757
                  sll          s2, s1, t0
                  ori          zero, s10, 1657
                  srl          t6, s0, s5
                  andi         t1, a7, 26
                  slliw        t5, a1, 30
                  xori         s5, gp, 1210
                  slt          s9, s4, s2
                  addiw        s4, a1, 338
                  nop
                  subw         t1, t3, s8
                  sra          ra, tp, t4
                  remw         t2, s2, a1
                  ori          s6, a2, -922
                  mul          s9, t0, s4
                  slliw        s5, t5, 10
                  or           t6, t0, s2
                  mulh         s4, ra, a2
                  srai         a2, s1, 38
                  remuw        t0, a5, s5
                  or           a1, a6, tp
                  sub          t4, s1, t5
                  srai         t6, s1, 45
                  srai         s11, s10, 63
                  mulhsu       a3, sp, a7
                  mulhsu       a3, t1, s9
                  rem          zero, s6, a4
                  sltu         t3, t6, s8
                  mulw         s2, s4, s8
                  div          ra, s0, s10
                  slli         s4, a6, 16
                  add          s6, s3, t1
                  xori         a3, s8, -1842
                  andi         a1, s4, 38
                  srli         t5, t4, 16
                  div          s0, t5, gp
                  sll          s4, a1, s6
                  andi         s9, s8, 1710
                  mulhu        sp, a4, s2
                  slt          t0, t3, t5
                  sltu         s5, s7, s11
                  andi         s3, s7, -892
                  slt          t6, s2, zero
                  auipc        t0, 446130
                  addiw        t0, s10, -1863
                  sub          t4, s1, a0
                  srliw        t5, t5, 4
                  mul          t3, s11, a7
                  rem          t3, t5, sp
                  divu         a1, zero, a2
                  divuw        zero, s8, s10
                  xor          a0, a2, a5
                  mul          s9, t4, s9
                  srliw        a3, s10, 27
                  subw         t4, s6, s0
                  rem          a3, t6, tp
                  slti         t6, t4, -1680
                  add          t6, s8, t4
                  sub          t0, s11, s3
                  lui          sp, 840278
                  slliw        a1, s9, 21
                  divw         s8, a1, s6
                  sll          s10, a1, t1
                  xori         s0, a5, 1467
                  mul          sp, s2, a2
                  xori         s11, t3, 618
                  sra          a4, s8, t4
                  sll          zero, s9, s7
                  divu         a2, a2, a7
                  xori         s0, s5, -2021
                  subw         t6, a4, a4
                  xori         s11, s7, -673
                  sraiw        ra, s0, 10
                  sltiu        s0, a0, -1489
                  and          a3, t4, s10
                  srliw        t3, zero, 21
                  xori         t6, t2, 1890
                  xori         sp, s3, 866
                  or           s8, a6, t1
                  mulhsu       zero, ra, s6
                  div          zero, s10, t4
                  sll          s5, a4, a7
                  subw         t3, s2, ra
                  mulhu        s10, a2, t4
                  xori         s8, a7, 2002
                  sltiu        s0, s9, 1444
                  slli         gp, a5, 17
                  divw         s5, sp, s10
                  slliw        s5, ra, 26
                  slli         t6, t3, 9
                  subw         t2, s2, s1
                  slt          a3, s8, a4
                  lui          zero, 59412
                  slli         t2, s10, 6
                  sraiw        s6, tp, 26
                  ori          t2, ra, -506
                  slti         t0, a6, -415
                  div          t0, gp, a3
                  lui          t4, 35343
                  sltu         s9, a0, t0
                  sub          gp, s10, s0
                  srlw         s2, s4, s11
                  sub          t5, zero, t5
                  xori         a0, ra, 981
                  rem          t3, s7, t2
                  divw         s2, a3, s9
                  slliw        gp, a4, 20
                  sraw         s9, a5, a5
                  sra          s9, t6, t2
                  nop
                  addiw        a1, s2, -1740
                  add          s4, t3, tp
                  divw         a4, s8, a5
                  sltu         s4, a4, ra
                  divu         s7, a6, t3
                  srl          ra, s8, s0
                  sub          t6, t0, a0
                  ori          tp, s1, 483
                  divu         zero, s7, t5
                  divw         ra, gp, ra
                  remuw        t5, a5, a7
                  sltiu        t3, t4, -416
                  mulh         t0, gp, s4
                  sra          s9, t1, ra
                  addw         s9, t4, s0
                  sllw         s9, a3, a3
                  ori          t5, a0, 1249
                  remuw        s7, a2, a0
                  addiw        zero, a0, 1036
                  remuw        zero, a2, a7
                  slt          s0, gp, a4
                  mulw         s0, t6, gp
                  xori         t2, sp, -1204
                  remuw        ra, s4, a1
                  mulw         zero, t6, t2
                  xor          s9, a6, s6
                  mulhsu       ra, zero, a5
                  mul          a2, s11, a3
                  srl          s6, s0, s5
                  andi         s9, s1, -1423
                  mulh         t0, a6, a0
                  sub          a0, s2, s11
                  slt          t1, s11, s9
                  slliw        gp, t0, 5
                  add          s7, s10, a7
                  srlw         gp, a6, s4
                  addi         s7, gp, 315
                  mul          t3, t2, s7
                  remu         zero, t1, s3
                  sraiw        a0, t4, 16
                  remw         tp, t4, a7
                  mul          s2, zero, s2
                  addi         s8, a1, -1786
                  sllw         a1, a0, s4
                  sltiu        ra, t3, -927
                  remw         a5, s11, t4
                  remw         s3, gp, s1
                  remu         a1, s6, a7
                  mulhu        a2, s11, s2
                  addiw        s4, t3, 1186
                  and          s7, zero, s6
                  slliw        s2, a0, 13
                  slli         a1, gp, 22
                  mulhu        s0, t4, t6
                  ori          t4, sp, 1566
                  srai         ra, s0, 34
                  addi         t6, gp, 511
                  lui          s11, 967485
                  mulhu        a4, t6, t3
                  mulhsu       s10, a2, s5
                  slti         tp, t3, 834
                  andi         t4, tp, 1619
                  xor          s4, gp, s8
                  subw         s9, t0, sp
                  slti         a0, sp, -1339
                  andi         t6, s11, 904
                  and          a1, a6, s9
                  slt          t1, a1, gp
                  andi         t4, t5, 711
                  mulh         sp, a6, t0
                  divuw        tp, s0, s6
                  slti         s5, t6, 1849
                  lui          t0, 830346
                  auipc        s7, 192633
                  slti         s10, t1, 185
                  divu         sp, s11, t2
                  remu         t3, s8, t1
                  slliw        t1, s6, 11
                  divw         t6, s1, a6
                  addi         s3, a2, 1358
                  subw         a5, a5, a6
                  srliw        ra, t4, 21
                  srlw         a3, a7, t6
                  subw         s0, gp, s7
                  mulhsu       s5, s0, s10
                  div          s4, gp, t2
                  mulh         s0, a3, a5
                  remu         t5, s11, s9
                  and          a1, t2, ra
                  sltiu        t3, s0, 963
                  nop
                  mulhu        t2, t1, gp
                  divw         s9, a2, t5
                  slt          s7, t5, a3
                  xor          s11, s2, t5
                  mulhsu       s5, t6, a6
                  and          t1, s5, a1
                  mulh         zero, a2, a5
                  srl          s4, a5, t2
                  add          s10, s0, a2
                  srai         a5, t6, 12
                  add          a1, s6, t2
                  xori         a2, a1, 1701
                  sllw         a3, s9, s5
                  xori         a3, zero, -852
                  slliw        t5, s5, 6
                  remu         t2, s0, t4
                  sllw         t3, s6, t3
                  mulhu        s5, gp, a0
                  slti         s11, a7, 402
                  mulw         t3, ra, s2
                  divu         s9, t5, t5
                  sraw         a4, a3, gp
                  sraw         ra, tp, s9
                  slliw        ra, gp, 19
                  remu         s0, t0, s8
                  subw         s11, a5, s5
                  subw         t5, s3, s5
                  remu         a3, s2, s3
                  xor          t5, s10, a7
                  lui          a3, 10486
                  sra          a2, s1, s0
                  sll          a4, s10, s6
                  or           a3, a2, s9
                  sltiu        a3, s3, -313
                  addiw        s4, s11, -1221
                  nop
                  sraw         s9, a4, s2
                  auipc        tp, 549016
                  sltiu        s3, s7, 733
                  mulhu        t1, sp, sp
                  addiw        a2, a2, 1266
                  lui          s7, 606020
                  mulw         t4, t3, ra
                  srl          t5, a6, t3
                  rem          s11, s4, t4
                  sra          gp, t6, t3
                  sraiw        s0, s4, 11
                  divu         t2, a7, s10
                  slliw        t6, a0, 6
                  mulw         a4, s3, a7
                  slli         t2, s3, 39
                  srli         s8, ra, 58
                  slliw        s4, a6, 16
                  divw         a1, s5, tp
                  sraw         s5, s3, gp
                  subw         s0, ra, a5
                  addiw        a5, s7, 760
                  divu         a0, t4, a0
                  divu         s8, s10, a3
                  srai         t0, t4, 28
                  xor          s9, s7, t1
                  slt          s11, t3, a4
                  mulw         a3, s2, a2
                  divw         s0, zero, a0
                  remu         s0, a7, s8
                  mulhsu       a2, t4, tp
                  sllw         s11, a5, a4
                  xor          s3, s3, t5
                  addw         sp, a3, s4
                  rem          t0, s5, a6
                  addi         s7, a4, -1980
                  sllw         t6, a2, gp
                  div          zero, s9, t4
                  sll          a4, a4, t1
                  xor          s3, t4, sp
                  divw         s4, s4, a2
                  or           s2, zero, a1
                  xor          s3, tp, s4
                  sraw         gp, a5, tp
                  sraiw        s11, a6, 1
                  xor          t5, zero, s7
                  mulw         s8, a7, s3
                  sraw         a4, s7, t1
                  addiw        s11, a0, -857
                  slt          s0, a3, s4
                  mulw         t3, tp, t5
                  sub          t5, t1, gp
                  andi         s6, t5, -1780
                  nop
                  xori         t6, t4, 1051
                  add          t4, a2, t4
                  mulw         s3, sp, t4
                  and          sp, zero, s7
                  sltiu        t6, s6, 1618
                  remw         s4, a2, t3
                  lui          t1, 697419
                  srliw        ra, s4, 4
                  rem          s9, t0, s2
                  mul          s0, a7, a6
                  srai         s3, a0, 7
                  nop
                  slliw        ra, s8, 23
                  rem          t2, a5, s5
                  sraiw        s2, a6, 0
                  sraw         s0, a7, s5
                  addi         s6, a5, -1237
                  srli         ra, s11, 15
                  add          s11, s2, a1
                  mulh         a3, t4, a4
                  slt          tp, a3, a1
                  divw         s6, s11, gp
                  sraiw        s6, a2, 18
                  mulhu        t6, t4, s9
                  slli         a3, t3, 36
                  sraiw        s3, t1, 14
                  sltiu        ra, t0, -1308
                  divuw        s5, s7, s2
                  and          s8, a5, s6
                  ori          zero, zero, -1418
                  ori          t1, a2, 413
                  sltu         t5, s11, sp
                  xori         s2, s9, -498
                  srli         t2, t3, 7
                  sltiu        a3, s5, 216
                  remuw        a2, t2, s5
                  andi         t0, ra, 859
                  sll          s5, ra, ra
                  div          gp, t0, t3
                  xor          gp, s1, t2
                  add          a5, s0, a4
                  sltu         s9, s2, a2
                  srliw        t4, s11, 3
                  remu         s6, t1, ra
                  remu         t0, a0, a4
                  remu         s3, a1, a2
                  sltiu        t4, s3, -1684
                  divw         a5, t3, s2
                  sraiw        s3, t0, 18
                  auipc        t6, 554149
                  slliw        s7, s8, 7
                  xor          a4, s11, a3
                  sra          s3, s9, t6
                  sltu         s9, s7, s1
                  sraw         s3, ra, tp
                  subw         t1, a3, s10
                  srliw        s6, a1, 21
                  srai         s11, s9, 0
                  add          tp, a2, t4
                  addiw        s10, tp, -2011
                  add          s5, s4, tp
                  addiw        a3, t0, 1782
                  ori          a2, s5, 102
                  slti         s6, s3, 1365
                  srl          a2, t6, t1
                  rem          s8, s2, a5
                  divw         s6, a1, s9
                  lui          t2, 153120
                  addw         a3, t6, a2
                  sll          t5, a6, gp
                  or           s5, t6, gp
                  nop
                  xor          a1, s2, s0
                  srlw         s3, t5, a6
                  or           s11, s1, s6
                  mulhu        s10, s11, t0
                  mulhsu       s7, s9, t5
                  lui          a2, 770784
                  divw         s5, a3, zero
                  sub          a0, s3, zero
                  slliw        a2, tp, 24
                  slli         a1, s3, 11
                  andi         s11, sp, -2005
                  srai         a4, a1, 8
                  mulh         gp, s5, a5
                  divuw        s10, s6, s7
                  addi         tp, s10, 1712
                  srli         s2, a3, 18
                  slliw        a5, s6, 12
                  xor          a3, ra, sp
                  srai         s5, t1, 25
                  rem          a1, sp, a1
                  ori          a4, s7, -1615
                  auipc        s8, 855733
                  divuw        t4, ra, s4
                  subw         zero, t2, t5
                  divw         t6, a0, a4
                  sraiw        s9, t4, 28
                  srliw        t1, zero, 22
                  sll          t5, gp, a3
                  add          gp, tp, t3
                  nop
                  srliw        s11, s10, 7
                  sllw         t0, a5, zero
                  xori         a0, s6, -1668
                  add          zero, s11, s7
                  sraiw        ra, a2, 21
                  srliw        s11, a2, 10
                  mul          t5, sp, t1
                  divw         t5, s5, t5
                  sraiw        sp, s9, 26
                  add          ra, t0, t3
                  sltu         s11, a5, t0
                  subw         s2, s2, t4
                  srl          t3, a7, s3
                  mulh         a3, s9, a4
                  mulw         a2, s1, s1
                  lui          sp, 269022
                  divu         s9, s2, s11
                  sraw         s0, s3, a7
                  and          s6, a1, s2
                  addi         s4, a4, 2026
                  mulw         t1, a1, s1
                  nop
                  sra          t4, ra, t6
                  addw         t6, a5, a4
                  subw         t6, s4, s4
                  sraiw        a5, s1, 22
                  mulhu        t0, s2, gp
                  nop
                  srai         tp, s10, 15
                  andi         a3, a2, -1597
                  xor          t2, s6, a5
                  sraw         sp, a6, a6
                  addi         a4, s2, -1858
                  add          s10, t3, t3
                  remuw        s5, s3, s0
                  srliw        t4, s4, 10
                  divuw        s9, s8, s11
                  divu         zero, s0, s0
                  sll          s2, s9, a2
                  div          t3, t6, a3
                  sra          sp, a5, a2
                  divu         a1, a2, t0
                  addw         t6, a5, t2
                  mulh         s3, sp, s1
                  divw         a0, s5, t5
                  remuw        zero, zero, a0
                  or           s6, s8, s4
                  sra          t4, a3, a5
                  slliw        a4, t5, 16
                  slli         gp, s8, 19
                  srai         s7, s2, 33
                  sltiu        s11, s2, 1254
                  or           s10, s7, tp
                  addi         a0, a7, -1581
                  lui          s0, 473272
                  srl          zero, s3, s5
                  auipc        t3, 732628
                  slli         s3, a0, 11
                  srliw        tp, t1, 1
                  and          s9, a1, t6
                  mulw         s6, t6, s0
                  remw         t4, t2, s0
                  srai         t2, s10, 1
                  add          s10, t0, t4
                  mulhsu       gp, gp, t0
                  sub          ra, a5, t0
                  slt          s5, t3, t4
                  srlw         s0, zero, s7
                  srl          a5, a2, s0
                  sub          t2, a7, gp
                  sraiw        t3, t5, 3
                  subw         s7, a0, t3
                  remuw        s8, a2, t5
                  srli         a0, s2, 57
                  subw         s0, tp, zero
                  sra          s5, t1, t0
                  slt          a3, zero, t0
                  andi         s2, s0, 333
                  srli         s11, s8, 51
                  xor          s9, s10, t2
                  divw         zero, s9, a4
                  mulhsu       s0, a4, t3
                  srliw        a1, t3, 19
                  slti         s5, gp, -1032
                  auipc        a4, 557462
                  addi         tp, s10, -738
                  srlw         s10, t4, s3
                  remu         ra, s0, a0
                  sll          s11, a7, t5
                  srl          s11, s8, a4
                  mulh         s5, t1, a1
                  remw         t2, a1, tp
                  srl          tp, s7, t6
                  srai         a4, tp, 11
                  srlw         sp, a0, t6
                  xor          a2, t3, s5
                  and          a5, s6, s8
                  rem          a4, sp, s8
                  addiw        t0, a2, -610
                  slti         s9, s0, -952
                  and          s9, s0, t2
                  auipc        s6, 1037744
                  mulhu        s9, a6, t5
                  auipc        s7, 173178
                  xori         s9, a5, 1469
                  srli         zero, t1, 16
                  subw         a0, s5, tp
                  srl          ra, t0, s11
                  divuw        s7, t6, s8
                  auipc        s10, 203995
                  mul          a3, t0, a4
                  divw         s8, t4, t0
                  remu         s10, s0, a3
                  mul          sp, s3, gp
                  divu         s11, a2, s1
                  srliw        a1, zero, 3
                  divuw        s8, gp, ra
                  sraiw        a5, t6, 13
                  srai         s5, a1, 27
                  srlw         a3, a6, t6
                  remu         a2, ra, s6
                  mulh         s0, a6, t6
                  sub          t5, s7, t0
                  xor          s5, t6, s2
                  subw         s0, a4, t4
                  or           t5, gp, a7
                  lui          tp, 152923
                  mul          t5, a5, gp
                  srli         a2, s0, 14
                  addiw        t4, t0, 1412
                  slti         a3, t3, -901
                  sraw         t0, gp, zero
                  xori         zero, t3, -250
                  xor          ra, s5, a5
                  ori          a1, tp, 209
                  slt          s3, s5, s1
                  slti         ra, s0, 1294
                  xor          t5, t0, sp
                  divuw        a5, s3, gp
                  slt          a3, t5, a7
                  srai         t4, t4, 48
                  xor          a3, t3, s1
                  sltiu        t5, a4, -1898
                  slliw        ra, zero, 18
                  ori          t6, ra, -1567
                  sraw         gp, s4, t3
                  sraiw        zero, t4, 27
                  nop
                  srl          a1, s2, a4
                  mulw         a5, s0, tp
                  andi         s0, s1, -1223
                  sraiw        s10, zero, 21
                  slti         sp, s8, -483
                  slliw        t0, s5, 17
                  sraw         a4, gp, gp
                  and          a2, gp, a5
                  remuw        ra, t0, s4
                  auipc        ra, 1038950
                  remu         s3, t2, t6
                  srlw         a0, s6, a4
                  rem          s8, t1, s2
                  addi         t0, t5, 32
                  sraw         t3, s1, a3
                  srai         a0, t1, 18
                  sltiu        s10, sp, 879
                  add          a4, a5, t5
                  sltu         s8, sp, s5
                  remu         s4, s1, s10
                  nop
                  or           s0, s3, s2
                  remuw        a2, s8, a1
                  mulh         ra, t2, tp
                  div          t2, a0, s11
                  divuw        tp, a5, t1
                  sltu         s5, tp, s10
                  div          t3, a1, s1
                  lui          t2, 239794
                  sltu         a1, t0, s11
                  srl          sp, a2, s4
                  slt          s0, a0, t6
                  auipc        a1, 300435
                  sll          a2, s1, s3
                  divw         a1, ra, s0
                  div          s3, s6, t2
                  slt          a1, s1, a2
                  mulhsu       s2, s10, t6
                  ori          a1, t5, 901
                  mulh         t5, s1, s4
                  sltu         tp, a7, t0
                  slti         s2, gp, -1355
                  sll          gp, t0, t5
                  and          s7, a4, a2
                  srlw         s9, gp, t1
                  mul          gp, a3, tp
                  addi         sp, s4, -1433
                  ori          s5, s10, -1434
                  slti         t2, a6, -966
                  srli         t1, s7, 0
                  sltiu        s9, t5, -130
                  sltiu        zero, s2, -1863
                  srl          a3, a7, a7
                  remw         s0, a3, tp
                  mulh         s9, tp, s10
                  divw         t3, a1, s1
                  auipc        s7, 283521
                  slliw        t4, a2, 26
                  divu         t1, t4, t1
                  add          a2, t2, gp
                  sra          t5, a4, s2
                  sllw         tp, a4, s11
                  and          s2, s2, s10
                  srai         sp, gp, 29
                  auipc        a4, 338075
                  srai         s10, a1, 58
                  remuw        s2, a1, t5
                  srlw         sp, t0, s0
                  srliw        t0, s4, 8
                  addiw        a1, a2, -203
                  sltiu        a0, s7, -216
                  nop
                  rem          a5, s2, a5
                  divw         t6, s6, s6
                  auipc        t6, 614305
                  rem          gp, a4, a3
                  srai         s10, tp, 40
                  remuw        t4, a3, s7
                  mulh         s2, s5, a5
                  xori         s7, t1, 1062
                  xori         a2, a7, 406
                  sltiu        ra, s0, -1686
                  divw         a0, s2, a6
                  slti         s6, s0, -1008
                  mulw         s9, s4, t6
                  andi         zero, a2, -357
                  addw         s6, s6, t0
                  addiw        t3, s10, 483
                  divw         t2, t0, t0
                  sllw         s2, tp, t4
                  slliw        s4, s5, 1
                  ori          a0, s9, 691
                  remuw        a1, s6, s0
                  sraiw        t3, s3, 4
                  sll          a5, ra, t1
                  divu         s3, s5, sp
                  mulw         t6, s9, ra
                  addw         zero, t2, a5
                  sraiw        ra, zero, 31
                  mulhsu       s10, zero, t1
                  addw         s2, t5, s10
                  addi         sp, s1, 509
                  and          t1, s7, t5
                  andi         ra, s4, -682
                  add          t3, s1, s2
                  addiw        s6, t5, 1258
                  sraw         a3, t1, s8
                  ori          s4, a4, 1480
                  sraiw        t2, s4, 16
                  nop
                  addw         s3, s6, tp
                  sltu         t1, gp, t2
                  sltiu        s5, t5, 94
                  srli         t3, zero, 36
                  slli         t4, a0, 5
                  srlw         a3, t1, s6
                  slliw        t5, s11, 28
                  sra          ra, a7, s7
                  addw         a2, ra, a0
                  sraiw        s9, s11, 11
                  rem          s11, s2, s10
                  sll          s5, t6, gp
                  xor          zero, t4, s1
                  mulhsu       s6, t6, s6
                  mul          t3, gp, a5
                  addiw        t5, gp, -471
                  slti         s7, a6, -755
                  sltu         zero, t2, a6
                  srai         t1, s3, 46
                  lui          s0, 16057
                  mulh         a2, t4, s5
                  srliw        t1, s0, 5
                  mulhu        s11, a7, s4
                  xor          zero, t2, t4
                  srlw         a5, t6, s11
                  srliw        a3, s10, 7
                  sra          a2, s6, tp
                  andi         zero, s1, -1092
                  mulw         s0, s8, sp
                  addw         t3, a0, s10
                  slti         s8, s3, -72
                  mulhsu       s9, s11, a7
                  sra          a2, a7, s4
                  slliw        s6, gp, 13
                  sraw         s11, t5, s2
                  srl          s0, s11, t0
                  slliw        a1, tp, 24
                  remuw        t2, gp, s9
                  remuw        t6, t4, s8
                  nop
                  xor          a0, t4, a1
                  andi         t5, zero, -1963
                  srl          a1, s8, t3
                  lui          sp, 518888
                  auipc        s6, 260114
                  nop
                  sltu         s9, tp, s2
                  sraw         gp, s0, s8
                  div          zero, gp, s3
                  xori         a0, zero, -458
                  slli         a1, a7, 39
                  divuw        t2, gp, ra
                  addiw        s2, t6, -1193
                  nop
                  sltiu        zero, a2, 589
                  slt          s6, s3, a6
                  ori          s6, t5, 907
                  sltiu        s3, s3, -754
                  remw         ra, s5, t0
                  slt          s6, t5, s4
                  mul          s7, t0, s11
                  slti         s2, s2, 654
                  addw         a3, t6, a3
                  addi         zero, s3, 678
                  add          s2, gp, a6
                  addiw        zero, a4, -1152
                  sltu         a4, zero, t3
                  ori          a3, s11, -22
                  slliw        s0, gp, 3
                  srli         zero, t6, 54
                  ori          s0, a1, 1095
                  mulw         t6, t5, s3
                  andi         s4, t0, -882
                  rem          zero, s8, s5
                  srlw         s3, s0, s4
                  xori         t3, a3, -1145
                  divw         a4, a0, a2
                  sraiw        gp, t1, 6
                  sllw         zero, s8, s0
                  xor          s4, s5, a0
                  addiw        a3, t1, -1702
                  slli         a3, s10, 42
                  sraiw        t5, a3, 22
                  divuw        s0, tp, a0
                  mul          sp, t6, a1
                  slliw        s6, sp, 11
                  lui          s7, 292174
                  nop
                  remuw        a2, s8, zero
                  slli         gp, s1, 19
                  mulw         s8, zero, t0
                  mulhsu       a0, a6, t1
                  mul          s8, a6, gp
                  nop
                  add          ra, a1, s11
                  srliw        tp, t5, 2
                  slti         s11, a1, 921
                  or           a2, sp, t6
                  or           a0, s7, gp
                  divw         s8, t5, sp
                  sra          a1, ra, s7
                  slli         s10, s1, 56
                  xori         s2, t1, -1218
                  andi         s3, t6, -1316
                  addiw        t3, a1, 1436
                  remu         zero, s11, t1
                  andi         a3, t1, 498
                  andi         s8, s3, -850
                  remu         s10, a7, a6
                  xor          s6, s1, sp
                  srl          t1, s4, a5
                  srliw        t5, s4, 14
                  sraiw        s9, s5, 24
                  mulh         a0, t4, a7
                  subw         t5, ra, gp
                  sltu         sp, gp, ra
                  sltiu        s11, s0, -904
                  nop
                  add          sp, s8, a0
                  srai         s2, a6, 56
                  sub          t5, t4, s1
                  mul          t1, s3, a0
                  div          s3, t2, ra
                  sll          a1, s6, a5
                  andi         s3, s9, 1066
                  addw         s9, a6, t0
                  rem          s10, s11, t0
                  divuw        t0, t3, s10
                  slliw        s6, s6, 0
                  remu         a3, s7, s2
                  slli         s7, s6, 11
                  slt          t1, s2, s1
                  sraw         t2, s5, tp
                  add          a3, t1, a5
                  rem          tp, s10, t4
                  sraw         s6, gp, s2
                  xor          s10, t2, t0
                  auipc        s5, 861685
                  remw         s5, sp, tp
                  srl          a2, s4, t3
                  sub          s7, s9, a1
                  slt          s8, s5, a1
                  andi         t1, a4, 1044
                  mulhu        s3, t6, t3
                  mul          s3, s10, gp
                  remw         zero, a1, s9
                  auipc        zero, 1012727
                  sllw         a3, a6, s7
                  addw         t4, a0, zero
                  srl          s4, s6, s7
                  remw         t1, t4, t4
                  slti         t3, gp, 1294
                  rem          t3, sp, s0
                  mulhsu       s3, s1, s11
                  slti         sp, s8, -1300
                  xor          s9, s5, s2
                  mul          s5, tp, zero
                  slt          s3, s6, a2
                  add          s7, a6, s8
                  srl          t6, a5, t4
                  srliw        s10, t4, 6
                  mulhu        s5, s1, a6
                  slti         s8, t3, 264
                  srli         s6, a1, 10
                  ori          t6, a6, 426
                  subw         t1, s0, sp
                  addiw        s8, s0, 1253
                  srliw        zero, a7, 1
                  andi         t3, s11, -987
                  nop
                  mulhsu       ra, t0, s5
                  mulw         s5, s4, t3
                  andi         s3, a3, -1145
                  div          gp, s6, t2
                  addw         tp, s7, s3
                  remw         s11, a4, s9
                  remw         s9, t2, s9
                  sltiu        a3, ra, -690
                  andi         s10, t1, -1062
                  addw         t6, a2, s9
                  auipc        s3, 845165
                  sllw         s10, a2, a0
                  mulhsu       a5, a2, s2
                  sll          s3, sp, a6
                  lui          s11, 712802
                  remw         t0, a5, s5
                  sllw         a1, s1, t3
                  sraw         s6, s11, a7
                  rem          sp, tp, s8
                  rem          a2, s7, sp
                  sltiu        a5, s6, 391
                  mulhsu       zero, t0, a4
                  and          s5, s10, s4
                  sltu         t4, t3, s11
                  divw         s9, a1, s1
                  slti         a1, s6, -1697
                  slli         s2, s6, 23
                  slti         t1, s0, 1524
                  rem          s3, t1, gp
                  slt          s6, sp, t1
                  remu         s9, s5, s3
                  subw         t2, sp, a4
                  andi         s9, a1, 208
                  remuw        s11, a6, t4
                  addi         a1, tp, -1962
                  slli         a2, t0, 21
                  addi         t6, t4, 404
                  sllw         t6, ra, gp
                  slli         s8, a5, 14
                  auipc        s2, 333067
                  addw         t5, s3, s10
                  andi         sp, a2, 1755
                  sllw         t4, a6, t6
                  remuw        gp, s5, a3
                  remu         a4, a1, s2
                  addw         s4, s3, gp
                  xor          s11, s5, s8
                  ori          s3, s2, -1299
                  subw         s9, a4, s3
                  srai         a4, a3, 48
                  srl          a2, t2, zero
                  divu         s9, s10, t1
                  remw         s5, s0, s7
                  auipc        ra, 966499
                  slli         s4, t6, 3
                  sllw         s4, s11, t5
                  mulhsu       s5, t0, s2
                  remu         s0, tp, a1
                  srlw         sp, a2, a6
                  divu         a0, s8, gp
                  srai         s5, a3, 51
                  srliw        s3, t2, 1
                  add          t0, t0, s1
                  div          s11, t5, s3
                  add          t5, sp, s0
                  sll          t0, tp, s6
                  addiw        t0, zero, 1686
                  mulh         tp, s0, s0
                  auipc        s4, 252710
                  srlw         gp, s3, a4
                  sraw         t2, s2, s1
                  mulhu        s5, a0, a4
                  slti         s11, s0, 517
                  mulw         s6, zero, t1
                  srai         s9, a6, 42
                  mulh         a1, s1, s10
                  rem          s4, s8, s11
                  sllw         s3, a6, a2
                  and          t1, t2, ra
                  or           a1, s9, s2
                  andi         s0, s5, 1963
                  mul          s3, s9, t3
                  mulh         t5, s7, a1
                  sub          s10, s11, a2
                  sll          a2, s9, s10
                  subw         t6, a6, a3
                  srli         t3, s8, 0
                  srai         a3, s8, 3
                  sraw         a1, ra, s9
                  andi         zero, tp, -285
                  andi         s8, t6, 1415
                  srlw         s3, s8, s7
                  ori          zero, s0, -259
                  sub          a2, a7, s10
                  divw         a4, t2, a6
                  srli         s8, zero, 50
                  mulhu        s9, s3, s11
                  and          zero, s5, a1
                  mulhu        sp, t5, t4
                  sraw         a2, t6, s4
                  div          t6, s1, a6
                  mul          a3, t0, t4
                  srl          zero, t0, ra
                  slt          s11, s3, t6
                  divw         s4, s0, t0
                  sll          t2, s10, t2
                  mulhsu       gp, sp, s3
                  sub          s8, t1, s2
                  divuw        s10, s3, t1
                  sltiu        a1, a0, 1081
                  add          t1, s6, a6
                  srl          s7, t6, s11
                  divw         s10, s9, s4
                  or           s2, s7, zero
                  remu         zero, s5, t1
                  srli         tp, sp, 45
                  ori          s2, s10, -643
                  mulw         s11, a0, a3
                  lui          a2, 527402
                  srl          a4, a7, s11
                  sraw         t6, t4, s11
                  addi         s9, s10, 798
                  sraiw        zero, s2, 25
                  remuw        s7, a6, s3
                  slliw        t4, sp, 4
                  addi         s0, t3, 280
                  srlw         s11, a1, s10
                  slti         t6, s0, -648
                  divuw        a4, t2, s3
                  rem          zero, a5, t5
                  mulw         gp, s9, a3
                  mulhsu       t0, a5, t3
                  slt          t1, s9, s10
                  sll          s3, sp, a1
                  sltu         s9, s9, a3
                  sltu         s11, a3, s11
                  rem          s8, t0, a5
                  sll          sp, t2, s6
                  slliw        ra, a0, 14
                  sub          s11, s11, s10
                  remuw        s8, a2, t2
                  mulh         s11, t0, s0
                  nop
                  sltiu        s8, s6, -631
                  sllw         t0, s2, s8
                  lui          s10, 265005
                  srli         t1, a7, 59
                  sltu         t1, t2, s6
                  xori         t0, s9, -1370
                  sraiw        s9, a3, 20
                  andi         s7, s9, -1942
                  remw         t0, a7, s10
                  srl          ra, s8, tp
                  mulw         tp, s5, tp
                  andi         s8, t2, 1007
                  divu         a5, ra, t3
                  slli         t6, s2, 35
                  or           a2, s4, s2
                  auipc        t6, 181432
                  sltu         s0, a1, s10
                  slliw        s9, a6, 24
                  xor          a1, a3, s1
                  divw         s10, t1, s11
                  mulhsu       s10, s11, s6
                  slti         sp, s9, -815
                  srliw        a5, a6, 7
                  srliw        s11, ra, 18
                  mulhu        s3, zero, sp
                  ori          t2, a5, -3
                  auipc        s4, 328402
                  andi         t1, a5, -466
                  auipc        t1, 434416
                  sraw         s2, s0, t5
                  addi         s11, a0, 1069
                  rem          s9, t0, t3
                  srl          zero, a3, t1
                  divuw        ra, t4, s9
                  or           t6, sp, s2
                  xor          s7, a3, gp
                  sra          s2, a2, t4
                  slli         ra, t4, 14
                  div          t2, s10, s9
                  mulw         s9, s2, s6
                  or           s2, s6, a2
                  or           a0, t3, s2
                  srli         ra, s2, 50
                  srlw         t6, a7, a2
                  sub          s9, s2, s0
                  sll          s4, a6, a4
                  slti         a3, s7, -663
                  srlw         a1, t0, a6
                  auipc        s9, 571574
                  srlw         s0, a3, s5
                  sltu         ra, s10, t2
                  mulw         a3, a7, a0
                  sraiw        t6, s11, 28
                  remuw        t4, a3, t5
                  sllw         t5, a2, s6
                  remw         s2, a6, a3
                  srliw        s4, sp, 24
                  sltiu        s9, s3, -999
                  add          t0, a5, a6
                  auipc        a1, 246302
                  srli         a2, tp, 22
                  mulw         a5, gp, s9
                  mul          t6, s3, s2
                  divw         gp, t2, s11
                  div          gp, t6, a7
                  and          zero, s1, t1
                  srlw         gp, s8, a1
                  divuw        t5, t5, s8
                  or           s4, s8, t1
                  remuw        t2, t1, s1
                  slliw        a4, s9, 4
                  lui          ra, 576798
                  mulhsu       a5, gp, s3
                  sll          s0, t0, t6
                  and          a5, s3, t4
                  slt          a1, s0, s8
                  ori          s9, ra, 1722
                  divuw        t3, t6, s7
                  remu         s8, a4, t1
                  addiw        s8, s2, 443
                  sraiw        s8, a3, 27
                  sll          a1, t5, gp
                  mulh         a2, s1, s5
                  sllw         s5, ra, ra
                  srai         s8, a6, 6
                  or           s9, t5, s3
                  add          a4, a1, sp
                  add          s7, a5, s1
                  mul          a0, zero, s3
                  and          ra, t5, t2
                  divw         t1, ra, s0
                  nop
                  mul          t0, s10, a5
                  mulw         s3, a6, a3
                  div          tp, s9, t2
                  addw         a4, a1, ra
                  add          s4, a1, s0
                  ori          s8, t1, 1485
                  add          a5, t3, t3
                  remu         s11, a5, t6
                  srliw        s0, t0, 6
                  srlw         a2, t0, a0
                  auipc        s6, 576192
                  addi         a4, a1, 1265
                  srli         s3, a6, 46
                  mulw         tp, s2, s4
                  srlw         a1, a3, t1
                  divw         a1, s8, sp
                  mulh         a1, t0, t5
                  remuw        s10, s8, s3
                  slt          t1, gp, zero
                  subw         a2, a4, s10
                  sraiw        s9, sp, 3
                  addw         s9, t2, a1
                  sra          t0, t5, s1
                  mulw         s2, s2, s11
                  sltiu        s6, s5, -1831
                  slliw        t0, gp, 31
                  add          t3, s3, s3
                  andi         a5, s0, 1454
                  mulh         t6, t6, gp
                  srli         s4, s0, 2
                  nop
                  sltu         s10, t2, s3
                  sraw         t5, s6, zero
                  xor          s2, gp, t3
                  divw         sp, a6, s2
                  sraw         a4, t4, s7
                  slli         t4, s11, 63
                  sllw         t4, s5, s10
                  div          s5, s8, tp
                  add          a3, ra, tp
                  add          t3, t4, s2
                  sraiw        a5, t6, 14
                  andi         t0, s8, 1724
                  sll          gp, zero, s11
                  andi         s7, a1, -828
                  ori          t3, s10, -1432
                  sll          t3, s11, s4
                  xor          s4, a4, gp
                  ori          s5, zero, -214
                  and          t0, s7, s3
                  nop
                  remw         t5, zero, zero
                  srli         s11, sp, 19
                  sraw         t4, a3, s4
                  sraw         s7, s3, t1
                  divu         s2, gp, s7
                  sraw         t5, t0, a2
                  mul          sp, t0, a0
                  rem          s0, t3, t1
                  remu         s2, s5, a5
                  srl          a5, sp, t5
                  sllw         a1, t4, s9
                  xor          s11, t2, s6
                  slli         s2, s4, 6
                  sub          s10, s6, ra
                  rem          s10, t3, t4
                  xori         gp, s7, 1081
                  slti         t5, s3, 520
                  slliw        ra, s4, 25
                  ori          s4, t5, -161
                  nop
                  sraiw        t0, a4, 18
                  auipc        s0, 515339
                  sraw         zero, a6, a4
                  sll          s4, sp, a0
                  remu         sp, zero, s6
                  xor          gp, a1, zero
                  mulh         s0, a7, s7
                  sllw         a0, a0, s7
                  sub          s2, s7, a5
                  mulhsu       a3, s8, t6
                  remu         a1, a6, s2
                  sllw         a1, zero, a3
                  srli         a0, s7, 48
                  subw         gp, s9, sp
                  rem          s8, a7, s6
                  mulhsu       s3, s10, a1
                  srlw         s8, t2, t0
                  ori          t3, s4, -161
                  addw         s5, s3, t0
                  slt          s10, a0, gp
                  xori         s11, ra, -1973
                  srli         s11, a6, 14
                  mulw         a3, a2, s7
                  sltiu        t2, zero, 305
                  mulh         s4, a0, s7
                  remu         s8, t6, gp
                  remw         sp, s3, t2
                  srlw         s4, a6, a6
                  remuw        t0, s9, a4
                  mulw         t6, a6, gp
                  srlw         t0, s8, t0
                  slli         a3, t0, 35
                  sltiu        a5, s9, -889
                  mul          a5, t3, sp
                  sub          s2, t4, tp
                  sra          a0, s7, s9
                  addw         s0, s3, t4
                  xor          sp, a0, t2
                  addiw        ra, s9, -1388
                  add          s8, zero, ra
                  slti         t0, t0, 1656
                  sltu         a5, s2, ra
                  addw         tp, a5, t6
                  sltiu        s2, s2, 971
                  addw         s0, a3, a4
                  remu         s8, t6, gp
                  mulhu        gp, s0, s3
                  addiw        a0, t3, -1464
                  rem          a1, sp, a6
                  sltu         t4, zero, t5
                  sub          t0, zero, gp
                  slliw        t4, s6, 29
                  div          s2, s6, t6
                  remu         gp, s6, t5
                  or           a1, a1, t0
                  remu         a0, s3, s6
                  lui          zero, 278318
                  divw         a4, s1, sp
                  subw         s8, a2, s9
                  srlw         t4, s9, s8
                  xor          a1, s1, ra
                  div          s11, gp, t5
                  sll          a0, s11, a2
                  xori         s10, a2, -1765
                  and          t6, s6, a4
                  mulhu        t6, a4, t4
                  remu         ra, s1, s7
                  mulw         a1, s0, a5
                  sllw         s0, s6, a6
                  addi         t0, s4, -853
                  srlw         t2, a7, s3
                  sltu         s10, ra, a3
                  auipc        a2, 91290
                  or           ra, s5, a7
                  srai         s8, a2, 47
                  srliw        s0, a7, 12
                  sltu         t6, zero, gp
                  sltu         t6, a7, a7
                  andi         ra, t5, -1477
                  lui          t1, 526510
                  xor          a5, s7, t6
                  divw         s3, a2, s2
                  remuw        a2, a4, zero
                  auipc        t6, 549368
                  remu         a5, a2, a1
                  xor          ra, s9, s7
                  srl          s3, a1, t4
                  mulh         s11, a7, t5
                  divw         s4, a6, a6
                  auipc        s9, 240334
                  sra          tp, a2, s8
                  srlw         t0, s6, s0
                  srli         sp, t6, 24
                  sraiw        a3, ra, 2
                  xori         t2, a6, -478
                  mul          s6, t5, t2
                  sltu         s5, a0, a1
                  andi         s6, s0, 796
                  sra          t2, t1, s11
                  addw         ra, a7, s5
                  mulhu        s5, s2, t3
                  mulhsu       a3, s2, s11
                  slli         t4, a0, 56
                  remu         t2, t5, s1
                  addi         t2, t1, -1830
                  divw         s4, t2, s11
                  or           a5, a6, s7
                  divw         t2, gp, a0
                  lui          t6, 649081
                  remuw        t4, a6, t3
                  sraw         t1, t2, a1
                  or           t6, a6, s3
                  srai         t6, s11, 58
                  slli         a2, gp, 18
                  lui          s6, 935996
                  srlw         s8, a7, t5
                  mulw         s5, a6, s10
                  remw         a0, sp, t3
                  addw         s9, t0, s9
                  slliw        s9, s4, 23
                  divu         a2, s0, a6
                  add          a3, t4, s11
                  divuw        s4, a5, a1
                  remuw        a0, t0, a0
                  sll          t3, a2, a3
                  srlw         a5, t2, t1
                  ori          a2, tp, 493
                  sll          a3, a0, s5
                  divw         tp, s10, t4
                  lui          s6, 596064
                  mul          a2, s7, s9
                  nop
                  andi         s11, gp, 1077
                  sraiw        s5, s9, 2
                  mulhu        a3, a3, s0
                  add          a4, t0, s7
                  slti         s7, a1, -770
                  addiw        s7, a6, 1995
                  sllw         ra, s3, t2
                  sra          t6, a2, s7
                  add          s9, s5, t4
                  divw         a1, s3, s5
                  nop
                  rem          t0, t2, s4
                  divw         s3, t2, t4
                  sltiu        t5, s9, -1204
                  and          s9, a7, a0
                  add          a2, a4, s2
                  slli         ra, zero, 24
                  divw         s10, s4, ra
                  addw         zero, a5, s0
                  sra          t3, t4, a7
                  srlw         t3, ra, s11
                  mulhu        a3, gp, zero
                  sltiu        s6, a3, 601
                  lui          a0, 1042851
                  sraiw        sp, a4, 17
                  mulhsu       t4, s7, t4
                  mulh         a2, t2, zero
                  sraiw        a1, gp, 8
                  andi         t2, s11, -1308
                  slliw        s5, t2, 9
                  srai         t1, s4, 45
                  srai         a3, t2, 52
                  addi         t0, a3, 692
                  srlw         t5, s10, a4
                  rem          s5, s0, s6
                  mulh         zero, s11, a7
                  sltu         ra, tp, s3
                  remw         a3, t3, a6
                  xori         s10, zero, -975
                  mulw         s3, a6, s1
                  addi         ra, s3, -490
                  slt          a0, gp, s9
                  ori          a0, a1, -765
                  remw         t1, a0, a4
                  divu         t2, t2, t6
                  addw         a2, tp, s10
                  mulh         zero, s5, sp
                  remw         gp, t0, a7
                  slli         a5, s2, 20
                  slt          t5, s10, t3
                  mul          s0, s1, t3
                  divuw        s8, s5, a5
                  and          ra, tp, a2
                  mulh         a4, t0, tp
                  addi         ra, s8, 141
                  addw         a5, a4, s6
                  xor          t5, tp, t5
                  or           a5, s5, t3
                  slt          s9, s6, sp
                  divw         s5, s0, ra
                  sll          s0, s0, t6
                  srliw        a5, s4, 8
                  xori         tp, s10, 1564
                  xori         t1, s8, -385
                  ori          s9, sp, -74
                  slli         s2, t1, 60
                  mulhu        t3, ra, t3
                  ori          t2, a5, 1279
                  div          s10, ra, a3
                  slti         zero, a4, 1930
                  slti         s4, a6, -1004
                  sll          s7, sp, s8
                  remu         s7, s1, zero
                  sra          t6, s4, a0
                  sltiu        t6, a6, -1767
                  slli         s4, a4, 54
                  sub          s6, s8, a7
                  slliw        t1, t4, 15
                  srai         gp, a3, 24
                  andi         sp, s4, -1468
                  divw         t3, a5, a3
                  subw         a5, s10, s1
                  divu         s3, t3, a3
                  slti         s5, a3, -772
                  subw         s2, s8, ra
                  slti         s9, s1, 1736
                  remuw        t1, ra, s5
                  or           t3, a3, a0
                  ori          s5, t6, -833
                  xori         s0, a7, -514
                  div          a3, s0, t6
                  div          s3, s3, t2
                  mulhu        t2, zero, a7
                  mulw         t1, a5, s2
                  divu         zero, s0, tp
                  sraw         t6, t5, ra
                  slt          s3, zero, s1
                  divw         s2, s0, t1
                  srli         a0, a6, 24
                  addi         s5, sp, 1337
                  divu         a5, t3, s8
                  and          s0, t1, ra
                  divuw        a5, t5, s1
                  addiw        s9, s8, 636
                  subw         a5, a4, s10
                  subw         t4, t1, gp
                  srliw        s4, s3, 26
                  remuw        s5, s0, t4
                  sllw         a4, a0, zero
                  nop
                  sltiu        a3, s9, 1442
                  srai         s5, t4, 38
                  divuw        t2, sp, sp
                  subw         s4, s5, s2
                  sraw         a1, s5, gp
                  sltiu        a4, s1, -1258
                  srliw        s0, ra, 18
                  mulw         zero, ra, tp
                  remuw        t6, zero, t0
                  remw         s3, a5, a4
                  srliw        s5, s0, 10
                  remuw        a1, ra, tp
                  sllw         a2, t1, t4
                  mulh         a1, a2, a7
                  remw         s7, t5, ra
                  sllw         a0, ra, tp
                  mul          s11, t3, s1
                  ori          t3, t4, -1561
                  srlw         s10, a1, a4
                  sltu         t0, t4, s5
                  auipc        s3, 291080
                  remw         a4, s3, sp
                  srl          tp, s2, t5
                  srli         s8, zero, 18
                  addiw        s7, s11, 9
                  subw         s8, a5, s3
                  xor          t6, a1, t1
                  addw         t5, a3, t2
                  andi         sp, s3, 251
                  sraiw        t6, a1, 17
                  addw         a3, s2, a6
                  lui          a4, 970006
                  remu         t4, s7, s7
                  sllw         a2, s2, a4
                  addiw        s10, s1, 885
                  mulhsu       s5, a7, a7
                  sraiw        s3, s7, 6
                  remu         a5, t0, a3
                  mul          zero, t1, a2
                  srliw        t3, a7, 25
                  divw         s8, s2, a0
                  sraiw        a1, a7, 1
                  lui          s3, 586288
                  add          zero, s0, s11
                  sll          zero, a3, a0
                  lui          a1, 491876
                  ori          s6, a0, -611
                  srlw         t3, a4, a6
                  remuw        a3, t0, a5
                  lui          s2, 406035
                  and          s2, t1, ra
                  remuw        t6, t6, a3
                  or           a5, t5, zero
                  sub          s9, tp, s2
                  sub          ra, s0, s7
                  xori         t3, s0, -84
                  mulhsu       s0, t1, s4
                  divw         a2, s9, a3
                  slliw        s4, zero, 9
                  slliw        a4, a5, 19
                  srl          ra, s7, ra
                  addi         s10, t5, 456
                  slliw        s4, s6, 15
                  slt          a2, s1, sp
                  rem          t1, s1, s6
                  addw         a1, a6, sp
                  sraiw        s0, sp, 22
                  sra          zero, s4, a7
                  add          s10, t3, a7
                  mulw         tp, s7, t1
                  slt          s4, t1, s4
                  sraw         ra, s6, sp
                  mulh         t3, a4, t4
                  remu         s9, a2, ra
                  andi         t0, s0, -1834
                  addiw        ra, s7, 220
                  srai         a4, t0, 26
                  add          t0, a4, a0
                  mulw         t1, s5, t6
                  sub          a0, zero, t3
                  xori         s11, zero, 319
                  srlw         t5, s10, a7
                  sltu         s0, s10, s6
                  sra          s4, a0, t2
                  addiw        t5, gp, 207
                  slti         t5, a6, -707
                  mulhu        t1, t3, t3
                  mulhu        s5, t0, s11
                  slt          t2, t2, t1
                  addw         a4, s11, ra
                  slliw        s10, t3, 5
                  nop
                  sraiw        t6, s4, 1
                  auipc        s7, 649521
                  sra          s5, a2, t2
                  srliw        t5, a0, 14
                  remw         a5, a4, s7
                  addw         t1, a1, a7
                  addi         s9, t1, -128
                  remuw        s5, a3, a5
                  sraiw        gp, s5, 29
                  rem          a1, a1, t0
                  sraiw        s7, a0, 17
                  divu         zero, t2, t1
                  xori         t3, s5, 298
                  srliw        a2, a0, 21
                  subw         s9, s8, t5
                  srai         sp, s7, 51
                  slt          a3, a0, s9
                  srlw         s9, s9, s5
                  addi         a3, t2, -1673
                  ori          s0, t5, -321
                  add          ra, a5, s4
                  xori         s9, s8, 790
                  sub          gp, t5, s8
                  add          s7, sp, t1
                  sllw         s4, t0, t3
                  divu         s3, zero, s6
                  remuw        t1, s11, s4
                  rem          s7, ra, a3
                  sltiu        a4, t5, 923
                  addiw        zero, s11, 1985
                  xori         a1, t5, 1996
                  slli         a1, s6, 63
                  sra          s7, a3, s7
                  remw         t0, t4, s11
                  srli         s8, a0, 13
                  sra          t3, s0, sp
                  or           t6, t5, s2
                  xor          ra, a1, s1
                  sll          a0, a0, s2
                  and          s0, a6, a3
                  rem          ra, s7, a7
                  sltiu        a1, tp, -1769
                  divw         s3, s5, s9
                  remu         sp, s3, a6
                  sltiu        s7, s11, -160
                  auipc        a1, 176181
                  addi         t3, a3, -228
                  subw         s11, t3, ra
                  divw         ra, gp, tp
                  slti         gp, t0, 739
                  ori          s9, a0, -1096
                  srlw         t3, zero, t0
                  srliw        sp, s2, 7
                  divuw        s5, sp, s8
                  remuw        zero, t0, t5
                  sllw         s5, a6, s6
                  srlw         s0, t3, a6
                  sub          t2, s8, sp
                  sllw         s2, a4, t4
                  add          t3, t3, gp
                  subw         s2, s0, a5
                  srlw         s0, a4, s9
                  srliw        s9, sp, 20
                  andi         s10, sp, -144
                  and          t6, s3, t5
                  add          s7, a2, t0
                  divuw        a5, s6, t5
                  mulh         t5, s5, a1
                  sraw         a2, t5, s10
                  nop
                  sraw         t1, t0, t0
                  sra          a1, ra, s1
                  addw         s7, s11, tp
                  sll          s5, s5, t1
                  xori         s5, s4, 432
                  srai         s10, a3, 27
                  slti         ra, zero, 1325
                  div          t4, s2, s8
                  sra          a1, a1, gp
                  rem          t0, t6, s1
                  addw         a2, s3, s5
                  subw         s7, s5, s9
                  nop
                  xor          t1, s2, t0
                  sraiw        s7, s6, 1
                  srliw        s3, t0, 20
                  sub          t5, s10, a1
                  srlw         zero, a0, s2
                  slli         t6, sp, 38
                  mul          s10, a4, t2
                  sub          s4, t2, t4
                  sllw         s9, t3, s6
                  div          s3, sp, s1
                  sra          ra, s10, s11
                  subw         s8, a7, a1
                  slti         s5, t2, -758
                  mulh         a2, s10, s8
                  divw         t0, s11, a5
                  nop
                  addi         s3, a1, 943
                  srliw        ra, s7, 5
                  srlw         t0, t3, s8
                  mulhsu       s9, t3, a6
                  mulw         s2, a2, t3
                  mulhsu       tp, zero, tp
                  srl          a2, tp, s11
                  sraw         t5, t2, s7
                  div          s3, a5, s5
                  add          s5, ra, a2
                  nop
                  slt          s5, a4, a4
                  add          a5, a1, s8
                  slti         a0, a7, -463
                  mulh         zero, a3, s7
                  sltu         s4, s4, s10
                  sraw         s9, tp, tp
                  rem          s5, t4, a7
                  addi         t1, ra, -208
                  remw         gp, t4, s1
                  addiw        a0, sp, 568
                  sraiw        s8, ra, 11
                  divu         t0, t5, t5
                  divu         s2, t4, a3
                  div          a4, t5, s2
                  slti         s4, s8, 1037
                  lui          s4, 781796
                  add          t4, s10, a2
                  rem          t4, zero, gp
                  mulw         t6, s9, a1
                  srl          s10, s0, a5
                  srliw        t1, a3, 13
                  nop
                  slli         a2, s9, 11
                  slti         s10, sp, -1146
                  sll          t3, zero, t3
                  sllw         a5, a1, a3
                  xor          tp, s4, s8
                  srl          s9, t1, sp
                  remw         t0, s9, zero
                  divu         t0, t0, ra
                  rem          s4, t6, s9
                  remuw        a2, s1, gp
                  slli         a1, s6, 25
                  lui          a5, 694726
                  addiw        s4, t6, -162
                  srai         s9, s8, 35
                  srai         t5, a4, 12
                  divw         t6, a5, s9
                  rem          s4, s4, zero
                  divuw        s8, a4, s9
                  mulw         a1, t4, tp
                  remuw        t5, t4, s5
                  and          a3, t4, s7
                  mulh         s6, s3, t0
                  sll          s4, ra, s10
                  div          t2, s2, tp
                  mul          s7, t2, s10
                  subw         t4, s5, a2
                  sltiu        s5, s11, -247
                  srlw         s5, a2, t2
                  sra          s2, tp, t4
                  xori         t0, s9, 1243
                  mulhsu       a5, s2, s4
                  xori         s6, gp, -34
                  mulhu        a2, s4, t1
                  div          a3, s10, a6
                  auipc        zero, 627809
                  mulw         zero, ra, s10
                  mulhsu       s10, a5, zero
                  slti         tp, a0, 326
                  remuw        sp, ra, s1
                  remuw        t1, gp, s9
                  rem          tp, gp, a3
                  sllw         a1, a2, t6
                  remuw        s7, a2, tp
                  subw         a0, a6, t6
                  mulw         s7, s0, t5
                  slli         t2, t3, 43
                  remu         s11, ra, s0
                  rem          s8, a3, s5
                  remw         s10, t3, sp
                  auipc        a3, 86886
                  srli         s8, t6, 41
                  slti         s3, s6, -1195
                  mulw         t4, a3, ra
                  addiw        t6, a6, 1319
                  mulhu        s10, a7, s11
                  rem          s8, s0, s5
                  srai         s3, s10, 12
                  divuw        s9, a0, a2
                  and          a2, t0, t5
                  subw         s4, s8, a0
                  remuw        s4, s10, a4
                  srli         s0, a7, 24
                  addi         s0, s3, 755
                  sra          ra, s10, t2
                  sub          tp, s8, ra
                  subw         t0, a1, a0
                  sll          t1, s6, s6
                  sra          a2, s2, s2
                  srlw         ra, s8, s1
                  addi         t2, t6, -1544
                  srai         a2, t5, 50
                  divu         s8, t3, a6
                  slli         s6, a1, 20
                  and          t5, s11, t2
                  ori          s2, s4, 1887
                  nop
                  slt          t5, tp, zero
                  sll          t3, a2, tp
                  srl          t1, a1, a4
                  slliw        s6, s2, 20
                  divu         s6, a0, s10
                  sll          a5, t2, a5
                  remu         s11, a2, a1
                  and          s11, s7, s4
                  lui          a4, 685004
                  subw         a3, sp, t0
                  srlw         sp, s9, s5
                  slti         s5, s2, -1397
                  mulw         s7, s3, a1
                  sllw         a5, s4, gp
                  or           gp, ra, t1
                  srai         s9, a0, 22
                  slti         s9, a2, 422
                  rem          a3, t3, s6
                  lui          s9, 184772
                  mulhu        s0, a3, t4
                  remw         a3, s1, s9
                  slli         t1, t1, 37
                  sllw         zero, s6, a1
                  sltiu        s10, t4, -1774
                  divw         sp, a3, a5
                  sltiu        t3, a0, -1253
                  divu         t2, s4, t4
                  remu         zero, t2, a2
                  sllw         ra, tp, s10
                  xori         s7, a0, 1045
                  add          t5, a2, t0
                  srai         s5, s11, 40
                  sra          ra, a7, s11
                  nop
                  addw         sp, s4, a6
                  slli         gp, a3, 35
                  slli         a5, tp, 53
                  sub          t1, s4, s1
                  remuw        tp, s8, s4
                  andi         s8, t5, 1788
                  sraw         s11, a4, s1
                  slti         s11, a6, -788
                  xor          sp, s4, s0
                  or           s10, ra, a3
                  mulhsu       t3, a3, tp
                  andi         tp, s3, 1541
                  xori         t4, s3, -1421
                  mul          gp, s5, a0
                  auipc        a0, 154641
                  nop
                  mulhu        s8, a0, s8
                  mulhsu       s5, s0, a7
                  div          s2, a3, gp
                  sraiw        t6, t1, 2
                  lui          a0, 896743
                  andi         a4, a4, 581
                  nop
                  srlw         a3, sp, s2
                  sltiu        s8, t0, -832
                  add          s4, s11, s2
                  srlw         sp, s5, t0
                  srai         zero, s7, 24
                  remw         s0, a6, gp
                  ori          ra, a4, 510
                  auipc        a0, 187659
                  mulhu        t1, s5, a4
                  sra          s0, t3, s4
                  sraiw        a5, a3, 20
                  srli         sp, a4, 14
                  srliw        s11, ra, 26
                  rem          s8, gp, a7
                  remuw        tp, t4, s4
                  add          s5, s4, tp
                  lui          t2, 275200
                  slt          s4, a6, t6
                  remw         t5, t6, s1
                  xori         s8, s8, -631
                  slti         a1, s5, -1738
                  and          s3, a3, s5
                  srlw         s9, s7, a6
                  auipc        s2, 864559
                  srli         gp, t2, 12
                  remu         t2, s3, s3
                  srl          a2, s5, s7
                  sraw         s6, s4, a3
                  xor          sp, gp, s10
                  remw         a5, s4, a4
                  mul          t4, t0, a7
                  ori          a5, t6, 93
                  divu         s8, t4, s1
                  sra          sp, t4, s0
                  add          a4, s5, gp
                  addw         t1, s4, t4
                  slt          s7, s1, s1
                  nop
                  slt          t1, a3, t4
                  remuw        sp, a1, a7
                  sraiw        s11, s9, 15
                  mulh         tp, a3, t0
                  lui          s6, 111670
                  ori          sp, a4, -125
                  sll          s4, a0, s4
                  sraiw        s8, sp, 18
                  sraiw        s5, a3, 4
                  addiw        s2, a3, 1763
                  slti         a3, sp, 309
                  sraiw        s3, t6, 11
                  remu         a3, tp, a4
                  lui          t3, 816166
                  srl          t4, a3, s11
                  addiw        t1, a0, 1569
                  sraw         t6, zero, s1
                  lui          s0, 372619
                  sllw         a1, t5, ra
                  xori         t6, s8, 1950
                  slt          t5, a0, t0
                  sub          s3, a1, a6
                  srliw        s3, s3, 18
                  divu         s4, s5, s4
                  slli         t4, tp, 39
                  div          s10, t4, a3
                  srai         s2, s11, 15
                  slli         zero, a7, 2
                  srai         s8, t3, 4
                  sll          tp, s6, t5
                  and          gp, a5, tp
                  mulhsu       t5, s3, s10
                  slliw        gp, s5, 17
                  addi         t4, tp, 100
                  addw         s0, s4, t0
                  mulh         t1, sp, t0
                  auipc        t0, 324913
                  remw         t1, a5, t4
                  addi         a4, s4, -164
                  mulhsu       s4, t2, s10
                  addw         s5, s6, t3
                  slli         s5, s11, 5
                  divuw        t0, s1, s4
                  sllw         s3, s8, s1
                  xori         s6, a7, -445
                  mul          s0, t5, s3
                  slli         s2, a6, 37
                  sll          t3, a1, zero
                  sub          s5, sp, sp
                  rem          s0, t5, a3
                  srl          s7, s10, s1
                  andi         a1, s5, 631
                  srl          s9, s9, a0
                  rem          gp, s3, s11
                  and          a4, s1, a0
                  andi         s5, s2, -282
                  divuw        t1, s2, s8
                  mulw         t1, a1, s5
                  ori          t5, gp, 632
                  remu         a1, s1, s6
                  slti         zero, ra, -1409
                  sraw         s0, tp, s9
                  addi         t2, ra, 1850
                  sra          s3, a5, s10
                  srl          s3, s9, s1
                  srlw         s9, s8, ra
                  remw         tp, t2, s2
                  sub          s4, s2, s4
                  xori         gp, s0, -748
                  srl          a0, t0, tp
                  addw         s2, a0, s4
                  sltiu        s2, s8, 2015
                  mulhu        s11, a1, t5
                  sraw         s9, a3, t3
                  sraw         a1, a3, t0
                  subw         t0, a0, s0
                  div          sp, s6, t3
                  auipc        s2, 107188
                  mulh         s5, t1, s0
                  srl          t1, a3, gp
                  subw         t6, a7, a1
                  auipc        ra, 207100
                  sraiw        s9, a1, 6
                  sll          s10, tp, t5
                  slli         t1, a4, 24
                  divw         ra, t1, t5
                  mulh         s9, s11, zero
                  addi         s0, t6, 1050
                  sra          s5, t4, a2
                  remu         s8, ra, s3
                  addiw        zero, t0, 1307
                  xori         a4, s0, -1069
                  mul          ra, gp, s6
                  slli         sp, a0, 21
                  or           s0, a6, ra
                  or           s4, s3, s10
                  xor          t5, a5, s5
                  add          ra, s11, a1
                  sltu         s8, t1, s0
                  srl          s9, a3, zero
                  addiw        s0, ra, 824
                  xori         s2, s2, 44
                  addw         t1, t6, s5
                  sll          s5, a6, sp
                  sub          s2, s6, a0
                  slti         s2, s9, -493
                  lui          a2, 78675
                  mulw         s9, s7, a5
                  slt          a5, t0, t6
                  addw         a3, gp, s0
                  addi         s5, a5, 371
                  srlw         s0, s2, s11
                  ori          s0, a1, 480
                  remuw        s3, s6, t5
                  sub          s10, a1, zero
                  addi         a4, a1, -213
                  addiw        a1, a4, 836
                  mulw         s10, s1, s1
                  subw         t5, a4, sp
                  remu         ra, t4, a5
                  slti         t1, s9, -593
                  sub          a4, t2, a0
                  remu         s11, a6, a2
                  remuw        s3, s3, s8
                  slt          sp, zero, t0
                  remuw        a2, ra, s0
                  sraiw        s10, t1, 5
                  rem          t5, a3, a7
                  remuw        t3, s8, s0
                  mulhu        zero, s1, s0
                  sltiu        zero, t1, -1401
                  slt          tp, gp, a0
                  divw         s5, a6, a3
                  remu         t0, t2, ra
                  sub          t0, t3, tp
                  srli         t6, a3, 23
                  slli         s0, a1, 20
                  and          t5, sp, tp
                  sraiw        a1, a7, 12
                  remu         s9, t1, sp
                  addi         gp, s7, 1173
                  slliw        zero, s1, 7
                  remw         t4, t6, s8
                  sllw         a2, s8, s3
                  sra          s2, zero, s1
                  addw         s7, tp, t4
                  xor          s2, s6, t2
                  slli         a1, t2, 32
                  remw         s4, s10, s5
                  remuw        s3, ra, sp
                  mulhsu       s5, a2, a0
                  sltu         sp, zero, t1
                  addi         t0, tp, -1401
                  add          s3, s0, a3
                  sltu         zero, a0, t5
                  mul          s10, s11, zero
                  sltu         s9, s5, s9
                  add          s9, s0, t4
                  slliw        a2, a6, 25
                  sraw         a0, a1, t5
                  sll          tp, s0, s4
                  mul          t1, s2, a2
                  sraiw        s0, s6, 4
                  slti         s7, a2, 866
                  mulhsu       s6, a2, a7
                  div          gp, a6, s10
                  lui          s0, 214018
                  or           t3, s9, s8
                  subw         sp, sp, sp
                  div          ra, s4, s6
                  auipc        s9, 245703
                  rem          t3, sp, s9
                  addw         a3, sp, a1
                  remw         a3, t2, a1
                  remu         t4, a3, s9
                  slli         s9, t5, 36
                  divw         s0, t2, t6
                  mulhsu       t5, ra, a6
                  sllw         s4, sp, t1
                  srai         s5, t3, 56
                  or           s4, a0, s8
                  srlw         a3, t5, s10
                  subw         s0, s1, s6
                  divuw        a0, ra, s2
                  auipc        s10, 484739
                  srlw         t2, s2, s9
                  mulh         s0, t4, a7
                  srl          a5, gp, s6
                  slti         s6, a0, -1233
                  remw         s3, ra, s8
                  divuw        a2, a4, a0
                  mulh         t5, s3, t0
                  xori         a1, a3, 1756
                  xor          t1, a2, a1
                  subw         t3, t6, gp
                  nop
                  addiw        a5, a7, -457
                  subw         a0, t4, a4
                  xori         a0, s2, -876
                  addi         a2, a6, 1634
                  addw         a3, t3, a4
                  mulhsu       s7, s4, t5
                  xori         a3, s6, 146
                  mulhsu       s8, s10, gp
                  add          a5, s7, s5
                  sra          s10, s6, gp
                  sraw         a3, t6, a5
                  sltiu        s2, t6, 1611
                  sub          s4, s8, s9
                  addiw        ra, sp, 724
                  mul          s0, gp, s0
                  slt          s11, s10, s4
                  subw         s9, t6, s1
                  subw         ra, s9, s11
                  mulhu        gp, tp, t2
                  rem          a1, ra, s6
                  remu         s7, t5, a7
                  sraw         t6, s9, s5
                  lui          t0, 581234
                  slti         s8, a2, -1869
                  srl          a5, t1, t6
                  sll          s3, tp, t3
                  addiw        s3, a2, -376
                  xori         a5, t6, 353
                  subw         sp, tp, s11
                  sub          ra, s3, s5
                  slli         s3, a4, 27
                  mulh         tp, s1, tp
                  addi         s5, t4, -2037
                  addiw        s10, t6, -1036
                  remuw        sp, a0, zero
                  sll          t3, s2, a7
                  xori         ra, s2, -1860
                  slti         a1, t2, -843
                  divuw        ra, s2, a5
                  srlw         s0, s8, s7
                  auipc        a2, 353051
                  slt          a1, s10, t3
                  sll          s0, a7, tp
                  remw         zero, s8, s0
                  remuw        s9, s0, a6
                  sub          t2, s11, t1
                  xori         a0, s6, 1161
                  subw         zero, s8, t5
                  lui          a2, 648528
                  sltu         s9, a6, s3
                  srai         a1, a5, 46
                  mul          sp, a6, s1
                  divw         t5, zero, t5
                  srli         s4, s6, 12
                  addw         s2, a3, s3
                  sra          s6, t2, s3
                  sltiu        a3, gp, 1014
                  mulw         a1, tp, s3
                  div          tp, s2, gp
                  auipc        a0, 800919
                  srliw        s4, t1, 4
                  rem          t3, a7, t0
                  addiw        t1, t5, -1316
                  divw         s5, s8, a3
                  addw         a4, t6, a6
                  and          s4, s5, t2
                  div          sp, s11, s4
                  mulh         ra, a4, zero
                  mulh         a2, a2, t6
                  mulhu        s5, tp, t3
                  xori         zero, t3, 655
                  slti         a1, a4, -924
                  addiw        s7, s3, -1447
                  addi         s3, a5, 248
                  mulhu        zero, s0, s8
                  srli         s8, s11, 38
                  srliw        zero, a1, 24
                  sra          s0, t5, zero
                  slti         s10, s0, 698
                  srai         s0, s7, 52
                  or           t4, s7, s6
                  xori         s0, t1, 1593
                  mulhu        a3, t5, s1
                  andi         a3, a5, -121
                  remu         s10, a0, s2
                  remu         s10, a5, t6
                  xor          t4, a2, a6
                  slli         sp, s10, 46
                  xori         a1, t5, 2000
                  sltu         t4, s8, t2
                  sraw         a1, a2, s6
                  addi         a3, a6, 88
                  div          tp, s3, t2
                  ori          ra, s0, -1936
                  slti         t1, sp, 249
                  slli         t0, s11, 46
                  andi         s2, s0, 681
                  srli         s8, s9, 3
                  addi         tp, a5, -632
                  remw         s0, s7, zero
                  srai         t6, sp, 58
                  srl          a3, s10, a2
                  slt          t0, sp, a0
                  divu         a3, t4, a7
                  remw         s5, tp, t1
                  srai         a0, s6, 57
                  srli         s3, sp, 8
                  auipc        s9, 1041477
                  divw         s3, s11, s8
                  remuw        t1, s7, a0
                  and          s9, a7, a6
                  sltiu        gp, a4, 15
                  mul          t2, zero, s10
                  sraiw        sp, gp, 23
                  mulhsu       t3, a1, t0
                  srl          s0, t0, a1
                  mul          s9, s1, t3
                  add          s9, t5, a7
                  rem          s2, zero, sp
                  and          gp, t3, a5
                  sltu         ra, gp, t4
                  divuw        t2, s6, s4
                  addi         a2, a5, 529
                  mul          a5, gp, s8
                  nop
                  div          t0, s9, s3
                  srl          a5, a0, t1
                  auipc        tp, 398301
                  srli         t2, t1, 42
                  sltu         a1, a1, t1
                  andi         a3, s10, -683
                  addw         s4, s8, s11
                  divw         t0, a6, tp
                  srlw         t3, t6, gp
                  addw         s2, s8, s11
                  srlw         s8, s11, zero
                  lui          s9, 308419
                  mulw         s11, s4, t1
                  add          s9, t3, t0
                  sltiu        s11, a6, -774
                  srai         a3, s4, 34
                  mulw         s6, gp, ra
                  srl          s2, tp, a0
                  slliw        t4, a4, 29
                  addi         t3, ra, 1579
                  mul          a3, s3, s7
                  sraiw        tp, s6, 14
                  sub          a2, t0, ra
                  xori         s8, ra, 160
                  sraw         t2, s7, a7
                  divuw        s3, gp, s3
                  slliw        tp, t3, 1
                  xor          t5, s5, s10
                  divw         t0, s0, a6
                  sllw         s2, t5, t0
                  div          t4, s10, s11
                  xori         t3, s2, 1049
                  sltu         s4, s9, sp
                  sll          s3, a2, s4
                  remuw        t1, s1, t2
                  sllw         t1, t1, a0
                  ori          ra, a6, 1946
                  sub          zero, a3, s1
                  mul          s8, a1, a5
                  slt          s11, t6, a6
                  remuw        s8, s8, a0
                  divw         s3, ra, t0
                  sra          gp, s1, a0
                  remu         a2, s0, s7
                  srliw        s2, t2, 2
                  sraw         gp, s5, s2
                  subw         t6, a0, sp
                  addw         s0, a5, s4
                  mul          t4, a7, t6
                  srlw         t6, a1, s3
                  or           sp, s6, sp
                  mulhu        a2, s2, s3
                  xor          t1, a5, zero
                  mulw         ra, s2, a2
                  remu         s3, t4, s10
                  srli         gp, s4, 60
                  remu         t3, t1, gp
                  addw         s0, s7, t1
                  sllw         s8, t2, t3
                  addiw        t3, s9, 1446
                  remw         a4, sp, zero
                  mulhsu       s2, t4, s0
                  ori          s5, sp, 661
                  subw         a4, t5, s5
                  mulh         a5, t5, t4
                  slli         s4, gp, 2
                  slti         s6, s0, -1695
                  subw         s7, s6, a2
                  addw         s0, s1, t3
                  andi         s2, a3, 471
                  auipc        s2, 446743
                  divu         a4, ra, tp
                  subw         tp, a3, a5
                  slti         a3, a0, -202
                  mulh         t3, a3, t4
                  divuw        s5, s5, s3
                  divu         zero, t5, t4
                  divuw        s0, a5, t2
                  xor          s0, t0, t1
                  sraiw        zero, s0, 6
                  divu         s4, s8, sp
                  mul          s5, s8, s3
                  and          s0, a5, ra
                  srlw         t2, s4, t2
                  sll          t5, a0, t5
                  srl          a2, s1, t5
                  mulhsu       a0, a2, s6
                  add          a1, a3, sp
                  srli         s0, s0, 45
                  sub          s5, s7, s7
                  rem          s10, s7, s11
                  xor          t2, tp, s11
                  sllw         a4, t1, a1
                  ori          gp, t0, -1565
                  subw         t3, a5, a7
                  addiw        gp, ra, -871
                  srli         s8, s9, 14
                  mul          t1, t2, s2
                  lui          t1, 254272
                  div          a1, s1, a3
                  srliw        s8, t1, 23
                  subw         a4, t3, s4
                  xori         a1, a3, 621
                  divw         t0, s0, gp
                  sra          a0, s2, sp
                  andi         a2, a5, -997
                  mul          t3, a3, a6
                  divu         s0, gp, ra
                  sraw         s3, zero, a2
                  mulhsu       s3, a3, ra
                  mulw         s9, s0, t3
                  slliw        s4, a1, 8
                  auipc        s5, 763047
                  sra          t0, a5, t0
                  divu         s5, a2, a1
                  mulh         a5, s3, s8
                  andi         s0, a2, 408
                  ori          s3, t6, 1962
                  rem          s11, s6, a4
                  rem          s7, s4, a0
                  xori         t1, s9, 1757
                  and          s3, a4, s9
                  remuw        a5, s7, a5
                  rem          a5, s5, t1
                  add          s5, t5, s5
                  sltu         a5, s5, t5
                  sraiw        a2, s1, 19
                  sraw         s6, a3, a7
                  ori          gp, a2, 380
                  sllw         t0, a2, s2
                  divw         s2, t1, zero
                  andi         zero, s10, -1637
                  remw         a5, t6, s3
                  lui          s10, 327120
                  srli         s2, s10, 26
                  sraiw        t0, s3, 5
                  or           t5, s9, s9
                  add          t1, t5, s4
                  add          zero, tp, a3
                  sllw         a1, s0, a6
                  mulhsu       s8, s11, s4
                  xor          t4, a3, t2
                  addiw        a0, t4, -1823
                  remu         gp, tp, t5
                  srli         t3, a0, 27
                  srliw        sp, s10, 2
                  divuw        a5, gp, s9
                  nop
                  sltu         s4, a7, a1
                  mul          t4, s4, t0
                  slliw        t6, s2, 22
                  srlw         s6, s5, t1
                  sub          t4, t3, s6
                  div          s9, t4, zero
                  sraiw        a1, a5, 30
                  sll          t3, a1, gp
                  andi         s0, s2, 1716
                  slt          tp, t0, s3
                  sraiw        zero, zero, 25
                  sllw         s4, s2, a7
                  addw         t4, a5, sp
                  divw         t6, a0, a4
                  addi         t5, tp, 1008
                  div          t2, s5, a0
                  slt          t5, gp, s9
                  slliw        s3, s8, 22
                  slli         s9, ra, 45
                  sltiu        gp, s5, -1701
                  divu         a3, s11, a4
                  mulh         a0, a0, s11
                  rem          a2, a5, ra
                  addw         a0, t6, s9
                  srli         t1, s11, 51
                  sltu         s5, s7, s8
                  srliw        s0, t0, 5
                  remuw        s6, s5, gp
                  and          a5, t5, t6
                  addiw        t6, a0, 812
                  remw         ra, sp, s10
                  slt          ra, a1, a0
                  divuw        t4, s1, s3
                  srlw         sp, s1, s3
                  mul          t0, sp, tp
                  subw         s4, t2, s5
                  andi         s2, t3, -778
                  addi         ra, t0, -897
                  remuw        t5, s1, t3
                  remw         s5, t0, t6
                  sll          a1, a1, a5
                  addiw        zero, s10, -1682
                  slliw        a3, a6, 4
                  remuw        s11, a5, a0
                  subw         s10, s0, a2
                  lui          a2, 883840
                  sub          ra, s4, tp
                  or           a5, t4, s11
                  slli         s0, zero, 31
                  addiw        s6, t3, 141
                  div          sp, t5, s4
                  auipc        s5, 65835
                  sll          ra, s8, s9
                  andi         t5, s0, -1027
                  mulh         ra, s2, s8
                  sll          s8, s5, gp
                  mulhsu       s8, t1, t3
                  srlw         s4, s8, t2
                  srlw         s6, s1, s10
                  sltiu        s10, s7, 1976
                  sltu         s4, s3, s11
                  auipc        t6, 326343
                  divu         t3, s11, gp
                  mulh         t2, a3, sp
                  srai         ra, a6, 54
                  slliw        a3, s8, 12
                  sraw         a4, a5, a2
                  slliw        a1, gp, 11
                  divu         t4, t4, t6
                  lui          a0, 90021
                  ori          s2, a4, -986
                  remu         s0, s2, s0
                  sllw         s4, t6, s7
                  nop
                  addiw        t0, zero, 110
                  slt          s10, s7, a3
                  remuw        a3, s0, a5
                  slliw        ra, a5, 17
                  sraiw        t5, s0, 2
                  addiw        t5, s2, 564
                  xor          zero, a0, s6
                  slt          ra, s1, s2
                  sll          s7, ra, ra
                  div          s2, s6, s0
                  or           a5, s7, tp
                  sra          s5, s4, sp
                  mulh         s4, tp, tp
                  sraiw        t6, t6, 9
                  slt          a5, a6, s5
                  sltu         s0, s3, t0
                  divu         a1, s5, s11
                  sltu         s8, a1, a5
                  nop
                  or           s3, tp, s10
                  xori         s2, s8, 1656
                  rem          zero, s8, tp
                  divw         s5, a2, sp
                  addiw        s0, a0, -705
                  sub          t2, s1, t4
                  sllw         t1, a5, s0
                  addi         t1, a2, -662
                  srliw        t5, t4, 10
                  lui          a4, 339645
                  slli         s2, tp, 22
                  slli         t3, t3, 46
                  sllw         s9, a3, t0
                  and          s5, s4, a3
                  mulw         sp, a1, s9
                  lui          s2, 880043
                  rem          t6, t3, s2
                  xor          t4, a5, s0
                  auipc        ra, 20633
                  subw         t6, s0, t6
                  mulh         a4, s4, t4
                  srl          s2, t3, s6
                  mulh         s7, t5, a5
                  remuw        gp, a3, s4
                  xor          tp, s7, s1
                  srli         t2, a3, 29
                  sll          s3, a3, t2
                  nop
                  andi         s7, a7, -833
                  and          a2, s0, s6
                  addw         s10, zero, t2
                  srai         a4, a3, 54
                  divw         a0, s2, t4
                  mulhsu       t5, s10, s9
                  divuw        s7, s7, s5
                  slt          s5, a4, a1
                  slli         a3, s9, 13
                  auipc        gp, 439413
                  div          s5, s6, t4
                  mulhsu       s4, t1, t5
                  divuw        tp, s0, s2
                  xor          t4, s8, zero
                  srliw        t3, tp, 26
                  slti         tp, a3, 7
                  rem          s3, a6, t3
                  slt          s4, tp, s10
                  sub          s2, t1, a5
                  sraiw        t5, s2, 13
                  srliw        ra, gp, 9
                  and          t0, s0, zero
                  nop
                  srliw        t4, zero, 9
                  add          s6, s3, s4
                  addiw        a5, s8, -1713
                  subw         s6, s1, s1
                  xori         s8, s0, 1994
                  auipc        s8, 502448
                  subw         a1, ra, t2
                  remw         s4, t3, t2
                  lui          s0, 590970
                  add          s0, tp, a7
                  divu         s3, s1, t0
                  sub          s6, s11, s1
                  or           s10, a6, gp
                  sraiw        t6, a1, 18
                  slliw        s4, s2, 31
                  mul          s3, s10, s9
                  ori          s2, a7, -848
                  andi         a2, s3, 337
                  addi         s8, zero, 1822
                  lui          s10, 62359
                  mulw         s0, s3, t3
                  sllw         a3, a0, tp
                  auipc        tp, 867086
                  sraw         a0, s8, s6
                  srai         tp, s7, 4
                  andi         s7, s3, -1349
                  mulhu        a2, a5, s7
                  lui          sp, 965053
                  srai         s10, a1, 61
                  srai         s5, t4, 39
                  mulhu        t0, ra, t0
                  sraw         s8, tp, s10
                  remuw        tp, s3, a6
                  div          tp, a7, t0
                  slti         s6, s1, -749
                  andi         a5, ra, -1504
                  addw         s6, a2, sp
                  addiw        s8, a4, -828
                  slliw        s3, a7, 8
                  or           t1, gp, s5
                  andi         a2, s11, 748
                  sub          s7, s1, a7
                  or           s9, s10, s11
                  srlw         s0, t6, t5
                  mulw         gp, s9, tp
                  remu         s6, a5, s1
                  slli         s7, t2, 12
                  sra          a2, s2, t1
                  sra          a5, zero, a4
                  mulhu        s2, t0, s1
                  remu         s9, t5, a5
                  divu         a2, s6, t5
                  or           t0, gp, t0
                  auipc        s10, 387272
                  divu         tp, t6, s6
                  mul          s10, tp, s10
                  sraiw        t4, t4, 25
                  divw         a1, s8, s0
                  addi         s2, s4, -135
                  mulw         a3, t5, tp
                  add          s0, s4, tp
                  mulw         tp, s7, tp
                  sraw         s6, a6, t0
                  mulw         a3, a1, ra
                  srai         t2, s11, 27
                  lui          s9, 683477
                  mul          t4, a7, s8
                  xori         tp, s6, 1683
                  remw         s9, a4, ra
                  srl          t0, a5, sp
                  or           s5, t4, s6
                  mulw         zero, a0, s0
                  and          ra, s11, a0
                  addiw        s3, a5, 1382
                  addw         s10, zero, s4
                  sltiu        s6, s11, 1366
                  srli         gp, s3, 1
                  srl          zero, a7, tp
                  addw         a2, s2, t2
                  mulhu        sp, a6, s0
                  slli         s2, s9, 10
                  slt          t5, ra, a2
                  slt          t5, tp, s3
                  sltu         a3, a5, s1
                  ori          s3, a6, 1445
                  srl          s2, s5, s5
                  nop
                  ori          sp, a5, -504
                  andi         t2, t4, -982
                  divw         s9, s4, s5
                  remw         t3, s9, s11
                  subw         s3, s9, t0
                  divu         a0, ra, t1
                  mulw         sp, a1, zero
                  mulhu        s0, s8, s4
                  divw         s5, a1, s5
                  srlw         s2, s1, tp
                  remuw        s10, s3, s11
                  ori          a1, s10, 1718
                  mulhsu       a0, s11, tp
                  srli         s10, s1, 16
                  mulh         a0, s3, a0
                  remu         s3, s9, t6
                  xori         s8, a7, 960
                  sll          t4, zero, s11
                  nop
                  slliw        t3, s2, 31
                  add          s8, zero, t2
                  xori         a4, a3, -188
                  mulh         s8, a6, gp
                  mulw         s2, sp, a1
                  addiw        sp, zero, -801
                  subw         gp, t6, s0
                  andi         tp, a0, 191
                  srliw        t3, s9, 4
                  sra          t5, s5, a1
                  auipc        sp, 790420
                  addw         gp, t2, t1
                  andi         t4, t6, -480
                  remu         ra, sp, s7
                  sll          s8, ra, t1
                  remu         t5, a4, s3
                  slt          ra, s1, s6
                  divu         a5, t5, a3
                  sltiu        s9, a5, -1861
                  slliw        s2, t1, 31
                  or           t6, s6, s4
                  srai         a0, a5, 36
                  add          tp, a3, t6
                  sub          t0, t5, tp
                  mul          t0, t6, s5
                  mulhsu       t6, zero, s2
                  addw         s4, s6, a5
                  mulhsu       s5, tp, a0
                  sltu         s8, s1, s8
                  lui          s4, 249417
                  remu         s0, tp, ra
                  mulhsu       s0, s4, s8
                  mulhsu       sp, a3, t5
                  rem          s11, ra, a3
                  mul          s2, s11, s6
                  remw         a5, s9, sp
                  addi         s4, t5, 2009
                  mulhu        sp, a0, t3
                  xori         gp, t0, 1934
                  srlw         gp, s3, a5
                  addiw        t6, t1, -1493
                  srliw        gp, tp, 7
                  addw         s2, sp, t5
                  slliw        ra, s6, 13
                  xor          s6, s11, s0
                  xor          s6, a1, s10
                  subw         s10, s9, s9
                  mul          t2, t3, a5
                  slt          t4, ra, ra
                  andi         zero, s0, 1099
                  and          a4, sp, s7
                  addw         s8, s8, zero
                  subw         a3, s7, a3
                  srai         t0, a3, 35
                  remuw        a0, s3, a1
                  rem          s10, t3, t0
                  mul          s2, a6, tp
                  srl          a2, s5, s2
                  sll          t0, a3, s5
                  ori          sp, s7, 1177
                  xor          s4, s11, a4
                  slt          s11, a5, s11
                  lui          a2, 276159
                  slliw        a2, t4, 4
                  sub          ra, zero, a6
                  xor          ra, s3, a7
                  mulh         s11, a1, s4
                  sraiw        t0, a2, 30
                  auipc        s10, 1015393
                  sltu         s0, s3, s7
                  subw         s5, a1, a6
                  sltu         sp, a2, sp
                  xor          s0, t6, a7
                  slli         a5, a4, 21
                  slti         s5, a3, 138
                  srliw        t6, s11, 2
                  mulhu        a0, a4, gp
                  addw         s5, s8, s4
                  addi         a0, s2, 1233
                  sra          a5, gp, t2
                  addw         t6, s4, s10
                  xor          a5, t0, t5
                  remu         a0, s0, s5
                  srlw         a1, sp, t6
                  slli         s4, s7, 52
                  auipc        t4, 58186
                  addiw        s5, s8, -1572
                  srai         t2, s10, 43
                  addiw        t2, a6, 731
                  mulh         a5, s4, a0
                  xor          a4, t2, a0
                  sltu         a5, t3, a4
                  slt          s5, t1, a0
                  remw         s10, s0, s4
                  addw         s7, s7, a5
                  addw         ra, s11, s0
                  andi         a2, t0, -1325
                  xori         s3, zero, 1512
                  sraw         t2, a3, s0
                  xori         s5, t3, -821
                  mul          s6, s10, zero
                  xor          s10, a5, s2
                  mulh         s9, a6, ra
                  mulhsu       t2, a2, ra
                  addiw        ra, a2, 413
                  sub          s4, a3, ra
                  srli         s8, t0, 18
                  mulh         t3, s1, s5
                  ori          s3, t3, -244
                  addi         t3, a2, 1425
                  sltu         t6, a2, sp
                  ori          s7, a6, 1246
                  divuw        t1, s4, a1
                  slli         s5, zero, 2
                  srl          a5, a6, s10
                  ori          t0, t5, -1487
                  srli         a2, s7, 43
                  sltiu        t0, s10, -923
                  srli         sp, gp, 62
                  sub          tp, s0, gp
                  sll          a0, t4, t1
                  sraw         a0, s6, sp
                  sllw         t3, s10, s1
                  add          zero, t5, gp
                  srlw         t3, t5, tp
                  sraw         gp, t4, s2
                  srlw         s9, s11, a2
                  remw         tp, gp, gp
                  srai         t3, t5, 46
                  srliw        sp, ra, 22
                  srlw         a3, s9, gp
                  mulw         a2, a1, s5
                  srai         a1, a3, 24
                  sraw         t1, s5, s5
                  andi         s9, a1, -1112
                  remuw        tp, s8, s11
                  srliw        t0, s4, 5
                  divuw        zero, a4, t4
                  addw         s7, ra, a0
                  divu         sp, t4, t5
                  sltiu        a4, t4, -1635
                  remuw        s3, t3, ra
                  mulhu        a3, s3, a7
                  remw         s8, ra, a0
                  auipc        t1, 920971
                  slt          t2, t2, s0
                  divu         s0, s9, s4
                  srai         t5, a1, 15
                  xori         s10, s2, -748
                  divw         t5, s0, s1
                  mulhsu       t0, a7, s5
                  div          t5, a6, t0
                  srli         a4, sp, 10
                  sll          a1, s10, t0
                  addiw        s5, t0, 1504
                  sra          s5, s1, t3
                  div          s0, a1, s6
                  div          zero, s11, t0
                  divw         sp, tp, sp
                  mul          s2, a0, s4
                  divw         s6, s10, s11
                  slli         tp, a4, 19
                  mulw         t6, t6, gp
                  sll          a3, gp, a1
                  srlw         s0, s11, s5
                  andi         a5, t4, 638
                  srli         s6, a2, 52
                  lui          s8, 1021907
                  slti         t2, s11, -1122
                  sltiu        s6, zero, 1084
                  srai         s5, s6, 34
                  andi         s0, s10, 1271
                  srai         gp, t2, 31
                  slti         s10, s7, -1742
                  nop
                  sll          s8, zero, s3
                  addiw        t3, a5, -1402
                  mulw         t6, gp, t2
                  xor          s0, t3, s0
                  or           s8, s10, s10
                  addw         a3, sp, zero
                  mulh         s4, t1, s8
                  sltu         s4, sp, gp
                  sraiw        t5, a0, 5
                  and          a0, s9, ra
                  srliw        t0, s2, 3
                  mul          a5, t1, s5
                  add          t2, s4, ra
                  subw         s8, s5, t2
                  sraw         s8, a2, sp
                  divu         s9, t2, s1
                  remw         t6, s11, s0
                  sub          sp, a3, s1
                  remu         s7, tp, t3
                  rem          s7, s1, s7
                  sra          a3, t5, a4
                  mulh         s11, a6, t4
                  divuw        s10, a2, ra
                  sub          a1, t4, a7
                  mulhsu       a5, a5, a4
                  mul          t3, s8, gp
                  srliw        s10, s5, 30
                  mulhsu       s9, t3, ra
                  remu         t6, s5, gp
                  mul          a3, s11, zero
                  slli         t5, t2, 59
                  andi         s11, s6, 1803
                  mulhsu       ra, s4, a1
                  srai         s0, a6, 43
                  srli         s3, a3, 34
                  sltiu        s2, zero, -340
                  divu         tp, a2, a5
                  sltiu        s9, a2, -1166
                  slli         s0, gp, 21
                  subw         s8, t0, t3
                  remw         a5, a1, s3
                  andi         a2, t2, 148
                  divu         ra, s8, s8
                  addw         s10, a7, s5
                  sltu         t5, s3, t5
                  sltu         a5, s1, t0
                  auipc        t1, 142896
                  sraiw        s11, t0, 27
                  srliw        s8, t4, 1
                  mulh         s0, a0, s11
                  addi         ra, a6, -418
                  sraiw        t5, s5, 27
                  slti         ra, a6, 752
                  xori         s3, tp, -893
                  add          a2, t1, a0
                  add          s8, s7, s4
                  srai         a3, t2, 33
                  sltu         s9, a0, s3
                  slti         t0, t4, 1918
                  or           zero, s9, s1
                  and          gp, s5, t0
                  sraw         t3, t2, a1
                  slli         a0, t6, 57
                  remw         s5, t4, s4
                  add          s0, gp, t0
                  sltiu        s9, s1, -1560
                  divuw        s8, s2, t3
                  remu         s2, s6, gp
                  remuw        s3, s3, s11
                  srli         zero, a7, 15
                  mulh         s5, sp, sp
                  sll          s9, s10, t1
                  andi         t2, s7, -1009
                  subw         zero, s7, ra
                  or           t3, s4, t1
                  divu         tp, t1, s11
                  andi         gp, s7, -1601
                  srlw         t4, s0, a2
                  sub          s5, a0, s3
                  divu         tp, t6, a0
                  addiw        s2, a5, -1886
                  lui          a5, 228669
                  slli         s8, s4, 0
                  divu         s8, s9, ra
                  srai         t2, s11, 5
                  xor          a3, s7, s9
                  slt          tp, sp, a4
                  mulw         gp, a0, a2
                  mulhu        s0, s9, s0
                  remw         t0, s8, s1
                  rem          a3, a6, t0
                  remu         a4, s10, t5
                  subw         ra, s9, s1
                  and          a1, s9, s0
                  sltiu        tp, s10, -1982
                  sub          t4, t4, s8
                  mul          s2, a7, gp
                  slliw        s6, t4, 23
                  sltu         a5, s6, s11
                  rem          t2, tp, a1
                  sub          zero, t6, a0
                  srl          sp, s5, s0
                  lui          a3, 497414
                  mulh         zero, s7, a4
                  srliw        t4, a5, 16
                  nop
                  remw         a2, s3, s9
                  sll          a0, zero, a3
                  div          t5, s5, s8
                  remu         s11, s6, t6
                  sraw         t1, t5, s10
                  slliw        s9, a0, 25
                  addi         s6, a3, 371
                  divw         s7, a7, s4
                  rem          t6, s8, s9
                  div          s3, a4, s6
                  mulh         s9, t1, sp
                  andi         t1, t6, 1696
                  sra          s10, t5, t3
                  slt          s2, s3, s2
                  xor          t0, s7, tp
                  add          s8, zero, a1
                  slliw        s4, a6, 0
                  add          s4, a6, tp
                  slli         a5, s3, 59
                  remuw        t5, a1, a1
                  ori          t0, s0, -1925
                  srliw        s6, t4, 4
                  mul          t6, a5, a0
                  andi         t4, a2, -817
                  and          s4, ra, gp
                  div          s0, s1, a2
                  or           s3, s11, a3
                  or           t4, s10, t1
                  remu         a5, a3, a5
                  div          s9, s0, a7
                  ori          t5, ra, 860
                  sraw         t0, a2, s1
                  srl          a2, s3, s5
                  sll          s11, tp, s11
                  remu         s7, t3, a0
                  srliw        t1, s4, 13
                  addiw        s3, a6, 1977
                  auipc        t0, 228315
                  srai         t1, t1, 60
                  mulhu        sp, t2, a5
                  sraiw        a2, a2, 16
                  srli         t0, t0, 30
                  sub          t3, t1, s0
                  mul          tp, a7, s10
                  ori          t2, t3, -833
                  mulh         s8, zero, t0
                  xori         gp, a5, -659
                  remuw        s0, tp, s2
                  div          s9, a0, a6
                  addi         a0, tp, 1860
                  auipc        s11, 864032
                  sll          ra, ra, zero
                  remu         s8, a2, a4
                  and          s2, s1, zero
                  sraw         s3, a2, a7
                  mulh         s4, zero, tp
                  mulhsu       t3, ra, t3
                  slli         s5, t3, 46
                  slt          s10, a4, s6
                  remu         t5, t6, tp
                  and          t1, s4, s11
                  slliw        s0, t3, 4
                  mulh         t1, s1, s5
                  remw         s8, t4, s9
                  sra          s4, t5, s6
                  divuw        s9, tp, a3
                  add          t4, a4, a4
                  sraiw        a5, s1, 29
                  mul          a0, s2, a3
                  sltiu        s0, s0, -1612
                  sll          zero, t6, tp
                  srlw         t4, sp, t6
                  addi         t0, sp, 66
                  xor          s11, s11, s11
                  mulhu        s9, t2, s9
                  or           s4, zero, a0
                  mulw         t4, t3, sp
                  sraiw        t6, s11, 14
                  rem          ra, t0, a4
                  srliw        s2, s9, 1
                  sraiw        s3, a5, 14
                  sll          a5, t3, zero
                  sllw         t4, a2, a6
                  div          s4, ra, a5
                  srlw         a3, s3, gp
                  sll          a1, t0, zero
                  or           s2, t4, s0
                  remuw        s6, s5, ra
                  sltiu        t6, s1, -7
                  rem          a0, s10, s11
                  addiw        ra, s3, -207
                  slt          t0, s2, s4
                  sraw         t4, s2, t6
                  addi         s5, t3, 1049
                  mul          gp, a0, a5
                  addw         t1, tp, gp
                  sub          ra, a6, s1
                  addi         s9, s6, 1458
                  srl          zero, a5, t2
                  or           s5, t2, zero
                  srl          sp, t1, s7
                  remw         zero, s11, s4
                  remuw        s2, a5, a3
                  mulhsu       a1, a2, a3
                  divw         a4, s3, s9
                  remuw        a5, s5, a3
                  ori          t2, zero, -1370
                  slli         t1, gp, 46
                  div          ra, sp, s10
                  rem          s2, s6, s3
                  srai         sp, t5, 16
                  srai         s3, zero, 37
                  mulhsu       a2, a6, a7
                  divuw        ra, t0, s0
                  slliw        s0, t2, 3
                  mulhsu       t6, s5, t3
                  addw         sp, sp, a3
                  slti         a2, s1, -1670
                  mul          a0, a6, t6
                  mulw         s11, tp, t3
                  or           sp, a3, zero
                  remu         a1, s0, s5
                  rem          s0, gp, s0
                  nop
                  srliw        s2, tp, 1
                  srlw         s10, t0, a3
                  remw         t4, s7, s7
                  nop
                  sraw         s9, t3, t6
                  srl          s3, s1, s10
                  and          ra, s6, a7
                  mulhsu       t3, zero, tp
                  mulhsu       s3, gp, a0
                  ori          t1, gp, 1127
                  lui          t4, 741953
                  srl          zero, a1, t0
                  sltu         s2, gp, s4
                  sllw         s9, s6, a0
                  remuw        t0, s6, gp
                  srliw        a1, a3, 29
                  slli         ra, t6, 12
                  srai         s10, a7, 6
                  xori         t2, a2, 821
                  sub          t5, a7, a1
                  add          t1, t1, t6
                  mulh         s5, s8, a7
                  nop
                  divu         t6, a6, s0
                  sltu         a1, a3, s7
                  sraw         a0, a5, t6
                  srai         sp, a2, 53
                  mulhu        t1, zero, s3
                  slli         ra, a2, 22
                  mul          zero, tp, s2
                  lui          s4, 108127
                  addiw        zero, s0, -1836
                  divw         s4, ra, a7
                  sllw         t5, t5, a1
                  addiw        s4, t3, 2027
                  add          s4, t2, a0
                  slti         a1, s11, -1496
                  add          zero, a6, t1
                  remuw        s3, a1, a1
                  addi         s11, s9, 1723
                  srliw        a5, s10, 20
                  sraw         s0, s11, s0
                  sub          s11, a3, s2
                  sub          zero, t0, a4
                  div          s10, s4, a4
                  slti         t1, a7, -1204
                  or           a1, a0, sp
                  sraw         s3, a3, a4
                  sra          t0, t0, t3
                  nop
                  ori          a0, t6, -796
                  srli         zero, s4, 11
                  remu         a1, a2, zero
                  addi         zero, a7, -1295
                  srli         s0, s6, 59
                  sraw         t0, s0, gp
                  slti         s4, s9, -805
                  remuw        ra, ra, ra
                  srl          t0, s4, s2
                  slli         zero, s2, 61
                  sub          t5, a4, a3
                  add          s8, a1, s2
                  srli         gp, s8, 48
                  sub          tp, a2, zero
                  srl          s10, zero, s7
                  andi         a4, t3, 792
                  addw         s10, s9, s9
                  sll          t5, s8, a0
                  sllw         zero, a7, s2
                  or           a4, s6, s8
                  lui          gp, 371330
                  andi         s9, t4, -494
                  slti         t1, s5, -82
                  remw         t3, a5, tp
                  remu         s7, s8, a0
                  ori          t4, t2, -560
                  mulw         s10, a6, zero
                  addi         a4, t3, 838
                  mulh         s9, s1, s10
                  addiw        s2, tp, -1804
                  auipc        s8, 120363
                  nop
                  xor          a1, a6, s11
                  divuw        tp, a5, s10
                  remuw        t1, ra, s1
                  divu         t0, s11, a3
                  srl          s7, t4, s3
                  addi         s5, s5, 2016
                  mulhsu       ra, s4, t0
                  mul          zero, t4, a0
                  sltu         a5, t6, a1
                  srli         t6, s1, 32
                  sraiw        t0, tp, 27
                  rem          t2, s1, s7
                  add          a2, a0, t5
                  add          t5, t3, a2
                  remu         s8, ra, t4
                  addiw        a0, zero, 14
                  mulhu        s2, s3, t6
                  slti         t4, s11, -1862
                  subw         s6, s5, a7
                  slti         s8, s10, 1860
                  sub          t6, s3, a5
                  sub          a2, t5, s4
                  auipc        t5, 224942
                  sub          s0, a1, s3
                  divuw        s9, s11, s4
                  sllw         a2, t3, zero
                  xor          s11, t1, s7
                  andi         s11, s9, 673
                  andi         gp, t2, 1319
                  div          s9, t2, a5
                  divu         s0, s11, s7
                  sra          s4, s8, t3
                  sraw         a5, t4, s7
                  remuw        s3, a0, s10
                  xor          s11, t0, s8
                  xori         t0, t2, 1187
                  mul          a0, zero, s8
                  mulh         a2, a5, s11
                  mulhsu       s5, t1, s8
                  lui          t6, 48883
                  sraw         s4, a0, a5
                  ori          s3, t5, 1521
                  and          a3, sp, t1
                  slliw        s0, ra, 2
                  srl          a4, t3, a7
                  sra          s7, s10, s6
                  mulhu        s5, s1, t3
                  xori         s6, gp, -176
                  add          t6, ra, t2
                  sltiu        t5, a5, 1706
                  or           s8, s0, tp
                  sra          a2, s10, a2
                  mulh         s8, s3, a0
                  mul          s4, zero, a3
                  slli         t6, a4, 23
                  lui          sp, 198546
                  sub          t5, t1, t1
                  remuw        zero, t1, tp
                  srai         s3, a5, 28
                  subw         gp, s5, a1
                  xor          t2, t5, a2
                  srlw         s4, t3, s3
                  sraiw        a3, gp, 17
                  subw         s5, a7, s7
                  slti         t6, a2, 2000
                  nop
                  srli         s0, s3, 39
                  sraiw        a0, s6, 20
                  addiw        a0, t4, 1574
                  lui          a1, 792589
                  xor          a0, t4, a0
                  and          ra, s7, ra
                  rem          ra, a0, s11
                  ori          s8, tp, 1101
                  sllw         gp, t1, zero
                  srliw        t0, s10, 19
                  div          a1, s4, t2
                  subw         a3, s1, s2
                  addw         s0, s7, a2
                  srai         s11, s7, 47
                  lui          t0, 962232
                  sll          zero, t2, t0
                  divuw        s6, s0, a1
                  remu         s8, t6, t4
                  slti         s9, tp, -180
                  div          t0, t6, s0
                  mulw         a5, s7, s3
                  srl          s6, s8, sp
                  addw         s0, a2, a6
                  remw         ra, s0, s1
                  addi         s4, t3, -1465
                  addi         t3, a0, -112
                  divuw        t2, tp, gp
                  sltiu        t1, a6, -636
                  sraw         s8, s2, s11
                  remw         s2, s9, s10
                  sub          s8, s0, t4
                  andi         s6, t5, 907
                  sltiu        s8, a5, -367
                  lui          t2, 294855
                  divu         s11, s9, gp
                  remuw        t2, s9, s1
                  mul          t1, gp, t0
                  mulhsu       a1, a0, a2
                  mulw         s11, s5, s6
                  or           sp, s9, a1
                  srl          t3, a1, t5
                  rem          t5, s3, ra
                  sraiw        t3, t4, 6
                  and          s2, t5, s4
                  ori          zero, s7, 1905
                  addw         sp, zero, s7
                  slti         s3, gp, 917
                  sltu         a2, s4, a1
                  or           s9, t4, a2
                  subw         ra, a6, s6
                  srli         a3, ra, 21
                  srliw        s0, t2, 6
                  addiw        gp, a5, 1294
                  srl          s5, a7, a1
                  ori          t1, s2, 412
                  andi         s0, s9, -477
                  sltiu        gp, sp, -2030
                  addiw        a0, ra, 1757
                  xori         t3, s5, -1716
                  sraw         t2, a0, s11
                  sra          a1, t3, t3
                  mul          ra, a0, a1
                  xori         t2, zero, 1302
                  ori          t0, s4, 699
                  slt          a1, gp, s10
                  srli         s5, s1, 31
                  lui          s9, 889492
                  mulhu        sp, t0, t6
                  srai         s9, s4, 58
                  or           a3, t6, a4
                  lui          s8, 27369
                  srl          t2, s6, zero
                  remw         t3, s11, gp
                  sraiw        a1, s11, 4
                  sll          s4, t3, a6
                  remw         s4, s5, s7
                  rem          t3, t2, t4
                  sllw         s10, s6, t6
                  nop
                  srliw        a1, t5, 25
                  srl          s3, a3, a2
                  divw         a2, t4, a4
                  or           t6, a0, a6
                  slli         s0, a1, 32
                  sltiu        t0, sp, -488
                  lui          a1, 374013
                  remuw        a3, t2, zero
                  srliw        a2, tp, 1
                  mul          t4, s4, s8
                  slli         s3, s7, 42
                  srl          s8, sp, s4
                  nop
                  remuw        s3, t2, a0
                  addw         s6, ra, s7
                  slti         gp, t6, 523
                  sltu         t2, t6, a1
                  lui          t2, 117534
                  xori         ra, s1, 1059
                  auipc        s9, 254236
                  divu         a2, sp, a7
                  remu         sp, t1, ra
                  addiw        a4, sp, -603
                  remu         ra, t2, s0
                  and          s7, t6, s9
                  sub          t6, s9, s0
                  or           s6, s7, s0
                  mulhu        s7, s5, s0
                  ori          s7, s6, -1714
                  add          s0, a7, a5
                  srli         t0, t0, 17
                  remu         a5, t4, a7
                  slti         t1, s0, 106
                  remu         a5, s6, gp
                  mulhsu       tp, s2, t1
                  mul          t1, t6, s10
                  addiw        t1, s4, -284
                  ori          s8, a0, 375
                  addi         s5, t0, 338
                  addw         s4, a3, a0
                  srli         s3, s7, 22
                  remu         a3, a7, a3
                  sllw         s11, zero, t0
                  xor          a4, s2, t3
                  srli         tp, t1, 37
                  addi         s3, t5, 474
                  mulhu        s11, s0, t4
                  srl          t4, s11, t5
                  ori          a0, s4, -470
                  xori         s9, s7, 1626
                  sub          s11, gp, s8
                  remuw        s3, tp, s11
                  subw         s9, s11, s9
                  ori          a4, t6, -369
                  srlw         s11, a1, t0
                  divu         s10, s4, a4
                  slti         s8, gp, 977
                  andi         zero, a1, 1930
                  auipc        s7, 959266
                  srl          sp, s4, s8
                  div          t4, a3, s1
                  srl          s5, s0, a0
                  sltiu        s7, ra, -869
                  or           s7, tp, s7
                  auipc        s4, 99292
                  add          zero, s11, s9
                  sll          ra, s11, s11
                  div          s6, t6, a2
                  sltiu        ra, a2, -173
                  and          t0, t4, s11
                  divu         t1, s9, t6
                  sraw         s11, t5, s1
                  slt          zero, s0, s4
                  nop
                  lui          a4, 929959
                  divuw        a4, zero, s0
                  mulhu        a1, ra, gp
                  or           s7, s10, s0
                  addw         s7, a3, s6
                  add          t1, s3, a6
                  mulhsu       a2, a2, s5
                  srl          s8, a7, t3
                  srli         s10, s5, 46
                  mulhsu       t2, s7, a3
                  slliw        a0, s3, 10
                  div          s6, t3, s2
                  add          s10, t3, a0
                  sub          s7, s9, a5
                  sllw         t3, t1, t4
                  and          tp, a1, s3
                  srliw        s7, t5, 1
                  slti         t2, s5, 717
                  divw         t0, s8, t1
                  srliw        ra, s7, 17
                  ori          a2, s7, -441
                  auipc        s5, 359529
                  srlw         t6, s3, a1
                  sra          t2, s11, t6
                  divuw        t4, a7, a4
                  xori         t1, gp, -557
                  mulhsu       gp, t2, a1
                  subw         t1, a5, tp
                  slti         t0, zero, 172
                  ori          gp, t3, -277
                  and          s9, zero, s7
                  srl          ra, a6, t1
                  srli         s9, s6, 48
                  mulhsu       t3, s10, zero
                  rem          s4, s4, s7
                  addiw        t2, s1, 1833
                  addiw        gp, s6, -1688
                  sllw         t5, a4, s1
                  srli         ra, a3, 32
                  remu         s8, a7, s8
                  sub          s7, tp, s7
                  div          t1, t2, a5
                  addiw        a3, s7, -1501
                  mulhsu       tp, s11, a0
                  divuw        t5, t5, a6
                  sub          s8, zero, a7
                  srli         t2, t2, 18
                  addiw        a3, a2, -642
                  sltu         s7, gp, tp
                  sub          s6, sp, gp
                  mulhsu       s9, s4, a0
                  add          t5, s9, a3
                  addw         s8, a5, ra
                  div          a5, s8, s7
                  sub          s0, s5, s1
                  mul          s10, s2, zero
                  subw         a4, s3, t2
                  xor          tp, t0, t3
                  srai         s11, s2, 0
                  or           s5, a7, gp
                  slliw        s7, a0, 23
                  slt          ra, t1, a6
                  sltu         a5, s0, s6
                  srliw        s9, t4, 25
                  lui          s7, 266857
                  remu         tp, ra, s2
                  divw         a4, s10, s0
                  remw         ra, a6, t3
                  xor          s3, s1, a6
                  and          t2, a4, a1
                  addi         ra, ra, 106
                  auipc        t0, 1038007
                  mulhu        ra, s2, a6
                  div          s9, s7, t0
                  div          a1, t0, a5
                  mulhu        t6, s5, t4
                  sub          a1, s3, s7
                  sltiu        ra, a2, -944
                  sltu         a0, s7, s10
                  remu         s4, a3, a0
                  lui          a3, 149237
                  srliw        ra, s5, 16
                  sltiu        s0, a4, -204
                  sltu         s10, a0, s11
                  sltiu        a5, zero, -1567
                  addw         a5, a4, s0
                  sraiw        sp, a3, 3
                  nop
                  mulh         t6, s2, s0
                  srli         s8, s0, 39
                  remu         s0, a4, a5
                  ori          ra, a4, -1595
                  mulw         s0, a0, a0
                  mulh         t2, tp, s6
                  addw         t2, s1, a5
                  add          s11, s4, a0
                  remuw        a3, a4, t4
                  addiw        t1, s10, -1084
                  mulw         a1, s3, t5
                  srli         s9, s3, 63
                  addiw        s3, a1, 909
                  sllw         a2, a7, a4
                  sltiu        gp, a4, 1030
                  sra          a2, a6, a4
                  xor          ra, tp, s8
                  sll          a0, s2, a5
                  remuw        t6, s10, s2
                  sraw         a1, s11, t2
                  mulhu        t2, t5, a2
                  divw         s8, a6, a1
                  slt          t6, t6, s9
                  srl          a4, s8, s7
                  mulh         s8, tp, sp
                  mulhsu       a3, s6, s0
                  mulhu        a3, s3, t6
                  or           s4, s1, s8
                  andi         zero, sp, 158
                  andi         a0, s6, -764
                  sltiu        a5, s3, -1018
                  srai         t4, s10, 44
                  sraiw        t3, a6, 26
                  remw         s11, t6, ra
                  and          a4, sp, a1
                  sltu         ra, zero, t1
                  srlw         t5, s11, ra
                  srai         s11, s5, 56
                  sltiu        s9, t2, 1284
                  div          sp, tp, t5
                  or           t0, t5, a7
                  or           s3, s11, t4
                  slti         a0, s2, -230
                  divw         ra, t3, s2
                  slli         s9, gp, 62
                  remu         t6, gp, s11
                  add          s6, zero, a6
                  mulw         s8, sp, a2
                  sub          a1, s11, a2
                  divw         sp, tp, s2
                  sub          s9, t3, gp
                  rem          t6, s0, gp
                  remu         s2, a6, s2
                  sltu         a4, s11, a1
                  sra          s4, t2, s11
                  sll          a4, s1, a3
                  xori         s7, gp, -1807
                  remuw        a3, a7, s10
                  sll          sp, t1, gp
                  addi         t5, t2, -1003
                  slli         a1, t4, 17
                  lui          t5, 529202
                  addw         s11, s7, t4
                  srli         a0, a3, 45
                  ori          a2, tp, 321
                  andi         s9, s9, 251
                  slt          s4, s8, t0
                  slti         s2, s4, -527
                  ori          gp, s4, -1967
                  addw         s8, s10, a0
                  remw         s9, t0, t4
                  and          s9, zero, a0
                  nop
                  mulhsu       s6, a4, s4
                  divw         s6, s0, a1
                  addw         t3, s4, a2
                  addw         s7, t5, a1
                  sltu         gp, t5, s8
                  addiw        a2, s8, 1530
                  srli         t5, t3, 13
                  nop
                  mulhu        s0, s10, a3
                  subw         ra, a3, s3
                  srl          a5, s11, a4
                  slti         s2, t6, 356
                  andi         tp, t1, -599
                  slt          t3, s2, a3
                  rem          t0, s7, gp
                  remu         a3, tp, t4
                  remuw        ra, s3, t4
                  srlw         a4, a5, s1
                  sra          s3, s9, sp
                  srlw         s4, a6, sp
                  slliw        s0, a0, 30
                  nop
                  subw         s3, s5, sp
                  divuw        t2, s9, t3
                  div          zero, s9, sp
                  addw         t2, s2, a6
                  sll          s0, t4, sp
                  divuw        t5, tp, a7
                  divu         zero, s3, t0
                  lui          t2, 441741
                  and          a5, zero, a4
                  addiw        t6, a2, 1686
                  sraw         s9, s3, t2
                  srlw         s10, s4, zero
                  sra          t5, gp, ra
                  slti         a4, s2, -1901
                  sll          a2, s1, s6
                  sll          t3, s7, t0
                  mulh         t5, s6, s2
                  remuw        zero, a0, gp
                  xori         t0, s7, -2019
                  slliw        t6, s11, 1
                  remu         gp, s10, s11
                  mulhu        a5, s8, s3
                  slt          s6, a2, sp
                  srlw         s9, s4, gp
                  ori          ra, s8, 1785
                  slt          a4, s0, ra
                  remw         t1, s9, a2
                  sll          a4, a4, s1
                  div          s2, a1, a1
                  mulh         tp, gp, a7
                  sra          s2, t2, s10
                  divw         t2, a7, t3
                  sub          t6, s11, s5
                  nop
                  divu         a2, t3, s3
                  sraw         s5, a2, t1
                  or           tp, a2, t5
                  xori         a4, sp, -959
                  mulw         s10, a1, s7
                  mulhsu       s4, zero, a1
                  sra          t4, t6, t0
                  sllw         a4, s10, zero
                  sub          a4, t5, gp
                  and          t5, s6, s3
                  srli         t1, s6, 40
                  xor          t5, t3, a5
                  srl          sp, ra, a5
                  srlw         t6, t4, s0
                  mulw         t6, a1, t6
                  nop
                  rem          s9, s11, s5
                  andi         s8, s11, -1747
                  divuw        s8, s3, t4
                  xor          s3, t2, s9
                  sub          s3, a4, a5
                  srai         s11, t4, 43
                  add          s5, a1, t0
                  srl          s4, s11, s5
                  sra          s8, t0, tp
                  sraiw        s6, a0, 23
                  sllw         t5, s11, gp
                  remuw        s2, a0, t3
                  div          s3, a1, s7
                  xor          a1, s6, s9
                  xori         t3, s5, 942
                  sraiw        a0, a4, 25
                  divw         ra, gp, a7
                  divw         s5, s10, ra
                  subw         gp, s9, s3
                  sltiu        zero, t0, -1242
                  srliw        zero, a3, 11
                  sllw         t6, a2, t2
                  div          a4, gp, zero
                  sraiw        a1, a1, 23
                  sraw         a4, s5, s9
                  srlw         t0, t5, t5
                  sraiw        a5, a3, 16
                  slt          a4, t3, a2
                  and          gp, t6, s5
                  ori          a1, a2, -1662
                  slli         s7, s5, 52
                  slliw        t5, s6, 22
                  remuw        s10, t2, s11
                  sra          s4, zero, s9
                  srli         s8, sp, 9
                  add          s5, gp, a7
                  sll          s7, s10, t1
                  subw         gp, a5, s8
                  slti         s9, a1, 781
                  sltiu        s3, gp, 1939
                  sltu         s9, gp, s7
                  subw         t0, s1, s5
                  mulhu        gp, a3, a7
                  auipc        t5, 541111
                  sraiw        s9, a5, 25
                  add          s0, s10, t6
                  mulw         s8, t2, s4
                  mulw         ra, a0, a3
                  addi         t4, s6, 1668
                  slti         s10, s0, -1563
                  slliw        s10, a2, 8
                  mulhu        s10, a4, zero
                  divuw        t6, a6, a5
                  subw         a2, a6, a1
                  sra          a3, t2, s2
                  or           a5, a6, a1
                  xori         a5, a7, 1527
                  mul          s5, s10, s6
                  xor          t1, ra, s4
                  and          a1, s4, t5
                  slti         s5, s2, 68
                  sllw         s5, t0, a3
                  and          s6, s0, t0
                  sltiu        s5, t1, 842
                  slti         s2, s6, -1087
                  mul          a0, s1, a7
                  add          s7, s0, t4
                  slti         s6, zero, -141
                  lui          s2, 590178
                  slli         t2, t2, 27
                  div          s10, a4, a6
                  mulhsu       t3, s8, s7
                  rem          t6, s8, s10
                  mulhu        s5, s7, gp
                  srai         s0, a2, 52
                  remuw        s9, s2, a6
                  remuw        a3, t0, tp
                  srliw        s5, s2, 30
                  slliw        a0, a1, 29
                  mulw         t3, s5, ra
                  sll          s8, a2, s3
                  addi         t2, a5, 234
                  mul          gp, a4, s7
                  mulhsu       a0, a7, s1
                  div          s9, t4, a2
                  remw         s4, s7, a4
                  addi         s9, a5, -606
                  nop
                  srl          a3, s2, a1
                  srlw         s3, tp, ra
                  addiw        t1, s2, -1458
                  sub          s0, s11, a0
                  sraw         s9, t5, a5
                  divw         s8, t1, s10
                  srlw         t2, s3, s10
                  srlw         a1, s2, a7
                  xor          s3, s10, s2
                  sllw         a2, s5, t2
                  sraw         t6, a6, s11
                  sllw         ra, s2, ra
                  sraw         s6, t4, t6
                  xori         a5, s4, 328
                  add          t2, s5, t2
                  div          sp, a0, s6
                  nop
                  remw         s3, s1, zero
                  srl          s4, s1, a0
                  mulhsu       t3, s1, t3
                  sra          s5, s10, a5
                  slliw        t5, a6, 18
                  rem          ra, s6, a0
                  divw         zero, t5, s1
                  sra          t1, s1, s4
                  sll          t0, s5, s1
                  slt          ra, t5, a2
                  mulw         s9, ra, ra
                  auipc        gp, 802156
                  andi         ra, ra, 170
                  addw         s11, t2, s11
                  or           s3, s3, a6
                  andi         a1, a2, -210
                  slt          s10, s6, gp
                  sltiu        a0, s5, -1272
                  sub          a5, s7, a7
                  remu         s0, zero, s6
                  srli         s3, a2, 33
                  addw         s8, t2, tp
                  or           a1, s5, a2
                  and          a5, t3, t6
                  sltiu        s4, zero, -48
                  nop
                  divu         a4, t0, a6
                  mul          a0, t1, s3
                  add          t0, s7, s5
                  xor          t1, s9, gp
                  or           s10, s3, t4
                  divu         a2, t6, ra
                  srl          s10, a6, t3
                  lui          s5, 295277
                  mulhsu       a0, s4, a6
                  srlw         t2, tp, a2
                  slti         t5, t6, 1866
                  mulw         a3, s2, s7
                  mulh         a2, tp, zero
                  divw         s9, t6, a5
                  nop
                  slliw        gp, s6, 6
                  auipc        gp, 915103
                  subw         s8, a4, zero
                  nop
                  sra          s10, s2, s7
                  sraw         ra, a1, s7
                  ori          s9, t6, 711
                  mul          a3, s0, ra
                  srlw         s0, zero, a3
                  srli         tp, a4, 33
                  srliw        s5, s10, 21
                  lui          a5, 952594
                  andi         s2, s6, 38
                  srliw        t2, s8, 26
                  mul          t6, a4, a3
                  slliw        tp, s9, 10
                  addi         a1, s1, -360
                  xor          a4, a5, a1
                  srlw         a3, s9, a2
                  srlw         s3, s2, a2
                  addw         s6, a6, s3
                  srlw         s11, s6, t4
                  auipc        a3, 315013
                  slliw        s11, s8, 18
                  ori          a5, a3, 911
                  remu         ra, sp, a3
                  sub          s0, t2, a5
                  slt          s6, t0, a6
                  or           s5, t0, s6
                  addi         t5, t3, 155
                  rem          s8, s7, t1
                  divw         s8, a4, gp
                  addi         t6, tp, -1732
                  divw         t1, s10, a0
                  remuw        s3, t5, t3
                  ori          a2, t4, 2016
                  rem          s9, t6, t6
                  mulhu        a3, sp, zero
                  sub          s8, a6, t1
                  slli         t1, a7, 36
                  addw         s8, tp, a5
                  divuw        a1, a0, t4
                  slti         t5, t0, -1173
                  slti         s5, t6, 2018
                  remuw        tp, t6, s11
                  ori          s3, t5, 1980
                  mulw         a2, s7, s6
                  mulh         gp, s7, s10
                  remw         t5, t6, s9
                  ori          s0, a6, 594
                  addi         zero, sp, -1140
                  addi         zero, a7, 1337
                  and          t4, a7, t6
                  sraw         s0, t5, s7
                  nop
                  addiw        tp, s8, 614
                  auipc        a3, 690156
                  slli         s7, s11, 35
                  mulhsu       a0, sp, s6
                  div          gp, sp, t3
                  divuw        t4, s11, tp
                  slt          ra, t3, s0
                  xori         s0, s7, -1837
                  srl          zero, zero, a4
                  andi         a2, s10, -795
                  auipc        ra, 1040909
                  sltu         t3, t4, s8
                  andi         s5, a7, 1803
                  auipc        t0, 943837
                  nop
                  srl          a3, a3, a7
                  divuw        ra, t3, t5
                  srl          s2, a6, s4
                  remw         gp, a2, t2
                  add          t0, tp, a1
                  add          sp, a2, s0
                  srlw         s9, s3, a2
                  slti         a1, s2, 1028
                  mul          a0, s7, a6
                  mul          s6, s3, zero
                  sltu         s7, t4, t0
                  subw         s0, a6, s7
                  mul          s0, s3, ra
                  addw         s0, t6, sp
                  mulhu        t1, s2, zero
                  mulhsu       t2, t6, t1
                  or           s6, a4, ra
                  sraw         t6, t0, s2
                  slti         s0, t3, -1731
                  slli         a4, gp, 29
                  sll          t5, a7, t1
                  mulw         s6, s0, s10
                  slt          s8, a1, t4
                  mulh         ra, s2, a3
                  srli         a5, s10, 15
                  srlw         t5, a1, s4
                  slt          sp, s5, a6
                  addw         ra, t5, s7
                  remw         a2, tp, s11
                  mulhu        t1, a2, sp
                  sltiu        a1, a3, 165
                  addw         s5, a3, a6
                  srli         t5, s0, 35
                  ori          zero, t1, 1987
                  mulhsu       a4, s4, a7
                  addw         s0, t2, t0
                  rem          t6, s4, s11
                  addw         s5, t6, gp
                  srl          a0, s2, a3
                  sll          a1, s5, s5
                  andi         t6, t6, 1343
                  xori         s2, gp, -1372
                  or           s5, zero, s7
                  remuw        s10, s7, s9
                  add          t6, s3, zero
                  slt          a5, s8, s3
                  and          t4, s8, a3
                  addi         tp, a3, -897
                  sraiw        s10, a2, 27
                  xori         zero, t3, -740
                  sraw         ra, s0, a1
                  srai         sp, a0, 17
                  nop
                  srli         ra, s2, 10
                  divu         sp, zero, a1
                  srlw         s9, t1, s8
                  or           t5, s10, t4
                  mulhsu       tp, a6, s6
                  srai         a0, s11, 45
                  srli         a5, s0, 15
                  slti         ra, s8, 451
                  slliw        sp, t0, 28
                  slliw        t4, a2, 23
                  sraiw        gp, a3, 28
                  div          t6, t3, t3
                  divu         t0, t4, a1
                  mul          gp, s10, s6
                  remw         s3, s4, a1
                  sraw         t4, s0, s5
                  srl          t6, a4, s3
                  divw         s9, t3, sp
                  srlw         a5, s2, s10
                  divu         s2, a6, t0
                  srlw         s8, s0, s11
                  xor          t3, a3, s11
                  sraw         t1, t0, s10
                  srli         s6, t3, 29
                  remuw        s5, a1, gp
                  xori         s0, a1, -1692
                  srlw         s6, t5, zero
                  sll          s9, s5, zero
                  ori          s5, s8, 1659
                  mulh         ra, s6, a1
                  andi         a3, t0, 327
                  srliw        s4, t3, 4
                  mulhu        t2, s1, a4
                  slti         a5, t1, -708
                  addi         t3, t1, -604
                  addiw        t1, s3, 1749
                  auipc        s10, 979073
                  sub          s10, tp, s8
                  slti         a2, s11, 1630
                  slti         s10, t2, 1035
                  mulh         s6, t3, tp
                  sltu         t0, a3, t6
                  sub          s3, tp, a0
                  sllw         t5, t4, ra
                  sub          gp, t4, tp
                  srai         tp, s5, 26
                  mulhsu       s3, t4, s4
                  ori          sp, tp, -221
                  sllw         s4, s10, s10
                  sltu         a0, s10, tp
                  ori          gp, sp, 443
                  sraiw        s6, s0, 20
                  rem          s6, s6, ra
                  mulh         s0, s5, s5
                  ori          a1, a4, -1696
                  rem          s9, ra, a6
                  slli         s10, s6, 58
                  sltiu        a5, t1, 2016
                  divu         a1, gp, t2
                  addiw        s8, t1, -1346
                  mulh         t5, s6, s2
                  srli         a1, s5, 11
                  slliw        zero, s0, 28
                  andi         a2, gp, 1918
                  add          sp, a6, s8
                  lui          s2, 1041218
                  srai         a5, t5, 55
                  or           s11, s1, a6
                  lui          s0, 671368
                  sllw         t2, s0, a2
                  xor          s10, s2, a2
                  sll          t0, s4, gp
                  addi         s3, s4, 1884
                  divw         a5, s6, sp
                  xori         t5, t3, 1996
                  srlw         s4, t2, a0
                  mulh         a3, a5, a4
                  slt          t0, s8, s5
                  srlw         a0, t3, a4
                  slliw        s8, a0, 20
                  divw         s11, t6, a2
                  slt          t4, t0, s10
                  remu         t5, t5, t2
                  srlw         zero, zero, gp
                  remu         t3, a0, t5
                  srliw        tp, t1, 5
                  add          t3, t2, s8
                  srli         t6, s0, 9
                  srlw         a0, t4, s11
                  div          s4, t4, s8
                  nop
                  remu         sp, a6, ra
                  add          ra, s8, s9
                  sra          t1, a2, tp
                  slt          a3, t6, a4
                  addi         s8, a4, -608
                  and          s3, s1, s4
                  divw         a4, t6, a3
                  srliw        s2, a3, 10
                  div          s3, t4, t5
                  sltu         t6, tp, s6
                  ori          tp, a0, -1837
                  and          s9, s5, s2
                  ori          s5, s9, -1478
                  srli         s10, s8, 5
                  divu         t0, s4, gp
                  and          a3, t5, a3
                  slli         a3, sp, 10
                  mul          s8, s11, gp
                  srlw         ra, s11, t6
                  add          s8, tp, gp
                  andi         s3, t1, 1286
                  addw         sp, s2, sp
                  sraiw        s9, s1, 11
                  andi         t2, s2, 692
                  srli         s9, t0, 31
                  sra          s2, s6, s0
                  divu         zero, ra, a7
                  rem          t3, t2, a1
                  subw         a4, s1, s3
                  slli         s3, a4, 25
                  xori         s3, s2, -1430
                  srli         s0, t6, 50
                  divu         s11, s1, s4
                  remuw        s3, a3, t3
                  lui          s0, 31019
                  mulhsu       t6, s6, t0
                  auipc        t3, 297237
                  sll          tp, zero, t4
                  divuw        s2, s6, s5
                  slti         t1, a4, 700
                  mulw         s4, s10, s0
                  sll          s3, a7, t0
                  nop
                  andi         s3, s0, -706
                  addiw        t0, s2, 55
                  sll          a0, tp, t1
                  mul          tp, gp, t1
                  srai         s5, zero, 37
                  auipc        tp, 252338
                  divu         t4, s7, a7
                  sub          t0, s0, s1
                  auipc        s8, 774808
                  slli         sp, a0, 6
                  remuw        s5, s5, t5
                  sltiu        s4, a5, -1504
                  sraiw        s7, s10, 22
                  addw         zero, s5, a4
                  sra          ra, a4, s7
                  slli         s10, gp, 44
                  xori         a1, a2, -902
                  sra          a5, a4, s3
                  lui          gp, 238626
                  add          s4, s11, a5
                  div          t3, s5, a7
                  ori          s9, gp, -953
                  sllw         a3, s0, s5
                  divu         ra, s1, ra
                  sltu         t3, t1, s5
                  slt          t1, s3, a7
                  xori         a2, gp, -264
                  addw         s3, a5, t0
                  and          s11, tp, tp
                  srli         s3, tp, 29
                  sllw         s6, t5, a4
                  srlw         a0, t3, a2
                  srl          s5, t6, s3
                  mulhsu       a1, a1, ra
                  addi         s10, a6, 1305
                  sraiw        s6, s2, 4
                  rem          sp, a2, s10
                  lui          s0, 235036
                  mulhu        a3, s2, s5
                  mulhsu       ra, s1, s6
                  subw         s8, s9, a1
                  mulh         tp, s2, s0
                  mulhu        a5, t1, t3
                  lui          gp, 271071
                  subw         a2, s9, t3
                  mulh         s3, zero, a2
                  rem          s2, a1, ra
                  sll          s5, s5, t2
                  sll          s10, zero, a7
                  remu         t0, t3, s0
                  srlw         s11, s6, t6
                  sltu         t2, a7, s9
                  andi         a1, s1, -301
                  sltu         t3, s6, a4
                  sraiw        s7, s8, 27
                  nop
                  srli         t0, s5, 31
                  slliw        t6, s11, 21
                  remu         a3, a3, s0
                  srl          ra, tp, a3
                  slliw        t5, a6, 26
                  rem          t0, s8, t1
                  slliw        s0, t1, 28
                  div          a1, s5, a7
                  ori          s5, t0, -902
                  or           s11, a2, tp
                  xor          s10, s11, a2
                  srli         s7, s4, 52
                  divw         tp, a3, a0
                  mulhsu       s8, s9, t0
                  divuw        s2, s7, s4
                  slt          s10, t0, s8
                  divu         s2, a6, a6
                  rem          t4, t5, t0
                  or           s0, a2, t0
                  sltu         a2, tp, s9
                  srai         ra, a5, 8
                  srli         a4, s4, 28
                  nop
                  sraiw        t2, t4, 30
                  sra          t3, t6, a5
                  addw         sp, s7, t4
                  mulh         s2, s3, a3
                  addiw        s0, a3, -433
                  and          a4, s6, s0
                  slt          s4, s1, t3
                  mulh         t0, a5, t0
                  slti         s2, t0, 568
                  lui          t1, 801924
                  sraw         sp, t2, t1
                  and          zero, s4, a6
                  divw         s2, s5, t5
                  slliw        a3, t2, 22
                  addw         s2, a3, a3
                  divuw        t2, t3, t5
                  nop
                  subw         s6, s0, t4
                  ori          t5, t3, -617
                  sra          t3, s1, s4
                  auipc        s5, 712442
                  sub          t6, a0, s7
                  remuw        s3, s2, t1
                  andi         s6, s1, 288
                  sltiu        s9, a0, -1666
                  remuw        tp, s3, a5
                  lui          tp, 534060
                  nop
                  rem          a0, s0, tp
                  slt          s0, sp, t6
                  sraw         a2, a1, gp
                  addiw        s4, s1, 682
                  subw         s2, s4, s5
                  auipc        t2, 967702
                  lui          s5, 124443
                  remw         s0, sp, a2
                  ori          s8, s10, 226
                  remu         a1, t3, t4
                  sll          s7, s8, t0
                  sub          s11, t4, a2
                  divu         s7, tp, a1
                  mulw         t1, a5, s3
                  add          s10, s9, a6
                  sltiu        a0, t4, -1289
                  sltiu        t4, zero, -1728
                  xori         s5, gp, -1712
                  srli         s11, s3, 56
                  div          s8, s0, t0
                  srl          ra, s5, a5
                  sub          a1, s2, a0
                  lui          a4, 944621
                  xor          t2, s11, a6
                  remw         a0, t1, s4
                  and          zero, s2, a4
                  sraiw        sp, t0, 2
                  mulh         t4, s5, t4
                  andi         a2, t3, -1244
                  nop
                  sraw         s7, t0, a0
                  mul          s4, a5, t3
                  lui          tp, 1015504
                  or           t3, s1, s10
                  xori         s6, s2, 1117
                  remu         t2, s4, t4
                  srlw         s11, t0, t4
                  divuw        s4, s11, ra
                  srai         tp, zero, 14
                  srl          a0, s0, s3
                  subw         t1, t1, a3
                  divw         s11, a6, s9
                  sltu         s7, a6, t4
                  or           t1, ra, s3
                  lui          s5, 486976
                  sltu         s0, t2, t6
                  srl          ra, t3, s6
                  addiw        s3, t4, -1867
                  nop
                  sub          t1, t0, zero
                  subw         s9, t1, gp
                  divuw        t4, sp, t1
                  xori         s10, s0, 2044
                  andi         t6, t6, -1890
                  mulh         a0, a7, s2
                  srai         a3, a4, 57
                  sltu         a3, s11, s6
                  sra          s5, a5, a7
                  remu         t3, a2, t2
                  mul          t4, s11, t2
                  divw         a3, s6, s7
                  sltu         a2, s9, t5
                  remuw        a0, s6, t5
                  sra          s0, s9, gp
                  sra          ra, s0, t1
                  div          a3, tp, a5
                  sll          t2, s2, t0
                  srliw        t2, a0, 25
                  slli         s10, a2, 62
                  xor          sp, t5, a7
                  sltu         s9, s4, s3
                  sra          t3, a0, t1
                  lui          s10, 846318
                  addw         s7, a4, s10
                  remw         a2, a1, a2
                  mul          t4, t1, s7
                  remu         s9, t2, t4
                  divuw        ra, a4, t2
                  subw         a2, a3, a5
                  srli         t6, a0, 41
                  slliw        t1, t0, 7
                  divw         gp, s9, a1
                  srai         t0, gp, 40
                  slt          a0, t1, sp
                  mulw         a4, s4, t1
                  or           s0, zero, zero
                  mulhsu       s10, zero, t3
                  srli         a1, a0, 10
                  addi         zero, a2, 299
                  sltu         t3, t1, s7
                  subw         s6, a7, t5
                  lui          s9, 399418
                  subw         t6, t3, s3
                  slli         s4, s10, 45
                  sub          s8, a4, s8
                  mulh         a2, s1, s6
                  ori          ra, ra, -287
                  sra          a4, s2, gp
                  div          a2, gp, t4
                  remw         s8, t4, s8
                  mulhsu       s10, gp, s0
                  addi         s7, a3, -1719
                  sll          ra, ra, t6
                  mul          s9, t4, s2
                  sub          s10, t4, s6
                  divu         s0, ra, gp
                  divu         t1, t2, s5
                  srai         t5, zero, 49
                  nop
                  sltiu        s0, s10, 542
                  sraiw        ra, gp, 6
                  mulhu        a0, s0, s9
                  slt          sp, s4, a6
                  remuw        s10, gp, t2
                  sltu         t0, t4, t6
                  mul          zero, s2, s11
                  divuw        a5, ra, sp
                  slli         t5, s7, 3
                  subw         s6, s5, s8
                  nop
                  srai         t2, gp, 9
                  lui          s7, 486937
                  sll          s6, s7, a7
                  srli         t5, s8, 48
                  sllw         t4, a4, a6
                  sraiw        s3, s8, 4
                  subw         a5, a1, t1
                  srl          s4, t0, tp
                  subw         a1, s0, s9
                  lui          zero, 425237
                  srlw         s9, tp, a1
                  auipc        s9, 579742
                  sltu         s0, s11, s0
                  slliw        ra, s2, 9
                  mulhu        gp, s8, s11
                  srai         a4, s5, 35
                  sllw         t5, a6, a3
                  div          s11, s5, a5
                  auipc        a2, 859646
                  auipc        sp, 410761
                  sraiw        t5, a6, 29
                  mul          s2, s9, s7
                  or           t2, sp, s11
                  mulhsu       a3, ra, a6
                  mulhsu       a0, t3, ra
                  srliw        a2, s8, 1
                  mul          t5, a3, zero
                  slli         tp, t3, 7
                  sll          s2, s11, s4
                  nop
                  addiw        a2, s9, -416
                  sll          t6, a4, s2
                  addw         a2, ra, s1
                  xori         t2, a2, -172
                  srliw        t4, t5, 22
                  lui          t1, 616193
                  nop
                  sub          t1, s2, s0
                  or           tp, s3, sp
                  remw         gp, t6, t0
                  sllw         t6, ra, a0
                  srai         s11, a0, 14
                  sub          t0, s6, a0
                  add          s2, sp, a5
                  sltiu        t6, gp, -1192
                  sltu         s7, a6, ra
                  mulhu        s2, tp, t0
                  auipc        ra, 797178
                  sraw         s3, t2, s2
                  slliw        t2, a7, 30
                  srai         zero, s5, 52
                  lui          a3, 494652
                  andi         s8, a4, -1555
                  xori         s4, s2, 1076
                  slti         a2, a5, 1325
                  sraiw        a3, s9, 28
                  sltiu        t6, s10, 954
                  srai         s3, s9, 39
                  srl          ra, sp, t3
                  andi         t0, gp, -1037
                  slt          s2, s5, a5
                  ori          sp, s11, 1
                  and          a0, s11, a6
                  lui          tp, 919059
                  slliw        zero, a2, 27
                  slliw        ra, s8, 1
                  srai         s11, t2, 36
                  slliw        s7, s3, 29
                  sraiw        t4, s0, 10
                  mulw         t6, gp, a1
                  sub          t6, s7, a0
                  div          s6, a3, t4
                  sll          t1, a4, a4
                  or           gp, a6, a6
                  xor          s0, t2, s1
                  srliw        t0, tp, 10
                  divuw        t6, sp, s7
                  auipc        t6, 239445
                  nop
                  xori         t5, a7, -1972
                  slliw        t3, s4, 23
                  andi         ra, sp, 1391
                  sraw         a0, s10, t6
                  remuw        a5, a5, s10
                  addw         tp, a4, s11
                  slti         s7, s6, -1855
                  slli         s3, zero, 60
                  divw         sp, tp, gp
                  mul          sp, t3, t2
                  subw         t6, s8, a2
                  divw         tp, s9, s11
                  slt          s9, s7, a3
                  mul          sp, sp, t1
                  addw         t3, t1, s6
                  sltu         s7, s9, t4
                  mulhsu       a4, s6, s10
                  addi         s3, s1, -929
                  sltiu        s7, s6, 1586
                  sra          zero, a0, t6
                  addi         t3, t5, -1957
                  slli         s0, s0, 5
                  srl          t2, s9, ra
                  mulhu        zero, a1, ra
                  addiw        t1, t3, 1792
                  sltu         tp, a1, a7
                  divw         s7, tp, t1
                  nop
                  slliw        s0, s3, 11
                  mulh         s4, ra, a0
                  slliw        t0, tp, 17
                  addiw        s9, t2, -503
                  sub          sp, a5, t5
                  ori          s4, ra, -1545
                  xor          zero, s6, s6
                  addw         ra, gp, s5
                  remw         s2, t6, t5
                  xori         s10, a7, -75
                  or           t2, a6, s5
                  mulhu        ra, a4, a5
                  rem          zero, ra, s6
                  remuw        ra, ra, zero
                  sra          s4, s9, s6
                  mulhsu       s8, a7, s11
                  remu         a2, t2, s0
                  mulhu        ra, t4, a2
                  sub          s4, a2, a7
                  subw         t5, s2, t0
                  mulhu        zero, s8, t4
                  remu         t4, s3, a3
                  remuw        t5, t0, a4
                  slliw        s5, a1, 11
                  srli         ra, s5, 14
                  subw         s2, s0, a3
                  lui          a5, 121437
                  srl          a4, zero, t5
                  srlw         s4, ra, t6
                  add          t4, tp, a7
                  divw         t3, t6, t0
                  addiw        a2, ra, 1703
                  divuw        zero, a1, t1
                  divuw        t2, s5, s2
                  sraw         a3, a6, a0
                  slli         t4, t5, 41
                  auipc        zero, 245019
                  add          s9, t4, t5
                  nop
                  divuw        t3, a1, ra
                  slli         s0, t5, 1
                  sub          a3, tp, s6
                  or           s0, t2, s8
                  sllw         s8, s10, s9
                  mulw         sp, s4, s4
                  sraw         s0, s8, t1
                  nop
                  slt          a3, s3, t1
                  xor          gp, t0, s11
                  sllw         t1, s0, s10
                  divu         s6, a1, t2
                  srl          s0, a1, t3
                  nop
                  sub          s0, a5, a6
                  ori          t1, s6, 149
                  srliw        sp, s5, 0
                  srli         ra, a5, 18
                  addw         s8, a4, s3
                  remuw        t1, s11, a3
                  remuw        t5, s2, tp
                  andi         s9, s10, -275
                  lui          gp, 387177
                  remu         s3, a7, a5
                  sraw         s2, gp, s2
                  sllw         s5, a7, s4
                  divu         a5, t2, t2
                  srai         a5, s5, 13
                  slt          a0, tp, s7
                  srli         t2, t1, 29
                  srliw        s6, a0, 14
                  remw         s11, s7, s0
                  div          s6, s5, s11
                  sltu         t2, s3, t0
                  add          tp, zero, a1
                  addi         s2, s0, 1029
                  xori         t1, zero, 235
                  sll          s9, a7, s9
                  sub          s2, s8, a7
                  lui          a1, 588318
                  sraw         s9, s0, s3
                  srli         a1, a4, 17
                  remuw        a5, s8, a0
                  addw         a5, s8, s2
                  sltu         a5, s9, s3
                  divw         t2, zero, a1
                  mulhsu       s5, a7, gp
                  remw         s7, a1, s9
                  remuw        sp, s5, a6
                  remw         t4, s9, s4
                  xor          t2, a4, sp
                  srli         t3, a1, 49
                  add          s5, s11, a2
                  slli         gp, s2, 40
                  divuw        ra, s0, a3
                  divuw        s4, s3, a6
                  mulh         a2, s4, s11
                  addi         t0, a7, -107
                  nop
                  divuw        t0, a1, a2
                  nop
                  sub          s0, t4, gp
                  or           t1, t2, zero
                  remw         zero, a0, ra
                  srlw         a4, s9, s1
                  mulhsu       s9, t0, t6
                  slli         a1, a2, 54
                  xori         s5, tp, -1851
                  lui          t3, 474238
                  srlw         t6, sp, a3
                  slli         t2, s9, 8
                  and          s9, s8, a5
                  mulh         t2, t2, s4
                  mul          gp, a3, ra
                  or           t6, t1, ra
                  srl          gp, s9, a7
                  divu         a5, a6, t0
                  andi         s4, a5, 288
                  ori          t4, s2, 855
                  rem          a3, zero, a0
                  divu         s0, t1, s11
                  ori          s4, t2, 706
                  nop
                  sraw         t1, s7, a3
                  addw         s8, t6, t0
                  sll          ra, tp, a2
                  srai         s7, s2, 43
                  nop
                  mulh         s5, zero, a4
                  rem          s2, s11, a2
                  div          a1, a2, t6
                  subw         s7, s6, s2
                  sraiw        ra, a7, 12
                  nop
                  lui          a4, 231685
                  mul          sp, s2, s1
                  sll          s4, a3, s11
                  andi         zero, s2, 1304
                  srlw         t2, a4, t1
                  slli         s10, s9, 42
                  mulhu        ra, a1, a7
                  slli         a2, a6, 44
                  xor          a0, t1, s7
                  addw         sp, ra, t0
                  nop
                  sub          s9, a3, a3
                  ori          a2, s9, -1938
                  divu         t3, a1, s9
                  sltiu        s9, s0, -773
                  slli         a2, a1, 47
                  divw         s7, s5, zero
                  divw         tp, t2, s6
                  xor          t0, t5, s1
                  xor          a2, s3, s3
                  sllw         t6, a4, s7
                  mul          t0, a2, s5
                  sraiw        s4, tp, 10
                  sraiw        s6, t5, 6
                  ori          ra, t1, -1860
                  ori          s9, s1, -1560
                  sub          t3, a7, a7
                  divu         s0, a7, s0
                  srl          a1, t6, a7
                  xor          t2, s8, s3
                  nop
                  div          ra, a2, t0
                  mulhsu       s5, s7, s11
                  andi         t6, t0, 757
                  mulw         t6, s5, s6
                  sltu         a5, sp, s8
                  lui          a4, 1040874
                  and          t4, t1, sp
                  addw         a3, sp, sp
                  srliw        t0, s3, 30
                  nop
                  xori         zero, s2, -236
                  or           s5, a1, a7
                  sraw         ra, t6, a4
                  mulhsu       t0, zero, a6
                  divu         s8, a7, s8
                  rem          zero, s4, zero
                  mulh         s7, a3, s2
                  sub          s8, t4, s6
                  srli         a3, s0, 57
                  sraiw        s5, a6, 3
                  addw         s6, s1, a5
                  rem          sp, s9, s2
                  xori         ra, gp, -1228
                  mulw         s8, sp, s0
                  sraw         s10, a7, s0
                  sltu         s3, t3, t3
                  lui          tp, 931516
                  srliw        s11, ra, 0
                  and          a3, a2, a7
                  mul          a0, t5, a0
                  slli         s8, a3, 44
                  sra          s4, ra, tp
                  nop
                  subw         s4, a0, s5
                  addiw        s8, s1, 1381
                  andi         zero, sp, -1893
                  mulhsu       s10, a7, s1
                  sltu         t0, a6, t1
                  divu         a0, a1, s9
                  srli         a0, a6, 56
                  lui          s2, 651931
                  xori         t1, s3, 903
                  nop
                  div          t1, t6, s2
                  div          t5, t5, s5
                  xor          gp, s9, zero
                  auipc        a1, 349748
                  xori         s11, t3, 215
                  addiw        t6, sp, 1167
                  addiw        t3, gp, 1713
                  ori          a3, ra, 365
                  mulhsu       s6, t1, t3
                  srli         a4, a5, 53
                  sraw         s2, s0, t1
                  subw         s4, s6, tp
                  mulhu        s9, a5, a1
                  slli         t1, sp, 37
                  nop
                  remuw        s10, s7, s9
                  mulw         tp, s0, t6
                  sub          sp, s0, t3
                  remuw        t3, s9, zero
                  srli         s11, s0, 8
                  mulw         t2, s6, a3
                  slli         s4, a4, 48
                  addiw        t2, a7, 1528
                  andi         zero, a2, -32
                  sll          ra, s7, a7
                  lui          a5, 527093
                  mulw         zero, gp, a5
                  sraiw        s8, t0, 4
                  and          a4, a5, a6
                  addw         gp, a5, sp
                  slti         zero, t4, -1584
                  add          a3, a0, t6
                  xori         a2, a2, 113
                  mulw         t0, s11, t0
                  or           s5, gp, s8
                  remw         s11, a2, s9
                  sraiw        s10, t2, 16
                  addiw        a0, t3, 881
                  rem          s3, t1, t2
                  and          s5, a0, sp
                  slti         s7, sp, -896
                  addw         ra, s11, t1
                  remu         s3, t2, s8
                  slti         s0, s2, 90
                  sltu         s6, t4, s1
                  sltiu        t5, t4, 374
                  rem          a3, s7, sp
                  srlw         s4, t5, s10
                  sub          sp, s2, s7
                  remuw        t1, a6, ra
                  sll          t1, s0, s0
                  sub          sp, s6, s3
                  srliw        a5, a6, 30
                  divuw        s5, sp, gp
                  sll          t5, s6, a4
                  xor          a2, t0, ra
                  sltu         s4, t4, s0
                  slli         t3, t0, 9
                  and          s3, s6, s10
                  auipc        a4, 450380
                  rem          s2, gp, ra
                  remuw        s4, s1, s4
                  mulhu        s4, s9, s1
                  and          s0, s7, s2
                  slli         s6, s1, 42
                  sll          a1, sp, zero
                  divu         s8, t0, s9
                  sraiw        s6, s9, 12
                  nop
                  mulw         a1, t6, s7
                  srli         ra, sp, 14
                  sllw         s10, s2, s9
                  sraiw        zero, zero, 14
                  mulhsu       tp, s3, s1
                  srlw         a3, t3, t5
                  sll          a0, a1, s0
                  xor          a1, s11, a7
                  add          a3, a4, tp
                  addw         s6, a0, s11
                  divuw        s11, gp, t3
                  slt          s0, s8, s11
                  remuw        t3, a1, zero
                  ori          ra, a5, -1076
                  sra          a4, s1, zero
                  auipc        t2, 374920
                  or           s9, s0, sp
                  or           s4, a6, s7
                  sub          s6, t4, s4
                  remw         s4, s7, ra
                  subw         a2, s5, s3
                  sll          ra, sp, t0
                  mulh         t6, s2, ra
                  xori         ra, a5, 1860
                  sll          a3, t0, s9
                  or           t1, s7, t2
                  divuw        s6, s6, zero
                  mul          a5, sp, a4
                  div          t0, s0, t0
                  addiw        a0, a5, -442
                  sll          s11, sp, a1
                  sraiw        s7, s6, 20
                  andi         t6, s9, 41
                  rem          t4, tp, s0
                  divu         tp, sp, s5
                  sllw         s6, t5, a4
                  nop
                  div          a1, s1, a1
                  sra          gp, t0, a1
                  nop
                  sub          a4, sp, s0
                  slti         t6, s0, 1227
                  slt          s10, t5, t4
                  xori         t4, a0, 526
                  srliw        ra, tp, 3
                  srli         s6, t5, 51
                  sll          a3, t0, t1
                  rem          s9, a4, zero
                  divu         s4, sp, a2
                  add          s4, a1, a0
                  and          a2, a2, gp
                  mulhu        s4, s7, a5
                  srlw         s7, gp, a3
                  sltiu        s7, a4, -421
                  nop
                  slli         a3, tp, 38
                  remw         t3, a3, s2
                  slliw        a1, tp, 7
                  remw         ra, a1, s6
                  srai         zero, s10, 21
                  div          a5, s10, t6
                  sub          s9, ra, s11
                  sraiw        s5, t0, 22
                  mul          a0, s9, a0
                  sllw         s4, t2, s9
                  remuw        s11, a0, a3
                  mulw         t6, ra, t1
                  add          t4, zero, gp
                  sraiw        s6, t3, 15
                  sll          s5, t1, a1
                  sraiw        a5, a1, 18
                  divw         a3, s4, ra
                  and          sp, s6, s0
                  or           t6, t4, t1
                  xori         ra, gp, -1540
                  srai         a1, s3, 6
                  sll          s2, t5, s3
                  slti         t2, s10, 272
                  addiw        t2, a2, -364
                  mulw         sp, t1, a6
                  xor          gp, zero, t0
                  sltu         s3, a5, s8
                  or           s4, a1, a3
                  srlw         s9, t1, a5
                  divuw        t5, gp, ra
                  divuw        sp, s8, s6
                  srl          t5, t5, s5
                  sllw         s4, a7, t0
                  srli         t0, s9, 63
                  sllw         zero, zero, gp
                  mulh         s3, t4, s5
                  andi         s9, s2, -476
                  subw         t1, s2, t5
                  add          gp, zero, s5
                  srl          s6, gp, a4
                  srai         s4, ra, 50
                  xori         t0, ra, 112
                  add          a3, t4, sp
                  srai         t0, t3, 22
                  auipc        s10, 146729
                  srl          ra, a0, t1
                  sraiw        s5, a1, 11
                  rem          gp, s4, a2
                  sll          s7, s9, t3
                  divuw        t3, s5, s7
                  srli         ra, ra, 62
                  slt          s11, s3, t4
                  and          t1, s4, s6
                  auipc        t5, 315223
                  remu         gp, s4, a7
                  srliw        a2, s2, 22
                  sllw         t5, s10, s2
                  srlw         s4, a1, ra
                  mulhu        s7, a6, a5
                  remw         s0, t5, zero
                  slli         s0, a3, 35
                  addw         s4, t1, s2
                  slti         s5, a7, 268
                  remuw        a2, a4, a3
                  srai         ra, a7, 41
                  mulhu        s10, s3, s0
                  divw         ra, a6, tp
                  or           t4, t5, t6
                  divu         ra, s9, s7
                  sltiu        s10, t4, -1407
                  remu         sp, s11, a6
                  srli         t0, a7, 8
                  sllw         s7, s11, t6
                  and          a0, s1, s8
                  rem          tp, t3, s7
                  mulhu        t3, gp, a7
                  sra          a4, tp, gp
                  slti         a1, s2, 763
                  div          t6, sp, a5
                  divuw        a1, gp, a0
                  slti         zero, s8, 1468
                  srl          s8, s9, a1
                  divw         t4, t3, a0
                  sltiu        t5, a6, -1323
                  srlw         a1, t3, a0
                  or           s0, t3, s1
                  srliw        t2, sp, 26
                  srlw         a5, s1, t6
                  auipc        s4, 593460
                  mulhsu       s3, t4, t1
                  andi         s5, s2, 786
                  remu         s3, s10, a6
                  auipc        s3, 493564
                  andi         t2, s3, 1411
                  slti         s9, t2, -2004
                  mulh         t5, gp, a3
                  addiw        s11, t4, 474
                  sllw         s8, a4, sp
                  addw         sp, t3, t5
                  auipc        t2, 243646
                  ori          s3, s1, -904
                  or           a3, a7, sp
                  and          t4, zero, tp
                  xor          t4, s11, a6
                  sll          a0, s10, zero
                  sllw         gp, s6, t2
                  remw         gp, a3, s8
                  sub          t4, a5, s1
                  sllw         a2, s10, a7
                  sltu         s7, t2, s6
                  sllw         t5, t3, s3
                  sra          s8, t0, a7
                  sltu         s9, sp, t2
                  divu         s10, zero, gp
                  remu         s2, s7, t0
                  mulhsu       a5, s3, s3
                  and          t4, s11, t1
                  ori          t2, sp, -1865
                  xori         s8, a3, 343
                  mul          s4, s7, t3
                  xor          t5, zero, t1
                  mulw         a0, t0, s3
                  sraiw        sp, a1, 27
                  subw         t1, s11, s2
                  slt          t3, s4, s1
                  ori          s0, t0, 898
                  add          t3, a5, s10
                  andi         s0, sp, 940
                  sll          s0, a2, a3
                  sra          sp, t4, a7
                  rem          s6, t5, s3
                  mulh         a2, s7, s4
                  sra          t4, s1, a7
                  auipc        a3, 8919
                  srliw        zero, s1, 20
                  slliw        ra, t1, 23
                  sltiu        t6, t0, 340
                  addiw        s9, a7, 1948
                  sllw         s0, s2, t0
                  sra          a1, sp, t3
                  add          a5, t5, a6
                  sraiw        t1, s5, 27
                  sltu         s9, tp, tp
                  xori         ra, a4, -1956
                  divw         s10, s1, s10
                  sll          a3, s4, s7
                  remu         t0, gp, a2
                  addw         s5, s7, s10
                  rem          ra, s8, tp
                  sraiw        t1, s5, 1
                  div          a0, a4, a1
                  xor          s8, s1, t0
                  sltu         zero, s1, t3
                  sltu         sp, a3, a0
                  slt          gp, s8, gp
                  nop
                  sraiw        ra, t6, 11
                  srai         a5, s11, 16
                  addi         ra, s0, 41
                  mulhsu       t1, s8, s8
                  mulw         s8, sp, s2
                  sltu         s11, a3, s0
                  slti         s4, gp, -370
                  mulhu        a2, a6, t2
                  xor          gp, t0, t6
                  sra          s2, a7, ra
                  sllw         s2, a7, s2
                  slliw        s10, s1, 21
                  sraw         t5, s5, s1
                  divuw        a0, t1, a7
                  sltu         t4, a6, a2
                  srl          s5, s4, t5
                  remw         t0, s9, a0
                  slti         ra, t1, 1860
                  slti         s0, gp, 1163
                  rem          t0, s3, s8
                  xor          s3, t3, t5
                  mulw         a3, s11, gp
                  slli         s9, a1, 56
                  mul          t1, t2, s6
                  addw         a3, s3, s8
                  slliw        t3, t4, 18
                  mul          t6, a7, s7
                  add          a3, gp, s10
                  sltiu        a0, a3, 1241
                  lui          tp, 392340
                  andi         zero, gp, -1238
                  mulhu        s5, ra, s7
                  rem          s4, t2, t5
                  div          t1, a0, a5
                  mulhu        sp, s8, t1
                  slliw        a5, s8, 23
                  auipc        a3, 8883
                  addi         s4, s8, -1944
                  addi         zero, sp, -1621
                  srli         a2, s4, 57
                  sllw         s11, s9, t6
                  srlw         s9, t4, s8
                  xor          s3, ra, tp
                  addw         s9, t1, s2
                  div          s2, a1, sp
                  divu         a0, s11, a1
                  slli         sp, s2, 40
                  divu         s5, s0, s10
                  divuw        a2, t1, a5
                  sllw         s11, t6, t4
                  remuw        s11, t6, s7
                  divw         ra, s1, tp
                  lui          t5, 229477
                  xori         s3, sp, -380
                  srli         t4, a5, 39
                  rem          t6, a7, s8
                  or           a5, a1, s10
                  or           a5, s2, tp
                  mulw         t6, t5, t1
                  mulh         a4, t6, t6
                  slli         a2, t6, 46
                  mulh         t0, a3, s8
                  remw         a0, gp, s3
                  srli         t1, s6, 39
                  slt          s6, t6, sp
                  addiw        t1, a0, 590
                  sltu         s11, t2, s6
                  or           s9, s8, t4
                  or           t1, ra, t5
                  mulhsu       s10, a1, t2
                  srli         a2, sp, 63
                  srai         t2, s5, 29
                  sraw         s8, s2, a7
                  remu         t2, a5, a2
                  slti         s9, a0, 590
                  rem          a0, a0, s9
                  add          s8, t3, s3
                  srlw         zero, a5, s7
                  div          s6, a5, a2
                  divw         ra, a4, s1
                  slliw        a1, tp, 26
                  rem          t2, t0, s0
                  nop
                  sraw         t0, sp, s0
                  srliw        s3, t4, 7
                  sra          s0, t3, tp
                  divu         a3, t6, s10
                  remu         s2, a1, ra
                  srliw        gp, t0, 0
                  rem          s5, s5, a0
                  sll          s8, sp, t0
                  sraw         s2, s7, s9
                  divuw        gp, a2, s8
                  remuw        a0, s11, a5
                  remu         sp, tp, t1
                  and          a0, tp, s7
                  addiw        t4, a5, 1606
                  remw         a4, s10, sp
                  sub          t3, s3, s11
                  xori         t3, tp, 1771
                  mulw         s2, t3, a4
                  divu         s3, t2, t0
                  srli         a2, tp, 39
                  srli         s5, s3, 11
                  sltiu        t1, s5, 769
                  slliw        a3, a6, 25
                  slliw        s6, s6, 14
                  ori          sp, a0, 1359
                  div          s8, s0, s3
                  and          t5, a1, ra
                  srli         t1, t2, 38
                  mulhsu       s8, tp, a2
                  nop
                  slli         s0, s3, 43
                  divw         s0, s6, t3
                  sltu         s4, s3, a3
                  auipc        s11, 908200
                  and          a4, tp, sp
                  sll          a2, s5, a1
                  mulh         a1, s10, s5
                  xori         s10, s4, 1770
                  mulhu        s10, s4, a2
                  or           sp, s10, ra
                  divuw        s0, a7, zero
                  nop
                  mulw         a4, t1, s5
                  slt          s9, s8, t0
                  sltiu        a2, s0, 1705
                  mulh         t3, s9, ra
                  slli         zero, s7, 60
                  xori         s11, t1, 222
                  sraiw        s9, ra, 5
                  sub          t4, a3, s8
                  mulhu        ra, sp, s9
                  sll          t5, a1, a2
                  ori          sp, s11, 85
                  srai         zero, s9, 16
                  sltu         t2, s3, s10
                  add          t1, t3, s9
                  mulh         s8, t3, t0
                  or           s4, a4, s1
                  sltiu        s0, t5, -1629
                  sraw         s9, s9, t2
                  sll          s7, s0, s7
                  sltiu        gp, a4, 1251
                  sllw         a4, a0, s5
                  mulh         s6, s4, s2
                  mul          t3, tp, t2
                  srliw        s4, t4, 9
                  sraiw        t1, s4, 4
                  srai         a2, a7, 11
                  mul          t1, a5, s10
                  divuw        t5, s4, zero
                  sltu         t0, t0, t6
                  slli         s8, a3, 60
                  sra          a4, tp, s2
                  slti         s9, a2, -348
                  slt          t4, t6, s2
                  sub          ra, s7, s2
                  xor          s2, s5, tp
                  slliw        s5, t2, 0
                  xor          gp, tp, a3
                  xori         t5, a0, -1337
                  remu         s4, t1, zero
                  remw         s4, a3, s1
                  srli         s11, a1, 6
                  remu         sp, a0, t5
                  remw         zero, s5, t5
                  srlw         gp, t2, s6
                  sraiw        s10, s7, 31
                  lui          s7, 183552
                  srli         a1, s8, 35
                  sub          s9, sp, s11
                  slliw        s9, a3, 14
                  slliw        s5, a1, 28
                  mul          s11, s6, t3
                  addw         a2, t3, s10
                  addi         t1, t0, -360
                  mulh         s5, s6, s0
                  mul          t3, a5, a2
                  xori         t2, a3, -403
                  andi         s0, gp, -101
                  div          s0, zero, a7
                  sraw         t6, a3, t0
                  divw         t5, t4, s11
                  nop
                  div          t1, a6, sp
                  and          t6, s7, s4
                  slli         s9, s1, 35
                  sltiu        s0, zero, 747
                  divuw        t5, t3, s1
                  auipc        s2, 655785
                  srliw        a5, s9, 11
                  and          sp, s7, s8
                  nop
                  divuw        t1, a7, a4
                  divw         a0, a6, s0
                  remuw        ra, a3, a3
                  xori         s9, s9, -834
                  lui          gp, 155757
                  slli         s2, t6, 29
                  and          t6, t0, ra
                  remw         gp, ra, a2
                  or           a5, t6, t5
                  sll          s5, a7, t1
                  mulhu        s5, s9, a4
                  and          sp, a1, a0
                  add          t6, s2, sp
                  srli         a2, s2, 7
                  sll          s5, s4, s8
                  remw         t4, a2, a3
                  slt          a3, tp, s8
                  andi         s9, gp, -225
                  rem          t3, s0, t4
                  lui          a2, 617371
                  slliw        t1, a5, 9
                  sub          t4, s9, s10
                  srliw        a2, a7, 23
                  auipc        s8, 226723
                  subw         tp, a3, a2
                  div          gp, s8, sp
                  sltu         tp, a2, t4
                  andi         s2, t1, 1655
                  or           s3, s9, a6
                  sraw         t3, a5, a6
                  add          gp, gp, tp
                  sllw         a0, s4, s11
                  sraiw        a1, t6, 7
                  slti         t2, t1, -309
                  xori         a1, t2, 1603
                  divw         zero, t5, t3
                  xori         a3, a5, 430
                  addw         s2, a4, s2
                  auipc        s7, 44044
                  sraw         ra, s5, sp
                  and          zero, s6, a6
                  sraiw        s5, s0, 24
                  add          a2, s10, s7
                  sltiu        t1, ra, -1791
                  remw         a4, ra, t5
                  div          a2, s8, tp
                  remuw        a4, s7, t1
                  divuw        t0, a3, s9
                  srlw         t0, s9, s4
                  remu         ra, a7, s9
                  subw         s0, a7, t1
                  slti         gp, zero, -462
                  divuw        s9, s2, s10
                  mulhsu       s3, t5, a3
                  addiw        s11, t6, 444
                  mul          s7, a7, sp
                  auipc        a5, 364096
                  nop
                  xori         t1, a7, 1148
                  srlw         sp, zero, ra
                  sll          s2, s9, s1
                  mulhsu       t2, t3, a3
                  srli         t4, t5, 42
                  sllw         s2, t5, a6
                  srlw         a3, t0, s9
                  slti         tp, s6, 843
                  mul          s3, tp, a4
                  addiw        tp, t0, -759
                  addw         t1, s9, t4
                  divuw        s4, s1, t5
                  mulw         t5, s9, sp
                  addiw        s6, a1, -1718
                  addiw        a5, s10, 1255
                  slli         s9, a7, 7
                  addi         t1, s5, -1366
                  sltiu        zero, a7, 1499
                  sll          a1, s4, s2
                  slliw        t2, gp, 3
                  sltu         s10, s1, s11
                  mul          t4, sp, t3
                  remu         s9, a1, s3
                  and          s2, s2, t2
                  xori         a1, zero, 1492
                  remw         ra, s2, s6
                  subw         gp, a3, s6
                  addi         zero, t3, -1605
                  rem          s6, a3, t3
                  xori         s7, a5, 1847
                  remuw        ra, a6, s5
                  ori          t1, t0, 1540
                  nop
                  nop
                  addi         s9, a6, -63
                  srlw         s10, s1, t6
                  sraw         t0, s1, t0
                  sltiu        t0, t0, -962
                  slt          t2, gp, a5
                  divu         t4, t4, s7
                  divu         a0, a5, tp
                  mulhu        a1, s7, zero
                  srl          t3, t1, a5
                  xor          a1, gp, s9
                  srl          s9, s5, sp
                  xori         a1, sp, 1854
                  mulw         t6, s9, s4
                  and          t6, s9, a7
                  add          t3, t4, s7
                  xori         s0, t0, -978
                  sllw         s4, a2, sp
                  addi         sp, s7, -1555
                  auipc        s5, 872083
                  mulh         a5, a5, t6
                  mulhu        a5, s11, s9
                  lui          ra, 981440
                  divw         s10, s5, ra
                  mulw         s0, t0, s4
                  slti         ra, s7, -6
                  sraiw        s9, t0, 8
                  sraw         ra, t6, sp
                  auipc        s0, 451395
                  xori         a5, a0, 292
                  slti         t3, t3, 1931
                  srl          s2, s5, t2
                  srai         s9, a2, 35
                  slt          s5, t4, tp
                  sub          s7, tp, ra
                  and          t5, a7, s10
                  sub          s11, a6, s2
                  addiw        a5, a3, 1530
                  auipc        s3, 618750
                  ori          s8, a1, 384
                  sll          a1, s11, t5
                  srlw         a2, a2, s9
                  lui          s7, 524865
                  srl          s7, s7, t5
                  srl          t6, t2, a7
                  divu         a4, t6, a5
                  nop
                  divuw        s2, s6, t2
                  mulw         s11, s8, s9
                  divw         s5, a6, s9
                  ori          t0, t3, 1761
                  remu         t4, s5, t0
                  addw         s8, a4, s2
                  remuw        a5, s10, tp
                  andi         a2, t0, -1732
                  srliw        s4, sp, 29
                  mul          gp, s4, s4
                  slt          ra, zero, t6
                  sllw         s8, s9, s6
                  nop
                  sltiu        s4, gp, -2034
                  srliw        s4, s2, 16
                  srli         a1, s3, 37
                  remu         s0, t6, a3
                  sllw         a2, a2, t4
                  sraw         s9, a7, a6
                  srli         gp, a2, 24
                  sub          t0, t5, s3
                  sltu         s8, a5, s9
                  slli         ra, a7, 10
                  nop
                  addw         s8, s1, s5
                  addi         ra, a1, 2008
                  sltu         s3, a0, t3
                  addw         s9, t5, s6
                  slli         sp, s1, 35
                  add          s3, s11, t3
                  sra          a2, s7, ra
                  srl          s4, a2, t5
                  addiw        s9, s5, -1827
                  subw         t0, t5, zero
                  ori          a2, s1, 624
                  divw         s2, s4, s2
                  sllw         a3, a6, a6
                  subw         s6, s5, s2
                  sltu         t0, t5, s11
                  srlw         a1, ra, a6
                  srai         ra, t0, 4
                  divw         t5, s3, a4
                  sraiw        t5, t0, 18
                  sub          s4, t1, a6
                  divw         s9, s1, t0
                  remu         t2, sp, a0
                  slli         tp, a5, 27
                  divw         sp, t4, s2
                  remuw        zero, s7, gp
                  srl          a3, zero, a4
                  nop
                  addiw        a4, s11, -1778
                  divuw        s4, a2, t3
                  subw         a5, ra, t1
                  remu         s3, s5, s1
                  remu         s3, a1, tp
                  remw         zero, t4, s3
                  or           a1, t5, s10
                  remu         s8, t2, t3
                  and          tp, s1, a4
                  sllw         s9, s10, a3
                  sraiw        s8, s10, 25
                  remw         sp, a4, gp
                  subw         t3, s5, s5
                  nop
                  xor          sp, a1, a3
                  srliw        a2, s1, 22
                  srlw         a2, s10, s11
                  srlw         t6, a7, s11
                  mulhu        s3, s9, t3
                  mulhsu       a2, tp, s7
                  xor          t6, s4, a2
                  subw         s8, t6, s1
                  mul          ra, t0, s4
                  lui          s9, 621327
                  div          s2, s3, sp
                  divw         gp, a4, s8
                  srl          a4, s5, a2
                  sllw         s11, tp, a3
                  srliw        s9, gp, 19
                  remuw        s11, a4, a2
                  sraiw        a2, s10, 5
                  mulhu        t2, a4, s5
                  auipc        zero, 367638
                  srlw         a3, s4, s5
                  sra          s9, zero, t0
                  srlw         sp, t0, s2
                  sraiw        a3, a1, 24
                  remw         sp, a1, s6
                  srai         gp, s7, 16
                  divuw        s3, gp, sp
                  lui          t1, 268044
                  sraiw        s5, t6, 19
                  srlw         s10, s3, tp
                  slliw        a1, s7, 8
                  sraiw        t4, s2, 5
                  ori          t0, t2, -759
                  addiw        a0, t6, 331
                  sltu         t1, t4, s8
                  mulhsu       a0, a2, sp
                  slliw        a1, a0, 6
                  addi         t3, t0, 1577
                  lui          s3, 143305
                  mulw         s5, s1, t1
                  div          t6, a0, t4
                  ori          s10, s8, 1747
                  addi         a3, s6, 1003
                  add          t3, a3, a0
                  srliw        ra, s2, 22
                  mul          s5, t1, a0
                  add          t4, t6, ra
                  addi         ra, t3, 1099
                  srai         t6, a7, 57
                  sraiw        zero, tp, 21
                  remu         a1, tp, t2
                  srli         s11, s10, 50
                  sllw         t6, a4, gp
                  srli         s9, t3, 0
                  srli         a5, s2, 35
                  sraw         tp, s0, a1
                  divuw        s7, t6, sp
                  and          t4, s1, t6
                  lui          t1, 792055
                  lui          gp, 377415
                  mulh         a2, tp, a4
                  sra          s3, t6, sp
                  sraiw        s9, s6, 17
                  sub          gp, s10, a6
                  auipc        s2, 348607
                  mul          a5, zero, a1
                  divu         t0, t6, s10
                  mulhsu       s0, zero, t1
                  srai         s9, s5, 5
                  srlw         s7, a1, t0
                  xor          ra, s1, t2
                  sltu         a0, s5, a2
                  add          t0, a7, a4
                  mul          gp, s0, a0
                  and          tp, t6, a0
                  mulh         s7, s3, s8
                  slli         a2, s5, 24
                  add          zero, s6, t1
                  divw         a2, a1, gp
                  or           s4, s10, sp
                  mulw         zero, s6, s4
                  slli         s2, sp, 56
                  mulw         s2, t5, a3
                  div          s11, t0, tp
                  sraiw        s0, s0, 16
                  or           tp, t5, t3
                  sllw         s2, s2, s7
                  add          s10, s8, t0
                  auipc        a5, 901711
                  srlw         sp, s0, t6
                  sltu         s11, s9, s3
                  slliw        s5, sp, 3
                  divu         a4, s3, s10
                  mul          s7, tp, t2
                  slliw        s2, t6, 5
                  addi         gp, a7, 820
                  divuw        s10, t6, t3
                  sraw         a0, a7, s3
                  sltu         s0, t3, t3
                  addw         ra, a0, s3
                  mulw         ra, tp, s5
                  mulw         s4, s10, a2
                  remuw        t4, s8, s2
                  srliw        a1, ra, 28
                  slliw        sp, t0, 10
                  addiw        s7, sp, 701
                  slti         a1, gp, 218
                  sllw         s3, a2, s9
                  sltu         s7, a6, t3
                  addw         t6, ra, a2
                  sltiu        s9, a7, 1366
                  divw         s4, a2, t3
                  mulh         a2, zero, a3
                  andi         s0, s6, -1893
                  mulh         t5, a4, s11
                  remw         t3, gp, s2
                  addi         s0, a3, 170
                  remu         gp, t4, s3
                  sra          s7, t4, gp
                  remw         s2, s3, a4
                  srl          gp, s1, s3
                  divw         s3, a2, t0
                  divuw        t5, a7, t3
                  sltu         t6, s8, s1
                  sll          s5, a4, zero
                  addiw        a4, a7, -1178
                  slt          s10, a7, a3
                  srlw         s4, s6, tp
                  andi         tp, a3, -1234
                  subw         s11, s6, t1
                  nop
                  sraiw        a3, a2, 31
                  slt          zero, s10, s2
                  addi         a5, s7, -689
                  divu         zero, s2, a7
                  slti         s0, s6, 1015
                  div          t4, t1, a3
                  xor          s9, s2, sp
                  ori          t4, s6, -1021
                  sltiu        sp, zero, 1419
                  slt          s11, s6, a6
                  mulh         zero, tp, t3
                  and          zero, s11, t4
                  mulw         t6, ra, a0
                  sltu         a2, s1, s10
                  sll          t0, t0, gp
                  slti         a4, a1, -342
                  andi         s9, s7, -1077
                  auipc        zero, 722864
                  div          ra, sp, s8
                  addi         s2, gp, 2032
                  srli         t4, a6, 53
                  add          s0, s3, s2
                  auipc        ra, 915822
                  divuw        s8, s11, a0
                  subw         zero, t1, t2
                  addw         a3, s1, zero
                  mulw         zero, t5, a5
                  addi         s0, t2, -1048
                  sub          zero, tp, sp
                  sra          s9, s10, s7
                  addiw        a2, s3, -1772
                  ori          sp, t4, -453
                  sll          zero, a6, t2
                  xor          s8, t4, a1
                  xori         a5, a4, 1140
                  sraw         s5, s6, s1
                  mulw         ra, ra, a5
                  and          a3, t4, s10
                  remuw        t3, a2, s4
                  addi         t5, s0, -790
                  xori         s8, a2, -1648
                  slti         s6, sp, -1164
                  srlw         s9, a2, gp
                  addw         s8, gp, s9
                  xor          s8, a7, s9
                  slti         s3, a7, -571
                  add          s10, t3, s10
                  addiw        zero, ra, 2013
                  remw         a4, a5, zero
                  sub          zero, a4, s10
                  rem          s6, s10, t5
                  rem          a5, a0, a0
                  or           sp, s6, s4
                  slliw        a3, zero, 16
                  auipc        s0, 755403
                  addw         t4, s5, s11
                  lui          s4, 604224
                  srliw        t2, a1, 28
                  divw         a5, t1, t3
                  remu         s6, s4, s2
                  slliw        s3, a3, 7
                  slliw        tp, t3, 4
                  sra          s0, a6, ra
                  sra          s3, t0, s4
                  slt          gp, a5, t1
                  divu         s8, a4, t6
                  xor          s0, s3, a6
                  slti         a4, t6, -736
                  srliw        sp, t0, 6
                  div          s8, t6, s5
                  or           s9, s6, a6
                  addiw        t0, t6, -716
                  addw         ra, a1, s8
                  subw         t4, t6, a1
                  sltiu        s11, a1, -162
                  add          s4, s6, sp
                  remu         s5, a1, gp
                  sllw         a3, t1, a6
                  divu         gp, t5, s0
                  mulhu        s5, tp, sp
                  sraiw        s6, a5, 22
                  sub          s4, gp, tp
                  srai         t3, s3, 21
                  remuw        t1, a4, a6
                  srliw        a0, a4, 29
                  add          t5, gp, s2
                  sub          a2, s2, a0
                  sll          ra, a2, s9
                  srlw         t1, s10, zero
                  slliw        t2, s4, 14
                  auipc        t3, 659248
                  remw         s3, s3, s8
                  sltu         ra, a2, t1
                  xori         s3, a3, -1587
                  sllw         a3, s4, s10
                  srlw         t2, t1, s6
                  andi         s9, s4, -33
                  or           t2, t1, s1
                  xor          s2, s6, s3
                  xori         s5, t3, -850
                  sllw         a0, a1, t3
                  mul          s3, s3, s10
                  xori         s11, a0, 406
                  divw         a2, tp, a2
                  remuw        t6, a0, t0
                  rem          s11, s10, ra
                  add          t5, t4, s9
                  addi         s3, sp, 9
                  srai         ra, a5, 11
                  sraiw        a2, s10, 14
                  addw         s8, s11, t4
                  ori          tp, s8, 1668
                  andi         t4, t0, 497
                  mulw         t0, t0, s11
                  xor          s0, s7, s10
                  andi         s5, t1, 123
                  mulw         s6, s8, s2
                  divw         s9, a5, s0
                  slt          s4, s7, s4
                  lui          a4, 990782
                  sraiw        s2, zero, 17
                  mulhsu       t3, s9, s6
                  srliw        t6, s2, 3
                  addi         t6, a5, -1382
                  rem          s3, s9, t4
                  sllw         s6, s10, s4
                  mulhsu       s0, tp, s5
                  or           tp, a5, s5
                  slli         t4, zero, 1
                  sraiw        t6, s2, 25
                  mulw         sp, a5, s10
                  sllw         a4, s9, gp
                  sltiu        a3, a7, -1625
                  mul          t2, t5, a4
                  mulhsu       a1, s11, s9
                  sra          s4, s4, s10
                  addi         t5, a4, -19
                  addi         t4, s9, -729
                  srliw        s2, s0, 25
                  slt          t6, a3, a1
                  addiw        t2, s10, -643
                  mulh         a0, a3, s7
                  auipc        a0, 809340
                  srliw        s7, a2, 17
                  auipc        s5, 710560
                  sltiu        s2, zero, 1317
                  lui          s0, 3164
                  sraiw        tp, a0, 12
                  mul          s4, s0, s7
                  mulhu        tp, a6, a3
                  auipc        t2, 481998
                  mul          s0, t2, tp
                  div          s10, t4, zero
                  slt          s5, t4, t2
                  subw         a3, a1, a5
                  and          s3, a7, ra
                  rem          s7, s10, s2
                  sltiu        sp, a1, -604
                  remu         t3, s9, t3
                  addw         s9, ra, s11
                  slliw        s0, t6, 10
                  mul          s11, s10, s6
                  mulhsu       s6, s0, zero
                  andi         a2, a1, -1778
                  slliw        s9, zero, 26
                  srliw        s10, a5, 27
                  ori          tp, t0, 1612
                  addiw        a1, s9, 661
                  srlw         s2, a7, t4
                  srlw         gp, s8, tp
                  sllw         a5, a6, t5
                  srliw        a0, t4, 25
                  sll          t6, a7, a5
                  andi         a2, s6, 516
                  ori          s10, a1, 2034
                  sltiu        s11, t2, 947
                  addiw        s2, s7, 888
                  and          a3, s6, s0
                  sra          s2, s3, a7
                  sraiw        t2, s3, 23
                  mulh         a4, s11, s1
                  srliw        tp, s5, 14
                  add          a2, s2, a1
                  and          gp, s5, a5
                  mulhsu       a4, s2, t0
                  divu         s4, s0, gp
                  divu         s4, s8, zero
                  add          s7, s2, sp
                  xori         a1, t2, -1060
                  subw         a2, s4, a0
                  div          s11, a0, ra
                  mulhu        tp, t3, s10
                  auipc        t0, 84035
                  slli         t1, t1, 9
                  sllw         tp, t1, t6
                  add          sp, s7, a7
                  srlw         s4, gp, t6
                  srli         s6, t0, 0
                  auipc        a0, 169827
                  sraw         s11, s9, zero
                  or           a5, tp, t5
                  mul          s4, a6, s1
                  srliw        t6, t4, 18
                  divu         s9, s2, s4
                  subw         s9, s5, s6
                  divu         sp, s1, a0
                  srli         s4, t1, 31
                  div          t1, ra, ra
                  rem          s2, t1, t1
                  sub          sp, t2, tp
                  remuw        sp, s0, s7
                  mul          a1, s5, sp
                  sraiw        s10, t6, 28
                  subw         s9, s3, s4
                  subw         s11, s2, t3
                  mulw         s8, a1, s3
                  sllw         s4, a7, s5
                  srl          a5, a4, a5
                  slt          a5, sp, s1
                  mul          zero, ra, a5
                  srliw        t4, a0, 27
                  addiw        s4, a4, 1135
                  mul          t1, s0, t1
                  divw         s7, t6, a6
                  or           zero, a4, a3
                  slli         ra, s8, 16
                  slliw        s4, s5, 21
                  addiw        s3, a6, -1458
                  sllw         t1, s11, s10
                  sraw         t0, s7, t0
                  addi         s10, sp, 767
                  slliw        s2, a5, 15
                  rem          s0, s6, a6
                  sll          t3, a1, s4
                  xori         a5, t4, -923
                  sub          t6, a3, t3
                  mulhu        s2, s5, ra
                  srai         t5, s5, 59
                  sll          ra, a3, a2
                  srai         s0, t6, 32
                  divuw        ra, t6, ra
                  slt          s0, t6, s11
                  addw         a0, a2, a7
                  divuw        sp, s3, t5
                  la x9, test_done
                  jalr x0, x9, 0
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
                  addi x17, x17, -4
                  sd  x16, (x17)
                  add x16, x17, zero
                  addi x16, x16, -256
                  sd  x1, 8(x16)
                  sd  x2, 16(x16)
                  sd  x3, 24(x16)
                  sd  x4, 32(x16)
                  sd  x5, 40(x16)
                  sd  x6, 48(x16)
                  sd  x7, 56(x16)
                  sd  x8, 64(x16)
                  sd  x9, 72(x16)
                  sd  x10, 80(x16)
                  sd  x11, 88(x16)
                  sd  x12, 96(x16)
                  sd  x13, 104(x16)
                  sd  x14, 112(x16)
                  sd  x15, 120(x16)
                  sd  x16, 128(x16)
                  sd  x17, 136(x16)
                  sd  x18, 144(x16)
                  sd  x19, 152(x16)
                  sd  x20, 160(x16)
                  sd  x21, 168(x16)
                  sd  x22, 176(x16)
                  sd  x23, 184(x16)
                  sd  x24, 192(x16)
                  sd  x25, 200(x16)
                  sd  x26, 208(x16)
                  sd  x27, 216(x16)
                  sd  x28, 224(x16)
                  sd  x29, 232(x16)
                  sd  x30, 240(x16)
                  sd  x31, 248(x16)
                  add x17, x16, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 63
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x14, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x14, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x14, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x14, x31, ecall_handler
                  li x31, 0x1
                  beq x14, x31, instr_fault_handler
                  li x31, 0x5
                  beq x14, x31, load_fault_handler
                  li x31, 0x7
                  beq x14, x31, store_fault_handler
                  li x31, 0xc
                  beq x14, x31, pt_fault_handler
                  li x31, 0xd
                  beq x14, x31, pt_fault_handler
                  li x31, 0xf
                  beq x14, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x14, _start
                  sd x0, 0(x14)
                  sd x1, 8(x14)
                  sd x2, 16(x14)
                  sd x3, 24(x14)
                  sd x4, 32(x14)
                  sd x5, 40(x14)
                  sd x6, 48(x14)
                  sd x7, 56(x14)
                  sd x8, 64(x14)
                  sd x9, 72(x14)
                  sd x10, 80(x14)
                  sd x11, 88(x14)
                  sd x12, 96(x14)
                  sd x13, 104(x14)
                  sd x14, 112(x14)
                  sd x15, 120(x14)
                  sd x16, 128(x14)
                  sd x17, 136(x14)
                  sd x18, 144(x14)
                  sd x19, 152(x14)
                  sd x20, 160(x14)
                  sd x21, 168(x14)
                  sd x22, 176(x14)
                  sd x23, 184(x14)
                  sd x24, 192(x14)
                  sd x25, 200(x14)
                  sd x26, 208(x14)
                  sd x27, 216(x14)
                  sd x28, 224(x14)
                  sd x29, 232(x14)
                  sd x30, 240(x14)
                  sd x31, 248(x14)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
                  mret

load_fault_handler:
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
                  mret

store_fault_handler:
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x16, x17, zero
                  ld  x1, 8(x16)
                  ld  x2, 16(x16)
                  ld  x3, 24(x16)
                  ld  x4, 32(x16)
                  ld  x5, 40(x16)
                  ld  x6, 48(x16)
                  ld  x7, 56(x16)
                  ld  x8, 64(x16)
                  ld  x9, 72(x16)
                  ld  x10, 80(x16)
                  ld  x11, 88(x16)
                  ld  x12, 96(x16)
                  ld  x13, 104(x16)
                  ld  x14, 112(x16)
                  ld  x15, 120(x16)
                  ld  x16, 128(x16)
                  ld  x17, 136(x16)
                  ld  x18, 144(x16)
                  ld  x19, 152(x16)
                  ld  x20, 160(x16)
                  ld  x21, 168(x16)
                  ld  x22, 176(x16)
                  ld  x23, 184(x16)
                  ld  x24, 192(x16)
                  ld  x25, 200(x16)
                  ld  x26, 208(x16)
                  ld  x27, 216(x16)
                  ld  x28, 224(x16)
                  ld  x29, 232(x16)
                  ld  x30, 240(x16)
                  ld  x31, 248(x16)
                  addi x16, x16, 256
                  add x17, x16, zero
                  ld  x16, (x17)
                  addi x17, x17, 4
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
