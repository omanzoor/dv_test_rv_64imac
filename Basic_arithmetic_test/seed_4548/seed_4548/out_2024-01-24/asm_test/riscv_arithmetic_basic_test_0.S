.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x5, 0x8000000000001105
                  csrw 0x301, x5
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x81800
                  csrw 0x300, x5 # MSTATUS
                  li x5, 0x0
                  csrw 0x304, x5 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x2
                  li x2, 0x1
                  li x3, 0x0
                  li x4, 0xc47bf28
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xc
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xf316cc26
                  li x12, 0x72471df4
                  li x13, 0x0
                  li x14, 0xf82dd610
                  li x15, 0xb
                  li x16, 0xcc8660a9
                  li x17, 0x0
                  li x18, 0xf4934409
                  li x19, 0x6280cbd5
                  li x21, 0x64f967d9
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x395ec182
                  li x27, 0x29f9cd63
                  li x28, 0x80000000
                  li x30, 0xb7383a7e
                  li x31, 0xe96992e2
                  la x29, user_stack_end
main:             add          a4, a5, a4
                  andi         t1, a7, 1646
                  mulh         a4, sp, a7
                  mul          s3, s8, t5
                  srl          ra, ra, t4
                  auipc        zero, 167993
                  subw         a5, s11, t0
                  addw         a7, sp, a3
                  divw         a2, s2, ra
                  slti         s7, ra, 1610
                  mulhsu       t1, a7, s11
                  slliw        a6, t6, 27
                  sltiu        a2, t6, -1196
                  slliw        s8, a6, 0
                  mulh         t1, t4, t5
                  srl          a5, a4, s0
                  sllw         zero, s2, zero
                  addiw        tp, a3, -1424
                  div          s8, t5, t0
                  sraiw        zero, a3, 14
                  slt          s11, s3, s2
                  addw         s6, tp, sp
                  nop
                  add          a3, s2, s8
                  lui          tp, 834172
                  xori         t0, a1, 448
                  addw         s8, a4, ra
                  sll          s5, a1, t1
                  div          s3, s10, a6
                  addi         a2, t2, -131
                  sub          gp, s6, s1
                  sltiu        s0, gp, -131
                  slli         a4, t4, 32
                  srli         s0, s7, 5
                  ori          ra, gp, 1768
                  subw         s5, a6, s7
                  lui          a2, 720139
                  addw         s10, t0, t5
                  addi         s0, s4, -820
                  srliw        s3, sp, 24
                  divu         gp, s10, s4
                  lui          s1, 128119
                  add          a0, zero, a6
                  remw         tp, gp, s11
                  sraiw        a6, sp, 4
                  div          s6, t1, s1
                  srli         s8, a7, 12
                  sll          s11, tp, s5
                  lui          t5, 935203
                  xori         s2, a4, 1052
                  srai         s0, s11, 42
                  srlw         gp, ra, s5
                  mulhu        t6, a1, a1
                  sraw         t3, a5, s4
                  sllw         s0, s7, t5
                  sra          sp, a3, a3
                  add          s1, s11, a4
                  mulw         s8, tp, t2
                  add          s8, s6, t6
                  sltu         a3, s11, a3
                  slt          t2, t6, t2
                  addw         a3, s4, t5
                  mulh         tp, tp, s9
                  sll          s3, zero, s5
                  srai         s6, t3, 57
                  srai         a3, t5, 55
                  slli         a1, t5, 28
                  and          t3, s10, a4
                  add          a5, a2, s1
                  srli         a5, s7, 19
                  rem          s10, s6, s5
                  mul          a7, s1, a3
                  addiw        t3, s11, 1611
                  sll          s3, s6, tp
                  srl          t3, t0, s1
                  sraw         a4, zero, a4
                  srl          s0, s10, tp
                  mulhu        sp, a5, s2
                  sra          t2, s6, a6
                  sraiw        gp, t3, 1
                  addiw        a4, t0, 1300
                  add          s1, s6, tp
                  sltu         t5, s5, a6
                  srai         a1, s5, 54
                  sltu         s0, a6, t6
                  xor          ra, a6, a0
                  slliw        a1, s1, 20
                  auipc        a7, 123879
                  remu         s2, s1, a6
                  divuw        t3, a4, a6
                  xori         s6, ra, -116
                  divw         s3, sp, a4
                  auipc        ra, 1012304
                  sltu         zero, t4, zero
                  ori          t0, s3, -1579
                  sraiw        zero, a0, 16
                  addi         s1, s4, -177
                  andi         zero, a6, -918
                  mulhu        ra, s4, a1
                  or           zero, s7, a4
                  slti         s7, s1, 293
                  slti         a3, a7, 1882
                  addiw        sp, s7, -1802
                  slli         ra, t4, 27
                  sltu         t3, a7, s9
                  srli         t2, t2, 62
                  slli         a7, s11, 15
                  slti         s11, s8, 591
                  addw         s6, s9, a2
                  mulhu        a1, gp, a3
                  or           t3, t1, a6
                  slliw        a0, a7, 23
                  mulh         a1, t3, s4
                  divw         t6, a5, s0
                  remw         s5, t1, s0
                  srl          s11, s5, s8
                  sllw         sp, a7, a7
                  slliw        s11, s1, 16
                  mulh         t1, s6, t4
                  nop
                  slliw        a1, a0, 11
                  srliw        t3, s6, 15
                  mulh         tp, s5, gp
                  divu         s10, s9, a0
                  srl          a7, s2, t2
                  divw         s0, t5, a2
                  slt          t1, s11, t5
                  lui          s5, 921874
                  add          zero, s11, t6
                  lui          t6, 972952
                  slt          gp, a4, s6
                  sltu         a2, a7, a7
                  mulhsu       a1, a4, a7
                  mulhu        s3, s6, a4
                  rem          s2, a4, t1
                  slt          t3, t3, s8
                  nop
                  mulhsu       s5, t6, a5
                  sllw         s5, s11, s5
                  sraw         t6, gp, a4
                  remuw        a4, t6, sp
                  addiw        a6, s0, 1349
                  divu         t3, s3, s2
                  remuw        a3, a2, s8
                  srai         s0, t5, 48
                  and          s0, t6, s8
                  remuw        s3, a2, gp
                  slli         t1, t5, 2
                  and          t2, s8, t3
                  sraiw        s7, s5, 2
                  and          a6, ra, s5
                  mulhsu       s5, s3, zero
                  sub          t0, s3, a7
                  sll          a2, a2, s11
                  mulw         s5, a7, s3
                  slli         zero, t5, 6
                  nop
                  srai         t6, a6, 11
                  mul          s1, sp, a6
                  lui          s1, 1022263
                  add          gp, s9, a7
                  divu         s0, s6, gp
                  mulhu        s8, s8, s9
                  subw         s10, gp, s0
                  mul          zero, t2, t0
                  srliw        a7, t6, 22
                  mul          s8, s2, s1
                  andi         s1, s7, 1673
                  srai         a6, s7, 57
                  auipc        a6, 75549
                  mulw         zero, s4, zero
                  remuw        ra, a0, sp
                  and          a4, t3, t4
                  sraw         tp, sp, a7
                  sub          a2, s7, gp
                  mulhu        t0, a7, ra
                  or           a6, zero, s9
                  divu         s0, s3, gp
                  slli         a1, s8, 43
                  remuw        s3, tp, ra
                  remw         s8, t1, t4
                  auipc        tp, 11317
                  or           s11, s6, ra
                  slt          t3, s9, t2
                  ori          tp, t2, 2010
                  xor          s0, a7, a7
                  add          a3, t5, s10
                  srai         t1, t3, 22
                  mulw         t6, sp, sp
                  rem          s7, s1, a7
                  remuw        ra, t1, sp
                  sra          a2, t6, s1
                  srliw        s8, ra, 23
                  ori          gp, t1, -18
                  sub          a7, s1, s4
                  slt          t6, s8, a4
                  srl          ra, s2, s0
                  subw         sp, t1, s1
                  sraiw        t3, s4, 1
                  rem          s5, a4, t1
                  sub          gp, t0, ra
                  sra          s8, s6, s7
                  and          t6, s0, s10
                  sub          tp, t4, a3
                  subw         t3, s6, s4
                  srl          sp, a1, s8
                  remuw        s0, s3, t3
                  sllw         zero, a0, s10
                  ori          s8, a1, -1066
                  sll          t1, a4, a5
                  ori          a6, s8, 1489
                  sraw         t6, a5, s2
                  sll          s5, ra, t1
                  srlw         a6, s5, s2
                  sraw         s6, t0, s9
                  and          s8, t2, s1
                  srl          a6, s11, a5
                  remu         zero, ra, t3
                  rem          t6, a5, a2
                  mul          gp, s3, s1
                  rem          t3, s7, a2
                  sraw         s6, a6, t6
                  sub          s6, s7, t4
                  subw         a2, s1, s7
                  sub          sp, ra, t3
                  sub          a7, s1, a2
                  sllw         s10, t1, t5
                  mulw         t1, s5, s1
                  andi         t3, ra, -229
                  mul          s5, ra, s7
                  lui          tp, 824364
                  divuw        t0, s5, t1
                  xor          s7, t4, tp
                  srai         t2, a2, 54
                  mulw         t6, a6, s11
                  slliw        t6, sp, 12
                  sll          ra, t2, t3
                  slli         s1, a1, 6
                  and          t3, gp, t0
                  rem          a3, s5, s8
                  divu         t0, t1, s10
                  slliw        t3, s1, 10
                  divuw        t3, s7, s2
                  srl          t1, tp, a1
                  mulw         t1, tp, t4
                  sll          s7, a2, t2
                  div          sp, ra, s6
                  addw         s10, s10, s4
                  slliw        t5, gp, 15
                  sltu         s7, t2, s5
                  ori          s5, s10, 1792
                  mulw         t5, t1, a2
                  divu         s2, sp, a7
                  slliw        a6, t6, 28
                  srliw        s7, t5, 24
                  srai         a2, s3, 59
                  slliw        s8, t3, 6
                  remuw        a5, a1, t2
                  slt          t3, t3, t1
                  or           t6, s4, t5
                  addw         a6, t6, a7
                  divuw        a3, sp, a1
                  remw         s0, t2, a6
                  sll          s11, a3, t6
                  srliw        s3, s3, 1
                  xor          a1, s3, s1
                  slli         s8, s5, 42
                  divuw        t2, a6, s3
                  srl          t6, gp, a7
                  divuw        tp, t2, t6
                  nop
                  slliw        ra, t1, 30
                  addi         ra, t0, -298
                  mulh         s1, t3, a7
                  addi         a1, s4, -979
                  ori          s5, t2, 292
                  remw         a7, a7, s0
                  lui          t2, 584548
                  divw         a1, s3, s2
                  mulh         s2, a7, s0
                  sltiu        gp, s10, -1267
                  sub          s2, s0, s0
                  divw         t5, zero, s2
                  ori          t5, t5, 530
                  sllw         s11, s5, a4
                  srai         t1, s0, 27
                  remuw        t0, s6, s6
                  sltiu        t0, gp, -320
                  mul          gp, s9, s2
                  lui          a7, 159085
                  ori          a3, tp, 370
                  lui          s0, 697895
                  sltu         s10, t2, a5
                  addi         s0, s8, 1455
                  xor          t0, s4, a1
                  sraw         sp, s8, a1
                  sllw         a4, s1, s4
                  slti         s10, t2, 731
                  sraw         t3, s8, s11
                  slliw        s11, tp, 0
                  mulhsu       t6, s5, s10
                  mulw         t3, a6, s6
                  divuw        s3, s6, a0
                  divw         a1, a1, t4
                  slliw        t3, s1, 27
                  andi         s5, s7, -908
                  sltiu        s1, a5, 180
                  sraiw        t2, a2, 3
                  rem          tp, s5, gp
                  divw         s11, t0, s9
                  sra          t2, sp, s10
                  mulh         s2, s9, t5
                  addiw        s5, a0, -359
                  remuw        s5, gp, t3
                  sllw         t1, s4, t1
                  slli         tp, s10, 31
                  addw         s5, gp, t6
                  remuw        t0, a3, s2
                  subw         t2, a1, t0
                  sraw         s1, a5, s9
                  remuw        a0, a6, a7
                  xori         s5, t1, -913
                  sraw         t2, a2, s8
                  div          a7, s3, s4
                  rem          zero, s8, s11
                  addiw        t5, gp, 352
                  slti         a2, s5, -1875
                  slliw        t0, a5, 4
                  srli         t3, s2, 57
                  sllw         s7, t1, s5
                  sraiw        sp, a5, 11
                  xori         gp, t4, -851
                  sraw         a3, s10, s8
                  sraiw        s10, s4, 15
                  slliw        s11, s6, 28
                  remu         t0, t3, t1
                  remw         t3, t3, s10
                  srlw         s0, a0, a5
                  slti         s7, t6, 512
                  addi         s5, t0, -1476
                  divu         t3, tp, tp
                  lui          gp, 823645
                  srl          ra, s11, a6
                  remw         gp, s10, s8
                  andi         gp, s11, -1630
                  mulhsu       a1, tp, t3
                  divuw        a4, a0, t3
                  or           t3, t6, t1
                  divuw        s2, ra, t4
                  divuw        s6, s0, a6
                  sll          s3, a3, sp
                  or           s2, s5, a1
                  srlw         a3, s7, a0
                  sltiu        s5, s5, -1365
                  slliw        t3, t1, 11
                  mulhu        s1, a1, s6
                  mulh         a2, s6, ra
                  sub          s0, a0, s6
                  mulh         a2, t6, a2
                  srliw        zero, zero, 9
                  ori          a4, a5, -1937
                  addi         t5, s5, -1899
                  divu         s3, s8, t0
                  addi         t0, t4, -153
                  slt          s11, s7, t2
                  remuw        zero, s9, s10
                  mulhu        a3, s0, a7
                  divuw        a7, a7, s5
                  sraiw        s0, s10, 19
                  addiw        a6, gp, -1817
                  sltiu        s1, a2, -1477
                  divu         s0, s1, tp
                  subw         a1, t0, s5
                  subw         s6, a1, t5
                  sraiw        zero, t0, 30
                  divu         a5, a4, t1
                  andi         a3, s11, 879
                  andi         t6, s9, -730
                  subw         zero, tp, t6
                  andi         a5, a6, 942
                  xor          s1, t3, a4
                  addi         gp, s11, -1744
                  rem          a6, t1, sp
                  divw         tp, t4, a0
                  slt          ra, s11, a0
                  divuw        t5, s0, s7
                  rem          a5, s10, a5
                  nop
                  div          ra, s4, s3
                  sraw         s1, s11, t4
                  divw         s10, s0, s2
                  sraiw        s11, a3, 24
                  sltiu        t6, a3, -785
                  mulhsu       s1, a4, zero
                  xori         t1, a6, 672
                  addi         s7, gp, -1129
                  div          s8, t3, t0
                  sllw         s1, t2, t2
                  sraw         t3, s5, gp
                  nop
                  remuw        sp, s4, s6
                  mulhsu       t3, a7, a3
                  srli         a2, s7, 58
                  addi         s10, a1, -1030
                  addi         gp, a3, -735
                  sltu         s0, sp, a6
                  remu         s1, s3, t2
                  sltiu        s11, s4, -1291
                  mulh         s6, s0, s1
                  divu         s8, s10, tp
                  srliw        s5, gp, 7
                  srli         a1, t5, 9
                  xori         s3, s5, 624
                  slli         s8, s6, 13
                  slli         a3, a7, 1
                  add          s0, a7, s11
                  nop
                  xor          s10, a1, s6
                  or           s6, s8, zero
                  divw         a1, a0, s1
                  rem          sp, tp, zero
                  addiw        t2, s10, -1584
                  sra          s11, t4, sp
                  divuw        s5, s3, s6
                  slt          tp, s0, ra
                  mulh         t2, t2, s10
                  sraiw        s1, a1, 4
                  srai         a3, a6, 12
                  srlw         tp, s2, zero
                  addiw        s2, s0, 889
                  srl          t3, s2, s8
                  nop
                  xor          s11, s5, s10
                  addw         s1, t0, a3
                  mulhu        s2, s8, t6
                  div          s3, s3, a7
                  sraw         a3, a0, t0
                  srliw        s7, ra, 31
                  sltu         t6, t1, t3
                  srlw         t3, s1, t1
                  divu         s5, gp, ra
                  slt          s0, s6, ra
                  addi         t0, t0, 1743
                  sub          s11, gp, sp
                  sllw         sp, tp, t1
                  or           tp, a0, s1
                  nop
                  xor          s3, t3, a6
                  andi         s11, ra, 279
                  divw         s5, t0, t6
                  andi         a0, t6, 1421
                  andi         a0, t3, 134
                  auipc        s1, 845523
                  sub          t0, a3, t4
                  sllw         a5, s2, t1
                  sub          zero, t4, a1
                  divw         a7, s9, a6
                  remw         s3, s7, ra
                  or           a7, s6, s4
                  divu         a3, a1, t1
                  and          s5, s11, t5
                  slli         a2, s0, 44
                  addw         tp, a3, t0
                  sraiw        s2, s9, 18
                  sltu         s11, t4, a2
                  and          gp, s0, t6
                  slti         a2, a3, 1655
                  srli         s11, a0, 24
                  mulh         t0, s0, s9
                  slti         s5, t3, -2047
                  remw         a6, s8, a4
                  auipc        a7, 128851
                  sraiw        s3, s3, 17
                  srl          s1, gp, t6
                  mulhsu       a0, s8, s2
                  mulhu        s3, t3, s6
                  sub          t5, s2, ra
                  or           s8, a7, a4
                  remw         s5, t6, s7
                  slti         a2, sp, 1129
                  slliw        a1, gp, 5
                  srliw        a3, a2, 15
                  nop
                  xor          a6, a1, s2
                  sub          a3, t0, s7
                  lui          s2, 564967
                  remuw        t6, s10, sp
                  addiw        sp, t3, 24
                  ori          a1, a4, -1602
                  sraiw        s5, a4, 22
                  addiw        a5, s3, 847
                  mulhu        tp, s0, t4
                  remuw        s7, ra, t2
                  xori         s0, tp, -1717
                  and          t3, a3, sp
                  addi         a7, s4, -1840
                  srl          t3, t6, s11
                  mulhu        a6, gp, s0
                  srliw        a7, t4, 27
                  sraiw        t2, a4, 17
                  subw         tp, t2, s7
                  srliw        s11, a4, 2
                  mulhu        a5, s4, s5
                  mulhu        s6, a5, s1
                  divuw        s8, t0, s4
                  div          s3, t6, s5
                  divw         s6, a6, a0
                  addw         gp, a6, a0
                  slti         t2, s5, 1877
                  slti         a1, zero, 1462
                  and          t1, t5, s8
                  add          s6, t1, t6
                  sltiu        a0, sp, 1695
                  xori         a6, a0, -149
                  or           s11, ra, sp
                  andi         s8, s10, 162
                  add          s2, a4, a0
                  andi         gp, s5, 980
                  and          s7, s5, tp
                  divu         s0, tp, t4
                  mulw         s8, a3, s0
                  divw         zero, gp, zero
                  add          s10, a1, t2
                  nop
                  sllw         s11, a5, a4
                  mulw         zero, s10, a6
                  nop
                  add          s1, t1, s6
                  and          sp, s9, t2
                  sll          t6, s6, s3
                  mulhu        t3, t6, s7
                  mul          a6, t5, zero
                  sltu         a6, a1, a4
                  lui          sp, 217527
                  xori         tp, a7, 25
                  divw         s3, sp, t1
                  auipc        a5, 214288
                  nop
                  divw         t2, s5, a7
                  sllw         t2, s2, t1
                  slti         t0, a1, 1303
                  remuw        s8, t5, s10
                  sll          a6, s5, t3
                  slti         s6, s9, 1192
                  mulhu        t3, t5, s5
                  xor          zero, s0, s2
                  xor          t6, zero, a3
                  sll          zero, s5, a5
                  addiw        a7, s6, -1727
                  subw         a3, s9, a4
                  addiw        a6, a7, 877
                  slliw        s8, tp, 23
                  srlw         t3, a0, t1
                  srlw         s8, t5, s1
                  auipc        sp, 252229
                  mulhsu       s7, a4, t6
                  div          a0, t1, a1
                  xor          sp, s8, t3
                  srli         a0, t3, 3
                  addiw        s5, t3, 327
                  remw         s3, a7, s0
                  sub          zero, s1, s6
                  auipc        sp, 774998
                  mul          s6, ra, a4
                  andi         s7, t3, 1679
                  slti         sp, a2, 447
                  mulhsu       t0, t4, gp
                  slli         tp, t5, 12
                  addw         s5, a1, t4
                  divu         sp, a0, a6
                  srai         s11, s5, 45
                  addiw        ra, s4, 443
                  andi         s3, t4, 1613
                  ori          s1, s10, 1623
                  sub          a0, s1, s9
                  addi         a6, s8, 1325
                  addiw        a6, t0, -315
                  slti         a2, tp, 1572
                  sraiw        s5, zero, 2
                  sraiw        zero, s9, 30
                  or           a6, s4, a2
                  sllw         t2, s0, a2
                  mulw         a5, t4, a0
                  add          s6, t0, zero
                  srl          s5, a4, a6
                  or           t2, a0, s10
                  andi         s5, s0, 253
                  divuw        sp, zero, gp
                  slli         s11, t1, 1
                  xori         s7, a0, 24
                  addw         sp, s10, t0
                  slt          t6, t6, a3
                  mulhsu       ra, gp, s0
                  sllw         sp, a0, a5
                  mulh         s7, a7, s5
                  srliw        t1, gp, 5
                  or           s8, t6, t2
                  sra          s5, s7, s9
                  slli         s1, s5, 30
                  mulhsu       s6, t1, s11
                  remw         a7, t0, s0
                  sub          a2, a4, t2
                  nop
                  xor          a6, zero, a6
                  mulw         s10, s10, a5
                  remuw        t2, s0, a2
                  slti         s5, t0, 713
                  add          zero, a6, a5
                  srlw         s7, s9, a3
                  divw         s6, a1, s7
                  srl          a5, gp, gp
                  slt          t2, a0, t3
                  srliw        t6, s7, 6
                  mulw         s8, s6, a4
                  divu         s6, s10, gp
                  mulhsu       a2, zero, s0
                  andi         a6, s0, 770
                  slli         gp, a5, 32
                  sltu         a4, a1, s8
                  divuw        a1, s3, s11
                  mulw         t6, a1, t6
                  divu         zero, t5, s4
                  mul          sp, s2, s5
                  divu         s10, t1, s11
                  sltu         a6, ra, t6
                  divu         sp, s9, ra
                  slt          s2, s4, s9
                  andi         sp, a1, 488
                  remw         t1, a0, s10
                  lui          a5, 355966
                  mul          t5, zero, s0
                  sraw         a7, s8, s3
                  sll          a6, a6, a4
                  slti         a6, s3, 1024
                  andi         t6, s5, 112
                  and          t2, a6, t4
                  rem          a5, t6, s0
                  divuw        s11, s6, gp
                  sltiu        s0, a4, 590
                  remuw        t5, s5, t6
                  auipc        a1, 774260
                  divuw        s6, t1, s7
                  srai         a7, s9, 13
                  mulhsu       s10, s11, s11
                  andi         s2, a7, 161
                  ori          gp, tp, -138
                  slli         gp, s4, 24
                  srlw         t6, s10, s0
                  sra          t3, a0, s2
                  addiw        t6, s9, -669
                  divuw        a3, a6, s10
                  andi         s5, a5, 1584
                  rem          s0, a2, s11
                  srai         zero, t3, 35
                  srai         t2, t4, 2
                  and          s3, a0, s6
                  remu         sp, a7, a5
                  add          a6, s10, s4
                  sraw         a7, gp, s9
                  ori          sp, t6, 1213
                  remuw        s5, t6, ra
                  srliw        ra, s9, 10
                  srlw         s2, s1, tp
                  slliw        a2, gp, 24
                  sltu         t6, t2, s3
                  ori          zero, t0, 1680
                  add          s11, s5, t5
                  or           t5, a3, s5
                  mul          a7, a6, s7
                  ori          ra, t2, 1974
                  remw         t1, a6, t4
                  srai         a0, s6, 55
                  and          ra, s4, s11
                  and          a1, s3, s11
                  andi         gp, a2, -1652
                  sltiu        s1, t3, -1410
                  srli         t0, s4, 23
                  sltu         t6, s9, s11
                  srliw        a5, sp, 9
                  slti         tp, s9, 1129
                  slt          t3, sp, a0
                  remw         a5, s6, a7
                  mulhu        t0, s7, a4
                  nop
                  divw         a2, t3, zero
                  srlw         s3, sp, a1
                  remuw        s10, t0, s4
                  div          a5, t6, a6
                  lui          a4, 567520
                  andi         s7, t0, 768
                  slli         s10, a0, 49
                  subw         s11, t1, sp
                  addi         t6, a5, -107
                  or           a2, s0, t6
                  remu         s2, s11, a5
                  mul          a1, s11, s1
                  addw         s5, s8, s8
                  sraw         tp, t5, zero
                  ori          zero, a2, -1247
                  remu         s2, t4, s3
                  mul          t6, s5, s8
                  srlw         a7, a2, s0
                  mulh         s10, t4, a6
                  srl          s10, s1, a2
                  divw         s11, a3, s8
                  lui          s3, 698567
                  mulhu        sp, a1, t3
                  and          s11, a3, a0
                  or           s3, s2, s5
                  remuw        a0, s7, s3
                  remu         s0, a0, a5
                  auipc        a1, 709717
                  mul          t6, ra, s6
                  srliw        a6, tp, 29
                  sltiu        a7, zero, -257
                  sraiw        sp, s8, 23
                  slti         a4, s0, 40
                  addw         s10, a3, a4
                  sub          t2, a3, s11
                  ori          a6, s0, -923
                  ori          a7, zero, 1852
                  srlw         s7, ra, s3
                  slliw        s7, a0, 18
                  divu         a5, t4, s2
                  or           a5, a0, t2
                  and          a0, t5, a6
                  srl          t2, a6, s1
                  xori         s8, s8, -711
                  remuw        a2, sp, s2
                  sra          zero, s11, zero
                  ori          t1, t1, 1966
                  mulhsu       ra, s8, s7
                  sra          a7, t3, t0
                  ori          t2, a3, 1066
                  remu         tp, a2, s6
                  rem          t6, ra, t0
                  subw         t5, a1, s7
                  and          t2, t2, s9
                  mul          a6, a5, t3
                  sra          s1, sp, t6
                  sub          s2, a0, s11
                  andi         sp, t3, 278
                  mulhsu       a1, a3, t3
                  rem          a2, t1, s4
                  xori         s5, t0, -842
                  slliw        a6, t1, 10
                  lui          t3, 1005669
                  xor          zero, s4, s2
                  slli         s1, s8, 9
                  sra          zero, t6, s1
                  sraw         a3, a7, s3
                  slliw        s7, s5, 1
                  div          s0, s10, sp
                  sltiu        t6, gp, -1147
                  slt          s1, t6, t1
                  lui          s11, 196380
                  divu         zero, s7, s3
                  sll          a6, a7, t2
                  sltu         zero, a6, s11
                  mulhu        s1, a1, s4
                  div          s7, s2, s8
                  and          t1, tp, s9
                  addiw        s7, a5, -790
                  andi         a5, a0, -1119
                  rem          t2, t4, ra
                  sllw         a6, s7, s9
                  mulhsu       sp, s0, s10
                  srli         gp, ra, 32
                  sraw         t0, s9, a3
                  and          t3, s10, t0
                  sraw         s2, s4, t3
                  remu         ra, ra, t6
                  mulhu        t3, a3, t6
                  remuw        t6, a2, s5
                  mulhu        a5, gp, t0
                  mulh         s8, s2, a2
                  mulhsu       s2, a3, s3
                  srai         s1, a6, 11
                  divu         s5, t2, t1
                  addiw        t6, a1, 492
                  xor          t2, a7, a7
                  ori          s5, t5, -1872
                  mulhu        a5, s8, t3
                  sltu         a0, sp, zero
                  mulhsu       a3, s2, a3
                  mul          t3, t2, tp
                  srli         tp, t1, 58
                  addi         a7, s3, -1525
                  div          t3, s3, a2
                  remu         gp, t0, s3
                  slt          a6, s10, t4
                  sllw         a3, gp, a5
                  slt          sp, zero, a4
                  mulw         a4, tp, a2
                  subw         t1, sp, s5
                  remu         s0, t1, s6
                  slliw        a4, t5, 15
                  srl          t2, s5, tp
                  rem          t5, a5, a3
                  srliw        t2, t0, 13
                  ori          t5, s7, 1661
                  remu         zero, s4, s9
                  sltu         s5, t3, sp
                  mulhsu       s11, gp, ra
                  srai         s5, s4, 4
                  xor          s8, t2, s8
                  slt          sp, s6, a4
                  slliw        a3, s10, 17
                  sra          a3, s7, a7
                  sll          t1, tp, zero
                  mulw         s6, s10, a5
                  and          s0, s11, zero
                  and          s1, a0, s8
                  sll          a7, a3, t2
                  auipc        s7, 605391
                  remuw        s8, a7, zero
                  nop
                  srlw         s8, a5, a2
                  sllw         t6, zero, a3
                  lui          a0, 244715
                  andi         t3, a4, 1032
                  sltu         t1, t2, a0
                  add          s8, a6, s7
                  slliw        s5, sp, 18
                  sltu         t2, s6, s6
                  sltiu        t0, s3, -986
                  slt          s3, a6, sp
                  mulhsu       s8, s2, s0
                  ori          s6, a1, 1734
                  and          s7, gp, a2
                  add          s8, t0, a1
                  mulw         a3, s3, t6
                  remuw        s0, a3, s1
                  auipc        a6, 714827
                  or           s6, t5, s11
                  sraw         a0, sp, s8
                  xor          a7, t2, a3
                  addi         a1, a1, -121
                  remuw        a2, zero, s2
                  add          t6, ra, s1
                  div          t5, s10, ra
                  slti         a4, a3, -2003
                  sll          ra, s2, sp
                  sraiw        a0, zero, 18
                  slti         s2, a1, 133
                  sll          s2, s10, s6
                  sltiu        s11, a6, 325
                  divw         gp, t1, a0
                  remw         s5, tp, a0
                  srl          t1, s4, ra
                  divuw        zero, a5, t2
                  slti         a4, a5, -1703
                  div          ra, s2, a7
                  sllw         t2, a6, s0
                  sltiu        ra, a3, -239
                  sltu         t3, ra, a6
                  addiw        t5, s2, -575
                  sllw         s6, s1, zero
                  srai         t3, t4, 63
                  and          s1, a2, a3
                  subw         t6, t5, a5
                  slti         t2, s5, -15
                  sub          a3, t6, t0
                  sltiu        gp, zero, 809
                  or           t0, s0, s5
                  divw         s0, a7, zero
                  mulh         t1, s8, s8
                  mulw         t2, s3, s10
                  divw         t1, s2, s11
                  mulh         a6, gp, s1
                  slli         a6, a7, 49
                  sraiw        t3, a0, 24
                  divw         tp, sp, zero
                  slti         s2, s2, -528
                  mulh         s0, s4, s7
                  slliw        t5, t3, 14
                  sllw         s5, a5, s2
                  xori         a1, t6, 437
                  addiw        s11, s10, 208
                  sra          a6, a6, t0
                  sub          a0, s8, zero
                  xor          a4, a3, gp
                  ori          a6, t5, 1037
                  addi         a5, zero, -501
                  mulhsu       s7, s2, s7
                  div          t3, a5, s6
                  srliw        a5, s8, 2
                  xor          s5, s6, a0
                  mulh         t5, s8, s5
                  lui          a7, 41845
                  remuw        gp, a3, zero
                  srai         ra, s6, 51
                  subw         gp, t0, a5
                  sub          t6, s10, a1
                  sllw         s5, tp, s9
                  xori         s0, s11, -847
                  slli         a5, gp, 42
                  srl          s3, s2, t6
                  remu         s10, s11, a7
                  mulhsu       s8, s7, s6
                  sltiu        s2, t0, -199
                  slti         gp, a7, 1435
                  andi         t3, t2, 745
                  sub          s6, s3, t4
                  rem          a4, s4, a0
                  srli         s7, s11, 25
                  slti         a1, s9, -985
                  sll          sp, s1, zero
                  mul          a6, a5, s10
                  sll          s0, a1, ra
                  sltu         a2, a2, t5
                  divu         a3, t5, sp
                  sraw         a4, t4, a0
                  add          t6, t5, s1
                  mulh         s10, tp, s8
                  subw         s6, s11, s3
                  div          a6, a3, t5
                  divu         a6, zero, s3
                  sltiu        t1, s5, -643
                  mulh         tp, sp, s0
                  divw         s11, s10, s11
                  remw         zero, t2, t3
                  srlw         s11, zero, t2
                  xor          sp, t6, a1
                  slti         a0, t6, -395
                  sraw         ra, t1, s10
                  mulhu        a6, t4, a1
                  remuw        zero, t4, t2
                  mul          gp, s7, s3
                  mulhu        a4, s9, tp
                  mul          s7, s5, a4
                  slt          s10, s11, t5
                  sub          s0, s2, t3
                  andi         s0, t1, 854
                  divw         s11, s11, zero
                  sltu         tp, gp, s1
                  divw         s5, s1, s3
                  andi         a5, s2, -1611
                  divu         t0, s5, a1
                  slli         s5, s2, 37
                  divw         s6, a3, s6
                  divuw        zero, t6, s5
                  slliw        s7, a2, 11
                  srliw        a1, s11, 9
                  remuw        s0, a3, t1
                  remw         s8, s9, a4
                  remu         s7, a5, ra
                  subw         s1, a2, s10
                  mulh         s5, s1, a7
                  sraw         a5, s0, s11
                  addw         a0, a0, t0
                  andi         s5, s2, 617
                  slti         s0, a6, -368
                  mulhu        s0, t1, a5
                  or           a7, a5, t6
                  sltiu        s10, gp, 539
                  xori         zero, a6, 520
                  mulhu        s8, s11, t0
                  or           s7, tp, a4
                  srlw         s2, t2, a7
                  sra          s10, s5, a2
                  mulw         a7, s4, t6
                  mul          t1, ra, s8
                  div          a0, tp, sp
                  nop
                  rem          a0, zero, t4
                  nop
                  remw         s8, s3, s0
                  addi         tp, t3, -1124
                  mulh         gp, s6, a5
                  slliw        ra, a3, 13
                  remw         s3, a1, a5
                  sub          a5, t6, a5
                  srai         s1, s6, 18
                  remw         tp, s11, sp
                  add          t1, a2, t6
                  xori         t1, s11, -1225
                  and          t2, t1, s11
                  mulw         s5, gp, t1
                  srl          a6, t1, a3
                  and          sp, s11, s5
                  srli         t6, zero, 63
                  remu         ra, a5, s3
                  remw         s0, a1, s11
                  slliw        t1, s5, 12
                  mulhsu       s7, s5, gp
                  remu         s0, s1, a0
                  remw         a4, ra, s6
                  addi         s10, s0, 570
                  ori          s7, a0, -1548
                  sra          a7, zero, a1
                  sltiu        ra, a4, 1408
                  xori         a3, s4, -272
                  sub          tp, s9, t5
                  addi         a2, t4, -849
                  addiw        sp, t1, -199
                  mul          sp, s10, s6
                  and          t3, tp, zero
                  remw         a2, a5, t6
                  div          t1, a4, s6
                  lui          t2, 407347
                  remuw        t2, gp, t2
                  sub          t3, tp, t0
                  remu         t2, a1, a3
                  rem          s11, ra, a0
                  xori         t6, s3, 1663
                  srli         a2, a4, 16
                  addi         s6, t4, 1695
                  lui          a7, 197158
                  addi         t3, t5, 1182
                  srl          gp, a0, s7
                  addiw        t1, s9, -557
                  div          a4, s6, t4
                  remu         s2, s9, a2
                  srli         a4, s6, 39
                  srli         zero, tp, 11
                  lui          s11, 164246
                  sltiu        a1, a2, -297
                  slliw        s11, zero, 4
                  slliw        s3, s4, 15
                  slt          a3, s0, tp
                  xor          a0, ra, s7
                  sltiu        s0, t1, 278
                  sub          s7, tp, s3
                  addiw        s7, a2, 1279
                  or           s7, t3, s9
                  srliw        t0, zero, 16
                  mul          tp, a0, s8
                  addiw        tp, s9, -1112
                  slli         a5, a7, 49
                  rem          s7, a6, zero
                  sra          a3, s5, t0
                  addi         s5, ra, 548
                  slt          s8, s7, a7
                  divw         s3, s1, t0
                  slt          a6, t6, a3
                  remu         t1, a3, zero
                  sll          t3, s5, s3
                  subw         s2, zero, a6
                  mul          s5, a6, s11
                  divw         a5, t5, s10
                  lui          t3, 73171
                  sll          ra, t0, a3
                  or           a4, zero, t0
                  xori         t5, a0, -814
                  sltu         gp, t6, s4
                  sllw         s6, t2, s7
                  div          ra, tp, s6
                  mulhsu       gp, a2, s2
                  xor          s0, s9, t6
                  slliw        t2, a1, 11
                  sraw         s7, ra, s9
                  div          s1, tp, s11
                  srai         s1, s11, 46
                  sllw         a7, a2, s8
                  srli         tp, t2, 55
                  sltiu        s10, a7, -499
                  srlw         t3, s3, s2
                  lui          t5, 771609
                  addw         gp, a7, a2
                  rem          t3, zero, tp
                  nop
                  remw         a7, t3, a6
                  remu         s3, s10, gp
                  mulh         a6, gp, a6
                  srlw         s7, a5, sp
                  srliw        t3, t6, 9
                  subw         sp, s7, zero
                  srliw        a5, t3, 10
                  sra          t2, t3, s6
                  mulhu        a4, s10, s8
                  xor          t2, gp, t2
                  and          a5, t6, s8
                  srlw         a0, t4, t0
                  addw         s2, s1, gp
                  srli         s10, s5, 15
                  srliw        s8, s7, 17
                  divw         s10, a4, a0
                  xori         t5, s11, 1105
                  srliw        tp, s9, 21
                  slli         a3, s3, 39
                  addw         t0, a5, a1
                  sltiu        s1, gp, -639
                  divu         s8, a7, t2
                  sraiw        t5, t3, 22
                  subw         s6, s2, s10
                  xori         tp, t4, 1751
                  nop
                  slliw        s3, t6, 24
                  subw         s7, a5, s6
                  addi         gp, tp, 424
                  sltu         zero, a6, a0
                  sll          s2, s0, t4
                  or           t6, a2, a0
                  srlw         s2, tp, sp
                  mul          s7, s9, s3
                  ori          s1, s4, 435
                  sra          a6, s2, t3
                  slli         t0, t3, 30
                  remuw        s11, ra, sp
                  rem          s6, s8, a5
                  and          a3, a7, t6
                  andi         a2, t4, -994
                  or           t6, zero, t6
                  xor          a3, a1, zero
                  addw         t0, t4, s2
                  mulw         t3, s0, tp
                  xor          s11, t2, t3
                  srai         s1, s8, 9
                  add          s11, t6, t2
                  sltu         t0, a1, s5
                  divu         s8, ra, a2
                  mulhsu       a0, a7, s11
                  subw         a6, s1, sp
                  addw         s3, t1, s3
                  auipc        s6, 793733
                  remw         a0, a5, s4
                  sraiw        s3, t1, 12
                  divu         s11, a3, s11
                  slt          tp, t3, t3
                  remw         s0, a3, zero
                  xori         tp, s3, -1909
                  sllw         t3, t3, t1
                  addiw        s6, t3, 1286
                  sub          t6, a4, gp
                  remuw        ra, s7, a7
                  slt          ra, t0, s4
                  remuw        s0, s0, gp
                  addw         s6, s6, s11
                  xor          t0, s8, t1
                  sltiu        s6, t3, 1842
                  sraiw        a7, s1, 31
                  sub          s10, a6, t5
                  auipc        a5, 1031667
                  mulhsu       s3, sp, t1
                  addiw        sp, a3, -1981
                  sltiu        s6, s0, -452
                  mulhu        t0, s2, t2
                  div          tp, gp, s4
                  lui          tp, 735934
                  addiw        t6, a2, 410
                  sraw         gp, ra, a5
                  divu         s3, s6, t0
                  remw         a2, a1, a5
                  mulhu        tp, s7, a4
                  addiw        t1, a1, 395
                  mulh         s8, t1, s4
                  divuw        t3, a5, a1
                  srli         s5, t2, 48
                  add          zero, t4, s2
                  mulh         t3, s4, tp
                  sllw         t1, t5, a4
                  remu         s1, t3, a1
                  ori          a6, a0, 530
                  srliw        a0, s2, 1
                  addw         s6, t1, s10
                  mul          sp, a2, s3
                  mulh         s1, tp, t1
                  sra          s1, a4, t6
                  slti         t2, s5, -556
                  subw         s8, zero, a5
                  sllw         a0, s6, s7
                  mulw         s8, a3, a7
                  nop
                  divw         s11, s9, s7
                  srai         a3, t5, 55
                  srl          sp, s1, t2
                  remu         s10, zero, a3
                  lui          sp, 22457
                  auipc        tp, 547663
                  mulw         t3, s11, a3
                  mulhu        s5, a3, a4
                  sub          s0, s2, gp
                  and          s2, t1, a3
                  subw         a3, t2, t2
                  srl          s7, s2, s2
                  or           s5, s3, t1
                  slt          s5, s6, s5
                  or           s7, s3, gp
                  auipc        t0, 291579
                  xori         s6, s8, -629
                  srliw        s5, a4, 12
                  div          s7, gp, s10
                  mulw         t5, a5, t1
                  divu         a3, t1, a7
                  mulh         a2, s1, s2
                  addiw        tp, tp, 175
                  srai         sp, sp, 54
                  srliw        a2, s9, 23
                  srli         s11, a1, 50
                  remu         tp, s3, sp
                  srl          a4, s4, s5
                  divu         s6, s9, gp
                  remuw        s2, t6, t4
                  nop
                  sllw         s6, a1, a3
                  andi         t0, s6, 1707
                  subw         s10, a5, t6
                  remu         a3, t3, ra
                  remw         a3, s10, s9
                  remw         s11, a4, t0
                  srli         a5, ra, 45
                  auipc        t2, 522242
                  xor          t0, a5, ra
                  slliw        s3, s9, 9
                  srl          s0, t3, t6
                  div          sp, a0, s11
                  xori         tp, s7, -1303
                  remuw        sp, t3, t6
                  div          ra, gp, a7
                  remu         a2, s11, sp
                  xori         t3, ra, -1601
                  xor          s3, a5, ra
                  mulh         t0, s10, s7
                  xori         t5, s0, 203
                  divu         s11, s8, s0
                  slti         a1, t4, -661
                  sub          zero, a3, t3
                  remuw        s8, s3, s6
                  slt          s0, a3, t5
                  mulh         s0, t5, sp
                  subw         t1, t1, s3
                  remuw        gp, a0, s4
                  subw         t5, a0, a1
                  and          t2, s4, s2
                  auipc        s10, 350599
                  rem          s3, t6, s4
                  lui          t5, 322971
                  andi         s8, tp, -1299
                  andi         s2, s0, -2034
                  remw         t3, t5, s8
                  slliw        ra, a1, 28
                  divu         tp, s4, s8
                  addiw        t0, t3, 158
                  auipc        s0, 641215
                  slli         s7, t2, 62
                  srl          gp, s4, t1
                  sra          gp, tp, s7
                  srliw        a4, t0, 20
                  sraw         s2, t5, s4
                  sra          gp, t4, a3
                  sltiu        ra, s10, -10
                  and          a6, a3, s4
                  sub          s0, a5, a6
                  remu         ra, t2, s8
                  subw         s7, t5, s5
                  sub          a6, t3, gp
                  mulh         a7, s9, s6
                  xori         tp, a0, -1305
                  mul          ra, t2, a3
                  sllw         s1, t0, s1
                  slti         s11, s8, 578
                  srli         a4, t6, 48
                  lui          a7, 992739
                  sub          t5, ra, a2
                  or           a3, gp, zero
                  slti         s10, a1, 841
                  remuw        a0, a4, s5
                  srai         s3, gp, 23
                  sltu         t1, t5, s9
                  sltiu        a1, a6, 764
                  mulw         s5, t3, s3
                  sraw         a2, a0, a3
                  srliw        a1, s7, 13
                  slli         t6, a7, 8
                  mulhsu       s2, s4, a4
                  divuw        gp, s4, t2
                  ori          s10, zero, 143
                  sraiw        gp, s1, 15
                  divu         ra, s5, s7
                  addiw        tp, t1, 1057
                  mulhsu       a6, a1, s6
                  mulhu        s3, a5, zero
                  mulhsu       a3, a4, a4
                  sltu         s11, s2, a4
                  srai         t3, s6, 40
                  subw         a2, t3, a2
                  divw         s7, a5, gp
                  mul          s11, ra, s8
                  addw         sp, s11, s9
                  ori          s5, a7, 1817
                  div          ra, a4, a6
                  remw         s10, ra, t4
                  remuw        s1, t5, t0
                  mulw         s1, sp, s2
                  divuw        s1, a7, a0
                  srl          s5, sp, gp
                  or           t3, t6, t5
                  subw         a7, t0, a5
                  slliw        s10, a2, 26
                  remuw        a5, tp, a1
                  nop
                  slti         s3, t1, -1231
                  srlw         s5, sp, s9
                  sraw         t0, a2, s2
                  slti         t5, s5, 1104
                  slti         s5, t4, 635
                  mulhu        t6, t5, s2
                  divuw        s1, s7, s10
                  sub          gp, sp, a1
                  sub          zero, t1, s0
                  lui          t0, 318923
                  mulw         t0, a4, s1
                  xor          s6, a4, s11
                  add          a7, t3, t5
                  slti         s2, t1, 1056
                  ori          gp, a2, 168
                  divu         s5, s5, zero
                  rem          s10, gp, tp
                  sub          t5, ra, a4
                  srl          a3, s3, s3
                  ori          s7, tp, 888
                  mul          s6, sp, a7
                  remuw        gp, t5, a4
                  andi         s10, s3, -184
                  srlw         gp, a3, s5
                  xori         zero, t1, -408
                  sraiw        s8, s3, 1
                  and          s0, s7, a2
                  addw         s2, a4, a0
                  xori         a5, a5, 33
                  divu         tp, s3, gp
                  srl          s2, sp, s8
                  nop
                  slti         zero, s2, -2019
                  subw         gp, s1, s5
                  remw         t1, a6, s9
                  div          t3, s9, s1
                  addiw        a4, t6, -1461
                  srliw        t3, a2, 5
                  slti         sp, ra, -524
                  slli         a7, s0, 50
                  nop
                  remw         a0, a6, a3
                  and          tp, t0, tp
                  sub          s10, s7, tp
                  mul          t2, a7, t6
                  remuw        ra, t1, zero
                  sra          tp, s4, a3
                  sraw         s3, s1, a0
                  remu         t6, s0, s8
                  srlw         tp, s6, zero
                  remw         s8, a1, s9
                  srli         s5, s5, 6
                  divuw        t0, tp, s8
                  sll          t6, s8, s9
                  divuw        s5, s11, a3
                  addiw        a6, s2, -1324
                  sll          a7, t1, s8
                  remw         a4, a7, t2
                  auipc        a2, 597452
                  or           a7, t2, t2
                  rem          s8, s9, s7
                  addi         s2, s2, -1249
                  remw         t3, s8, t4
                  mulhu        t1, a4, t6
                  mulhu        t2, s2, a0
                  srai         a0, s3, 40
                  mulh         t0, tp, t6
                  srli         a1, gp, 16
                  rem          zero, s0, t6
                  slti         s10, s10, 103
                  add          a4, sp, a6
                  addi         gp, tp, -1981
                  srai         s5, a0, 55
                  add          gp, zero, t3
                  srliw        zero, sp, 11
                  mulhsu       s3, a0, a3
                  divu         s3, sp, s4
                  or           t2, s2, tp
                  mulh         zero, s1, t3
                  mul          t6, s3, ra
                  and          t2, s11, a3
                  sraw         tp, t6, t1
                  mul          ra, a6, s6
                  addw         ra, t5, s3
                  sraw         sp, t3, tp
                  slti         t6, t3, -1492
                  mulhsu       t2, a0, t6
                  divw         s11, tp, t2
                  sltu         s11, s1, s1
                  srliw        zero, s2, 18
                  mulh         t5, s10, a1
                  srlw         t5, a4, a3
                  subw         zero, t1, t0
                  divw         s3, gp, s4
                  rem          t6, t1, zero
                  srli         a3, a3, 24
                  divw         zero, t3, zero
                  and          s11, a3, t0
                  remuw        gp, a4, a5
                  divw         t5, zero, t2
                  srlw         t5, t2, a0
                  auipc        t1, 556222
                  slliw        t5, s8, 21
                  sll          gp, t1, t0
                  slli         a4, t3, 31
                  add          t5, s6, s8
                  rem          ra, t0, t5
                  srli         ra, s9, 0
                  subw         t6, s6, s7
                  srai         s0, s4, 46
                  sra          s3, s3, s2
                  sltiu        s11, s0, -1666
                  sltiu        t5, s5, -704
                  sub          t5, s1, a7
                  remw         a2, s7, s1
                  addi         a5, a0, -1836
                  mulw         ra, s3, s9
                  mulw         t5, t3, zero
                  xor          t6, gp, a1
                  remu         t0, s8, t4
                  xor          s6, a4, s3
                  slliw        s11, s1, 18
                  slt          s0, s3, t4
                  sraiw        s6, a6, 10
                  auipc        s6, 899877
                  srl          t3, a2, zero
                  ori          s2, t0, -1472
                  srai         a1, a7, 45
                  subw         zero, a2, a1
                  andi         a7, s9, 1060
                  div          a4, t6, t6
                  sub          a4, a0, t1
                  srlw         t5, a1, s10
                  sltu         a1, a4, a7
                  xor          a3, s9, s8
                  addi         sp, t6, -516
                  andi         s10, s1, -15
                  sll          t6, t1, gp
                  addw         t3, t6, a5
                  mulh         t3, t0, t1
                  addi         ra, a0, 863
                  div          s5, s4, a1
                  addi         s11, tp, -1809
                  mulhu        s8, t4, sp
                  divw         s2, tp, t6
                  sub          s7, s8, a1
                  xori         tp, t1, 1827
                  sll          a4, s5, a5
                  xori         zero, s2, -782
                  remu         a3, zero, sp
                  subw         s11, a3, s5
                  div          s0, s0, t4
                  slt          s5, s8, a5
                  nop
                  srl          t0, t5, s6
                  divw         s2, sp, a5
                  sraiw        a0, a6, 24
                  sra          a7, t6, t2
                  srliw        s8, a1, 19
                  addi         s8, s0, 1812
                  subw         a5, s2, a4
                  sub          gp, s7, a4
                  slli         a4, tp, 57
                  auipc        t5, 103369
                  subw         a4, s4, t6
                  addw         s1, s5, t4
                  sllw         s0, s3, s0
                  addi         a6, s0, 788
                  srli         a7, s2, 28
                  sraw         gp, a7, a4
                  sltiu        s8, s1, -1422
                  mulw         a3, gp, a6
                  mulw         a5, t5, t6
                  sra          t6, a7, a0
                  slt          t5, t5, a2
                  mulh         t2, a4, zero
                  sllw         a3, t4, t3
                  or           s0, s0, t4
                  sllw         s2, t2, s11
                  auipc        sp, 143229
                  rem          tp, tp, a4
                  mul          t0, s8, gp
                  addi         sp, s5, -893
                  rem          s10, a6, tp
                  remu         a7, a0, t5
                  srl          a5, t1, a1
                  rem          a5, s2, zero
                  sltiu        s11, a7, 202
                  addiw        a3, s6, -1818
                  rem          ra, ra, a7
                  sllw         t2, ra, a6
                  add          t3, t2, tp
                  xor          s8, s0, ra
                  andi         t1, t5, 358
                  mulh         s1, s3, t5
                  div          s2, zero, a4
                  remu         t2, t4, t3
                  mulhsu       s11, t4, s5
                  add          ra, s1, a3
                  mulw         t6, s9, s2
                  srli         a6, zero, 54
                  sltu         t1, gp, t0
                  slt          t2, s9, s11
                  xor          s3, gp, t2
                  srliw        s8, s8, 24
                  sub          tp, t0, s6
                  xori         a6, s6, 1847
                  sltiu        gp, s9, 1675
                  mulh         a6, a2, zero
                  mul          a4, s1, a6
                  mul          a7, t1, a1
                  addi         t2, a5, -181
                  auipc        tp, 326266
                  xor          s5, a5, s11
                  srl          a0, sp, s6
                  sll          a1, s2, s11
                  ori          a3, t4, -569
                  ori          s1, a2, -994
                  divuw        gp, t5, s6
                  sltiu        t3, ra, -821
                  sllw         a3, s9, t1
                  sltiu        a7, t4, -1392
                  sub          s5, s5, s8
                  sub          s8, sp, a7
                  addiw        t6, sp, 181
                  nop
                  srli         s10, s1, 29
                  slli         s1, s4, 33
                  sraw         t6, zero, a6
                  sra          t1, t5, t1
                  divuw        tp, a1, t0
                  or           gp, ra, a5
                  sllw         s7, a5, s6
                  addiw        sp, zero, 580
                  sll          s5, a5, s8
                  srai         s3, s8, 52
                  addw         t5, tp, ra
                  auipc        a4, 38784
                  lui          a5, 311416
                  andi         s1, t6, -1314
                  mulh         zero, s5, ra
                  add          a7, s5, s0
                  slti         t0, t4, 371
                  nop
                  slliw        a2, s11, 26
                  divuw        s11, t6, s3
                  xor          s6, s5, s11
                  remuw        zero, t1, t0
                  addiw        t1, a7, -750
                  nop
                  srlw         gp, s8, t5
                  slli         s11, t4, 38
                  auipc        t6, 164430
                  mulh         s11, t5, s3
                  ori          a0, t1, 2020
                  sub          s0, s2, gp
                  mulhu        t2, s0, t6
                  sll          s10, s3, a2
                  srai         t0, t2, 2
                  andi         t1, s5, -2026
                  slti         s5, s5, -1327
                  xor          t3, s5, s9
                  andi         a6, a3, 1790
                  sra          t6, a3, t0
                  andi         a4, a6, 2042
                  auipc        gp, 246092
                  sraiw        s5, s7, 12
                  divu         tp, sp, s10
                  srlw         t5, s9, ra
                  divuw        tp, s1, a4
                  andi         s11, t5, -376
                  addiw        gp, s5, -720
                  andi         s10, t1, 1981
                  and          s8, a5, s11
                  lui          a7, 130461
                  ori          s2, a4, -1736
                  andi         s6, a0, 1922
                  addiw        s3, s9, -806
                  divuw        t2, s2, t2
                  srlw         tp, s11, t5
                  lui          sp, 325463
                  srl          a2, a0, a6
                  remuw        t6, a1, t6
                  sltiu        t3, t3, 1349
                  remuw        t0, s8, a2
                  xori         s6, a3, -439
                  mulh         s11, s1, a6
                  sll          t3, tp, gp
                  remw         t2, s8, a3
                  andi         t1, tp, 1931
                  and          t2, s6, a7
                  slt          s6, gp, ra
                  mulhsu       t5, ra, a7
                  xor          s0, sp, ra
                  andi         a3, s11, -1423
                  rem          a3, gp, a0
                  sll          s10, tp, t2
                  or           a0, t2, s4
                  remuw        a3, t6, a1
                  srl          a1, ra, s6
                  addw         a2, t0, s0
                  remw         sp, a7, a2
                  div          s7, t6, ra
                  slti         s8, s7, 903
                  divu         tp, s8, s3
                  sra          t2, s8, s0
                  slliw        s1, s10, 11
                  xori         s8, t3, 69
                  ori          a1, a4, -1040
                  srai         t1, a4, 59
                  and          t6, s4, t2
                  subw         t5, a7, gp
                  mulhsu       s5, a2, t5
                  divu         zero, t2, t6
                  slt          a0, s0, s8
                  sll          t0, a5, s3
                  addi         t6, s1, -814
                  addi         t1, t5, -113
                  sra          t0, sp, s0
                  and          s8, a4, s9
                  srlw         zero, s6, t1
                  sub          sp, s8, t0
                  and          a1, a2, a2
                  mulh         a5, a5, t6
                  add          s11, t1, t2
                  mulh         a1, s11, t4
                  slt          sp, s6, s9
                  mulw         t6, gp, t3
                  sll          s1, t3, zero
                  slli         a0, a4, 12
                  rem          t6, gp, t4
                  srai         zero, t5, 1
                  mulhsu       zero, s5, s4
                  auipc        s11, 881261
                  sraw         s8, t3, t0
                  div          s3, t2, a0
                  slli         a3, t2, 45
                  slt          s11, t0, t5
                  sra          s7, s4, s1
                  remu         t0, tp, s3
                  slliw        t6, a7, 4
                  andi         a7, t3, -2001
                  sraw         a4, t1, t2
                  divw         t0, t2, ra
                  srli         a0, a3, 32
                  remuw        s1, s0, t3
                  div          a2, s8, t1
                  srliw        a6, s6, 2
                  srlw         s7, s10, s8
                  srli         s3, s11, 28
                  sub          t6, s2, ra
                  srli         s0, s6, 27
                  rem          a2, s2, t3
                  add          s3, t3, t6
                  div          gp, a3, s5
                  sraiw        t6, tp, 28
                  ori          s7, t4, -145
                  srai         ra, a3, 22
                  xori         a1, gp, 192
                  slt          s7, s5, s3
                  or           s11, tp, a1
                  mulw         a0, t2, tp
                  auipc        s2, 371307
                  sraiw        a6, t0, 1
                  or           t3, s8, s9
                  sll          s6, a3, s7
                  andi         a4, a5, -349
                  lui          s5, 871937
                  sll          s8, s11, s2
                  sraw         a4, t0, s8
                  slt          a6, a1, a2
                  nop
                  divuw        a7, s4, s9
                  sraw         t5, a1, sp
                  subw         a3, a3, t3
                  addi         a6, t6, -640
                  subw         a2, gp, s0
                  or           a0, a3, sp
                  mul          s8, t2, a5
                  div          s2, s0, a3
                  addw         gp, s4, s7
                  mulhu        s6, s3, sp
                  rem          a5, t5, gp
                  nop
                  nop
                  sllw         t1, a2, sp
                  sllw         s11, s3, s11
                  sraiw        t1, s5, 21
                  remuw        s1, s10, a7
                  srlw         a7, a3, a3
                  sllw         s8, a7, s9
                  rem          s3, s9, s8
                  mulh         a4, t2, s4
                  and          zero, s0, s3
                  slt          zero, s11, s9
                  xori         s6, s1, -507
                  divu         t1, a2, t4
                  sra          s7, t0, s8
                  remw         zero, t5, s6
                  subw         s10, a7, tp
                  slt          t2, a2, a6
                  divuw        t6, s8, a2
                  nop
                  mul          s8, ra, a3
                  subw         s6, t1, s3
                  remuw        a4, s11, a1
                  divw         s8, a6, a6
                  divuw        tp, t4, a1
                  addi         a0, a1, 1999
                  subw         s5, t1, s7
                  sraiw        tp, zero, 0
                  xor          a7, t2, a7
                  srlw         a3, s3, t1
                  and          sp, a6, t5
                  or           a5, a1, t1
                  divuw        s10, t0, t5
                  sltu         a3, a7, s4
                  addi         a0, a4, -676
                  divu         a0, gp, s3
                  mul          s5, s9, a6
                  divu         ra, t3, s9
                  divw         tp, gp, ra
                  nop
                  mulhu        a4, s7, t3
                  divw         s11, a3, t4
                  div          s3, a0, a3
                  slliw        a7, sp, 26
                  rem          s5, s6, s7
                  sllw         s11, a3, s3
                  slliw        a1, s10, 19
                  sra          a4, s7, t6
                  sllw         a6, a1, a0
                  nop
                  divuw        t5, a6, s7
                  sllw         t0, t1, t0
                  or           s8, a4, ra
                  remu         s1, zero, t0
                  rem          t3, a4, s10
                  mulh         gp, t3, s11
                  divw         s1, ra, t4
                  addi         s5, s1, -188
                  mulh         s7, s2, t6
                  srli         a5, s4, 3
                  mulhsu       tp, t3, tp
                  addi         sp, s10, 1130
                  slli         s11, a7, 20
                  srlw         s10, t5, a6
                  srliw        s0, s5, 8
                  sltu         t3, t6, s9
                  and          s0, s2, s4
                  srai         t0, s8, 42
                  addw         gp, zero, t4
                  divu         a4, s7, s11
                  slt          s2, zero, a5
                  xori         s6, a2, -391
                  srliw        a6, t5, 24
                  lui          a6, 497730
                  mul          s3, s7, gp
                  sltu         a5, zero, a5
                  subw         t1, t4, s8
                  or           a4, t0, t3
                  divu         t6, a2, a4
                  auipc        s10, 625858
                  divuw        a6, s9, s9
                  mulh         a7, s2, t5
                  divuw        s0, gp, t3
                  auipc        a4, 630134
                  slti         s8, a3, -1631
                  sltiu        ra, a1, 1428
                  mulhsu       s6, s1, s0
                  sll          t5, s2, a3
                  div          t3, t1, a1
                  sraw         a3, a1, t0
                  lui          tp, 650833
                  rem          s8, s8, a5
                  srai         t3, t4, 32
                  xori         s1, s10, -654
                  srlw         s6, t2, t3
                  mul          zero, t6, zero
                  srai         s11, t4, 27
                  mul          s8, a3, s6
                  slt          a3, a4, t3
                  nop
                  sra          a6, a0, a6
                  rem          s5, ra, ra
                  srliw        t0, t3, 11
                  sraiw        s5, a3, 22
                  sraiw        zero, s6, 23
                  srl          ra, t0, ra
                  slt          a3, s7, s3
                  sllw         a7, sp, t5
                  sra          zero, a4, a7
                  remu         t3, s4, t5
                  srlw         gp, s9, gp
                  sra          a3, s2, t0
                  ori          sp, ra, 1007
                  divw         a3, t2, t6
                  xor          a0, s10, t1
                  divu         a0, a2, a6
                  remuw        a4, a6, s11
                  lui          t2, 340745
                  srai         s6, a7, 47
                  addiw        s1, s0, 376
                  addw         a3, s11, s3
                  remu         s1, t5, s3
                  srai         gp, t5, 2
                  sltu         a3, s7, ra
                  xor          a2, gp, gp
                  rem          sp, gp, a4
                  divw         s7, s2, s5
                  sltu         t2, s10, t1
                  srliw        t3, t0, 11
                  ori          t5, s7, -1649
                  mulh         s3, t1, s0
                  sllw         a6, a6, a4
                  mul          zero, s9, s8
                  sraiw        a7, s4, 21
                  sraiw        a6, tp, 0
                  divuw        t6, a3, t3
                  mul          t6, a7, s0
                  addw         s7, a0, s10
                  xor          ra, s8, a3
                  srli         s6, sp, 61
                  xor          a0, s9, t1
                  divuw        a2, a0, a6
                  ori          s8, s2, -550
                  srlw         gp, s4, a2
                  slliw        s2, s1, 5
                  and          a3, s0, t5
                  nop
                  andi         t5, s1, 1758
                  add          t5, t0, s5
                  addw         s8, s2, gp
                  sra          a5, a3, a0
                  ori          sp, a7, 2019
                  sll          a3, t0, s3
                  divuw        t2, a7, gp
                  and          s3, t5, s6
                  sra          s8, s8, a3
                  divu         t1, t2, sp
                  addw         s0, t0, t1
                  xori         sp, s10, -349
                  lui          s5, 804550
                  sra          s11, s7, t5
                  srli         t5, tp, 46
                  sra          s3, s6, s8
                  sllw         a1, t3, s6
                  rem          a7, s2, a5
                  divuw        t2, tp, s2
                  sra          s10, s1, a6
                  divu         s0, t6, t6
                  sltiu        t2, tp, 1458
                  subw         s11, s8, t1
                  sra          s11, s1, a1
                  lui          s8, 1031957
                  divuw        gp, s4, s3
                  divu         a7, t2, s4
                  mulh         t3, s11, a5
                  sraiw        t2, a2, 5
                  or           t1, zero, a7
                  mulw         t5, s6, s4
                  sllw         a7, ra, s2
                  sllw         gp, t3, tp
                  slli         a5, a3, 61
                  sra          a7, s10, s10
                  rem          sp, s5, sp
                  sra          t0, s6, t4
                  mulh         a3, s11, t3
                  addw         a0, zero, a7
                  lui          s2, 709383
                  sraw         s6, s10, a4
                  lui          t0, 901580
                  remw         s11, s0, t0
                  sltiu        a1, s11, 110
                  mulh         s7, s6, s8
                  sllw         t3, t4, s1
                  nop
                  divuw        tp, a5, gp
                  sraiw        a1, s8, 26
                  add          s8, t4, t6
                  ori          a4, a2, -1426
                  slliw        s0, t3, 21
                  mulhu        s6, a7, a3
                  srli         ra, a7, 37
                  remuw        a2, t0, s5
                  srliw        t1, sp, 15
                  srlw         s5, s4, t0
                  divuw        zero, tp, s6
                  andi         ra, t1, -137
                  slti         a5, a6, -224
                  lui          s3, 676461
                  slti         a2, t1, 1040
                  rem          tp, s4, s8
                  slliw        a4, a0, 6
                  remuw        a6, s7, s0
                  subw         a6, s6, zero
                  slti         a1, t3, -30
                  add          s11, t2, a6
                  remuw        s6, s11, t6
                  srli         tp, s5, 24
                  sll          s1, s7, tp
                  srai         s6, gp, 4
                  sraw         t1, s4, a7
                  xori         s0, t6, -1492
                  subw         a7, s10, a3
                  slti         t6, s9, 1543
                  mul          t6, s7, gp
                  mulhu        s0, s9, s4
                  remuw        ra, s10, a1
                  mulhu        a3, s10, s0
                  sltiu        s5, s9, 1268
                  remuw        zero, sp, sp
                  srlw         s8, t1, s6
                  remu         t2, a0, tp
                  mulhu        a5, s10, t0
                  auipc        s8, 285134
                  and          a7, s6, s2
                  ori          s1, t3, -1226
                  andi         gp, s4, -214
                  div          s5, s2, a3
                  add          a7, zero, a0
                  divw         a2, tp, s1
                  rem          a6, a7, s8
                  slt          t5, s0, s4
                  sltiu        a7, t5, -561
                  andi         s5, a1, 287
                  sub          a0, s1, s10
                  addw         t3, t5, s4
                  sraw         t2, s2, a1
                  divw         t0, a7, t2
                  and          sp, a7, s9
                  sraw         zero, a6, t6
                  addw         s5, t0, s5
                  mul          t3, s7, a7
                  div          gp, s9, s4
                  srliw        s6, s11, 14
                  remw         a3, a6, gp
                  sraiw        a3, a0, 22
                  sltiu        s5, a2, -1817
                  addw         a4, s11, gp
                  srai         s10, sp, 60
                  slli         a4, t0, 35
                  auipc        t3, 1009492
                  nop
                  srliw        a2, t6, 25
                  xor          a4, s1, s1
                  subw         a1, a5, sp
                  div          a7, a3, s8
                  subw         tp, t4, t4
                  slliw        s8, s1, 5
                  mulhsu       tp, zero, t3
                  mulh         a4, s1, t6
                  srai         a6, a7, 4
                  remu         ra, s7, s0
                  sltiu        a1, t5, -316
                  mul          s2, s0, s8
                  mul          t0, zero, t0
                  andi         a6, s4, 198
                  sub          s7, t1, a0
                  sltu         s0, s11, sp
                  sltu         a5, t1, s7
                  mulw         sp, s5, t1
                  sub          s5, t5, ra
                  xori         zero, s11, -1633
                  andi         s1, a7, -1495
                  sltiu        t1, a1, -879
                  sltu         t2, t1, a0
                  srl          t2, sp, s6
                  srliw        s3, ra, 31
                  andi         t3, gp, -1211
                  remu         a6, a1, s8
                  div          a7, t5, s7
                  srl          a3, s9, sp
                  mulh         s0, a7, tp
                  sraiw        s6, s11, 8
                  auipc        t3, 605905
                  divu         sp, t1, t3
                  mulhsu       t3, s3, s3
                  and          s0, t5, s10
                  remw         s5, ra, s0
                  divu         a3, s3, tp
                  remw         ra, t4, tp
                  sra          zero, a1, t3
                  sltu         t1, a5, s4
                  sll          a1, ra, a1
                  nop
                  sra          s5, sp, s5
                  nop
                  sltu         a1, zero, t1
                  divu         s1, a4, t1
                  or           s0, a6, t4
                  rem          s6, a4, s8
                  mulw         s3, s6, sp
                  mulw         t2, a1, a6
                  srai         s6, a0, 48
                  mulhu        tp, t4, gp
                  lui          t5, 856063
                  divu         s3, t6, s6
                  sraiw        s0, s5, 29
                  remuw        sp, a7, s1
                  lui          a6, 996355
                  mulhsu       s6, a2, s2
                  divw         s8, t4, tp
                  srai         a5, t3, 18
                  ori          t6, s4, 549
                  andi         s7, a1, -1545
                  remu         s0, s7, gp
                  sraiw        t3, ra, 31
                  and          a6, s7, s6
                  srai         s10, a1, 1
                  remuw        gp, t0, ra
                  srli         t2, sp, 48
                  sub          a6, gp, a7
                  sraw         a1, s3, s10
                  addi         a3, a4, -591
                  addi         t6, a2, -1794
                  subw         s7, t1, a7
                  lui          t5, 1009304
                  rem          a5, t0, t2
                  andi         sp, s3, 1025
                  srliw        s5, t0, 12
                  sllw         s3, s10, s11
                  sll          s1, t5, zero
                  divu         t2, ra, t2
                  srlw         s0, a2, tp
                  sll          a7, a4, s7
                  sllw         s5, s3, sp
                  mulhu        a6, t6, s2
                  slli         s8, a7, 28
                  mulhu        a2, a0, s1
                  slliw        t1, ra, 6
                  div          s1, tp, t3
                  sra          zero, a5, a2
                  mul          t6, s6, a1
                  srlw         tp, s1, a0
                  add          s2, s8, s6
                  divuw        a0, s1, a4
                  sra          s7, t1, a7
                  mul          a3, s1, a5
                  xor          s10, t2, a1
                  div          t0, s1, s4
                  nop
                  auipc        t2, 519109
                  srl          a5, a6, s9
                  nop
                  sll          t0, a3, a4
                  slliw        s6, zero, 10
                  srli         sp, t1, 58
                  remu         a5, t4, t3
                  srl          a1, a3, t2
                  divu         s2, s2, t6
                  lui          a4, 1033572
                  xor          sp, tp, s0
                  sltiu        a7, t1, -1064
                  lui          t0, 469717
                  slti         t1, t4, -98
                  subw         s1, t0, s1
                  rem          a3, t4, s11
                  nop
                  slliw        s5, t1, 22
                  ori          s5, a1, -1335
                  mulh         t1, s5, gp
                  mulhsu       s5, zero, s7
                  remuw        sp, tp, a7
                  srli         s11, a0, 31
                  rem          t3, s8, s1
                  addi         s6, s0, 1662
                  sra          zero, s4, t5
                  mulhsu       a0, t6, gp
                  sra          sp, a3, s8
                  subw         a5, t0, t6
                  srai         a7, t1, 14
                  auipc        a5, 543121
                  auipc        gp, 497597
                  sraiw        t0, s3, 0
                  mulw         a7, a4, a3
                  divw         t1, s6, a0
                  subw         s3, t0, s0
                  sllw         s6, a2, s1
                  srliw        t2, a6, 16
                  srliw        s5, a5, 8
                  sraw         s0, s7, t2
                  slliw        a3, a4, 6
                  srl          s3, a3, t5
                  addi         a2, t5, 1835
                  addiw        s5, s11, 1881
                  xori         t0, s0, -1284
                  addw         a7, s10, s2
                  remuw        t3, s0, gp
                  addw         tp, s10, t1
                  nop
                  srai         s7, sp, 22
                  mul          a3, s4, t5
                  nop
                  lui          a3, 776921
                  subw         ra, s11, zero
                  mulhu        ra, s3, tp
                  sub          zero, sp, a1
                  divuw        s0, s3, t3
                  or           sp, s2, gp
                  divu         t6, t1, a6
                  mulhsu       s11, t3, t6
                  addw         s5, s9, s1
                  remu         t1, t6, a5
                  or           s0, a7, a4
                  subw         s5, gp, s9
                  sll          s6, t1, s5
                  mulhu        s2, a2, s4
                  slli         t2, t2, 54
                  srliw        a3, s6, 5
                  remuw        t3, a7, a0
                  auipc        t1, 690884
                  add          s8, zero, s3
                  xor          a7, a0, s3
                  sraw         zero, s11, gp
                  nop
                  sub          s10, t4, sp
                  add          t2, a5, t5
                  slt          s5, s8, s6
                  sltu         a3, gp, ra
                  sraiw        s2, s2, 24
                  addi         t3, s3, -437
                  nop
                  srli         a7, s8, 31
                  div          s5, zero, s1
                  remuw        s10, s3, s11
                  lui          a2, 721806
                  andi         s7, tp, 398
                  slliw        tp, a6, 22
                  slt          s5, s11, a6
                  remuw        t5, a3, s7
                  addw         a2, s11, t6
                  divu         t0, s3, s5
                  remuw        t6, s7, s6
                  mulh         gp, sp, tp
                  sra          ra, ra, t0
                  mulhu        t5, s11, ra
                  andi         a4, t6, -1039
                  slli         tp, a0, 41
                  slti         a6, a6, -1778
                  mul          s6, sp, t0
                  divw         s3, a5, s1
                  sraw         s2, t6, s4
                  div          t2, s7, s11
                  srliw        a4, s8, 6
                  div          s6, tp, t6
                  div          a3, t0, s11
                  sltiu        s11, zero, 1611
                  srl          t5, a0, tp
                  rem          a0, a2, s10
                  sllw         t1, zero, t4
                  divuw        s10, tp, a2
                  sra          s11, s11, a6
                  sraw         s8, s10, t2
                  ori          s1, tp, 1475
                  srliw        a5, t2, 20
                  remw         a7, s11, s10
                  sll          a6, a1, s9
                  addiw        s6, a2, -825
                  nop
                  xor          t5, a3, a2
                  sll          tp, s4, sp
                  xori         s2, s3, -1250
                  remuw        s8, sp, s5
                  divw         a7, t5, gp
                  sra          s2, s1, a0
                  sll          s0, s2, a1
                  mulhsu       a7, t6, sp
                  sll          t5, s11, s2
                  remuw        t5, s7, a6
                  auipc        s8, 855782
                  sub          s11, a7, t4
                  divuw        a6, t3, a0
                  xori         s11, a5, 1909
                  sllw         t1, t2, s4
                  auipc        a2, 521955
                  addw         tp, t2, s1
                  div          s5, t1, s1
                  mul          a6, t5, s3
                  auipc        s8, 672562
                  slliw        sp, a2, 5
                  and          a6, t0, zero
                  slli         s1, t0, 62
                  remw         t0, a4, a6
                  slli         tp, t0, 22
                  mulhu        s2, a3, zero
                  add          a7, a2, t0
                  addiw        a7, gp, 1075
                  add          s2, s0, t5
                  mulw         a1, zero, zero
                  add          t3, t1, s5
                  div          t3, ra, s0
                  mulw         sp, tp, t3
                  srli         a5, s4, 41
                  srli         tp, s6, 16
                  nop
                  addi         s6, s2, 1681
                  srli         s11, t1, 1
                  xor          a0, s7, t1
                  lui          a2, 1001163
                  lui          zero, 101276
                  divuw        a6, t5, gp
                  remu         a3, a1, t5
                  mulhu        t3, s3, s11
                  nop
                  divuw        s10, a7, s5
                  addi         a1, t6, -1677
                  addiw        a0, s1, 589
                  mulh         s6, t3, s1
                  addiw        a7, t0, -1286
                  srlw         a7, ra, ra
                  subw         s10, s0, ra
                  mulhu        s6, s3, sp
                  addw         a6, s10, t5
                  andi         a4, a3, 204
                  srli         s8, sp, 63
                  srai         t0, a0, 3
                  sra          s5, tp, tp
                  srai         s11, gp, 4
                  sraiw        s11, s5, 25
                  srli         a5, t5, 37
                  addiw        tp, t2, 25
                  div          sp, s4, a5
                  remuw        a7, t1, a6
                  mulw         s7, s8, sp
                  addw         a4, t5, s7
                  add          t6, t1, s7
                  sllw         s7, t6, t0
                  divw         s7, tp, t2
                  mulhu        t3, s3, s2
                  sll          s5, s6, t5
                  lui          ra, 487181
                  add          t0, a3, t3
                  srl          a5, s1, s9
                  xori         s3, sp, 1108
                  srliw        s5, t3, 6
                  lui          s8, 57121
                  remu         t3, a3, zero
                  slt          s2, a7, a4
                  sllw         a6, t2, s5
                  xori         a3, t4, 2034
                  remw         s5, t2, s7
                  sltu         a3, s1, a4
                  addi         s1, s0, -871
                  rem          s8, s2, a6
                  sub          t3, t2, t0
                  srlw         s11, s2, tp
                  remw         a3, ra, a4
                  sra          s2, t6, t0
                  add          s2, s0, s11
                  sraw         s6, zero, s0
                  mul          s8, s7, a3
                  slli         a6, sp, 54
                  sllw         a1, t3, t4
                  sll          a5, s11, s7
                  and          s8, t6, a2
                  srliw        t2, sp, 19
                  xori         s5, ra, 1404
                  mulhu        sp, tp, tp
                  addi         a1, t0, -767
                  and          s6, a0, t1
                  mulh         s5, t4, s3
                  srai         s11, s5, 54
                  sra          a2, a1, s7
                  sraw         sp, a4, s0
                  divu         s3, s7, a4
                  srl          s6, zero, t0
                  div          gp, t2, gp
                  and          zero, s7, t5
                  lui          a7, 712484
                  srli         a2, s9, 13
                  xor          s5, t1, a5
                  mulh         a5, ra, zero
                  mul          s11, a1, gp
                  rem          s6, tp, t3
                  xori         sp, s4, -609
                  sraiw        sp, t0, 11
                  sltiu        a7, ra, -328
                  xor          a7, s10, s4
                  mulhu        s2, t4, s5
                  subw         a5, s5, t5
                  div          s11, ra, s6
                  rem          ra, gp, s9
                  add          t2, s4, t3
                  remu         s5, a0, s7
                  lui          a1, 301683
                  mulhu        a0, t2, t6
                  divw         a5, s11, zero
                  xor          t1, s11, sp
                  lui          tp, 1048531
                  and          t6, s10, t1
                  rem          t2, a7, t1
                  sltiu        s2, s5, 424
                  remuw        t6, zero, s1
                  srliw        a6, s9, 7
                  mulhu        t5, t0, s6
                  divuw        sp, t4, t6
                  mulw         gp, t0, t4
                  sll          t6, a7, a1
                  slti         s2, s0, -990
                  addiw        t0, t4, -1661
                  and          a7, sp, s0
                  sltu         s8, s2, t4
                  srli         a7, s4, 2
                  lui          t0, 458328
                  remuw        t2, s11, a2
                  divw         zero, a7, zero
                  rem          zero, t6, a7
                  remw         a5, t4, s7
                  mul          a6, a3, s11
                  lui          zero, 697638
                  nop
                  srliw        a6, a6, 1
                  sltu         t0, t3, t1
                  and          a4, s4, s9
                  sllw         s2, a0, ra
                  sltiu        s8, t2, -1143
                  sub          s3, zero, tp
                  remw         t6, s7, s3
                  xor          t3, a4, a3
                  addi         s5, a5, 186
                  sltu         tp, t0, s5
                  and          s10, t3, a4
                  rem          a7, t5, t2
                  slli         t6, s7, 28
                  sltiu        a7, a5, -1086
                  ori          s10, t5, -1450
                  slli         a1, s1, 39
                  ori          a0, s6, 1001
                  slli         tp, gp, 52
                  divu         t6, a1, s5
                  slt          a5, s5, gp
                  srl          s11, t6, t2
                  ori          a2, t6, 462
                  xori         t5, t3, 738
                  addw         s3, t2, s10
                  addi         s3, t1, -1259
                  ori          t1, gp, 970
                  remu         a2, s11, s11
                  slti         t3, s11, 141
                  remuw        s10, a3, s4
                  divuw        t2, s9, a3
                  srlw         s5, t1, a4
                  auipc        a7, 1037104
                  sraw         s11, t6, a0
                  add          a7, t4, t0
                  mulhsu       zero, a0, t4
                  div          t2, s2, t3
                  srliw        s7, sp, 21
                  mul          ra, a1, s9
                  sraiw        a4, s1, 6
                  slli         a6, s6, 32
                  mulhsu       s6, t4, s6
                  addi         s1, s7, -1072
                  divw         s5, tp, s7
                  mulw         a4, a5, a0
                  addw         a6, ra, t3
                  remuw        a7, s7, s4
                  mulhu        s11, s2, gp
                  addi         a4, s7, 235
                  remw         t0, t2, s4
                  remu         tp, a3, t4
                  remu         t3, t4, tp
                  div          tp, s11, t3
                  mul          a0, s10, t5
                  xor          s2, t6, s5
                  sltu         s6, s9, tp
                  mul          s11, a0, s0
                  ori          s5, a6, -1800
                  remuw        tp, s9, t2
                  addiw        s5, s6, 1089
                  ori          t3, s2, -24
                  sub          tp, s8, a3
                  addi         s2, s1, -1663
                  mulhsu       a0, s10, s5
                  srai         t0, t6, 7
                  remu         a3, s1, a5
                  srlw         gp, s5, a2
                  xori         s8, t6, -1864
                  and          t5, a4, zero
                  addi         s10, s10, -125
                  mulw         s2, ra, s2
                  sll          a5, s0, s1
                  srli         t3, t6, 57
                  addi         a7, a6, -1424
                  srlw         s7, a5, a4
                  slti         t2, s0, 624
                  andi         s11, s8, -571
                  sllw         a5, t1, t3
                  auipc        t6, 1007905
                  remw         s6, gp, t6
                  srai         s8, s9, 25
                  sltiu        tp, a3, -1185
                  auipc        s6, 935192
                  remu         s5, a2, s10
                  remu         s10, a1, s1
                  or           s3, zero, s0
                  sraiw        zero, a3, 14
                  remw         s2, a1, sp
                  sltu         s2, ra, t1
                  srai         s1, ra, 41
                  or           t3, zero, s8
                  sll          s5, s2, s7
                  and          s0, t2, a0
                  srlw         s6, s10, s4
                  srai         gp, a7, 18
                  addw         t0, s0, a4
                  div          s11, t1, t0
                  addi         s1, s0, -72
                  nop
                  divuw        sp, s3, ra
                  addi         a1, t2, 62
                  sub          a7, s3, t4
                  remu         a7, t0, s3
                  sltiu        t2, s10, -2004
                  add          a5, t2, t6
                  sll          s1, t3, a5
                  addi         t3, t1, 1683
                  mulhu        a3, t3, t3
                  sltu         t2, s9, s7
                  slti         gp, t5, -1762
                  sll          tp, s7, sp
                  sltiu        a7, s6, -1556
                  ori          zero, s6, -626
                  and          t3, a0, s8
                  sraiw        s10, a6, 25
                  auipc        s8, 329441
                  div          a3, a7, t0
                  divuw        t6, a2, a1
                  add          s0, a7, t3
                  mulhu        s0, t6, s2
                  xor          a0, t2, t2
                  divuw        t1, sp, s7
                  div          a7, t2, a0
                  mulhu        sp, s1, s2
                  divw         tp, tp, t5
                  srlw         t2, s9, s9
                  srlw         s5, ra, s3
                  or           t0, a5, sp
                  divu         s8, ra, a1
                  mulhsu       t3, a3, t5
                  remuw        s0, a7, a1
                  srliw        s1, s8, 26
                  sltu         a0, s4, a7
                  slliw        a1, s0, 24
                  srlw         t2, t3, gp
                  slt          t3, a5, t3
                  andi         gp, s0, -1860
                  slliw        s2, s7, 3
                  ori          t3, t4, 961
                  xor          a4, a4, s7
                  divuw        a2, s2, s4
                  xori         sp, s6, -921
                  sll          a1, t1, t1
                  slti         a2, s2, 602
                  slliw        s2, s3, 6
                  rem          gp, a4, t1
                  mulh         t3, zero, s0
                  addiw        s2, a6, -998
                  andi         s1, t6, -309
                  xor          s1, s3, s9
                  sllw         s7, s1, a1
                  mulw         a0, gp, s6
                  slti         s11, t3, 1601
                  lui          a5, 713973
                  add          tp, a6, s4
                  remu         a7, a3, s8
                  sra          s5, t1, a5
                  xori         a7, s10, -544
                  srliw        t1, a3, 8
                  xori         t3, a4, 1455
                  slti         a0, t2, 235
                  div          a3, t2, s7
                  srai         s11, a7, 56
                  subw         t1, s8, s7
                  srlw         s7, s7, a0
                  mulhsu       a0, a4, s0
                  sltiu        s5, s4, -1134
                  andi         sp, t1, -741
                  and          a1, s2, a4
                  srai         s6, ra, 15
                  mulhsu       a0, s6, a0
                  lui          a1, 1028042
                  sll          sp, s8, ra
                  slliw        a4, tp, 6
                  auipc        t5, 958026
                  sllw         a6, t5, t4
                  divuw        a7, s4, t2
                  divu         gp, tp, s1
                  addi         t6, t4, 534
                  srl          t1, s4, s7
                  auipc        s0, 838189
                  mulhsu       s6, t5, t2
                  slli         s1, s0, 10
                  addw         s2, zero, t3
                  rem          t1, s4, s11
                  xor          t5, a6, a5
                  xori         s5, t3, 2027
                  ori          t3, t1, -1535
                  addi         s3, a1, -1748
                  divuw        s1, s5, zero
                  slt          t6, a7, t1
                  sub          s2, a1, t6
                  div          s1, zero, a7
                  addw         a0, t6, t4
                  divw         s1, s4, t2
                  srl          s10, s2, t4
                  subw         s5, s5, s5
                  srai         t5, ra, 11
                  addi         s10, s4, 704
                  xori         t0, s2, 1290
                  mul          t6, a7, t2
                  divu         s0, t0, zero
                  addiw        gp, s8, -1796
                  xor          zero, s3, s2
                  lui          t6, 621758
                  xori         a1, gp, -1182
                  divu         s11, a4, s3
                  rem          zero, s2, s8
                  or           gp, tp, a4
                  sllw         a6, a7, a7
                  sllw         sp, a7, s5
                  srl          s1, t3, t1
                  slti         ra, a0, -1024
                  mul          t3, s2, t1
                  add          ra, a6, s11
                  sraiw        t1, a3, 1
                  divw         s7, s8, a5
                  mulh         a7, t6, s10
                  addw         s8, s4, t0
                  mul          a7, a3, a3
                  andi         t3, s8, 1681
                  srai         a3, s6, 41
                  divuw        s10, a4, gp
                  divw         t1, t0, t2
                  srl          a5, s10, a7
                  srai         s11, zero, 57
                  rem          a5, tp, t3
                  srliw        a1, s6, 30
                  nop
                  rem          s6, t0, s6
                  mulh         s11, s9, t4
                  divw         a0, a0, s8
                  addiw        s2, tp, -853
                  mulhu        a7, a2, t2
                  divw         t0, t4, s3
                  mulh         a3, s8, t2
                  slli         s2, s6, 57
                  or           a3, a6, a3
                  mulhu        a6, t1, tp
                  remuw        s5, a3, s5
                  add          s2, a1, gp
                  rem          s8, s5, zero
                  mulw         a5, a7, sp
                  remu         t3, t5, s2
                  sltiu        a4, a6, -993
                  rem          s10, a4, a7
                  srliw        s8, t2, 23
                  addw         s3, a7, s2
                  mulhsu       t5, a2, s9
                  sraw         zero, s3, a1
                  andi         a0, a2, -1857
                  nop
                  sltu         a4, a2, s9
                  remw         t0, s6, t3
                  srl          s8, s4, s11
                  rem          a0, t0, s1
                  mulh         a0, s10, t4
                  srai         t0, a2, 51
                  slliw        s7, a1, 0
                  auipc        s8, 20871
                  lui          s1, 759260
                  divu         t6, sp, s7
                  remw         s0, s6, a0
                  addiw        t2, a1, -74
                  divuw        s7, s9, s0
                  slli         a6, a6, 49
                  ori          a4, t0, 1798
                  subw         a2, a1, s2
                  addw         a2, s11, s1
                  slli         s1, s0, 45
                  remuw        s3, zero, a6
                  nop
                  divw         t3, a3, t6
                  srlw         t2, t5, t1
                  srl          sp, s3, t4
                  addiw        t2, a5, -296
                  xor          s7, a5, s1
                  remuw        a2, a6, sp
                  andi         t1, t2, -939
                  ori          s7, a2, 291
                  slti         a6, a3, 1087
                  addw         s5, ra, a7
                  srlw         s1, s1, s2
                  divw         t6, s5, t3
                  slti         s3, t1, 142
                  rem          a1, gp, a7
                  slli         a0, s1, 60
                  srlw         a1, s4, s3
                  addi         a7, t3, 718
                  slli         s3, s6, 40
                  andi         s2, s10, -1321
                  srai         gp, s4, 0
                  addiw        t5, s6, -305
                  mulhsu       s1, a4, t4
                  subw         a7, a2, s8
                  slti         s8, a2, 1196
                  divu         a7, a7, a3
                  lui          s5, 206290
                  mulhu        tp, t1, s6
                  srlw         a7, t3, s1
                  remw         s3, s3, s5
                  sllw         s0, s0, s10
                  rem          a2, s10, a3
                  divu         a4, t0, s1
                  slliw        a6, t1, 9
                  divuw        a2, s5, s6
                  mul          a2, s3, t5
                  srli         gp, zero, 33
                  addi         t5, zero, 397
                  mulhu        t0, a2, s8
                  sltu         sp, a4, s4
                  sraw         s8, t2, ra
                  lui          a1, 393400
                  nop
                  xori         s7, zero, 2025
                  remw         s3, t6, t1
                  mul          s6, t5, a0
                  sraiw        t0, s10, 2
                  sltu         t6, s5, s4
                  subw         s0, t1, a7
                  div          sp, s11, a3
                  andi         t0, s1, -814
                  sll          s7, t0, a2
                  addi         s3, tp, -1468
                  auipc        t0, 161169
                  subw         a0, s9, t6
                  andi         t0, t0, 43
                  addiw        a3, t0, 1577
                  sraiw        a2, s8, 13
                  subw         gp, gp, s2
                  rem          s6, s5, s10
                  sraiw        t1, t3, 23
                  addw         s5, s3, s9
                  slt          s6, a5, t3
                  add          sp, tp, t1
                  slt          tp, s3, a4
                  mulhsu       t3, t6, zero
                  addw         s11, s4, t3
                  sub          a7, s5, t2
                  lui          ra, 831132
                  addi         t1, s0, -1141
                  remu         s6, s7, t4
                  remuw        tp, a1, s6
                  rem          t0, t4, zero
                  nop
                  srai         s11, s6, 20
                  xor          s8, t1, zero
                  sltu         s5, t5, s3
                  srl          s5, a4, a5
                  mulhu        a3, a5, a0
                  mulh         zero, a7, sp
                  auipc        s10, 468324
                  remw         t6, zero, a1
                  sra          gp, a0, a0
                  remu         t6, t3, t5
                  lui          t5, 936628
                  xor          a3, t2, s0
                  addw         t1, s2, sp
                  add          gp, a0, tp
                  srli         t3, t4, 44
                  and          t2, tp, a2
                  srli         s5, s0, 58
                  mulhu        s6, t0, s11
                  divuw        t5, s10, t0
                  remw         s8, a3, a2
                  sra          s1, s2, a5
                  srliw        a0, s3, 24
                  divuw        t2, a7, t4
                  srli         a5, a1, 50
                  sraw         a7, t4, tp
                  slti         t6, s3, 231
                  divu         a1, a2, a6
                  slli         ra, a3, 40
                  div          tp, ra, t5
                  addi         s3, s7, -608
                  subw         t3, sp, t1
                  mulhu        sp, s3, ra
                  mulw         a6, s11, a2
                  mulhu        t6, a7, s2
                  xori         s1, s2, -999
                  sllw         t3, s5, s1
                  xori         s10, s8, -1235
                  addiw        s1, s8, 354
                  sll          tp, t2, ra
                  mulw         t6, s3, gp
                  srliw        s0, s2, 20
                  slli         t0, s5, 59
                  mulh         t2, t1, a2
                  nop
                  remuw        t0, s9, gp
                  slliw        s8, a1, 6
                  mulh         t5, s7, s11
                  mulh         zero, t2, a7
                  xor          s5, a2, ra
                  addi         a3, t5, -83
                  div          tp, s10, a1
                  andi         a5, a6, -1918
                  slt          s1, t2, a5
                  sltu         t0, s2, s11
                  divu         t6, t4, s2
                  addi         ra, t6, -1416
                  rem          s10, a6, t6
                  srai         a2, s10, 47
                  sllw         a2, s10, s5
                  ori          s5, s10, -1654
                  addiw        s5, tp, -1989
                  divuw        t5, a3, t4
                  sub          a2, t0, a0
                  sub          t1, s0, sp
                  sra          s6, a7, a7
                  auipc        s11, 904956
                  srai         t2, a7, 39
                  ori          s1, s5, -696
                  andi         a4, ra, -64
                  slti         a4, t2, 892
                  addi         gp, a0, -1071
                  sltiu        s2, s11, 687
                  sltiu        a1, t0, -578
                  srlw         gp, s3, t1
                  div          a5, a7, ra
                  sllw         s6, s7, a4
                  addw         s7, a7, t5
                  nop
                  slli         s3, tp, 60
                  sll          t6, s6, a5
                  sra          gp, t6, a3
                  xori         a3, s10, -1530
                  nop
                  nop
                  srlw         tp, s0, s7
                  remuw        s6, s4, t3
                  remuw        s5, t6, s9
                  subw         tp, t0, ra
                  remw         s2, t6, a1
                  slt          a5, a6, t0
                  slt          t0, t0, sp
                  sub          a1, zero, s6
                  mulw         a5, a6, a2
                  ori          s6, s8, -1520
                  div          s8, s1, s7
                  lui          a0, 1020315
                  and          a2, t6, a0
                  divu         a2, a4, s10
                  divuw        a4, t2, t5
                  remw         s5, t4, s9
                  ori          ra, a0, 1165
                  sra          a4, t4, t3
                  add          t3, gp, s0
                  nop
                  slli         s8, s11, 23
                  srlw         s6, s7, s8
                  divw         gp, t1, ra
                  ori          s5, s11, -1376
                  slli         a4, s4, 24
                  divuw        zero, s10, ra
                  add          a2, a0, s10
                  rem          s8, s8, a0
                  slt          s6, s9, sp
                  sra          s5, a2, a4
                  ori          s3, a7, 1044
                  sraw         zero, s8, s4
                  srai         s6, a6, 38
                  sltiu        t0, s5, -1034
                  slliw        a6, s1, 31
                  subw         tp, s11, s8
                  sraw         a1, t2, t2
                  and          s7, t6, s5
                  addw         a6, s11, a5
                  rem          tp, t4, t2
                  mulhsu       a2, s2, s10
                  srlw         a4, s10, t1
                  andi         a1, s11, -1574
                  slt          t3, s7, s4
                  add          sp, s2, t0
                  srai         a2, t0, 62
                  srliw        tp, s8, 23
                  sraw         s3, a6, t4
                  addi         t0, s3, 219
                  srliw        t6, a5, 5
                  div          tp, t2, s6
                  remw         s11, s0, t0
                  addiw        s2, s9, 48
                  srli         s8, a6, 39
                  sra          t5, s6, tp
                  slt          tp, s2, t3
                  mulhu        a4, t1, ra
                  ori          t5, tp, 554
                  divuw        gp, gp, a2
                  sll          a3, a5, a5
                  divuw        s8, a2, s8
                  lui          s7, 162156
                  slt          t0, s8, s4
                  slli         s5, t3, 8
                  sltu         t3, s10, a0
                  auipc        t5, 299311
                  srai         t0, s1, 14
                  xori         s3, ra, 937
                  subw         a4, gp, zero
                  srlw         s6, a5, ra
                  andi         gp, s2, -1997
                  mulhu        s6, t0, s11
                  rem          s8, a7, a1
                  xori         s7, a0, 608
                  div          a0, t3, s8
                  divw         t5, a2, gp
                  sll          zero, t2, s11
                  addi         s11, s6, 1389
                  sltu         s8, sp, a2
                  xor          s3, sp, s10
                  nop
                  ori          t5, t6, -367
                  sraiw        s8, a7, 27
                  sub          s3, s11, s7
                  sltu         a0, a7, ra
                  xor          ra, s6, s4
                  remuw        s0, s10, s10
                  divw         s11, s6, s10
                  srliw        tp, a3, 22
                  sra          s1, ra, t6
                  divuw        a7, a5, ra
                  nop
                  mulw         s5, t3, t0
                  subw         a7, a0, s6
                  slt          s7, tp, s3
                  slli         ra, s1, 44
                  slli         t2, a4, 5
                  sllw         a5, s11, t0
                  remu         a6, a1, s9
                  srliw        s1, s0, 30
                  sllw         gp, t5, t6
                  mul          a1, s2, a3
                  ori          s11, s7, -357
                  divu         a6, a2, s3
                  sltu         s2, t4, t5
                  divuw        a1, ra, a7
                  addi         zero, a7, 1968
                  sltu         t3, t4, s6
                  and          s11, zero, sp
                  nop
                  auipc        s2, 984223
                  sub          s1, s6, s8
                  mulh         a6, s5, a5
                  divw         a7, t1, gp
                  andi         s2, a6, 619
                  slliw        gp, a0, 8
                  mulhu        t0, s2, t2
                  slti         s7, a6, 179
                  sraw         a0, s3, t2
                  slli         s7, t4, 43
                  xor          s11, s2, a1
                  sraw         s8, t1, s5
                  rem          s10, t0, a3
                  remuw        s5, s10, t3
                  mulhu        s6, s11, a7
                  remw         t3, s10, a1
                  mulw         a1, t3, t2
                  add          s10, s9, s11
                  divu         s3, a3, t4
                  slti         a0, s10, 84
                  sltiu        a4, s1, -272
                  add          sp, a6, a7
                  auipc        s10, 189950
                  sll          zero, t0, s0
                  divu         a3, a4, sp
                  srlw         a6, gp, t4
                  xor          t1, sp, s0
                  nop
                  divu         s11, a6, a0
                  srlw         a3, s2, tp
                  addw         zero, a7, a1
                  slti         a2, s6, -1149
                  srliw        tp, a2, 27
                  remu         s5, s4, s7
                  sub          s10, gp, s3
                  srl          s6, t4, s1
                  slti         tp, t4, 1698
                  divuw        sp, t4, a6
                  div          a2, t5, ra
                  remw         s6, a2, a2
                  sra          s8, t0, gp
                  remu         s11, s1, s2
                  add          t2, gp, t3
                  sraiw        s3, s7, 25
                  srlw         s11, a2, a4
                  divw         a5, t4, t3
                  srli         s10, s2, 42
                  subw         a1, a4, t4
                  remu         a4, s4, a7
                  andi         s8, a2, -102
                  sub          a5, a0, t5
                  remu         a6, sp, s5
                  sub          s5, s4, tp
                  remw         s11, a1, s8
                  mulhsu       a5, s9, s0
                  or           s1, t6, t6
                  sra          a3, s1, t0
                  mulh         t1, s11, t2
                  sra          gp, s4, t0
                  slti         s10, s7, 203
                  sltu         s2, s8, s8
                  srli         t1, sp, 33
                  addw         s1, t0, a1
                  srlw         a2, t1, a1
                  addi         a5, s11, -1778
                  xor          t2, a3, s4
                  mul          a3, t3, t3
                  divu         t3, s9, zero
                  slli         a5, s0, 38
                  mulhsu       gp, t1, a6
                  srli         t1, s0, 52
                  remu         t1, tp, a4
                  ori          zero, s8, 626
                  srli         t6, gp, 55
                  sub          s6, t6, t4
                  srlw         ra, a7, s11
                  slli         s7, s9, 57
                  mul          a2, s6, t3
                  sraw         s6, a5, a7
                  add          a7, a3, a1
                  auipc        t6, 816742
                  srai         tp, a6, 37
                  ori          s8, s8, -128
                  srliw        t0, s7, 8
                  sllw         s6, s6, s1
                  mulhsu       a6, t0, s4
                  addw         t0, t3, s10
                  divuw        sp, s2, s5
                  srl          s2, zero, a2
                  sraiw        gp, s7, 0
                  subw         t0, s11, a7
                  div          a1, a4, t1
                  srai         a5, t2, 48
                  divu         s1, s6, a1
                  srliw        t6, a6, 5
                  sllw         a4, s4, a1
                  nop
                  mul          s11, t5, a2
                  addi         a7, a3, -616
                  srl          s10, sp, t0
                  divuw        s3, t6, s5
                  sraiw        t1, s5, 19
                  addiw        a0, t2, 58
                  lui          a1, 393081
                  sraiw        t0, s10, 31
                  sraw         s5, t2, s5
                  divu         gp, gp, t3
                  sra          s5, tp, s10
                  andi         gp, gp, -1979
                  remw         sp, s3, a7
                  sraw         t5, t2, t1
                  mul          s2, s0, t4
                  slli         t3, a3, 44
                  sraw         s2, t2, t5
                  mulh         t5, gp, zero
                  remu         s6, a7, s10
                  ori          tp, t0, 1754
                  srl          t1, s2, s2
                  or           s8, gp, tp
                  lui          t2, 606253
                  srliw        t6, a6, 16
                  xori         t1, s2, 443
                  rem          ra, t4, t2
                  xori         t0, s0, 403
                  remw         t6, s11, s2
                  nop
                  divu         a3, t6, s5
                  add          a1, s1, a7
                  addw         a1, s7, a4
                  slliw        a1, a5, 9
                  sllw         s6, t6, t6
                  xor          a0, sp, tp
                  div          t5, gp, tp
                  nop
                  or           a3, s4, t2
                  mulhsu       zero, a1, t6
                  mul          a4, s6, s6
                  mul          ra, s7, s4
                  sub          t3, t6, a3
                  and          s10, s2, s1
                  srl          a5, s0, sp
                  divu         s3, gp, a6
                  addi         tp, s9, -770
                  div          a2, s2, s10
                  xori         a7, ra, 791
                  div          s1, a0, t1
                  mulh         a3, t0, t6
                  mulhu        s0, gp, t4
                  rem          s10, a1, s7
                  or           tp, sp, s8
                  sraw         sp, a4, s10
                  andi         gp, s4, -833
                  sub          s5, s1, s5
                  addiw        t3, s11, 841
                  lui          s10, 770635
                  subw         s1, a1, s2
                  addi         s11, s8, 639
                  subw         a1, zero, a5
                  mul          a0, a4, s2
                  xori         ra, t6, -1903
                  remu         s6, t0, a4
                  remw         a6, s11, s5
                  divuw        s5, a5, t4
                  divuw        t3, s4, tp
                  sllw         s0, s7, t6
                  divuw        s10, a3, a2
                  div          s6, s3, s4
                  sltu         gp, t0, s8
                  sltiu        a2, a5, -1076
                  and          s8, a3, gp
                  nop
                  sltu         a0, s3, a4
                  xor          tp, s7, a7
                  divw         s1, s8, s10
                  sltu         ra, s4, t3
                  xori         a6, s8, 1245
                  nop
                  divu         zero, s1, s5
                  sraw         s0, s10, s8
                  mulhsu       s10, t3, t1
                  and          a7, tp, s11
                  srl          a7, t0, a6
                  slli         a0, s0, 7
                  mul          s7, a3, t4
                  sll          s0, s1, s8
                  subw         s8, s4, a4
                  divuw        s6, s5, t4
                  subw         a6, s5, s0
                  srli         a4, gp, 14
                  sllw         a2, s5, t1
                  remuw        s3, s7, s11
                  sllw         s7, t3, s1
                  xor          a4, a2, ra
                  mul          s1, a2, s8
                  remu         t0, ra, s10
                  lui          a1, 64852
                  divu         t3, t0, a2
                  div          t2, s0, a2
                  lui          t0, 73906
                  xori         tp, t1, -1624
                  mulhu        s6, s4, a7
                  addi         s1, s6, -779
                  sltiu        a0, s9, 1942
                  srliw        s10, s4, 21
                  divw         gp, t6, s10
                  srai         sp, zero, 29
                  andi         a7, s7, 40
                  srai         tp, sp, 6
                  div          s5, sp, s11
                  xor          a1, a6, s6
                  or           s8, t6, s8
                  sltu         gp, t3, t1
                  add          s0, s1, gp
                  srai         s8, s0, 35
                  or           t1, s11, s5
                  lui          a7, 452389
                  sltiu        s5, t2, -1175
                  and          gp, a0, t4
                  sllw         t3, s5, a2
                  mulhu        s0, t1, a6
                  add          a3, a4, s3
                  xor          s8, a1, a0
                  auipc        s3, 596360
                  sltu         sp, s11, gp
                  nop
                  mulh         s6, s5, a2
                  mul          s7, s1, s9
                  addi         zero, gp, 1343
                  srlw         s7, a7, a3
                  mulhu        a6, s11, s10
                  divu         s11, t3, a2
                  and          s7, sp, t6
                  srl          tp, t6, s5
                  remu         zero, t0, t1
                  sub          s1, a1, ra
                  remu         a7, t2, tp
                  div          s0, s4, s7
                  nop
                  addiw        gp, t3, -836
                  remw         a7, s4, s6
                  rem          ra, a1, gp
                  remw         a5, s8, t3
                  mulw         a1, a3, s2
                  auipc        s5, 8213
                  mulh         s3, a3, t2
                  slli         a7, s9, 0
                  sraw         a5, sp, s6
                  subw         ra, a1, s1
                  or           a3, tp, a4
                  add          s8, a1, s8
                  div          s6, s5, s6
                  srai         t1, a1, 12
                  mul          sp, s6, s1
                  lui          s10, 253723
                  mul          zero, t2, s6
                  srai         zero, a3, 18
                  addw         a7, a6, tp
                  divw         a1, t1, a5
                  slt          t5, s8, a5
                  auipc        s10, 977488
                  srl          a4, s6, s11
                  sll          a2, s11, s8
                  lui          t1, 745556
                  mulhu        t3, s11, s4
                  sra          ra, t0, a7
                  addiw        t0, sp, -1501
                  and          s5, s6, a0
                  addw         sp, s0, t6
                  slliw        s6, s2, 23
                  subw         s10, a6, t5
                  divw         a5, s5, s7
                  remw         t3, zero, s6
                  subw         s5, s1, t4
                  slt          t1, sp, s6
                  sraw         s11, gp, a2
                  remu         s6, s1, gp
                  subw         s6, s9, a0
                  srlw         s7, a0, t3
                  sraw         t5, a0, zero
                  add          s1, s1, tp
                  sra          a2, s5, s7
                  remu         s2, a3, s11
                  slli         zero, t3, 34
                  xor          s5, t3, a0
                  and          s0, gp, s7
                  rem          a2, s5, s5
                  sub          a2, sp, a5
                  sltiu        a2, s9, -1260
                  sraw         gp, t5, sp
                  divu         t3, a6, a3
                  mulhu        a1, a7, gp
                  div          s0, s5, s8
                  slli         a4, s4, 43
                  andi         a6, tp, 71
                  sraiw        t5, t1, 2
                  ori          s8, s5, -995
                  sllw         a1, s3, tp
                  srai         s1, zero, 10
                  remw         t2, sp, t3
                  mulhu        t2, t4, s10
                  addiw        a6, a1, -574
                  remw         tp, s10, s1
                  addiw        t2, s7, -64
                  mulw         a4, t6, a7
                  slliw        s1, s1, 2
                  nop
                  slli         s3, a6, 32
                  xor          s2, s10, a7
                  slt          s8, s8, s10
                  slt          s5, zero, t4
                  divuw        sp, t5, tp
                  divw         zero, s2, gp
                  srlw         zero, zero, s0
                  lui          s7, 1040885
                  sll          a6, a7, s8
                  remuw        a4, s3, t0
                  sltu         s7, s6, s5
                  sraiw        t6, s4, 29
                  divuw        zero, t6, t0
                  xor          a0, ra, a0
                  slliw        a6, a7, 2
                  mulhu        s0, t3, a6
                  divw         a3, s4, a4
                  sra          sp, t4, t1
                  and          s3, zero, s10
                  sraiw        gp, s4, 4
                  divuw        zero, s2, a1
                  sraw         s7, sp, tp
                  sraw         sp, s0, t2
                  sraiw        a7, s11, 19
                  ori          a7, a1, -569
                  srli         gp, s7, 62
                  slt          s3, s6, t6
                  srliw        sp, s3, 1
                  auipc        s5, 724403
                  addw         s1, gp, s9
                  div          a6, a7, s2
                  mulh         zero, a5, s8
                  div          a4, s10, s1
                  sltiu        s2, a6, -2039
                  addiw        t6, t1, 1284
                  mul          s11, a4, t5
                  or           a6, tp, s5
                  sllw         gp, s1, a0
                  slli         gp, t2, 27
                  sub          t6, s8, ra
                  slt          a1, t5, s3
                  addiw        t0, a4, -117
                  mulh         a6, a0, s0
                  lui          t1, 808932
                  sltiu        a5, s5, 479
                  div          a3, s9, zero
                  sub          s10, t3, t6
                  div          a3, s11, t1
                  mulhsu       tp, ra, t2
                  srlw         t2, t5, s9
                  remw         t3, s9, t6
                  divuw        s11, s6, a1
                  divuw        sp, sp, t5
                  auipc        t3, 341130
                  div          s11, t2, s4
                  or           s1, t1, t1
                  sraw         a0, sp, a5
                  sltu         gp, t2, zero
                  sraiw        ra, a4, 19
                  xori         s6, t2, -692
                  sltiu        a3, s11, -471
                  or           a3, a5, s8
                  mulhu        s11, t1, t6
                  sraw         a6, a5, t5
                  xori         a3, s8, 1711
                  divw         t0, tp, s10
                  subw         a7, t4, a5
                  ori          a1, s9, -1482
                  srli         a4, s9, 4
                  slt          a7, zero, s10
                  mulw         gp, s2, s4
                  slli         s6, s4, 19
                  sltiu        s11, s11, -279
                  mul          a1, t2, s7
                  remu         a2, tp, s5
                  auipc        a4, 388044
                  srai         t2, a5, 21
                  addi         a1, s1, 761
                  remw         a4, a6, sp
                  mul          s2, sp, t1
                  div          s5, zero, s9
                  addw         s5, t0, a5
                  sub          s5, a5, t4
                  divw         t5, ra, a7
                  and          s3, t2, s2
                  rem          a4, s10, t0
                  div          sp, a3, tp
                  srliw        s6, t0, 1
                  slt          a7, a4, s4
                  sraw         ra, a0, s1
                  sraiw        a7, s5, 4
                  rem          s3, a7, a5
                  lui          t2, 133384
                  mulhsu       a3, s11, a3
                  mulhsu       a7, s0, t5
                  addiw        sp, s9, -314
                  auipc        s7, 833321
                  mulhsu       a3, s9, s5
                  or           sp, a2, s1
                  addi         a3, t6, -298
                  sltiu        t6, s6, -183
                  addw         s6, a2, t3
                  mulh         a4, s9, s3
                  divw         ra, s8, a2
                  sll          s3, s0, t2
                  remuw        a1, a4, s11
                  sraw         t0, s5, zero
                  sraw         s1, a3, t2
                  srli         t3, s6, 9
                  auipc        a0, 947365
                  divw         t1, t2, gp
                  remuw        a7, s8, s1
                  remuw        s8, a0, a1
                  sub          t2, s0, a5
                  srai         t5, t1, 7
                  remu         a4, a3, a0
                  xori         a2, a0, -1330
                  addiw        a2, s11, -1835
                  srai         s5, s9, 10
                  addi         gp, sp, 54
                  xori         tp, t4, -225
                  srliw        s11, t2, 13
                  add          a6, t0, t2
                  sltiu        a7, s1, 1990
                  srliw        t6, s9, 2
                  rem          a5, a3, t0
                  remuw        a0, sp, a2
                  mulhsu       s1, a2, tp
                  slt          sp, a7, t4
                  slti         zero, a4, -1397
                  xor          a3, s0, s5
                  srliw        gp, s8, 13
                  srli         t1, s6, 53
                  remu         sp, t6, t2
                  sllw         tp, s0, a3
                  ori          a2, s0, 1956
                  mulhu        s5, s5, s7
                  addw         s1, s0, zero
                  xor          s3, s2, t6
                  divuw        s5, s2, a0
                  srai         a5, zero, 9
                  sltu         gp, tp, a1
                  remu         a4, t2, t0
                  mulw         s0, a0, s0
                  add          zero, s2, zero
                  ori          t2, t6, -425
                  ori          s1, s11, -480
                  sltiu        s6, a7, 1305
                  addi         s3, a6, -1520
                  remu         a4, a3, s7
                  lui          t6, 805354
                  xor          sp, a7, t4
                  mulhu        s5, zero, s0
                  add          ra, t2, a7
                  remu         tp, s5, gp
                  slti         s11, s3, 1495
                  divuw        s11, t1, a1
                  subw         s7, a0, s5
                  slliw        zero, a0, 26
                  or           s2, gp, s9
                  srai         tp, t0, 29
                  auipc        s0, 313171
                  mulw         sp, a0, a4
                  mulhu        s2, a2, a7
                  mul          s0, a7, sp
                  rem          s3, gp, sp
                  sltiu        s1, sp, 1949
                  mul          a6, s7, a1
                  sra          t6, s9, s8
                  slliw        s5, a1, 24
                  addi         zero, s4, 198
                  mulh         a3, s8, t2
                  mulhu        s0, s4, t6
                  divuw        t6, t1, a7
                  addiw        tp, a4, 1336
                  sra          s6, s1, a3
                  lui          sp, 248516
                  div          a0, s0, a0
                  addw         s6, ra, a5
                  sll          a3, s10, s8
                  srlw         a0, sp, a0
                  srl          ra, t6, a7
                  mulw         a6, a1, t5
                  mulh         a3, s6, s6
                  addw         s7, tp, s5
                  andi         ra, s7, -1587
                  sub          tp, s3, gp
                  sltu         a7, s10, a1
                  and          s2, ra, gp
                  nop
                  divuw        a0, s9, sp
                  srai         s8, s10, 39
                  addi         a6, s4, -370
                  subw         gp, s7, s8
                  srli         zero, a2, 34
                  mul          a5, s8, a6
                  sltiu        s7, a0, 1361
                  slt          s6, s1, s10
                  sltu         t2, sp, t3
                  mulw         a0, s8, t4
                  or           t6, a2, s2
                  or           s8, s1, t4
                  srliw        t1, s11, 3
                  srl          sp, a3, s4
                  xor          a0, t2, gp
                  srai         s2, t4, 42
                  sltiu        s6, zero, -803
                  sltu         ra, s11, s8
                  remw         t1, s11, a0
                  xor          s10, ra, a3
                  srl          s8, a5, s9
                  mul          a2, a1, a3
                  sltiu        s10, zero, 837
                  auipc        a1, 645871
                  addiw        s2, s1, 41
                  srl          a5, t2, sp
                  srliw        s7, s10, 18
                  slt          a6, s3, s2
                  addw         t1, t2, sp
                  srai         a2, a6, 41
                  sraw         t2, sp, s11
                  lui          a0, 283086
                  subw         a0, gp, t3
                  andi         t3, s0, -576
                  sltiu        a4, a0, -435
                  add          a4, t2, t2
                  sll          t3, s4, s9
                  srl          a0, t3, s10
                  srli         s10, t4, 47
                  sll          s1, ra, s1
                  and          a1, a4, s7
                  divuw        tp, s9, s11
                  remu         a4, a6, t2
                  sllw         zero, t4, s7
                  mul          s11, s5, a6
                  rem          a2, s11, a3
                  xor          a0, t2, t0
                  remw         t0, a1, ra
                  srli         s1, zero, 1
                  remw         t3, s2, s7
                  srl          s5, s10, a2
                  slli         t3, s5, 8
                  srl          a6, a6, s2
                  addi         a7, a1, 841
                  mulh         s11, t0, sp
                  auipc        t5, 946924
                  divuw        s10, a6, a5
                  slli         a5, s6, 58
                  auipc        gp, 263734
                  div          s1, s2, s1
                  srlw         a7, s8, s3
                  mulw         t5, zero, s7
                  addi         zero, a4, -1657
                  slt          a7, t4, a3
                  sltiu        t1, t0, 1404
                  subw         t5, s0, t3
                  mulh         a1, s6, a4
                  sltiu        gp, s7, -1897
                  ori          s8, t0, -482
                  divuw        t2, s6, s0
                  xor          s2, t5, a3
                  nop
                  divw         sp, a1, s2
                  sra          a5, s2, a4
                  slt          t6, s7, t4
                  andi         s0, t4, 597
                  divuw        s6, zero, t2
                  srlw         s2, a5, s5
                  sub          s5, t1, zero
                  div          a6, a7, s10
                  divu         a7, s3, s6
                  auipc        a2, 672318
                  divw         a5, t2, s9
                  srai         s0, a3, 49
                  slli         s6, t3, 48
                  slliw        s0, t5, 22
                  div          s11, s6, a4
                  nop
                  remuw        sp, s0, s3
                  divw         tp, s9, gp
                  mulw         a1, a3, s9
                  rem          s8, gp, s6
                  slt          s2, s10, t2
                  mulhu        a1, a3, t6
                  subw         gp, t0, s1
                  mulhsu       t5, a3, a3
                  addi         s3, a6, -353
                  srliw        a5, t5, 27
                  andi         a3, s2, -1221
                  lui          a6, 887731
                  srlw         tp, a1, s4
                  srliw        t3, a5, 19
                  srlw         s5, s0, a1
                  mul          t6, s8, t6
                  sub          a7, s0, t0
                  xor          t1, t2, a1
                  addiw        s3, zero, 850
                  subw         s0, tp, s6
                  slli         s3, a5, 45
                  srai         s7, s8, 4
                  mulh         a4, a2, sp
                  sllw         s11, t2, a5
                  xori         a6, tp, -1679
                  xor          s0, s3, s2
                  addiw        s6, s5, -951
                  slti         s11, a4, -359
                  sraiw        a2, ra, 0
                  srlw         t3, a2, gp
                  divu         tp, zero, a4
                  and          s8, t3, a7
                  mulhsu       t3, a2, a4
                  remu         a7, t4, t2
                  mul          t5, a2, t6
                  rem          s7, t6, a5
                  mulw         s6, gp, a5
                  slliw        zero, a5, 30
                  mulhu        s11, a2, t0
                  divu         a7, s8, s5
                  sltiu        t2, t2, -550
                  srl          t3, t0, a3
                  rem          t6, t1, s1
                  slt          s3, gp, s5
                  mulhu        zero, gp, a0
                  subw         t2, ra, s4
                  divw         s11, t0, tp
                  or           s10, a4, s10
                  divw         s10, t2, s8
                  xor          s5, t5, s2
                  nop
                  sub          a1, a2, a3
                  srliw        zero, t4, 8
                  sub          s11, t3, s6
                  lui          a1, 643225
                  srai         a2, a2, 59
                  slti         s11, s5, -1781
                  sltiu        s0, s0, 1034
                  srlw         a3, s11, a1
                  nop
                  srli         a2, a5, 5
                  slti         s0, s3, 184
                  remu         s6, t0, a0
                  addi         a1, s1, -1741
                  or           t6, a2, s3
                  ori          s8, s11, 667
                  sll          s0, s0, tp
                  auipc        s2, 607172
                  addi         a3, t0, -36
                  mulhsu       s10, s11, s6
                  div          s7, ra, a2
                  mulhsu       t6, a0, t2
                  rem          tp, ra, a3
                  addi         a7, gp, -1473
                  mulh         gp, s4, a2
                  mulhsu       t6, a7, t3
                  remuw        s0, t4, s9
                  mulh         a4, s1, zero
                  sllw         t1, t2, s9
                  mulhu        s5, s3, ra
                  sraiw        s11, s7, 1
                  mul          s1, s10, tp
                  rem          t5, s4, s11
                  mul          s3, t0, tp
                  add          t1, t3, a6
                  srl          a5, s11, t3
                  lui          s8, 260390
                  and          a7, s1, s4
                  or           a6, a2, a0
                  sltu         gp, s4, a3
                  div          a4, sp, s4
                  srl          a5, a2, a7
                  and          s5, a1, s9
                  mulhu        s10, sp, a7
                  nop
                  sllw         a4, s2, s11
                  sll          t2, tp, t0
                  mul          s11, s10, s0
                  xori         s5, s4, -83
                  slli         ra, s1, 4
                  and          s8, s0, s6
                  ori          s1, s8, -260
                  srl          a2, sp, s7
                  sraiw        t3, s0, 3
                  subw         s2, t3, a5
                  addi         s2, sp, -1427
                  addw         tp, s3, zero
                  sra          s0, t5, t0
                  sll          a1, s4, s5
                  addi         s5, s11, -247
                  xor          t1, s3, tp
                  srliw        s8, tp, 16
                  slliw        ra, gp, 22
                  srli         a7, s6, 31
                  remu         s5, s4, s9
                  sltu         s0, t6, s6
                  add          t0, s6, tp
                  mulw         s3, t2, a4
                  slli         t1, sp, 44
                  sllw         s1, s9, s4
                  nop
                  sra          a5, a6, a2
                  srlw         t3, a0, s4
                  remu         a5, s6, t4
                  addi         sp, t0, 804
                  sraw         a1, a1, t2
                  nop
                  sraw         s1, s6, t6
                  divw         s11, gp, a6
                  ori          s7, a7, 1525
                  remw         a7, zero, t6
                  slliw        a3, zero, 16
                  divw         a6, a3, s9
                  slli         s3, a1, 3
                  divw         s5, t4, tp
                  sllw         s8, s10, a3
                  slti         t3, sp, -1572
                  sub          a4, s11, s9
                  slliw        a1, s6, 11
                  srl          t6, s4, gp
                  and          tp, s7, s5
                  nop
                  sltu         t0, a3, s8
                  and          a5, s3, s5
                  slti         a4, s9, -1146
                  mul          s1, s5, s5
                  andi         s0, sp, -1774
                  divu         t0, a6, t5
                  mulhu        a2, a6, zero
                  addiw        t0, tp, 301
                  sllw         zero, s2, s3
                  sll          t5, s3, a1
                  sltu         t6, a0, t1
                  sraiw        s3, t4, 3
                  remu         t0, zero, tp
                  slliw        t1, a4, 27
                  ori          t0, zero, 1411
                  div          zero, s3, a5
                  remuw        a3, s5, s2
                  auipc        s7, 132912
                  sraw         t5, s10, s4
                  rem          sp, a1, a6
                  andi         s5, t1, 1631
                  remw         s1, s1, s1
                  addi         s3, a1, -1927
                  mulh         s8, a5, tp
                  remw         s7, sp, t6
                  remuw        a6, a1, s1
                  sraw         sp, a7, t2
                  mulh         zero, a5, t3
                  subw         s0, s3, a4
                  mulh         s7, t1, s0
                  nop
                  addw         s7, t2, t3
                  andi         t0, ra, 1124
                  ori          a7, ra, -330
                  srliw        s7, s6, 9
                  mulw         t3, sp, a7
                  mulw         s6, t5, s1
                  and          t2, s11, t5
                  mulw         t1, a4, s4
                  xori         s3, t2, 165
                  subw         sp, s0, t5
                  sllw         t3, s5, ra
                  sltu         s11, s0, s4
                  xori         t2, t5, 420
                  sll          s2, a5, s10
                  sll          t1, s11, ra
                  and          s6, s11, s10
                  mulhu        ra, a5, s6
                  slli         tp, a6, 45
                  sllw         s5, ra, s2
                  srl          gp, s4, s4
                  divu         s10, a2, s1
                  srlw         a0, s3, t6
                  xori         t6, a3, -517
                  mul          s0, s10, sp
                  slti         zero, s10, 1656
                  sltu         a6, s0, gp
                  sub          sp, t5, s5
                  remuw        t3, a4, a1
                  srlw         s10, t1, s0
                  sra          a4, t2, t5
                  srli         s5, t1, 10
                  slt          a3, t4, s9
                  lui          ra, 556327
                  sllw         t3, t2, a1
                  srai         a5, a7, 61
                  slti         s11, tp, 1955
                  addw         a0, a3, t6
                  sll          a6, s5, s8
                  sraw         a2, s10, a1
                  sra          gp, s8, ra
                  remu         gp, a5, t5
                  subw         a3, s2, t0
                  or           t5, s5, s4
                  divu         s1, sp, t1
                  srlw         s3, s4, t3
                  subw         s8, s4, a7
                  mul          s10, s10, s3
                  srlw         s0, a4, s2
                  mulhsu       s0, tp, s4
                  ori          gp, t0, -1654
                  slli         a1, a3, 25
                  div          a0, t2, t6
                  ori          s2, gp, -1899
                  xori         s0, t3, 1726
                  srl          s5, s11, s11
                  andi         ra, t1, -2021
                  addw         tp, s8, s3
                  mulhsu       a4, s8, t3
                  mulw         s0, t1, gp
                  srli         s7, gp, 23
                  sllw         a0, t5, s5
                  sraiw        t2, sp, 24
                  remuw        t1, s5, s3
                  sltiu        t3, a2, 50
                  sll          gp, t1, gp
                  remw         zero, t0, ra
                  slli         s7, s9, 60
                  nop
                  auipc        s2, 977824
                  sub          t3, s9, t2
                  slliw        gp, t6, 13
                  slli         a6, t4, 34
                  mulh         a4, ra, t0
                  mulh         s2, tp, a7
                  slli         t3, s9, 27
                  divu         s0, s1, s9
                  mulw         t5, a3, t4
                  slli         t3, t4, 7
                  srl          t6, t6, a0
                  mulhsu       s11, s10, a3
                  remw         t0, a7, s0
                  sraiw        s0, s4, 22
                  andi         t6, s3, -1572
                  sraiw        s0, s1, 11
                  remw         gp, tp, tp
                  auipc        a2, 211153
                  divw         s11, s7, s6
                  srai         a2, s6, 34
                  remuw        a5, a0, a0
                  sraiw        tp, zero, 12
                  add          t6, t5, s3
                  andi         a2, s11, -1590
                  divu         s6, s6, t6
                  auipc        t0, 626408
                  sltu         s11, s2, a0
                  ori          s0, a0, 574
                  sll          s5, a1, s11
                  sub          a7, a6, a4
                  srl          a6, a7, zero
                  srlw         a3, s0, t1
                  sltiu        s3, s11, 867
                  divu         s11, zero, s5
                  mulhsu       a3, a1, s6
                  xori         a4, t0, 1223
                  slliw        s7, s3, 29
                  srlw         s10, gp, a3
                  srl          ra, a7, t2
                  remuw        t5, s5, t4
                  remuw        a6, s0, s8
                  remuw        t3, s0, a1
                  slt          sp, a6, sp
                  auipc        a6, 374240
                  auipc        a5, 629514
                  slti         zero, s6, 1279
                  and          a6, s5, t3
                  srl          tp, s8, a6
                  remw         tp, s5, a6
                  remu         s5, a4, s0
                  divw         a2, s2, t3
                  srl          t0, s8, s4
                  srai         a3, a3, 53
                  mul          a5, s3, s4
                  sraiw        s11, a2, 26
                  mulhsu       t3, t3, t2
                  sra          zero, s9, s4
                  auipc        s0, 29868
                  nop
                  srli         a1, s8, 22
                  sraw         t6, t5, s6
                  sllw         t1, a7, s7
                  xor          s6, s2, s8
                  sraw         s11, s8, s8
                  mulw         s10, s1, s3
                  divu         a4, zero, a5
                  mulh         ra, s3, s10
                  mulhu        s11, t1, zero
                  slt          a5, a7, s3
                  subw         a7, zero, a3
                  addi         a2, s6, 1804
                  rem          s1, t2, t3
                  srai         t3, s7, 58
                  slli         s10, s6, 24
                  divuw        gp, a3, a2
                  mulhu        sp, a0, a0
                  remu         t1, t3, t3
                  mulh         sp, t1, s9
                  rem          s1, t3, a0
                  divu         t0, a7, t1
                  mulw         a4, s8, sp
                  srlw         zero, t0, a6
                  xor          s1, a6, s3
                  rem          a4, a4, a0
                  remu         s6, t1, s8
                  mulw         a7, t2, t6
                  addi         t6, s0, 48
                  sll          s8, tp, sp
                  divuw        a7, t6, s6
                  add          t6, a1, a3
                  auipc        s6, 661057
                  sra          a4, a5, tp
                  divu         a1, sp, s7
                  remuw        t6, t4, a2
                  and          a0, a0, a1
                  addiw        a2, s6, -1349
                  nop
                  srlw         a2, s8, a3
                  addw         t1, s5, a5
                  addiw        s2, ra, 2043
                  divw         t0, ra, s10
                  addw         s6, s0, s3
                  mul          a3, tp, a6
                  nop
                  slti         a7, t2, -1924
                  remw         t6, t5, s3
                  divuw        a3, s0, t0
                  xor          s10, s10, t5
                  remuw        t6, t0, s10
                  and          t2, s10, s10
                  lui          s5, 341687
                  srai         t6, a2, 49
                  mulhsu       t1, a1, s6
                  and          s3, gp, a5
                  auipc        s3, 773365
                  rem          t3, s10, t0
                  divu         s1, tp, t2
                  addi         s11, t0, 1732
                  divu         a6, gp, tp
                  divuw        s10, a6, s7
                  mulhsu       a1, t1, s7
                  sra          tp, s4, s2
                  or           t1, a1, a5
                  remw         a2, t4, t1
                  xor          s8, s9, t1
                  srli         ra, a4, 49
                  srli         ra, t4, 50
                  sltu         a4, s0, s0
                  addw         s6, gp, a2
                  mulh         s6, tp, t4
                  auipc        t3, 105783
                  divw         a2, a6, s0
                  nop
                  srl          s6, a1, a1
                  remuw        a2, s11, gp
                  add          ra, s7, s0
                  auipc        t3, 175914
                  xori         s2, t3, -986
                  sub          s11, s10, s3
                  sraiw        t0, s8, 6
                  ori          t2, s2, -678
                  sll          a7, s11, s7
                  divuw        t5, s1, s5
                  divu         tp, s8, sp
                  div          zero, s6, ra
                  sll          s3, a3, t3
                  mul          t3, zero, tp
                  xori         s8, s0, 823
                  divuw        t0, ra, sp
                  sub          s5, a1, t1
                  srlw         gp, a3, a3
                  slti         zero, a0, -1628
                  remuw        t5, s5, t1
                  remw         s8, t5, a2
                  srliw        s1, s6, 14
                  lui          t1, 202902
                  sra          s5, s6, sp
                  srl          s8, ra, t6
                  srl          s1, t4, s10
                  slti         tp, zero, 963
                  sraiw        s11, s9, 18
                  slti         zero, t5, -788
                  mulhu        s11, a5, a5
                  and          t5, t3, s1
                  sltu         sp, a4, a2
                  slli         s1, a6, 17
                  slliw        ra, a4, 22
                  auipc        t2, 404325
                  sltiu        t3, s6, 1801
                  xor          s6, tp, s5
                  srai         a1, s2, 5
                  mulhsu       t3, s10, t5
                  srai         t6, a7, 55
                  mul          s7, t5, t2
                  lui          s10, 298734
                  slliw        s10, s1, 9
                  sllw         t0, s11, ra
                  sraiw        gp, gp, 13
                  sltiu        t2, s3, 1312
                  mul          s2, a3, s0
                  srl          a3, a7, s6
                  remw         s0, ra, s11
                  mul          s1, s11, s7
                  mulhsu       a7, t2, a0
                  sraiw        s3, t4, 31
                  mulhsu       s1, s0, a5
                  srl          a0, a2, s2
                  divw         a1, a0, t6
                  srlw         zero, a3, a5
                  mulhu        zero, zero, a7
                  srl          s3, zero, s6
                  divu         a3, t4, a0
                  remw         zero, a5, s8
                  sraw         a3, a2, s6
                  sltu         t6, t4, zero
                  ori          s1, t0, 1226
                  mulw         gp, t3, s4
                  remuw        t5, a0, a4
                  auipc        a2, 712082
                  slt          a2, t3, t6
                  lui          a0, 315294
                  andi         a4, s3, 921
                  ori          a6, s11, -1752
                  rem          a0, sp, a6
                  mulw         t1, sp, a0
                  sll          gp, t1, s0
                  sltu         t3, s11, s11
                  addi         s7, a7, 713
                  lui          s0, 338387
                  divuw        t2, s8, t3
                  sltu         s5, t6, s6
                  srlw         zero, t3, a0
                  divuw        s6, s10, a3
                  addi         s10, a1, 1101
                  addiw        tp, s2, -1005
                  mulw         t2, a0, ra
                  rem          a7, s2, a1
                  mul          a0, t5, t5
                  mulhsu       a1, s6, t4
                  mulh         t3, a0, a1
                  srl          s5, s3, s5
                  add          s8, gp, t6
                  srl          t3, s9, s2
                  sllw         a6, t2, a5
                  sraiw        t0, a4, 29
                  sll          s11, ra, s6
                  andi         s2, t5, 1865
                  sra          t0, t5, s11
                  slti         s11, a6, 949
                  divuw        a7, s7, s5
                  nop
                  andi         t3, s1, 1819
                  remu         t3, a5, s11
                  srai         s2, s10, 39
                  divu         t3, sp, a7
                  mulhu        zero, t2, zero
                  rem          t6, s6, t5
                  xor          zero, s2, s10
                  remuw        t2, a7, s5
                  or           a6, s11, zero
                  remuw        a0, zero, s11
                  remuw        gp, s8, s11
                  sll          a4, s3, t5
                  remu         s0, gp, t0
                  nop
                  remw         sp, s9, s9
                  add          a5, s5, a7
                  mulhu        t0, s6, a2
                  sll          a5, a6, a1
                  xor          t1, a4, a7
                  and          t6, s9, a7
                  mulhsu       a1, a2, tp
                  divu         a3, s9, ra
                  divw         a3, s3, a1
                  addi         s1, t0, -1591
                  remu         a4, t2, s8
                  sra          s5, t4, t0
                  or           s0, a0, t4
                  mulh         s1, a3, a0
                  srliw        zero, a5, 17
                  sra          t2, s7, a3
                  mulh         a6, sp, a4
                  srliw        s11, s10, 23
                  sllw         tp, a7, a4
                  addiw        s3, a6, 594
                  add          t6, a7, ra
                  sra          s7, a1, s6
                  lui          t3, 627575
                  srai         gp, gp, 63
                  srlw         s6, a5, s6
                  addi         s0, ra, 1082
                  ori          t2, s6, -1266
                  divw         a5, s7, a2
                  div          t1, s5, s11
                  srli         a7, a6, 2
                  lui          s3, 778991
                  sll          s0, t3, s0
                  sra          t1, a4, t4
                  sraiw        t3, t6, 14
                  sll          a5, a0, s10
                  xor          zero, t1, a3
                  divu         a6, a3, t0
                  or           s0, a6, gp
                  divu         gp, gp, s10
                  mulh         s5, a3, s9
                  or           s3, a5, sp
                  srli         t6, s8, 33
                  divuw        a0, s9, s11
                  sltu         a3, t0, s6
                  slli         s7, gp, 8
                  divw         a5, zero, a5
                  xor          s1, s11, tp
                  and          s1, s2, s8
                  slti         t6, s8, -256
                  srli         a1, s4, 17
                  srliw        s5, t3, 0
                  mul          s6, t2, s10
                  and          s5, t6, s3
                  sraiw        a1, a0, 28
                  srli         a3, tp, 45
                  slliw        t1, a5, 3
                  sub          tp, a7, zero
                  sll          s0, s11, zero
                  mulhu        gp, a1, a1
                  mulhsu       s0, a1, a6
                  lui          s6, 188767
                  srli         a7, t2, 28
                  subw         a7, ra, t5
                  ori          s6, zero, -105
                  addi         s5, a6, -1435
                  remw         ra, a2, s6
                  sra          a4, t4, a3
                  divuw        a7, a1, s8
                  mulw         a5, t1, t1
                  subw         s8, zero, s7
                  mulhsu       a5, t3, s2
                  divw         t2, s7, s2
                  addi         a0, s3, -506
                  remuw        s5, t1, a0
                  mulw         t1, s5, tp
                  remu         t1, s2, a2
                  or           tp, gp, s3
                  mulhsu       zero, a5, s4
                  remu         zero, a3, a3
                  add          s2, a6, s2
                  srai         t6, t3, 61
                  sltu         s8, t3, t5
                  divw         a6, zero, s10
                  srli         s10, t3, 27
                  add          t3, a6, s0
                  lui          tp, 145401
                  xor          a7, a3, a3
                  slt          s10, a6, a2
                  srl          t0, s6, s7
                  srl          a0, s1, s9
                  mulw         sp, s4, t2
                  and          a5, a4, t4
                  srli         s3, a4, 61
                  remuw        a0, s10, a2
                  sltu         a6, t4, s1
                  srlw         a7, t3, a1
                  srl          s1, a6, s2
                  xor          t1, s8, a6
                  sra          a1, s5, a3
                  slli         t6, gp, 41
                  divuw        t1, t5, a5
                  subw         s3, a2, t6
                  srliw        s2, t1, 10
                  and          a3, s3, s1
                  and          t0, s1, t5
                  xori         s2, ra, -85
                  srai         s11, s2, 43
                  and          s2, t4, a7
                  addiw        a4, tp, -94
                  mulhu        sp, a0, gp
                  add          t3, s9, s11
                  sra          a3, s9, s8
                  sltiu        t6, a1, 643
                  divuw        ra, t5, t0
                  srlw         zero, s9, a6
                  subw         s7, t3, a6
                  addw         gp, s10, a2
                  andi         s10, s3, 1031
                  slti         t2, a7, 1045
                  div          t1, t2, a6
                  or           gp, a0, gp
                  xori         t5, t5, -1473
                  srai         s0, t0, 20
                  xori         s0, s11, 417
                  addiw        sp, s3, 826
                  and          t0, s7, t6
                  mul          a6, t3, t0
                  mulhsu       a1, t3, sp
                  mul          tp, t0, s0
                  mul          t5, a7, ra
                  mulh         t1, a6, t3
                  slliw        s5, a4, 30
                  addiw        zero, a6, -221
                  sltu         t3, a6, a4
                  divw         s2, s2, s10
                  sll          s11, s11, s0
                  srliw        a0, t1, 23
                  slt          s3, t4, s4
                  ori          s8, t6, -930
                  srlw         a4, a4, gp
                  remuw        zero, zero, a2
                  divu         t0, ra, ra
                  remw         s2, a2, a3
                  addi         ra, s3, -1811
                  slti         t2, zero, 819
                  srlw         s11, t5, t4
                  div          s8, a0, t4
                  mulh         a4, s3, a5
                  rem          t3, s4, s5
                  srli         s1, s3, 4
                  mulhu        ra, gp, t1
                  xor          s1, gp, a3
                  and          s3, a7, s11
                  div          s8, a7, t6
                  srl          a6, s4, tp
                  lui          s3, 824979
                  srlw         s2, t5, s9
                  slti         t6, s10, 123
                  sra          t6, a7, a6
                  sra          s7, a4, t5
                  nop
                  mulw         s2, t1, s11
                  sraiw        zero, a3, 23
                  srl          a7, t2, t3
                  sllw         a7, ra, a0
                  addi         sp, tp, 654
                  andi         a1, s6, 346
                  sltiu        t0, s7, 48
                  sub          s8, s1, s4
                  sltu         tp, s5, a5
                  slli         s7, t0, 9
                  srai         t6, a4, 25
                  slti         s11, t1, 1063
                  ori          t5, a1, -1888
                  divw         s2, a7, t4
                  rem          s10, s1, t6
                  mulhsu       s5, s11, t2
                  divw         a3, a4, a2
                  addiw        a2, a4, 872
                  remuw        s2, s5, a7
                  remw         a5, t0, s0
                  srai         s6, a7, 58
                  xori         t6, s8, -1999
                  srli         gp, a0, 61
                  slli         s0, t2, 58
                  or           s8, a7, s4
                  auipc        s2, 1033446
                  addiw        s11, a4, -368
                  nop
                  mulh         s0, s11, t4
                  remuw        s7, a3, s7
                  lui          t6, 557266
                  nop
                  add          s11, t6, s10
                  addi         a4, t5, -1175
                  remu         s10, t6, tp
                  sltu         s6, tp, t4
                  mulw         a7, s10, t0
                  xori         s5, s4, -356
                  lui          s0, 619363
                  mulhsu       s8, t4, s10
                  remuw        sp, a0, a2
                  sra          a0, t5, t2
                  srl          a6, a1, a7
                  mulh         t5, a6, s8
                  and          sp, s10, s6
                  andi         s2, gp, -1925
                  or           s11, s7, t1
                  srlw         gp, t5, s9
                  sraiw        a6, a7, 28
                  slti         s0, a2, -101
                  xor          a1, s5, s4
                  mul          t0, t3, a1
                  andi         s10, sp, 1604
                  sra          sp, sp, t2
                  srai         s3, s10, 30
                  remuw        t2, ra, t5
                  mulhu        a4, tp, zero
                  mulhsu       s2, ra, s8
                  remuw        s11, a6, a3
                  slt          gp, s0, t2
                  mul          a5, t2, a4
                  sraw         s2, s0, s3
                  divu         s1, s4, s3
                  or           t2, a3, a7
                  sra          s0, s3, a1
                  divu         tp, s5, ra
                  srli         a2, s11, 40
                  add          s6, a4, tp
                  mulh         s8, s9, s8
                  mulw         a4, t6, t6
                  andi         gp, a1, -907
                  srli         t2, a7, 61
                  srli         a6, a1, 16
                  xor          sp, a2, tp
                  auipc        t2, 993292
                  srliw        zero, sp, 18
                  addiw        t0, s4, -802
                  mulh         s11, s3, a0
                  and          t1, s4, s8
                  srai         t3, a4, 23
                  srli         ra, s2, 14
                  sltu         a4, s10, s9
                  slli         a6, s2, 2
                  divu         s11, t0, t6
                  sllw         tp, ra, tp
                  slti         s6, gp, -862
                  slti         t3, s8, 1377
                  srliw        s2, s9, 24
                  srliw        s8, s2, 9
                  subw         t0, a2, t4
                  srli         gp, t2, 60
                  rem          a4, s8, ra
                  srlw         a7, s0, gp
                  rem          t5, s1, s7
                  and          a1, a2, s11
                  div          s6, a1, a5
                  srli         s0, a3, 60
                  sub          t3, s8, s6
                  remuw        tp, s10, t3
                  sltu         t6, t4, t6
                  sub          s1, s8, a6
                  mul          t0, tp, s1
                  add          a4, a4, a7
                  addi         s2, s11, -308
                  srl          s1, s0, a3
                  sraw         sp, tp, s9
                  and          s2, s9, a3
                  slli         a3, t3, 52
                  divu         s11, s6, s0
                  srliw        a1, a6, 4
                  divw         a3, s2, a2
                  sltiu        a7, zero, 351
                  ori          t5, sp, -657
                  divw         sp, t4, t2
                  slt          a2, s7, ra
                  sraiw        zero, s9, 30
                  or           t0, zero, sp
                  divu         t6, a0, s7
                  divw         t6, a6, a4
                  srlw         a3, s1, s8
                  subw         t3, a6, s2
                  mulw         t0, a3, a1
                  xori         a7, t5, 1685
                  xori         gp, s1, -1954
                  mulw         a7, s8, a2
                  subw         s8, a1, t3
                  slt          s1, s5, a6
                  slliw        s11, t6, 16
                  andi         a5, tp, -1645
                  slliw        s7, t0, 16
                  mulh         a0, t0, a1
                  srli         sp, gp, 32
                  subw         a6, a2, ra
                  mul          a7, zero, ra
                  rem          t0, a2, s2
                  auipc        gp, 703680
                  srai         s5, zero, 46
                  remw         t5, a3, a3
                  sraw         s5, s6, a5
                  addiw        a2, zero, 193
                  srai         s1, s9, 40
                  sraw         s1, t6, sp
                  mulw         s5, a4, s4
                  srai         a2, a0, 47
                  subw         t3, t3, a2
                  lui          a4, 725073
                  lui          s0, 293470
                  sltiu        t5, t3, 724
                  nop
                  mulh         s1, a2, t4
                  srl          tp, a3, zero
                  mulhu        s5, t2, t1
                  sraw         a3, s6, t6
                  remuw        t1, s0, s1
                  sraw         a4, s10, a2
                  sra          s8, a6, tp
                  remu         a1, a7, t6
                  remw         s1, s0, t2
                  addiw        a0, a2, 1082
                  xori         zero, t1, 1670
                  xori         s6, t4, -1494
                  sltiu        zero, t6, -1706
                  sltu         a1, sp, s7
                  sltu         t1, t6, s11
                  andi         s0, t6, 1033
                  andi         t3, t4, 1175
                  slliw        gp, s9, 4
                  remu         t3, s8, tp
                  sllw         gp, t5, a0
                  remuw        t5, s2, s0
                  srai         a3, t5, 1
                  slli         a3, s0, 7
                  srlw         s2, t3, a5
                  rem          t3, a7, a3
                  xor          s2, s4, s1
                  addiw        s2, s10, 1266
                  ori          a2, s3, 313
                  sllw         s1, s5, s2
                  srlw         a3, t4, t1
                  andi         t3, a6, -1705
                  slliw        s8, a1, 2
                  srliw        zero, s1, 1
                  addi         s3, t1, -450
                  sll          a1, a7, s0
                  subw         s5, zero, s6
                  srl          a2, gp, a1
                  sltu         ra, a2, s6
                  slli         t6, a1, 4
                  divuw        t6, s0, ra
                  divw         t5, a1, s1
                  remuw        a7, s0, t6
                  remu         sp, ra, t6
                  or           t2, a4, s2
                  addw         ra, t4, gp
                  remuw        zero, gp, tp
                  or           t2, a1, s6
                  remuw        s6, s4, t3
                  sltiu        a0, s7, -673
                  andi         sp, zero, 180
                  mul          gp, t6, s7
                  slt          s8, s4, t4
                  lui          a1, 625157
                  sllw         s11, s5, s6
                  rem          a7, s11, t3
                  mulhsu       a6, s1, gp
                  sub          zero, s4, s4
                  and          s6, t3, a0
                  mulhsu       tp, ra, a1
                  mul          s0, sp, s7
                  mulhsu       a0, s6, t6
                  andi         s2, a7, 1672
                  sraw         s2, sp, s5
                  mulh         a0, s4, s2
                  sllw         a1, a0, t3
                  srlw         ra, s11, t3
                  and          gp, s4, s7
                  mulhsu       a7, t6, s11
                  sra          t0, t5, s6
                  addiw        a3, s1, -2044
                  ori          a2, s4, -1212
                  remu         a3, s0, a7
                  div          gp, s3, t0
                  or           ra, s9, t0
                  slti         a1, s7, -1478
                  mulw         s11, t3, t3
                  srliw        ra, a2, 22
                  addw         s1, s0, s10
                  srli         s11, a3, 5
                  lui          a5, 179375
                  sll          t1, a7, t6
                  auipc        t2, 471971
                  ori          a1, s0, -122
                  ori          tp, a3, 1485
                  divw         a6, s2, a7
                  xor          s10, t5, a4
                  xor          a6, t3, sp
                  mulhsu       a0, s7, s6
                  divw         t5, a1, s7
                  remuw        s7, sp, t1
                  sltu         s11, s2, a7
                  remw         a1, t5, t2
                  sltiu        a4, t4, -112
                  xor          t5, s1, s11
                  srl          s1, s10, a5
                  sub          a0, t4, sp
                  sllw         t2, s6, t1
                  subw         s1, s5, a1
                  mulhsu       s3, s11, s4
                  remuw        s2, s2, tp
                  sub          a2, s4, s10
                  mulh         a0, s4, ra
                  addw         s10, s10, a6
                  div          ra, a5, s9
                  addiw        s0, t4, 271
                  subw         s1, t5, t2
                  auipc        s10, 172519
                  srliw        s6, t0, 13
                  ori          s10, a1, -716
                  sltiu        gp, s9, 628
                  auipc        gp, 163876
                  nop
                  remu         t2, a2, a0
                  sraiw        s2, s6, 27
                  addi         t6, s8, 1001
                  sub          t2, ra, a4
                  srlw         s11, s0, gp
                  addi         a5, t0, 2011
                  mulh         s3, a2, s1
                  auipc        t5, 170183
                  addw         a5, s0, s11
                  addiw        s1, t6, -241
                  sra          a3, a0, t2
                  addi         s3, a3, -627
                  sraw         a1, zero, t1
                  addw         s0, a6, a0
                  remu         t5, s10, s2
                  sltiu        s7, a2, 55
                  andi         t1, s8, -358
                  subw         s8, s10, a1
                  slli         s5, s2, 62
                  xor          s10, a3, a4
                  ori          t1, gp, 658
                  nop
                  slli         a0, t6, 17
                  sltu         tp, t1, t1
                  sllw         s8, s2, s11
                  lui          t0, 151972
                  mulh         t1, ra, s2
                  addi         t0, a5, -1559
                  and          s11, gp, zero
                  slti         a7, a2, -931
                  slti         s11, tp, -1906
                  addiw        s6, s6, 1043
                  and          a4, t1, t6
                  slliw        tp, t0, 30
                  add          s1, s3, a0
                  sub          t5, s11, t2
                  sltu         s6, t2, s7
                  srlw         s11, tp, s4
                  remw         zero, t4, s5
                  mulhsu       a2, t6, t6
                  addw         ra, t6, s3
                  sltiu        a0, s11, -969
                  slti         s7, a0, 189
                  remw         t0, s0, s4
                  and          ra, s11, ra
                  subw         s0, a0, t5
                  mulh         s3, s9, s0
                  sltu         t0, s6, a6
                  remuw        t5, s9, a0
                  sraiw        a5, s7, 20
                  mulh         s10, s0, s1
                  div          s11, a6, s2
                  mulw         s5, zero, gp
                  srai         t0, s1, 11
                  subw         sp, a4, s9
                  xor          t5, a1, a2
                  rem          s3, t4, t6
                  and          s1, t4, t2
                  srliw        s8, s10, 5
                  mul          s3, s8, a0
                  remu         s10, t6, s1
                  srli         t3, a7, 56
                  div          t0, a0, t2
                  subw         a4, gp, s3
                  mulhu        s6, s0, a5
                  andi         t0, a3, 1091
                  xori         s6, s3, -1224
                  remw         gp, s8, a5
                  slti         a5, s7, -1033
                  mul          s5, sp, a3
                  and          s3, t0, t5
                  addiw        s11, s4, -407
                  slliw        sp, s3, 16
                  ori          t0, t6, 96
                  mulw         zero, a4, t5
                  divw         t3, a4, t6
                  sll          a7, s1, t2
                  andi         s8, s9, -670
                  subw         t6, t5, sp
                  sllw         ra, a6, s4
                  mulw         s3, a2, s2
                  or           t3, s5, s8
                  sraw         s3, s2, ra
                  sraw         s8, t1, s0
                  sraw         s10, a5, s9
                  srl          ra, s6, t1
                  sltu         a4, a1, s7
                  sub          a1, t0, a1
                  xori         t6, s3, -514
                  rem          s7, gp, s10
                  rem          t3, s0, s8
                  mulhsu       a4, s0, s10
                  addw         t3, a3, a1
                  addi         a5, s8, 1616
                  srliw        sp, t5, 21
                  sltiu        a6, s2, 1192
                  xor          s5, s3, ra
                  andi         s1, a6, 1423
                  lui          a3, 269293
                  srliw        t6, s11, 16
                  mulhu        ra, s8, s2
                  slti         a1, s11, 863
                  add          a0, a0, t3
                  sraw         tp, t2, t3
                  srai         tp, a4, 51
                  sllw         ra, tp, s0
                  mulhu        a4, s7, a6
                  addw         a6, s8, t6
                  xor          gp, s6, a0
                  divw         tp, zero, a4
                  srl          s3, t0, t3
                  sllw         t6, s6, gp
                  lui          a3, 231608
                  remw         t6, tp, t4
                  subw         s5, a1, zero
                  and          s1, s11, sp
                  divw         a4, s10, t0
                  div          a0, s6, a5
                  remw         s5, ra, t3
                  slliw        a4, t1, 1
                  mulhu        a0, t1, a5
                  remw         s1, s2, s9
                  ori          t2, s9, -479
                  srli         zero, a2, 34
                  srai         s0, s10, 1
                  mulw         a5, a2, tp
                  sub          a7, s8, s0
                  mulhsu       t5, gp, a6
                  remu         t1, s1, tp
                  addw         ra, s0, s5
                  sraiw        s3, s6, 3
                  sltu         s6, s7, t6
                  sub          s6, a4, s0
                  sll          a1, gp, a3
                  srliw        s1, t2, 16
                  remu         tp, t5, s4
                  sll          sp, s10, t5
                  remu         t2, t1, s1
                  slliw        a1, s0, 20
                  slliw        s7, s9, 16
                  srai         t1, a6, 4
                  divw         s10, s6, s11
                  nop
                  nop
                  divw         t2, t4, a5
                  mulhsu       a5, s2, s2
                  xori         t1, t5, 858
                  sraw         zero, a6, t6
                  subw         tp, s10, t0
                  nop
                  divuw        s6, s7, s3
                  sll          s11, t1, s6
                  xor          s1, t1, s8
                  sra          t0, sp, s4
                  auipc        t3, 161896
                  addi         a1, t6, 1631
                  srai         t6, s2, 6
                  mul          s5, s11, s0
                  sll          s6, s10, s0
                  mulhsu       a5, t4, s7
                  srlw         a7, s6, a4
                  srliw        t1, s11, 12
                  mulhu        a1, ra, sp
                  srlw         s11, s9, tp
                  mulw         ra, a3, s1
                  mul          gp, t6, s8
                  mulhu        s2, a0, s4
                  rem          a4, s8, a1
                  mul          a1, t1, a1
                  ori          s5, s11, -956
                  addi         s11, t3, -182
                  divw         t2, ra, a5
                  add          a3, t5, s2
                  sltiu        t0, s5, -168
                  srli         sp, t4, 55
                  srai         s5, s4, 43
                  mulhu        a2, s4, s5
                  srli         a7, s11, 34
                  slt          t3, t6, tp
                  addi         t0, t6, 1194
                  srl          s3, a3, s3
                  sraiw        s5, s5, 4
                  subw         t6, s11, ra
                  divu         s5, a1, s4
                  remu         t5, zero, gp
                  auipc        t1, 972205
                  mulw         tp, zero, a7
                  srliw        zero, gp, 21
                  slt          a0, tp, a7
                  srai         t1, s10, 35
                  remu         s0, a4, s2
                  and          s5, a1, t1
                  mulhu        s8, s7, sp
                  remuw        s1, s6, s0
                  ori          s5, s5, 1642
                  srlw         a3, a0, s11
                  mulh         s6, t4, zero
                  remw         a4, a6, s8
                  lui          s5, 240160
                  mulhsu       s1, t0, s8
                  ori          t3, sp, 724
                  lui          t3, 982961
                  or           t3, t6, a0
                  div          s0, a4, gp
                  slliw        s0, s6, 4
                  mulhsu       t3, zero, a0
                  andi         sp, s3, -1705
                  auipc        s1, 701753
                  xori         s6, s3, -1565
                  sllw         a5, t4, ra
                  mulhu        a6, s7, tp
                  sraiw        a5, s8, 9
                  addi         s11, sp, -382
                  divu         t2, t4, t5
                  addiw        s2, t6, 1885
                  slliw        a7, s5, 16
                  and          a7, t6, s3
                  srl          s6, a4, s6
                  nop
                  slt          s1, s7, s5
                  sltiu        a0, ra, 1972
                  mulhu        t5, t1, s5
                  remuw        s11, a0, a5
                  remu         s7, t5, a3
                  srli         s6, s8, 31
                  andi         gp, t4, -599
                  mulhu        a4, a2, s6
                  addi         a2, s2, -879
                  div          t6, sp, zero
                  and          t1, a4, gp
                  div          a7, s0, tp
                  and          a1, ra, a1
                  mulhu        t2, s3, t5
                  andi         s6, t6, -859
                  and          s1, a5, sp
                  ori          s2, a3, -1978
                  addiw        s3, s10, -1499
                  xor          t5, s3, s5
                  sltu         s0, t0, zero
                  srliw        a6, s11, 28
                  div          a3, a1, t5
                  ori          t1, t1, -1632
                  auipc        a1, 740946
                  slli         sp, t3, 32
                  mulh         sp, s5, s7
                  lui          zero, 140902
                  sra          tp, t4, ra
                  slt          t0, a5, zero
                  divw         s0, s7, a2
                  xor          s7, s7, s0
                  divw         t3, a1, t6
                  addw         s11, s7, a7
                  ori          s11, t6, 1265
                  div          a3, t3, a4
                  rem          zero, s7, s2
                  sraiw        s10, t2, 22
                  divw         tp, s0, s9
                  slliw        s6, s2, 16
                  rem          t0, a4, ra
                  srli         a1, t4, 31
                  remuw        t5, t0, t1
                  auipc        a3, 884019
                  slli         a4, tp, 4
                  ori          gp, tp, -669
                  auipc        a3, 254604
                  andi         a2, tp, 1056
                  remu         a0, sp, s3
                  sll          t2, sp, a6
                  srli         a3, s10, 62
                  mulh         t5, a2, t6
                  srliw        a7, s4, 19
                  divu         ra, s8, gp
                  divuw        a3, gp, a6
                  remu         tp, t2, sp
                  slli         s11, a1, 49
                  sll          a3, s6, s4
                  addiw        t0, s3, -1487
                  rem          a4, tp, t1
                  mulw         a5, s9, zero
                  sub          a1, t5, t4
                  sll          a4, a6, ra
                  mul          s3, ra, a3
                  add          a7, s0, a2
                  slliw        t0, s7, 11
                  sraw         zero, s8, s2
                  divu         a1, a0, s7
                  xori         a0, s4, 837
                  lui          t1, 447197
                  sll          s11, t4, s10
                  srliw        s2, s1, 31
                  remw         a6, t3, a6
                  sltiu        s6, a0, -927
                  sraiw        s8, s11, 9
                  sub          a7, t4, a7
                  divu         a2, t1, t0
                  div          s5, s10, a1
                  mulw         s6, gp, s2
                  srl          s10, a7, s11
                  add          t5, t3, t3
                  divu         t5, sp, s0
                  slt          s5, s10, s0
                  addi         a1, a3, 7
                  mulh         a2, s0, a1
                  sll          s6, s7, s1
                  auipc        s10, 551134
                  lui          ra, 950922
                  xor          s7, a0, s5
                  xor          a5, s11, a7
                  subw         a7, tp, a2
                  remuw        gp, ra, a0
                  mulw         a6, a5, s11
                  slliw        s6, s4, 26
                  srliw        t3, s4, 22
                  sll          s1, a3, s2
                  xori         s8, a6, 940
                  mul          a7, a0, sp
                  xori         a1, s9, 1827
                  andi         a1, s3, -1019
                  mul          gp, t6, t1
                  lui          t2, 179813
                  sraiw        s0, s3, 7
                  sub          s1, t4, a3
                  sraiw        s11, t6, 16
                  xori         s1, a5, -752
                  mulhsu       t0, a1, sp
                  ori          s1, t1, -669
                  ori          t6, a3, 5
                  remuw        t5, s3, s10
                  addi         s5, t2, 963
                  slt          t0, t0, t3
                  xori         t5, s7, -1759
                  sltiu        a3, s4, -1007
                  sra          gp, s10, s2
                  add          a7, s2, a0
                  lui          s11, 1044923
                  nop
                  rem          s8, t1, s9
                  remuw        a2, t3, t4
                  subw         t6, s0, a3
                  ori          a7, sp, -1074
                  mulh         a4, t3, s10
                  sraw         a3, a6, t4
                  divu         s2, a4, a1
                  add          a3, s7, a0
                  add          a6, a3, t2
                  remuw        t3, a2, s8
                  sub          t1, gp, zero
                  mulh         t5, t4, t4
                  divuw        t0, s3, s7
                  auipc        t0, 936598
                  slti         s11, a2, 1475
                  nop
                  xor          t5, t0, gp
                  sraw         s10, gp, a6
                  srl          s2, s7, s6
                  add          s1, zero, s9
                  addi         a3, s7, -1757
                  rem          s6, zero, s3
                  mulh         a5, t6, ra
                  sub          s6, s2, s10
                  slti         t3, s7, -911
                  sllw         a5, s3, a3
                  divuw        t3, zero, t1
                  subw         a4, a4, ra
                  slti         t2, t6, -624
                  srai         s11, a7, 25
                  divw         a6, s8, s6
                  sltiu        t3, t1, -217
                  mulw         t0, a4, a2
                  divu         s3, s3, ra
                  addi         s6, t0, -597
                  remu         s10, s8, s10
                  slt          a1, t2, s2
                  srai         s0, a0, 29
                  addiw        a6, a5, 1778
                  mulhsu       t0, zero, sp
                  remu         s3, ra, a5
                  div          a2, t2, s5
                  remuw        a6, zero, t1
                  divuw        t2, a3, a0
                  slti         s1, s4, -2027
                  divuw        s3, zero, t3
                  slliw        s7, s4, 4
                  xori         s8, t5, 633
                  srli         s8, a4, 47
                  addi         s11, ra, 1593
                  sra          s8, zero, t6
                  divw         s2, tp, s5
                  xor          t1, ra, t2
                  xori         s8, tp, -1960
                  sltu         a6, s3, t4
                  sltu         s1, s9, t0
                  sub          t2, a2, s10
                  slliw        s11, ra, 31
                  andi         a7, ra, -1032
                  sltu         gp, s10, s1
                  remu         t2, s8, a1
                  addw         t6, a1, t4
                  xori         s5, a0, -522
                  srli         a7, s6, 10
                  divw         t1, t2, s7
                  divu         a7, a0, s2
                  xor          t6, a0, s5
                  slti         tp, s3, -361
                  xori         a6, a4, 1893
                  srliw        t1, ra, 29
                  mul          s11, s6, a5
                  add          s7, s0, a5
                  nop
                  auipc        t1, 228888
                  mulhu        s5, a7, s2
                  sra          t6, a6, a0
                  mulh         t5, a0, t1
                  auipc        s1, 839029
                  sub          t6, s2, s10
                  mulh         a6, s2, gp
                  remuw        ra, a7, s10
                  slli         a2, s1, 26
                  divw         t1, s5, a6
                  remu         s7, s1, s3
                  nop
                  slti         a3, s2, 1205
                  or           a5, a5, s4
                  lui          ra, 726542
                  lui          s11, 695429
                  div          t1, a1, tp
                  mulh         a7, s2, a7
                  srlw         s11, s8, a3
                  sra          zero, s0, a2
                  mulhsu       s0, a2, s7
                  mulhu        t3, gp, s7
                  xori         s11, tp, 523
                  and          a6, t5, s11
                  add          zero, s7, a2
                  lui          a7, 194860
                  divuw        s0, t5, gp
                  remuw        t0, a6, zero
                  andi         sp, a6, -1537
                  andi         t1, t4, -707
                  slliw        a2, ra, 4
                  or           t6, s8, s10
                  sub          ra, s7, a5
                  addiw        a4, s7, 1741
                  rem          gp, s7, s2
                  slti         s1, t2, -138
                  sub          s1, a1, a1
                  add          t3, a7, s3
                  slliw        a4, tp, 29
                  xor          s10, s3, a7
                  subw         a6, s10, ra
                  divw         a7, sp, a4
                  mul          t2, a0, s1
                  divuw        s6, s6, t0
                  remu         gp, t0, s2
                  div          s5, s5, s3
                  add          s0, t5, t1
                  addw         s5, t2, t3
                  rem          t1, a7, a4
                  addw         s7, a5, s6
                  xori         s6, s10, 1904
                  add          t6, t1, s4
                  slt          s1, s8, s3
                  slt          a4, zero, t0
                  srlw         tp, t5, t2
                  remuw        s2, s6, a6
                  addw         gp, ra, tp
                  srlw         gp, a6, a5
                  addw         a4, s9, s2
                  addw         a3, zero, s8
                  rem          a6, s3, a1
                  slli         t3, gp, 18
                  mulh         a6, s11, s5
                  remw         a4, t0, t3
                  mulh         zero, a2, sp
                  mulh         s6, t6, s7
                  sraw         t3, a0, t5
                  xori         t3, t1, -1545
                  xori         gp, sp, 1026
                  sraiw        t3, s6, 9
                  remw         sp, ra, t5
                  remu         s0, t6, s10
                  slli         t5, s11, 63
                  ori          gp, t0, -1213
                  sub          t6, t0, t3
                  rem          zero, a6, s5
                  remw         a3, s2, s5
                  sllw         t2, a7, zero
                  remw         a7, s6, s3
                  add          s0, s9, t4
                  srai         zero, s4, 28
                  sraiw        ra, s10, 21
                  mulh         s5, s2, s10
                  or           s11, a6, a4
                  subw         s11, a5, ra
                  ori          s6, t2, 1934
                  lui          a6, 458964
                  sub          gp, ra, t4
                  auipc        s0, 681689
                  slli         t3, t5, 55
                  srlw         a1, t3, s3
                  addi         a7, s3, -162
                  sra          t3, ra, a2
                  sltu         a7, s11, a7
                  sra          s1, zero, t6
                  and          s1, t5, t5
                  subw         ra, s4, s2
                  sltiu        zero, gp, -1498
                  srl          s1, s1, a2
                  lui          s11, 331198
                  sra          t2, a7, s2
                  mulhu        a2, t1, a6
                  div          zero, s9, s1
                  srli         t6, a6, 54
                  srliw        t3, s0, 21
                  mulw         a1, a7, s6
                  andi         a4, s8, 1763
                  mulh         s6, t5, t1
                  auipc        a5, 58256
                  sraiw        t3, a4, 14
                  srl          s11, s8, s5
                  add          a1, s10, a7
                  sraiw        a7, t1, 13
                  add          t6, t3, a6
                  remuw        s0, s7, a1
                  srl          a4, gp, a4
                  sll          a1, t3, s11
                  sltu         s11, s6, a4
                  divw         s10, gp, s8
                  addi         a4, s1, -1641
                  addw         a0, s8, t5
                  rem          s7, s9, s1
                  add          a5, a7, a0
                  srl          t0, s6, sp
                  div          t1, ra, s11
                  addiw        t6, tp, -689
                  mulhsu       tp, t6, s4
                  addi         ra, s1, 905
                  sltu         ra, a3, a7
                  remuw        s10, zero, gp
                  divw         a2, t1, a6
                  mulhu        s3, gp, a5
                  addw         t2, s11, s7
                  srliw        s10, sp, 0
                  sra          s1, a4, t1
                  add          a7, s5, tp
                  divw         gp, s0, a6
                  slli         s5, t1, 15
                  srlw         ra, s6, t0
                  ori          s1, a1, 254
                  ori          s11, s2, 382
                  remu         a4, s6, zero
                  andi         s11, sp, -1615
                  mulhu        t1, s4, t0
                  remw         s0, a0, a1
                  srai         ra, t2, 18
                  mulw         tp, a7, zero
                  sllw         s11, s4, s10
                  or           t2, s5, tp
                  slli         t6, s8, 36
                  and          ra, s2, a0
                  slli         s5, a1, 57
                  remw         a1, t2, s7
                  mulhu        t3, t0, s11
                  addi         ra, t3, -332
                  slli         a0, s6, 0
                  and          s8, s4, a4
                  srli         a5, s6, 54
                  srai         s3, sp, 9
                  sraiw        t0, tp, 31
                  sub          s10, a7, t3
                  lui          s3, 537525
                  sltiu        zero, s4, -1135
                  srlw         s8, s5, t1
                  addw         s0, a7, s10
                  remuw        t5, a4, s0
                  subw         a7, s7, s8
                  addw         t2, ra, t3
                  xori         a0, a1, 1808
                  ori          s3, t5, 1217
                  sllw         a3, s0, a2
                  rem          a2, t2, t2
                  ori          zero, s2, -1134
                  mulhu        tp, a2, s7
                  mul          a1, a5, gp
                  slli         tp, a2, 17
                  addiw        t0, a1, 566
                  sllw         a0, s6, s2
                  andi         t0, s4, 1185
                  srlw         a2, t5, a0
                  and          sp, a7, s10
                  remuw        a2, a1, sp
                  rem          s7, t0, gp
                  and          zero, t4, gp
                  addw         a0, t4, a2
                  srliw        s10, s1, 5
                  remu         a2, s4, a5
                  add          zero, ra, s5
                  subw         a2, tp, a6
                  addw         s1, sp, t1
                  slti         t5, s5, -1759
                  addi         s5, a7, -1465
                  remu         s10, sp, zero
                  divu         s3, t2, a7
                  subw         s7, ra, s6
                  srliw        t0, a5, 12
                  sltiu        t1, a5, -962
                  xor          s2, t2, t3
                  remu         s1, gp, s1
                  mulhu        a7, s1, a5
                  sltu         s8, s4, s0
                  addi         s10, s8, 488
                  mulhsu       a3, a0, s8
                  xor          t0, tp, tp
                  srai         s7, t0, 61
                  and          sp, t1, tp
                  subw         s3, s6, s4
                  ori          s0, t6, -1629
                  slt          s7, s0, t5
                  slt          zero, t6, gp
                  remuw        sp, t6, t3
                  sltiu        s2, tp, 667
                  divu         s8, t1, s1
                  add          t5, a3, s9
                  or           s5, s7, s0
                  divu         t0, sp, s9
                  div          s0, ra, s7
                  divu         gp, a3, a5
                  mulw         a7, sp, a5
                  remw         s8, s11, a5
                  xori         t1, s3, 1970
                  div          a6, tp, a0
                  nop
                  sll          s6, a5, t1
                  xori         s0, s6, 1695
                  add          s5, s3, s6
                  mulhsu       t6, s5, t5
                  subw         a0, t3, t0
                  slti         a5, t3, -1802
                  and          s5, s3, s1
                  rem          s7, s2, s9
                  or           ra, ra, s9
                  mulw         s10, t0, s9
                  remw         s7, s2, zero
                  subw         s10, t1, a4
                  srl          s5, tp, a3
                  remw         a7, a0, zero
                  remuw        tp, s1, s1
                  sra          a3, sp, gp
                  sllw         a2, s11, a5
                  mulw         s0, s6, t0
                  divw         zero, s0, t4
                  sll          t6, s5, t1
                  slti         t6, sp, 23
                  slt          s7, zero, t5
                  remw         s0, t2, a6
                  sll          a3, a4, s5
                  div          s8, t4, t4
                  divw         a4, s5, s10
                  sraw         s5, s10, t6
                  slli         s7, s5, 29
                  xori         s11, t2, 942
                  or           sp, tp, a7
                  slli         a4, t6, 57
                  sraiw        s11, t3, 21
                  add          s8, a6, s2
                  mulw         zero, s11, t3
                  and          s3, t1, a3
                  sltu         s1, zero, s11
                  srlw         a1, tp, sp
                  slti         a3, s4, -1487
                  mulhu        s11, s1, t6
                  remu         a0, a4, s1
                  lui          s6, 539685
                  sltiu        t1, s11, -770
                  rem          s10, s9, zero
                  srli         s2, s10, 47
                  srl          sp, s0, s3
                  or           t2, t1, t4
                  addw         s3, s10, tp
                  srliw        t3, s8, 1
                  sraiw        s2, a7, 8
                  sraw         sp, a6, a2
                  divw         gp, s10, a4
                  mulhsu       a3, s11, a4
                  mulw         s7, s3, s3
                  sra          a3, s3, gp
                  xori         sp, tp, -408
                  srliw        s5, t4, 15
                  mul          s8, s7, s2
                  divuw        t1, s2, zero
                  divuw        t5, ra, s4
                  div          s7, ra, t0
                  and          tp, a0, t1
                  sraiw        t3, a5, 22
                  xori         t3, s1, 439
                  addi         s3, s1, 1314
                  mulw         tp, s2, ra
                  sllw         sp, s8, s6
                  mulhu        t0, s4, a6
                  or           t3, s11, zero
                  divw         t1, a7, t4
                  sltu         s3, t4, s0
                  addw         s3, tp, s4
                  auipc        a1, 794587
                  srl          s8, s8, zero
                  add          a6, t6, a1
                  mul          s6, s5, a0
                  addi         t3, t6, -555
                  and          a1, a5, t3
                  srlw         s0, a4, s3
                  xori         t2, s1, -2023
                  or           a2, gp, s9
                  sllw         s0, t1, t1
                  sll          s7, t4, s4
                  divw         a2, a2, s9
                  slli         zero, a0, 58
                  sra          a6, t3, t3
                  divuw        a1, a7, s4
                  lui          a0, 181954
                  srai         t5, sp, 54
                  sltu         s2, a3, s10
                  srl          ra, tp, s0
                  addiw        a5, t1, 1018
                  sltiu        s6, t5, -595
                  mul          t2, t0, a7
                  sra          s5, a1, s1
                  sraw         t3, s8, zero
                  lui          t1, 647656
                  xor          t5, t4, t0
                  srlw         s7, s0, t4
                  remu         a1, a5, s8
                  addi         a7, s1, -88
                  subw         a1, s1, a1
                  or           t3, a3, t0
                  srliw        s1, gp, 25
                  sub          a0, t3, s6
                  xori         t1, a0, 1692
                  sra          a0, s10, t5
                  addi         gp, a3, -1470
                  addw         a1, s5, s11
                  ori          gp, s2, 1638
                  div          a6, s8, t1
                  divu         a4, t1, t3
                  mulw         a6, s9, a2
                  lui          zero, 305720
                  divuw        s5, a1, s7
                  mulh         a4, s4, t5
                  nop
                  mulhu        t1, t5, t4
                  or           a7, t2, t6
                  sll          t0, s10, a6
                  mulhu        s7, t4, t1
                  and          a5, a1, s6
                  remu         t6, s0, a0
                  srl          t3, s11, s1
                  srlw         s6, t5, a5
                  srl          s2, s7, t3
                  auipc        a7, 370804
                  or           a2, s10, a7
                  xori         tp, ra, -870
                  divw         t6, a1, s6
                  addw         a0, s4, t1
                  andi         s2, ra, -228
                  srl          s2, tp, tp
                  sraw         s8, s9, s3
                  sll          t6, a7, t4
                  remw         a4, s10, a0
                  srliw        a3, s9, 7
                  andi         s6, a1, 660
                  divu         zero, s7, t4
                  srli         a2, t0, 17
                  divu         zero, a1, t4
                  div          s3, t3, t5
                  divuw        t2, a7, s10
                  rem          a1, s7, t6
                  srli         tp, a4, 39
                  sltu         tp, a5, s9
                  sll          sp, s11, t5
                  srli         a4, a1, 49
                  slt          s1, t6, s5
                  mulhu        ra, gp, s2
                  slt          t0, s2, s6
                  mulw         s3, a1, tp
                  sll          s3, t6, tp
                  slti         s11, tp, -1298
                  mulw         s6, a1, t2
                  sraiw        s2, s11, 30
                  mulhsu       a3, s5, ra
                  slli         t0, ra, 61
                  rem          a1, s7, s4
                  slti         ra, a4, 1403
                  slli         t6, s9, 9
                  slli         t1, s9, 21
                  addi         a0, s7, -1871
                  srai         a5, s11, 15
                  remu         t0, a5, t4
                  mulw         sp, s1, t0
                  xor          s6, a3, s2
                  divuw        t6, a4, a5
                  slli         a3, s1, 49
                  xori         t5, t1, 613
                  or           gp, s8, a5
                  sltiu        s10, s11, -434
                  srai         a0, zero, 63
                  slti         tp, a6, 218
                  and          s7, tp, s4
                  nop
                  sraw         s5, t6, t1
                  mulh         a7, s8, t5
                  slt          t1, s11, s4
                  mulw         s1, a3, s4
                  remuw        t1, t2, a7
                  remw         s10, a3, t2
                  addw         gp, a7, t1
                  remw         s2, sp, a2
                  auipc        zero, 156378
                  and          t1, a5, s8
                  remw         s6, s6, s4
                  sltiu        zero, a3, -359
                  xori         s5, a4, -1501
                  mulh         s2, s0, t5
                  slli         a2, a1, 9
                  divw         s6, t1, s9
                  mulh         s7, s8, t4
                  divuw        t0, a3, a7
                  sll          s0, tp, sp
                  srlw         a1, s6, a1
                  subw         a6, s8, a2
                  slt          a6, s0, s5
                  srl          s11, zero, tp
                  xor          t1, a7, s10
                  srli         s3, ra, 15
                  sllw         ra, s10, a7
                  sub          a2, t5, sp
                  sraiw        t3, t1, 8
                  ori          a1, t4, -1738
                  sraw         gp, a3, t3
                  addiw        s5, s7, 3
                  mulhu        ra, s8, a5
                  addiw        a0, s4, -1599
                  auipc        s5, 295371
                  addi         sp, ra, 705
                  mul          s1, t5, a3
                  srl          a7, a4, s11
                  mulh         t6, s5, sp
                  subw         tp, a0, a0
                  divu         a7, gp, s7
                  mulhu        a1, t1, a7
                  remw         s11, a3, s2
                  lui          tp, 35696
                  sll          s6, s5, s0
                  mul          sp, a7, s8
                  srai         t2, s2, 7
                  slt          a4, a0, t4
                  srliw        a1, s8, 12
                  sltiu        s11, s4, -617
                  subw         t5, s2, s11
                  rem          t6, tp, s5
                  rem          t3, tp, s5
                  lui          s0, 912699
                  sub          a2, s10, s7
                  remu         a6, a1, ra
                  mulhu        zero, a4, gp
                  lui          a6, 31785
                  xori         a6, tp, 1440
                  auipc        sp, 591805
                  div          s0, s10, tp
                  lui          s11, 252438
                  srl          t2, zero, s8
                  xori         t0, s11, 1612
                  sllw         sp, t6, a2
                  srliw        t3, t1, 21
                  xori         a1, s10, -686
                  subw         a4, a1, s11
                  srli         s8, s8, 45
                  sub          a1, a1, s6
                  sltiu        s8, t2, -1955
                  sub          s1, s2, t4
                  andi         a1, a7, 806
                  andi         s6, s0, -1925
                  srliw        a1, s4, 16
                  slti         a6, a5, -193
                  sltiu        s3, s6, 1248
                  xori         a4, t6, 324
                  xori         ra, s7, 531
                  sltu         t5, s9, a4
                  divw         s7, a4, a6
                  addw         s10, a5, s5
                  srli         a4, sp, 31
                  ori          sp, s0, 1317
                  addi         a0, a1, -985
                  addi         s7, a5, -1518
                  remw         a7, zero, gp
                  remw         ra, gp, s2
                  srliw        t2, s3, 2
                  remu         s10, a3, a1
                  srliw        a3, tp, 18
                  and          zero, s1, a3
                  sub          s5, a2, t6
                  srlw         ra, gp, a3
                  sraw         a3, s6, a0
                  srli         s11, t1, 59
                  xor          s1, s11, t4
                  xori         t2, t6, 1043
                  divuw        s1, a4, a1
                  lui          a5, 653734
                  sll          s11, s6, s2
                  srlw         s1, s2, a5
                  slliw        s5, a1, 14
                  mulw         s2, a2, s7
                  divuw        a3, a0, a5
                  sub          ra, tp, s3
                  addi         s6, t4, 1136
                  sll          a5, t1, s8
                  divu         t6, a5, t3
                  add          a1, s2, s10
                  xor          t0, a4, t4
                  xor          s1, s11, s2
                  slt          s10, t4, sp
                  mul          t0, t6, s11
                  xori         a4, t5, -386
                  addi         s3, s0, -883
                  sll          a5, s4, a3
                  addw         sp, a6, t5
                  mulhsu       a6, s9, s2
                  remu         a6, s9, s3
                  slt          a6, a2, s1
                  remw         t2, a1, t6
                  sll          sp, t6, gp
                  auipc        s7, 248848
                  or           t6, zero, a2
                  mul          a4, a6, a2
                  xor          s11, s1, t5
                  divw         s1, zero, s3
                  divw         a2, tp, t0
                  sll          t3, s10, t0
                  sllw         s0, a0, t6
                  nop
                  mul          t2, s0, s6
                  sra          s1, s1, sp
                  andi         s8, a6, -216
                  srlw         t5, s10, a0
                  mulhu        gp, t3, t2
                  slli         t0, a2, 32
                  srliw        s3, s9, 27
                  srliw        s3, s6, 10
                  remu         t1, s9, s0
                  addw         a6, s6, a7
                  ori          a5, t0, 73
                  divw         t0, s2, tp
                  srliw        t3, gp, 21
                  or           tp, a1, a5
                  andi         a1, s2, 1291
                  slliw        gp, a7, 29
                  mulhu        t3, a1, s8
                  slti         zero, t1, -1435
                  slliw        s8, s2, 22
                  srliw        s5, a5, 30
                  auipc        s7, 968660
                  srliw        t6, s0, 31
                  addi         t6, t2, 1857
                  xori         tp, s8, 95
                  xori         s10, a1, -865
                  subw         a3, a0, t5
                  auipc        t3, 158909
                  slt          a0, a0, zero
                  remw         s10, sp, s6
                  and          ra, t5, a2
                  auipc        s1, 779348
                  sra          a5, a2, s5
                  sll          s2, t6, sp
                  slli         gp, sp, 54
                  divu         a7, a4, s6
                  ori          t3, s10, -1105
                  lui          tp, 971569
                  rem          t2, t3, s10
                  addw         s7, a0, a6
                  remw         s1, gp, t4
                  mulhsu       a0, zero, ra
                  mulw         zero, t1, zero
                  mul          tp, t2, a0
                  divu         t3, zero, s5
                  srli         s0, sp, 38
                  mulh         s0, a5, a0
                  divu         t6, s11, a7
                  subw         gp, t1, t2
                  nop
                  slt          t6, s10, s8
                  sltiu        s11, t2, -1416
                  srl          t2, t2, tp
                  sra          a7, s0, t4
                  div          t5, a2, s8
                  addiw        ra, zero, -1293
                  mulhu        s7, t0, a5
                  remu         s0, s2, s10
                  srlw         s5, t0, s9
                  addi         t2, s2, 1930
                  remuw        a3, t4, s7
                  slli         a1, a7, 40
                  mulhsu       s8, s7, t0
                  addi         t6, s1, -1657
                  slt          gp, gp, s6
                  sllw         t5, zero, t0
                  mulhsu       tp, a5, zero
                  divuw        a3, tp, s6
                  divu         t2, s4, t2
                  nop
                  mulw         t1, tp, gp
                  sra          s10, s3, s1
                  slt          t1, s2, s1
                  sraiw        a4, a5, 2
                  ori          t1, s1, 1237
                  xor          t2, t4, ra
                  srl          s0, a6, s7
                  addi         a7, s5, -447
                  subw         s8, t4, s1
                  andi         t5, s10, 1043
                  sra          gp, s1, s1
                  andi         t1, a7, -2030
                  div          s5, tp, a6
                  xor          s5, zero, s2
                  addw         t1, gp, s4
                  remuw        s1, t2, zero
                  sltu         s5, s8, s4
                  srl          a7, s6, a1
                  remu         a0, s1, a6
                  nop
                  sltu         tp, s0, tp
                  sltu         t3, t3, a4
                  divw         a5, zero, s1
                  remw         a7, s6, s2
                  sub          s2, t0, t0
                  srlw         t6, t4, a7
                  xor          s8, s5, sp
                  sraiw        s1, a6, 23
                  addw         s10, tp, a2
                  lui          a0, 491906
                  mul          a6, t5, a6
                  remu         zero, t4, a3
                  remw         a1, s6, s5
                  mulhu        t6, s8, zero
                  mulhsu       s6, s11, a0
                  div          sp, a6, s1
                  sraw         s11, t2, s6
                  div          a5, a3, t1
                  srai         a4, a4, 20
                  subw         zero, t4, t4
                  xor          s5, t4, s2
                  sraiw        t3, a3, 24
                  addw         s1, t3, s0
                  slt          s10, t2, s11
                  ori          a6, s11, -1766
                  remuw        t6, s0, t0
                  slliw        a7, s10, 13
                  subw         s10, s4, sp
                  xori         s7, a7, -1841
                  mulh         s0, a4, a4
                  sraiw        a6, t2, 4
                  slli         s3, a2, 14
                  srlw         sp, s4, t3
                  divu         s10, a4, ra
                  and          t0, gp, s0
                  div          tp, ra, t2
                  remu         a5, sp, t0
                  div          s10, a4, a1
                  sraw         a0, zero, t3
                  rem          a5, s0, a1
                  divw         a0, sp, s3
                  mul          t1, a0, gp
                  sraiw        s3, t2, 8
                  srli         s10, tp, 48
                  srai         s1, s0, 6
                  slli         a4, a2, 39
                  remu         t2, s6, t2
                  subw         a2, a2, s0
                  sltu         t5, a3, s4
                  srl          s5, s5, a3
                  addi         s11, t1, -1389
                  sltiu        a3, tp, 151
                  srl          t6, s5, a1
                  divuw        s10, t4, t5
                  divu         s0, s10, s2
                  sraiw        sp, s5, 4
                  addw         s0, t4, ra
                  srli         a3, t3, 48
                  sllw         t3, a4, sp
                  mulhsu       s6, s3, a3
                  sltiu        a3, s11, -1936
                  remuw        t3, tp, s9
                  mulhu        s6, tp, s2
                  slti         s0, s9, 687
                  auipc        s1, 24034
                  divw         s1, s8, a4
                  xor          t0, t2, zero
                  sub          s1, s10, t2
                  nop
                  sllw         a7, a4, a1
                  slliw        s1, tp, 7
                  sltu         tp, t0, tp
                  rem          a4, s8, s9
                  ori          a1, t5, 1665
                  lui          ra, 305035
                  sub          a7, a3, s10
                  slli         s2, a1, 18
                  sltiu        sp, a5, 1611
                  remw         s1, s3, t3
                  srai         s5, s4, 14
                  sra          s11, t0, s5
                  divw         s5, t1, t1
                  slliw        s6, ra, 1
                  nop
                  sllw         s6, s2, s2
                  addiw        s5, t5, -1698
                  sltiu        s5, s9, -1810
                  srli         t3, tp, 62
                  subw         a7, s6, s10
                  auipc        gp, 12274
                  mulhu        a1, a7, a5
                  nop
                  auipc        a0, 494458
                  andi         s8, s8, 209
                  rem          s10, s4, t6
                  srlw         a1, a3, s1
                  remw         a5, a7, s2
                  slliw        a7, s8, 20
                  slli         s6, t0, 25
                  slli         t6, s9, 53
                  mulh         a5, s11, t2
                  slti         t0, a5, -1750
                  slti         s8, zero, -1543
                  nop
                  remu         s5, ra, s2
                  sltu         a6, sp, s4
                  and          s0, tp, a7
                  divw         t6, s1, s4
                  remu         t2, s1, ra
                  divu         gp, a2, gp
                  sll          s10, s2, t3
                  sll          a2, a0, s8
                  slti         s1, t0, 334
                  mul          s11, s8, a0
                  slt          s6, s8, s8
                  remu         tp, a2, a5
                  auipc        a2, 846054
                  divu         a4, t5, s1
                  and          a4, t2, t4
                  sllw         gp, t4, t4
                  slli         t2, s11, 44
                  remuw        t3, t5, a6
                  lui          t3, 1006261
                  rem          a6, gp, a3
                  divuw        zero, s11, t3
                  sltiu        s5, a0, 1154
                  div          t1, gp, t4
                  ori          t3, a1, 1013
                  or           sp, s7, a1
                  addi         t5, s3, -1476
                  sllw         t3, s1, s5
                  srai         a7, s1, 42
                  xori         a7, s11, 584
                  addw         s1, s3, a3
                  mulhsu       a7, a4, s4
                  ori          s1, t1, 953
                  auipc        t3, 827652
                  lui          t2, 751002
                  slt          a7, t5, s5
                  srlw         ra, s7, s7
                  remuw        s11, s9, a5
                  srliw        s8, ra, 7
                  srliw        s2, s5, 31
                  sraw         t3, s3, s1
                  xori         sp, gp, -319
                  srai         a6, t6, 20
                  mul          a7, s8, a6
                  or           s6, t6, a5
                  andi         a5, s7, -427
                  subw         t2, gp, s4
                  subw         a4, t5, t1
                  divw         s7, s8, a7
                  slliw        gp, s11, 28
                  srliw        a3, a0, 28
                  divw         a3, ra, s7
                  add          s3, s1, s10
                  remu         sp, t5, s11
                  slliw        s10, s9, 14
                  mul          a7, sp, a7
                  srl          t2, s1, s1
                  remu         s8, a4, s10
                  divuw        a7, s6, t3
                  mulhu        s0, t3, a3
                  sra          t1, a3, a4
                  xori         a2, zero, -1704
                  sub          t1, a4, t3
                  sllw         a3, t5, a5
                  mul          s10, a6, s5
                  srli         a0, t2, 48
                  or           a5, a2, sp
                  srl          s6, a0, s4
                  sra          s11, a4, a4
                  slliw        sp, t4, 3
                  sraiw        a7, a6, 30
                  lui          a7, 1026534
                  remw         a3, a6, zero
                  sra          a7, a7, gp
                  mulhsu       s5, s6, a2
                  mul          s3, a1, gp
                  rem          s3, a7, t0
                  mulw         t1, s8, s8
                  mulw         t5, t4, s4
                  mulh         ra, s9, a7
                  lui          a4, 941006
                  div          t3, s3, gp
                  rem          t6, a7, a0
                  lui          s11, 873
                  divw         s7, s5, a6
                  rem          a0, s10, s3
                  rem          gp, t2, a0
                  sub          s10, s5, t4
                  sraw         t6, t5, a4
                  rem          s8, t0, s2
                  and          tp, s6, s1
                  srl          t2, s4, sp
                  remuw        s1, s6, s1
                  sraiw        s7, t1, 5
                  srai         s0, a7, 39
                  srli         a0, s5, 34
                  divuw        s11, t0, zero
                  mulw         a3, s0, s9
                  divuw        a7, a2, s6
                  subw         a5, t5, s5
                  remu         a1, t2, t2
                  remu         s1, ra, sp
                  slli         a3, a2, 34
                  remuw        a2, s10, gp
                  srai         t3, a6, 9
                  rem          a4, t0, a7
                  ori          s6, s1, 1403
                  srl          t1, s8, a5
                  or           gp, t2, t2
                  subw         tp, t1, t1
                  xori         a3, s10, -1023
                  addi         sp, t4, -237
                  mulh         t2, s4, s8
                  slli         t1, s11, 41
                  nop
                  xori         gp, s2, 479
                  divuw        s10, s1, a4
                  and          a7, a4, a5
                  nop
                  mul          t6, s10, t4
                  srliw        s8, t6, 23
                  remuw        a3, s0, a5
                  sraiw        a7, zero, 11
                  divu         gp, s11, t3
                  srlw         s7, a4, a1
                  srl          tp, a4, a2
                  rem          ra, s0, a4
                  lui          s7, 982399
                  srai         s10, t6, 2
                  div          sp, s5, a7
                  sub          tp, s3, s5
                  slli         ra, t4, 41
                  auipc        a4, 361562
                  mulhsu       a3, s0, s7
                  slliw        a6, s0, 6
                  addiw        t2, zero, 1231
                  ori          t2, a1, -627
                  addw         s7, s0, s9
                  divw         t1, a5, s1
                  xor          s5, s4, sp
                  sltiu        t2, s6, -1480
                  or           s1, t1, t4
                  divw         sp, ra, zero
                  srlw         sp, s0, s8
                  mulhu        s10, s6, s10
                  srliw        t5, t4, 11
                  sll          a3, s2, sp
                  add          a5, a6, t5
                  sll          t0, s6, t1
                  xori         s8, zero, -1855
                  slti         gp, s11, -523
                  mulw         s5, t0, t5
                  lui          zero, 173141
                  sltu         t6, t5, a3
                  slti         s7, s5, -1685
                  remu         a3, s4, gp
                  sll          tp, t2, a6
                  slt          sp, t5, s5
                  sraiw        tp, a7, 9
                  ori          s5, s7, -1585
                  sub          a5, a2, s6
                  ori          ra, s8, 1405
                  rem          a3, tp, t4
                  subw         s6, sp, s2
                  mulhsu       s1, sp, s5
                  sllw         s11, t1, t4
                  srl          s8, a1, zero
                  divuw        t0, s0, t1
                  srli         a5, tp, 5
                  div          t1, a4, s8
                  remw         ra, s11, t4
                  sraw         t1, t0, s11
                  xor          t0, a3, s10
                  ori          a2, t3, 2018
                  slt          sp, t0, a0
                  divu         t0, t2, zero
                  slli         s3, a4, 43
                  slliw        s6, tp, 29
                  ori          s7, a4, -900
                  sltu         a0, s2, t6
                  srai         s6, t6, 52
                  sraw         s11, s2, s7
                  nop
                  slti         t2, t4, -1597
                  xori         s10, t0, 561
                  rem          s1, t2, t4
                  subw         ra, a1, zero
                  srliw        s7, t4, 24
                  div          a3, a1, s4
                  divuw        a2, t0, t6
                  ori          a7, ra, -290
                  slti         s1, s5, 790
                  mulhu        s10, t0, s4
                  sllw         a2, t3, t6
                  divu         a6, t0, s6
                  rem          s2, s0, ra
                  divw         s11, t5, s9
                  slli         s3, s7, 23
                  mul          a4, t6, zero
                  addiw        s8, t5, 2041
                  div          s6, t0, a6
                  subw         ra, a7, sp
                  srli         s6, s9, 42
                  srliw        s5, t4, 5
                  rem          sp, s9, a0
                  andi         a5, s1, 1572
                  sraiw        a6, tp, 6
                  srli         ra, a4, 32
                  addiw        s5, t4, -293
                  divuw        gp, ra, a4
                  divu         t0, sp, tp
                  nop
                  srl          sp, s6, s6
                  sraw         tp, s5, a7
                  sraiw        s0, s6, 24
                  nop
                  divu         t2, s4, t6
                  remu         gp, gp, a2
                  addiw        a2, s10, 566
                  div          a1, sp, t5
                  addiw        s8, a3, -1320
                  sraw         s5, a1, s3
                  xor          s6, s8, a3
                  mulhsu       a2, s10, zero
                  mulhu        t3, s0, s10
                  slli         t6, t0, 12
                  mul          a6, s7, s8
                  subw         gp, s5, s5
                  subw         t0, s2, tp
                  slt          t0, s3, gp
                  subw         a3, a3, s1
                  sraiw        s6, s5, 6
                  divuw        a3, t3, t0
                  div          s10, sp, t5
                  sra          s1, s9, a0
                  remw         s1, s1, s11
                  sltu         s7, a3, a7
                  rem          s0, s5, ra
                  sraw         s11, ra, t4
                  srai         t6, t3, 3
                  divu         t6, a0, t1
                  srai         s6, zero, 40
                  srai         a1, a3, 50
                  slli         s8, s4, 2
                  srliw        ra, a5, 13
                  mulhu        a3, s1, s7
                  remuw        a7, a3, s5
                  slli         gp, a6, 59
                  srai         tp, t6, 47
                  nop
                  sll          s0, s4, sp
                  sll          s7, tp, a5
                  ori          a4, gp, -1196
                  nop
                  sraw         gp, t2, a0
                  addw         t2, a0, t5
                  divw         t6, t5, s1
                  sra          sp, s4, t0
                  slliw        t3, sp, 13
                  mul          t6, tp, s2
                  lui          t6, 163399
                  sltu         s6, s11, a0
                  addiw        a6, s6, 964
                  lui          t6, 150618
                  rem          tp, t6, t3
                  xor          t1, s9, s11
                  mulw         s8, s3, s7
                  srai         a1, a4, 55
                  sltu         s5, a6, s10
                  slti         s10, s11, 257
                  divw         s8, t3, a3
                  add          gp, s11, s7
                  remu         t5, a5, a1
                  add          ra, s9, gp
                  and          a0, s7, s9
                  slli         a7, sp, 35
                  mulw         s8, t5, s1
                  mulw         gp, a2, s6
                  auipc        t3, 295465
                  subw         s11, s5, gp
                  divu         s7, t6, gp
                  mulh         a0, s9, s4
                  nop
                  div          t0, a6, s4
                  andi         a1, s9, -1422
                  sltiu        s7, t1, -690
                  rem          s8, zero, a7
                  mulhu        s6, tp, a2
                  addi         s10, ra, -466
                  sll          s1, s3, s0
                  mulh         s0, a1, a0
                  add          a6, zero, s9
                  srai         a6, s6, 51
                  and          a1, s1, s0
                  srai         t6, t2, 52
                  sraw         s1, s6, a6
                  slli         a6, a1, 7
                  sll          s1, s5, s7
                  mulh         a5, s10, a3
                  xor          s3, s5, zero
                  sraw         a1, t4, t4
                  lui          s8, 351772
                  addi         s5, gp, -239
                  srlw         t3, t3, s3
                  srai         a4, s4, 63
                  srl          t3, t6, t5
                  mulhsu       a6, t5, s10
                  addi         ra, a0, 1169
                  sllw         s5, s10, a6
                  sll          s2, a3, s2
                  div          sp, s9, a7
                  remu         s0, zero, t1
                  ori          s3, a6, 1078
                  sraw         t5, t6, t0
                  rem          t3, s0, sp
                  addw         t1, a6, zero
                  subw         t6, a6, t5
                  sra          a7, t1, t6
                  ori          s1, t1, 868
                  srli         t1, a0, 11
                  srliw        a7, t5, 15
                  sltu         s5, t4, gp
                  xori         s11, zero, -16
                  srai         ra, t6, 44
                  auipc        s8, 66121
                  sub          t2, t3, s5
                  div          s6, a4, a3
                  sraw         a5, s11, tp
                  mulhsu       t5, s7, s10
                  mulhu        t3, s1, t6
                  sltiu        t6, t1, -1702
                  or           s7, s11, s3
                  div          s11, t4, s2
                  auipc        s10, 482920
                  slt          t0, s5, s10
                  mulhsu       sp, ra, t1
                  mul          t6, a1, ra
                  mulhsu       a6, a3, zero
                  and          s7, sp, s3
                  mulw         a4, a1, s0
                  srlw         a1, tp, a3
                  sraw         a6, s9, a6
                  or           a2, t4, a7
                  mul          t3, gp, s5
                  mulh         s1, s9, s3
                  div          zero, s5, s2
                  subw         a1, zero, s4
                  and          a0, sp, s7
                  mulhsu       a0, t1, ra
                  mulw         t3, s5, zero
                  remu         a6, a2, s9
                  srl          ra, a2, s6
                  sltiu        t6, t4, 333
                  mulw         a5, a0, s7
                  divu         a2, ra, t6
                  andi         a7, s7, -1379
                  addiw        s8, s0, 15
                  and          ra, a6, a5
                  or           a2, tp, s3
                  divu         gp, s6, t6
                  srli         s1, t5, 50
                  remu         tp, a6, a7
                  remw         s8, t1, t6
                  sra          s5, a0, a7
                  add          zero, a2, s6
                  srai         tp, a7, 62
                  divuw        a2, sp, s2
                  lui          a5, 569586
                  lui          s8, 231182
                  sraw         t3, ra, s8
                  srliw        a6, a2, 25
                  sllw         a7, t3, s0
                  lui          a6, 813320
                  addi         s6, s1, 1996
                  sltiu        t0, a4, 84
                  srlw         a0, s2, s2
                  divw         s11, s8, s10
                  and          a2, t1, s2
                  mulh         t6, sp, tp
                  nop
                  subw         s11, t1, s7
                  addi         t0, a7, -456
                  srli         zero, s9, 22
                  slti         a3, a2, -1974
                  rem          a3, t2, s9
                  lui          s8, 597903
                  addw         sp, a1, t4
                  divuw        s0, s8, sp
                  sub          a3, s1, t1
                  or           tp, s3, s9
                  slli         a4, a3, 63
                  sraiw        s8, t1, 6
                  divu         t1, s2, a4
                  or           a0, a0, s4
                  mulhsu       t3, a1, s3
                  xor          t5, t0, t2
                  sraw         zero, a0, t4
                  slti         s8, s10, 1872
                  srli         a5, ra, 43
                  nop
                  nop
                  and          s0, a5, s9
                  srli         s2, ra, 6
                  lui          a3, 957551
                  mul          t3, gp, tp
                  add          a0, a3, s8
                  addi         tp, zero, 7
                  and          a2, t1, ra
                  srlw         t5, t4, a3
                  add          a4, a6, s3
                  sub          s0, a1, t1
                  ori          ra, a5, 908
                  sub          a6, t2, t0
                  divw         a3, t1, s11
                  or           ra, t5, a3
                  srlw         s0, s6, a1
                  sra          s6, ra, zero
                  slt          a7, s2, a3
                  add          s1, t3, a4
                  lui          t0, 940268
                  andi         s2, t6, 535
                  div          s6, s4, gp
                  ori          a5, t4, -1204
                  mulh         a6, s7, t3
                  sub          a0, s10, t2
                  srai         a7, s3, 0
                  divu         a6, t3, t3
                  div          s3, t2, s0
                  remuw        s3, a2, t1
                  remuw        a4, sp, s1
                  sub          t3, s4, t4
                  srli         s5, sp, 63
                  addiw        t0, tp, -1945
                  sub          a6, a1, gp
                  srli         t5, ra, 15
                  remw         s8, s7, t5
                  slliw        t0, zero, 24
                  sraw         t2, a0, a7
                  addiw        gp, a5, 1641
                  addi         t0, s2, 64
                  andi         s5, t3, 1961
                  andi         ra, s9, -733
                  divuw        ra, s5, tp
                  sltu         a1, a2, sp
                  sltiu        a4, s6, -197
                  sllw         a7, sp, s0
                  add          a4, s8, s7
                  srlw         tp, s4, a5
                  sltiu        a6, a3, -555
                  srlw         s8, s6, t0
                  srli         a2, s7, 7
                  slliw        s2, s10, 18
                  slli         t3, zero, 52
                  sltiu        a1, zero, 905
                  sraiw        s8, s2, 18
                  sub          s11, a0, s11
                  addw         t6, a4, gp
                  sltiu        s5, s4, 1292
                  addi         t5, t2, -1269
                  xor          s6, t6, s8
                  slli         s1, zero, 11
                  mulhsu       s1, a0, a1
                  nop
                  and          s8, a2, t5
                  sub          s10, t3, a6
                  addi         t5, t2, 1503
                  div          s11, s8, s1
                  sltiu        a5, t3, 468
                  addi         s3, a1, 932
                  ori          s7, zero, 1828
                  andi         tp, sp, 116
                  mul          t6, a0, a7
                  divw         zero, t5, t5
                  mul          t6, s7, t3
                  mulw         s1, s11, a6
                  srai         a5, s8, 47
                  srai         tp, s3, 4
                  slliw        s5, a6, 27
                  srlw         a4, t5, t1
                  mulw         zero, a6, sp
                  mulhsu       sp, s0, t6
                  sraw         s0, s11, zero
                  addi         gp, s9, 468
                  div          t3, s8, s7
                  sraw         zero, a3, s10
                  sra          zero, a6, a1
                  srliw        a2, gp, 25
                  slliw        s1, s10, 30
                  mul          a2, s3, t0
                  sub          s5, a4, a3
                  remu         a3, zero, a5
                  xori         a1, zero, 1115
                  div          s8, t5, sp
                  subw         a7, a2, s0
                  mulh         t1, s6, tp
                  srliw        a6, gp, 13
                  divw         tp, s8, s6
                  slt          s3, s3, a5
                  divuw        s1, s10, a2
                  mulh         a3, s0, t4
                  addi         s2, t5, 1708
                  divw         t5, s2, a0
                  nop
                  slli         ra, tp, 19
                  divu         tp, t0, s4
                  auipc        t3, 134213
                  slti         t2, s9, -1613
                  lui          ra, 333417
                  sraiw        gp, s3, 23
                  andi         a4, gp, 1999
                  and          s5, a7, t1
                  divu         a7, t4, s3
                  lui          s5, 492301
                  xor          t2, gp, ra
                  div          a7, tp, s8
                  sraw         a4, s10, ra
                  nop
                  andi         s0, sp, -378
                  xori         s1, ra, -786
                  or           s8, a4, a2
                  and          sp, s8, a5
                  nop
                  nop
                  divu         a3, s1, a6
                  add          t2, a2, t6
                  sub          s7, a6, s11
                  sub          t3, s7, zero
                  div          a6, a4, s4
                  sltiu        tp, s6, 1423
                  srliw        s8, zero, 7
                  add          zero, s7, a6
                  sraiw        a4, a3, 22
                  or           s11, t3, s0
                  sraw         sp, a1, sp
                  lui          s10, 115719
                  slt          a3, t2, tp
                  srl          s10, t3, s0
                  ori          a3, a4, -424
                  div          sp, tp, ra
                  srlw         s5, s4, gp
                  subw         a1, a5, a0
                  srli         ra, s7, 20
                  srliw        s3, a6, 26
                  remw         zero, s9, t1
                  sllw         a5, s9, a0
                  add          tp, a7, sp
                  divuw        tp, t4, t4
                  sll          tp, sp, s2
                  divw         t0, s8, gp
                  xori         s1, ra, -1555
                  srl          a2, a5, s2
                  mulw         t3, s9, sp
                  addi         a5, ra, -130
                  sll          a5, a6, s2
                  sll          t0, gp, a2
                  div          gp, a7, s11
                  addiw        s6, a2, -941
                  divu         s5, ra, gp
                  remu         s11, s2, a6
                  sll          s5, t6, t5
                  slt          tp, a6, a2
                  add          a7, s8, a1
                  sub          s5, a7, a5
                  srli         s10, s8, 19
                  slliw        s2, s9, 27
                  slli         s11, t5, 27
                  lui          t2, 135025
                  srl          a3, a6, t1
                  rem          s3, a6, t0
                  addi         s11, s8, -1902
                  remw         s2, s11, s1
                  addiw        s5, a2, -1161
                  sra          t6, sp, t4
                  and          s6, s0, s9
                  div          s5, s4, t0
                  srliw        a4, a0, 2
                  srlw         a2, t4, s11
                  ori          s8, s9, -171
                  remw         t0, s3, s2
                  nop
                  rem          sp, s4, s10
                  mulhu        a7, t6, t0
                  srlw         s3, s5, s3
                  mulhsu       zero, s2, s3
                  divu         s6, sp, s2
                  remw         ra, s0, t3
                  auipc        tp, 748744
                  add          a7, s5, s1
                  divw         s3, s5, sp
                  andi         zero, t5, -1903
                  slli         t5, s3, 21
                  div          a5, s4, a0
                  mulhu        s0, ra, a0
                  remu         a0, t4, t1
                  sraw         s3, s6, gp
                  mulh         t0, s9, s2
                  addiw        sp, a7, 773
                  srl          s5, a1, t6
                  addi         a6, t5, -704
                  sraw         ra, s2, a7
                  andi         a7, t4, 522
                  mul          gp, t6, a7
                  sltiu        a5, zero, -827
                  addw         s7, a4, a2
                  divu         s8, a3, s8
                  slti         tp, s5, -688
                  or           s3, t1, a0
                  divuw        t2, gp, s8
                  mulhu        s7, s4, a3
                  andi         t6, s5, -1001
                  sllw         zero, a7, a2
                  addi         t2, a1, -405
                  srlw         a5, t5, s2
                  add          t3, s6, a7
                  nop
                  mulhsu       s11, sp, s7
                  slli         s2, a2, 10
                  div          s10, tp, a3
                  srli         t6, t0, 33
                  sltiu        a1, tp, -373
                  srli         s3, a7, 20
                  sra          t5, t0, t1
                  srliw        a6, a5, 29
                  and          t2, a5, a7
                  mulhu        gp, a6, s0
                  divu         zero, t0, zero
                  add          s1, s0, tp
                  addiw        s5, s5, -1076
                  divw         t0, gp, s8
                  divw         a0, a7, a6
                  sub          a5, t0, s10
                  srlw         a4, t3, t1
                  div          a6, gp, a3
                  remuw        t3, a0, s2
                  slliw        tp, t2, 24
                  divu         a5, ra, a4
                  slliw        t2, s11, 28
                  slti         ra, a2, 1173
                  andi         gp, t0, 1941
                  sllw         t0, s5, zero
                  sraw         s1, s0, gp
                  divuw        a2, a6, s10
                  andi         s7, s9, 1989
                  subw         sp, t0, a0
                  srliw        a5, t2, 16
                  divw         a2, a1, t3
                  xori         s3, s0, 632
                  remuw        gp, t5, t1
                  and          ra, t1, a2
                  slli         a5, a3, 50
                  mulhsu       a7, ra, gp
                  mul          t5, sp, a4
                  xor          a7, a1, s4
                  addw         a1, gp, ra
                  sra          s2, t1, t3
                  and          s6, t1, s4
                  sra          s7, a6, sp
                  mulhu        a2, s2, s1
                  subw         a5, a5, a5
                  ori          t3, t2, -1058
                  sraw         s1, zero, s5
                  div          s0, s11, t0
                  nop
                  andi         a4, s5, -1436
                  andi         s3, s7, -1200
                  and          a7, a5, ra
                  mulh         t2, s3, s10
                  divw         s2, s5, a5
                  srl          sp, zero, t6
                  slliw        t0, s3, 11
                  nop
                  mulhsu       tp, zero, a0
                  srli         s11, a2, 26
                  srai         s5, a3, 62
                  addw         s10, sp, s6
                  auipc        s1, 30557
                  srlw         s6, s9, a6
                  mul          a2, s3, s2
                  remw         a0, s11, s0
                  srliw        gp, t3, 2
                  sll          a0, t2, t3
                  addiw        s1, t5, -1749
                  sraiw        gp, a3, 28
                  sra          s5, s4, t6
                  and          s3, s6, s7
                  auipc        a6, 280767
                  mulhsu       s11, s6, a1
                  divu         t5, s10, a3
                  remuw        a5, a3, a4
                  addi         a3, s2, 1478
                  nop
                  mulhu        a2, t2, a6
                  divu         s1, s2, a4
                  rem          a2, ra, tp
                  mulh         a7, t1, s9
                  xori         ra, t6, 512
                  remuw        s11, a3, a2
                  and          gp, zero, t1
                  sraw         s3, s7, s2
                  remuw        t3, t1, s6
                  sub          t6, s8, s7
                  slliw        a7, s9, 16
                  srlw         s8, a7, s5
                  div          s6, t0, s2
                  div          t0, s10, a6
                  rem          a6, ra, t0
                  srli         a4, a6, 16
                  auipc        s5, 826487
                  subw         zero, a3, a6
                  remuw        s10, s8, ra
                  nop
                  and          a1, t2, t6
                  srli         a4, s9, 5
                  auipc        a0, 896204
                  srli         a0, a5, 0
                  remw         s2, t3, a4
                  and          t5, s4, s10
                  ori          a2, s2, -910
                  auipc        s1, 906982
                  mulh         a2, sp, t1
                  addiw        s1, a7, -1519
                  remu         t6, s0, a5
                  srli         zero, s6, 41
                  srliw        s2, tp, 25
                  addiw        t6, t1, 1244
                  nop
                  divw         s0, s2, s6
                  or           s6, a7, t0
                  addw         a5, t5, zero
                  divw         s6, s5, ra
                  add          t0, t5, t0
                  addw         t2, a6, t4
                  slt          a7, t0, s0
                  or           t1, s1, t3
                  mulhu        s11, tp, s0
                  or           t3, s6, s5
                  mulhsu       s5, a5, s1
                  slliw        s10, t6, 17
                  mulw         t6, s3, t1
                  andi         s6, s1, -1931
                  mulhsu       t2, s4, s10
                  auipc        t2, 413976
                  lui          tp, 526194
                  and          s1, s6, t6
                  slt          a6, s2, t4
                  rem          t6, s3, s6
                  srl          t1, t1, s10
                  xor          a3, s8, sp
                  mulhu        s5, t4, s5
                  divuw        ra, t0, s5
                  add          a5, ra, s4
                  divw         ra, gp, s10
                  andi         s6, a1, -1374
                  auipc        s5, 724062
                  srliw        s6, t1, 17
                  sll          s1, t6, gp
                  mulhsu       s8, s3, t4
                  rem          s11, s1, s6
                  srai         t0, a1, 29
                  xor          zero, s2, t5
                  srlw         s11, tp, s4
                  sraiw        a7, sp, 30
                  addw         tp, a0, t5
                  sltiu        a7, sp, 819
                  addiw        s6, t6, -577
                  remu         zero, s0, tp
                  xor          s11, t3, a6
                  divw         s1, a1, a5
                  slti         zero, t5, 636
                  divu         a1, ra, t6
                  sll          t2, a5, a4
                  addiw        t0, a3, -1768
                  divu         t2, s10, s3
                  sltiu        a1, a2, 1353
                  xori         a3, s11, -702
                  sra          ra, s0, a4
                  remuw        a7, a7, t3
                  addi         t2, t2, 541
                  or           s5, a6, t3
                  subw         a2, s4, a6
                  auipc        s11, 337913
                  mulhu        a4, s8, s7
                  andi         t0, t6, -611
                  remw         zero, s4, a1
                  and          a4, t6, s6
                  srlw         t6, s6, t5
                  srl          zero, s6, t1
                  slliw        tp, s0, 21
                  sltiu        s3, a6, 1479
                  nop
                  sltiu        s6, s3, -352
                  mul          a2, t5, s1
                  sll          sp, a1, tp
                  addw         a0, t5, tp
                  subw         s6, t3, a7
                  addiw        s2, s11, 495
                  mul          s7, s7, t4
                  slti         a0, a7, -1991
                  mulw         s7, t2, a6
                  auipc        s6, 539105
                  srai         a1, s0, 9
                  slt          s6, a6, ra
                  sltu         s10, t4, s2
                  mulhsu       t5, t0, t3
                  div          a1, s4, gp
                  slliw        s10, a4, 30
                  addi         s5, t3, 512
                  rem          a2, a3, t0
                  xori         s2, t2, -1569
                  remu         a5, s7, t3
                  srli         a4, t4, 19
                  remw         s5, s2, gp
                  xori         zero, t1, 1885
                  mulh         sp, gp, sp
                  divu         t3, tp, s4
                  remu         a5, t2, gp
                  and          sp, t4, s10
                  addiw        t2, s9, -196
                  sltu         s0, s4, s7
                  srli         t6, t4, 57
                  remw         a7, s8, a1
                  slliw        t3, s7, 18
                  mulhu        zero, gp, a3
                  auipc        s5, 592135
                  sltiu        a0, t0, 749
                  mulw         s8, s7, ra
                  srai         t1, a7, 0
                  addw         a2, t0, t4
                  xori         s2, zero, 1312
                  sltiu        s5, s2, -1080
                  rem          a3, t1, s10
                  slti         gp, s1, -962
                  sraiw        s0, s11, 30
                  auipc        t3, 656140
                  divu         s11, a5, t0
                  mul          a4, s9, a1
                  mulh         a7, a1, s10
                  addi         s7, t0, 317
                  mul          a2, s5, a5
                  slliw        a4, t0, 18
                  mul          a1, sp, a6
                  mulhsu       s7, t4, s6
                  divw         s7, s7, t3
                  srl          s0, s5, s11
                  nop
                  sltiu        sp, t3, 194
                  xori         s5, s8, -1515
                  or           s0, t0, s10
                  slli         a5, gp, 14
                  remw         s1, s10, s0
                  addiw        t0, s7, 995
                  slliw        s5, s4, 11
                  divw         tp, a5, a3
                  and          t6, s8, a0
                  sltu         a3, zero, a3
                  sraiw        a4, t5, 11
                  srai         s1, t5, 62
                  sra          a7, s7, a3
                  div          s3, s9, a0
                  or           a5, s7, t1
                  mulh         t5, s6, a0
                  slt          a7, tp, s8
                  srai         t6, t0, 28
                  slt          s10, a6, s8
                  xor          s6, a3, zero
                  sll          a6, t3, ra
                  ori          a6, a0, 1283
                  rem          t6, t5, s11
                  addw         a2, s9, t4
                  addw         t2, a5, t3
                  divw         s5, a5, ra
                  andi         s1, a0, -1748
                  mulhu        zero, a6, a7
                  slliw        s3, s7, 26
                  slt          t2, s4, a4
                  andi         sp, s6, 1994
                  mulhsu       t2, t5, a5
                  xori         a0, sp, -287
                  mulhsu       t6, t5, t0
                  divu         s1, t4, s3
                  mulw         s0, t5, s8
                  divw         t5, a7, s8
                  sltu         s3, s2, s0
                  mulw         ra, a1, t2
                  sraiw        a2, a1, 25
                  divw         t3, sp, gp
                  subw         s3, t2, t1
                  addw         a2, s0, t5
                  nop
                  or           zero, a6, gp
                  sub          s11, tp, ra
                  lui          s2, 451226
                  slt          a0, s8, t6
                  addw         s10, s10, t4
                  sltu         s6, s9, s3
                  mulh         a1, s0, t1
                  addiw        t0, s8, -333
                  sub          a0, a3, s4
                  remw         a5, t6, ra
                  divuw        a6, a1, a1
                  sraw         t5, s8, t5
                  divu         s1, s10, s3
                  div          t0, s2, zero
                  divu         s11, s10, ra
                  div          a6, t0, s2
                  sltiu        t2, s8, 1501
                  remuw        t3, t1, a7
                  xor          tp, s3, s3
                  lui          zero, 397042
                  sra          a2, s3, t4
                  sltu         s1, t4, s3
                  srli         s7, a5, 63
                  sraiw        t1, a2, 3
                  subw         a0, t5, s9
                  auipc        ra, 138305
                  sraw         tp, a7, ra
                  sraiw        a2, s11, 3
                  srl          t0, s9, zero
                  srliw        t0, gp, 19
                  divuw        a6, s8, a5
                  mulw         s2, t1, tp
                  mulh         s1, a2, gp
                  slliw        a7, tp, 11
                  addi         t5, s4, -440
                  ori          a2, t2, -653
                  add          s8, t1, sp
                  ori          a5, t5, -1634
                  andi         a2, ra, 1511
                  remw         sp, s3, a0
                  and          t6, s8, sp
                  subw         s11, s0, gp
                  slliw        s8, a7, 30
                  sraw         s8, t6, a6
                  remuw        a1, sp, t1
                  xori         t3, s8, -303
                  srliw        ra, s2, 5
                  remuw        a2, tp, a2
                  lui          a6, 233106
                  remuw        t3, s6, a7
                  nop
                  sltu         a2, s8, a7
                  mulhsu       s11, a1, a5
                  auipc        s5, 1014813
                  sub          t6, s5, a2
                  mulhu        s11, a4, ra
                  andi         a6, a7, -877
                  slli         gp, a3, 59
                  subw         s1, s1, s6
                  andi         tp, t4, -2031
                  sltu         a2, s0, a4
                  remw         s10, sp, t5
                  rem          s5, t4, a6
                  slt          s8, s0, a7
                  rem          zero, t6, t6
                  divuw        t1, a2, t1
                  mulw         s7, a0, s10
                  sub          ra, s1, s6
                  srlw         s3, s10, a7
                  mulhu        s5, t2, s8
                  srai         s10, sp, 54
                  addiw        s11, s6, -1264
                  sltiu        s1, s10, 1144
                  rem          s5, s1, s3
                  auipc        t0, 473106
                  mulh         a4, a5, t6
                  sll          s2, s6, sp
                  srai         a4, s2, 53
                  mulw         s5, t2, s9
                  slti         tp, t4, 144
                  addiw        zero, t1, 910
                  sllw         a4, a2, a2
                  sltiu        a0, a7, 924
                  addw         t1, s11, a7
                  remuw        a2, s0, sp
                  slt          s2, t2, s9
                  slt          t6, s10, a6
                  addi         a6, a6, -1695
                  sllw         s10, s4, t0
                  slliw        s11, gp, 14
                  nop
                  xori         a0, s10, 1267
                  xor          s7, s3, s3
                  remw         gp, s0, s8
                  sll          s0, t0, s2
                  mulh         s5, a4, s2
                  srli         s10, gp, 34
                  slli         sp, t1, 54
                  slti         s0, s6, -630
                  slli         a1, gp, 57
                  sllw         gp, s0, t4
                  mulw         t3, t6, s10
                  remu         zero, zero, ra
                  sll          s11, s9, sp
                  mulhu        t3, a7, s8
                  lui          a2, 642435
                  srai         zero, a6, 50
                  slti         s8, t3, -1713
                  add          a3, t5, s9
                  slliw        a1, gp, 21
                  addiw        t0, tp, -2045
                  xori         a6, t5, 54
                  xor          a4, s9, s0
                  addw         s2, tp, t0
                  srliw        ra, s5, 26
                  divu         s6, t0, a2
                  srli         t3, t3, 41
                  srli         sp, s5, 46
                  addw         s3, s3, s4
                  subw         sp, s4, t1
                  or           gp, s1, a4
                  remw         sp, a2, s0
                  lui          a2, 888139
                  sra          zero, a3, a7
                  srai         sp, a0, 15
                  addiw        gp, a1, -479
                  xor          a6, ra, s2
                  addiw        a6, s4, -1154
                  or           gp, t3, t6
                  divw         s6, t2, a5
                  sub          a2, tp, s5
                  sltiu        s10, t5, 930
                  mul          ra, a4, a6
                  sllw         s3, a0, s11
                  addi         tp, s1, -456
                  sra          t6, t2, s10
                  slli         t1, s5, 18
                  slt          t0, s1, tp
                  sll          zero, s0, t6
                  sllw         t2, t0, a5
                  sra          t2, t5, ra
                  subw         s6, t3, t3
                  sub          ra, t0, a4
                  mulhu        t3, s0, t2
                  mulhsu       a6, s7, t6
                  sll          zero, a1, s0
                  slli         t3, a7, 46
                  add          zero, a5, a2
                  sll          s8, a4, s2
                  sll          s5, a1, t6
                  slliw        t2, tp, 5
                  sltu         s6, a1, s9
                  mul          t2, t0, a5
                  srlw         sp, tp, t1
                  sraiw        s1, s10, 14
                  add          s7, a0, gp
                  xor          s10, s1, s10
                  add          s5, a3, tp
                  mulhsu       t1, a6, s8
                  srai         ra, a7, 40
                  sll          t0, t3, s10
                  sraiw        s6, a6, 7
                  srlw         s5, t5, ra
                  addi         zero, t5, 1861
                  nop
                  slt          t6, t4, t6
                  addiw        a5, a4, -1228
                  sub          t6, t4, a4
                  addiw        t1, t6, 1015
                  mulhu        s1, sp, a7
                  xor          t3, s8, sp
                  auipc        a5, 790761
                  ori          gp, s2, 1531
                  ori          tp, a4, -2032
                  mul          s8, s10, gp
                  sltiu        tp, t5, 1293
                  mul          s1, t2, s3
                  add          s3, a4, t4
                  divuw        t5, ra, t5
                  srai         s0, s10, 27
                  ori          t0, s2, 1588
                  lui          s8, 686859
                  srai         a1, a4, 14
                  mul          s5, s1, t1
                  srli         a3, t2, 52
                  addi         s0, a4, -1101
                  remw         t5, s1, s0
                  sub          s5, a1, a0
                  addi         t2, s8, -1709
                  sllw         t3, s10, s3
                  mulhu        tp, a1, s9
                  mulhu        a3, t4, t4
                  xor          a2, a0, s2
                  addw         t2, a2, a3
                  sll          s3, s7, s3
                  lui          a1, 926791
                  srli         s2, s3, 33
                  srli         s11, s9, 43
                  mulw         t5, tp, s5
                  remu         t3, a3, s0
                  auipc        s7, 303843
                  mulhsu       t0, t3, s8
                  mulhsu       a3, gp, t1
                  rem          t2, s5, t4
                  remuw        a4, a3, s4
                  srl          s2, s2, s7
                  remw         a4, a2, a0
                  addiw        s5, s10, 625
                  remw         a3, gp, a4
                  sltiu        s6, zero, 1462
                  mulhsu       zero, s10, t6
                  mulh         s2, ra, t1
                  div          t5, s10, ra
                  sub          t5, a7, a6
                  or           s5, t3, s6
                  remu         s5, tp, a2
                  rem          t6, s11, t4
                  lui          t0, 640675
                  sltu         gp, a6, a3
                  divu         s1, zero, s8
                  mulhsu       s5, zero, a2
                  slti         s8, s6, -818
                  div          s0, t0, t5
                  divw         t1, a1, a0
                  mulh         s6, a5, a5
                  div          zero, tp, t0
                  divuw        a3, t1, sp
                  subw         a2, s10, t4
                  rem          a2, sp, a0
                  slliw        a3, t5, 1
                  nop
                  mulw         s5, s8, t4
                  sraiw        a4, a7, 21
                  add          sp, a6, sp
                  xor          s8, s8, a1
                  xori         s2, t4, 392
                  and          a1, s8, s1
                  mulw         s6, a4, t6
                  sltiu        t6, a4, 1113
                  srai         s0, a2, 42
                  auipc        a5, 905172
                  rem          t2, a2, s8
                  slliw        t1, s3, 9
                  srlw         s5, a4, s8
                  xor          t6, s4, s10
                  rem          s5, t4, a0
                  mulhsu       s1, s5, s6
                  sllw         tp, gp, s6
                  sub          gp, s11, s5
                  sra          s0, tp, t5
                  srliw        a5, a4, 2
                  mulw         s7, s9, t4
                  srl          zero, a5, t0
                  sraiw        a6, a1, 21
                  sll          a6, ra, ra
                  xor          s7, sp, t1
                  sraw         a5, t5, a1
                  srliw        s7, a4, 19
                  slt          s1, s0, s2
                  subw         t5, a4, s2
                  remu         sp, tp, zero
                  remu         a0, t5, s8
                  sltiu        s1, t2, -1502
                  divu         a4, s6, a0
                  auipc        a7, 527339
                  add          s1, s3, t2
                  mulw         t1, t2, ra
                  sraiw        zero, t5, 23
                  mulh         s11, t2, s4
                  lui          a5, 154502
                  srli         zero, s11, 37
                  and          t2, s7, s11
                  div          s2, a0, a1
                  srliw        ra, s3, 30
                  div          a4, s5, a4
                  srl          s11, a5, s2
                  or           s10, sp, sp
                  divuw        a3, a2, t5
                  srliw        t3, s0, 4
                  sllw         sp, s0, s6
                  divu         s0, a4, a5
                  subw         s11, t0, a4
                  slt          s11, s9, a5
                  addw         tp, tp, sp
                  or           s5, s4, s2
                  subw         s11, a3, t4
                  addiw        t3, t3, -1208
                  slliw        t5, s8, 10
                  xori         t5, s3, 1917
                  rem          a0, a2, s9
                  sraw         s2, t0, a4
                  sll          a5, s1, a3
                  srai         t2, a0, 5
                  slliw        t6, tp, 4
                  mulw         s3, s3, s4
                  remu         gp, s11, a7
                  sraw         s1, t2, a4
                  divu         t2, a0, t1
                  srl          a0, t5, a7
                  mulh         a6, a2, a5
                  sraiw        s6, t1, 16
                  slliw        a1, zero, 22
                  addiw        a7, t4, -1335
                  xori         a6, t2, -1340
                  remu         a1, s4, t0
                  srl          a6, s5, t0
                  remw         zero, zero, s11
                  rem          t5, zero, gp
                  slt          t3, tp, s4
                  sltu         a1, s4, s2
                  andi         s10, t5, -1588
                  divuw        a6, a6, ra
                  remw         tp, a5, a5
                  or           a3, s8, a6
                  ori          a1, zero, -41
                  remu         s11, a3, t1
                  sub          t1, t6, s10
                  mul          a7, a2, s0
                  sltu         a1, a4, s2
                  srliw        tp, s10, 30
                  mulw         t3, t2, t4
                  and          gp, s4, s11
                  sltu         s8, sp, a1
                  div          ra, a1, s7
                  auipc        sp, 804200
                  sllw         s2, s6, s8
                  sllw         s5, a3, sp
                  srliw        s11, s2, 20
                  srlw         s11, a3, t0
                  remw         t2, a6, t5
                  mulhsu       tp, t1, t6
                  mulw         s6, zero, s4
                  or           gp, tp, sp
                  lui          a5, 755885
                  subw         s2, a0, t2
                  slli         a7, gp, 59
                  sltiu        a2, a3, -1183
                  sltiu        s6, gp, 409
                  sltu         t6, t1, a6
                  sra          a3, a0, sp
                  or           t5, t0, a6
                  mulhsu       s0, a1, a2
                  xori         t2, sp, 615
                  addw         sp, a6, a4
                  srli         s1, s7, 34
                  sltiu        a6, tp, -1207
                  sltiu        gp, t4, -1413
                  slliw        zero, a2, 28
                  sltu         s8, a2, s5
                  slli         tp, s8, 43
                  add          s0, s10, t2
                  auipc        s1, 772737
                  mulh         a4, sp, a3
                  divuw        a7, a4, s5
                  or           s0, a5, a5
                  subw         t3, a5, s4
                  slli         zero, s0, 54
                  remuw        a2, a0, s7
                  srai         s6, s7, 47
                  xor          t1, t6, t2
                  srai         t2, s4, 20
                  mulh         s2, a6, a6
                  mulhsu       s5, zero, s11
                  srliw        t6, a5, 16
                  sll          tp, t5, s0
                  xori         s5, s9, -262
                  slti         a1, t4, 1261
                  div          s10, t0, s9
                  sll          s3, s3, tp
                  divu         s6, t2, s2
                  srli         t3, s5, 23
                  srliw        sp, a4, 21
                  addiw        sp, t1, -540
                  divu         a7, a2, s9
                  andi         s2, gp, 708
                  sltiu        t3, s2, -1547
                  mulhu        s1, t5, s9
                  sllw         a4, t4, zero
                  addi         sp, t0, 2041
                  and          s0, s0, sp
                  slt          t5, s8, s5
                  mul          a3, gp, t3
                  addi         s1, a0, -90
                  divu         a4, ra, a4
                  slliw        s10, s5, 28
                  divw         a2, a5, s10
                  or           s10, t1, t0
                  mulh         a2, s7, s7
                  sraiw        sp, s10, 4
                  srai         zero, tp, 15
                  slt          t0, a7, s9
                  mul          a6, t3, ra
                  srl          s5, s3, a1
                  sllw         a1, s3, a4
                  addiw        a0, ra, 1117
                  srli         tp, s8, 19
                  sllw         s2, a1, t4
                  andi         ra, a0, 310
                  slti         t2, a5, 513
                  xor          t2, s3, s9
                  divuw        t5, ra, a0
                  srl          t2, t5, s11
                  divw         a3, tp, a0
                  sll          t1, t3, a6
                  slt          s5, s3, gp
                  srliw        s5, a3, 28
                  sraw         a3, t3, gp
                  ori          a5, sp, -1635
                  mulhu        a6, s10, t3
                  xori         s5, a0, -643
                  mulw         t5, s10, zero
                  remuw        t2, t1, a1
                  mul          a3, t0, s7
                  mulw         a5, s5, zero
                  sub          zero, s9, s3
                  rem          a2, t4, a1
                  divw         t2, a6, t4
                  or           s11, sp, a4
                  slliw        a7, t6, 30
                  srl          a2, t2, t6
                  lui          s3, 375889
                  auipc        t1, 242527
                  sraiw        s2, s0, 21
                  subw         a5, t0, t6
                  nop
                  sraw         a4, t3, a6
                  mulhu        a2, t0, a3
                  divu         a7, s6, s1
                  mulw         s2, s8, t0
                  mulw         s8, s3, t4
                  mulhu        s11, s11, a1
                  sub          s1, a1, t4
                  sub          a2, s10, a2
                  srl          tp, a0, t0
                  subw         s11, s11, t1
                  srai         a6, a1, 29
                  mul          t1, t4, a7
                  and          a6, t5, sp
                  andi         t1, a3, 264
                  srl          s5, a1, a6
                  srl          a3, s3, s5
                  div          t0, t5, a4
                  sllw         t1, t6, gp
                  ori          t3, s3, 573
                  add          gp, a2, sp
                  div          zero, s2, a2
                  slt          s2, a4, s10
                  subw         s3, s5, a3
                  slti         s11, s0, -119
                  xori         t3, s11, 1613
                  srl          a4, s4, t3
                  srliw        a4, sp, 10
                  slli         a4, t1, 6
                  slli         t0, a7, 31
                  divu         a7, s8, a4
                  slt          t2, t2, s2
                  mulw         t2, t1, s5
                  rem          s7, s7, a4
                  andi         sp, s4, -1468
                  mul          s10, gp, t6
                  nop
                  sub          a3, a3, a2
                  auipc        tp, 949144
                  slt          a4, sp, s8
                  sra          t3, a3, a6
                  addi         s3, gp, 1631
                  xori         t1, s10, 1402
                  auipc        s0, 566393
                  auipc        s5, 955244
                  ori          zero, s0, 632
                  xor          t5, s7, s2
                  subw         t0, s8, sp
                  srli         a0, a0, 52
                  srli         sp, a3, 12
                  auipc        tp, 736783
                  sltu         a1, gp, t4
                  mulw         a5, t2, t5
                  sraiw        a7, a2, 29
                  rem          s3, t3, s3
                  slliw        s5, t1, 2
                  srliw        s11, s10, 22
                  srai         a7, s2, 10
                  sub          s7, s6, s8
                  sll          t6, tp, s1
                  div          s8, s0, t3
                  srlw         s6, tp, a6
                  srlw         s3, a4, a5
                  auipc        a6, 864608
                  sltiu        a7, s4, -841
                  and          a5, s5, s7
                  mulhu        s8, s7, t1
                  and          s5, s7, zero
                  mulw         s7, a2, a6
                  mulh         s2, s6, a5
                  sll          t1, a2, a4
                  auipc        t5, 675327
                  ori          t3, a1, 1152
                  andi         s2, s1, 1604
                  slliw        s11, s5, 10
                  and          a0, t0, s7
                  sra          zero, t4, a0
                  div          a1, ra, s11
                  slli         ra, ra, 47
                  or           gp, t0, a2
                  remu         t0, a6, s9
                  xor          t6, s11, s2
                  subw         t1, a2, zero
                  sub          t5, a3, a4
                  or           a7, a2, s3
                  remuw        t5, s5, a1
                  divu         a1, t1, a1
                  mulh         s10, gp, s5
                  divuw        t2, t1, s3
                  divw         s1, a3, t2
                  or           a7, t2, s11
                  srl          s10, t5, s9
                  srlw         t2, gp, s0
                  remw         a5, t6, s2
                  srli         s2, s4, 15
                  sllw         a7, a0, t0
                  srlw         s1, a2, gp
                  sltiu        t6, s8, 475
                  slt          a6, s4, t2
                  divu         s1, s7, s10
                  slliw        a6, s0, 20
                  slliw        s6, gp, 17
                  mulhsu       s0, ra, t0
                  divw         a5, s7, t1
                  div          t1, s3, s10
                  sltu         t1, sp, a7
                  divuw        ra, s10, a7
                  or           s6, s0, a1
                  andi         t3, s1, 248
                  sraiw        a1, t3, 30
                  remu         a6, s8, t4
                  addiw        ra, s7, -204
                  mulw         s10, s5, s3
                  sraiw        a3, s0, 2
                  sraiw        t0, a4, 23
                  mulhu        t5, a5, t3
                  remuw        ra, ra, a3
                  srliw        a4, t1, 18
                  addi         s5, s2, 1557
                  slli         a0, a4, 6
                  addiw        sp, s5, 1891
                  subw         s6, s1, t2
                  remuw        a6, s0, s4
                  mulhsu       t3, a3, a4
                  srai         s8, a2, 57
                  mulhu        ra, t6, t4
                  sra          s7, s3, s3
                  addi         s0, a1, -761
                  sltu         s5, s4, s4
                  srai         t3, t1, 55
                  divu         a5, t1, s1
                  add          a2, s10, s2
                  addiw        t2, t4, 243
                  and          s10, tp, a2
                  slliw        s11, s6, 13
                  slti         a4, s8, -1505
                  mul          s7, tp, gp
                  mulhu        gp, a7, t3
                  srlw         a4, s7, s4
                  slliw        gp, s4, 4
                  divuw        a3, s11, a5
                  rem          s11, t6, a4
                  srlw         t2, t1, t3
                  addw         t0, a5, a3
                  remw         t1, a0, s3
                  srl          a2, t5, s2
                  sltiu        s11, sp, -1880
                  add          gp, tp, s9
                  div          zero, s9, ra
                  subw         a6, a0, s4
                  sub          t3, t5, s2
                  slti         s0, ra, 1075
                  or           tp, s11, t4
                  srai         tp, sp, 32
                  sraiw        a2, zero, 10
                  addi         a5, s6, 1893
                  slliw        a7, s3, 27
                  mulh         a4, t1, zero
                  sraw         t3, s1, s2
                  nop
                  srlw         a6, s2, t5
                  mulhsu       ra, s10, t6
                  srl          s10, s11, a4
                  andi         s8, t0, -1397
                  slti         s2, s9, 6
                  sra          s2, a6, t6
                  addiw        s1, s5, -1969
                  andi         t2, t4, -1399
                  ori          a4, t4, -764
                  sraw         s2, gp, a2
                  sra          a3, t3, t6
                  mulw         a0, t2, a2
                  sllw         ra, t1, ra
                  or           s8, t4, s7
                  sllw         sp, t4, t3
                  rem          s6, s2, s9
                  or           a4, t6, s5
                  mulhsu       s3, s7, s4
                  sra          a0, s10, a5
                  add          s5, a4, s10
                  mulw         t2, s4, s2
                  addiw        tp, a3, 756
                  sltu         a7, s4, s0
                  or           t2, a7, ra
                  remuw        tp, zero, t3
                  addi         a0, t3, -50
                  sltiu        s5, t1, -1797
                  xori         s8, a6, 1102
                  srai         t6, a5, 52
                  ori          s8, tp, -1152
                  mulw         s5, s3, s7
                  sub          a4, t3, s1
                  remuw        a0, s4, s8
                  slliw        a2, s7, 24
                  mul          s10, a7, s8
                  xori         s7, s0, -343
                  srlw         tp, s11, s11
                  auipc        t1, 468164
                  andi         a3, a7, -632
                  divuw        t3, t5, s10
                  srai         s7, s8, 57
                  remu         t6, t1, t4
                  xori         s5, s10, 786
                  sltu         t3, a5, s1
                  divu         a4, ra, s3
                  slt          a3, a6, a4
                  srliw        tp, ra, 1
                  sltiu        s8, t4, -517
                  slt          s10, t2, t4
                  and          s1, t3, a3
                  divu         t1, t2, tp
                  auipc        s2, 445088
                  sll          a7, t3, s2
                  sraw         tp, t3, a7
                  mulw         a7, s4, s10
                  sraw         s0, s11, t4
                  xor          t0, s7, a2
                  xori         t6, s7, 5
                  subw         t2, tp, t6
                  xori         t6, s0, 980
                  remuw        tp, t3, a0
                  mul          t0, a7, sp
                  andi         s1, s5, 167
                  nop
                  mulw         a4, zero, a0
                  and          t6, t5, t1
                  slti         s6, t5, 301
                  divu         s6, t4, s1
                  slt          t5, s7, zero
                  slli         zero, a5, 9
                  srl          t2, sp, s2
                  add          a5, t6, sp
                  remuw        a7, sp, t5
                  sltu         t0, sp, a1
                  or           tp, s8, a7
                  srai         t5, s6, 9
                  sltiu        zero, a4, 75
                  srliw        tp, t4, 17
                  lui          s11, 599782
                  and          zero, s9, s4
                  sraw         gp, sp, s7
                  andi         a5, t0, -958
                  addw         t6, s0, t0
                  mulhu        s5, t6, s10
                  sltiu        t1, s1, 1563
                  addiw        ra, sp, 1658
                  div          a1, a2, gp
                  srliw        gp, s7, 2
                  sraiw        t6, a3, 14
                  xor          s10, t5, sp
                  addiw        s6, a4, -715
                  sraw         s7, ra, a6
                  sub          a5, s4, s4
                  remw         s7, a6, s5
                  sll          t3, t3, t6
                  subw         s5, t1, t5
                  or           gp, t5, s3
                  addi         a1, s11, 1544
                  addw         s10, s5, s9
                  subw         t2, zero, a4
                  auipc        a0, 282018
                  xori         s2, s11, -994
                  srl          zero, s7, t2
                  divw         s8, s10, t5
                  lui          a4, 18158
                  sub          t3, s3, s10
                  add          t1, s4, a5
                  nop
                  sra          s7, a4, s2
                  mul          t6, a0, a2
                  sllw         s6, a2, t3
                  div          s11, t2, s3
                  addw         s5, t6, gp
                  rem          t6, a2, s10
                  slli         zero, s4, 31
                  divu         a7, zero, s9
                  srai         s1, zero, 52
                  mulh         s10, a7, a2
                  sll          s1, a4, gp
                  addi         t6, s3, 648
                  mulw         a0, gp, s6
                  auipc        t6, 281793
                  sll          s7, t3, gp
                  srai         s2, t2, 27
                  remw         tp, s9, a7
                  div          tp, a1, t2
                  srli         a0, s9, 6
                  slti         a4, t1, 676
                  slli         tp, zero, 18
                  ori          s11, tp, -87
                  andi         gp, t0, -220
                  divw         gp, t2, sp
                  srlw         s7, s8, s10
                  lui          s11, 123624
                  nop
                  addw         a6, s1, ra
                  mulw         a2, sp, zero
                  xor          a6, s1, a4
                  addi         t6, a3, -1642
                  rem          t5, t2, t1
                  slliw        ra, s10, 12
                  srliw        a3, s10, 19
                  sll          s5, s1, gp
                  sll          s0, a0, a6
                  sltiu        s0, t2, -1990
                  sll          tp, t0, ra
                  mul          a0, zero, sp
                  rem          s2, s8, s1
                  slliw        s11, s0, 8
                  andi         s11, t5, 565
                  mulw         ra, t5, a1
                  slliw        s3, a1, 3
                  srl          a1, a0, s11
                  slliw        s6, s9, 19
                  sub          t2, s11, s10
                  slti         s1, s6, 1112
                  divw         t5, s10, a1
                  sub          a7, a1, s3
                  ori          a0, t6, 1694
                  div          t2, a2, a2
                  slliw        s7, s6, 5
                  divu         a7, a5, s10
                  ori          zero, a2, -246
                  remw         a6, s4, a5
                  addiw        s8, t6, 774
                  srliw        s10, t2, 5
                  mulw         a3, s11, s5
                  addw         a7, s11, t3
                  mulh         a2, t5, t5
                  or           tp, a7, s2
                  sraiw        s5, a4, 7
                  slli         s0, s4, 15
                  mulh         s3, s9, gp
                  nop
                  mulhu        t3, s1, s11
                  sra          a7, a2, s8
                  srli         a0, t2, 23
                  sllw         a0, t5, s4
                  remw         a6, s7, tp
                  sll          t1, t6, s4
                  subw         s5, s5, t5
                  add          a3, t2, t6
                  mul          a4, a6, a7
                  addiw        s11, a0, -1296
                  xor          a4, t5, s4
                  xori         gp, tp, -1363
                  addi         s10, s10, 1230
                  rem          sp, t1, a1
                  rem          gp, t4, a2
                  addi         t0, t4, 1692
                  sltu         s6, s11, ra
                  sub          a5, t1, t0
                  slli         t5, zero, 7
                  mulhu        a5, s5, t4
                  srai         zero, a5, 1
                  xor          s11, tp, s5
                  mulh         t2, t3, s11
                  slliw        s5, t3, 9
                  sraiw        s6, s2, 14
                  sraw         s2, t3, s5
                  subw         s8, s9, a6
                  sllw         ra, a2, a4
                  mulw         a4, s6, a4
                  srliw        t1, a2, 3
                  xori         tp, t4, 286
                  divuw        s6, t5, a5
                  remu         s6, gp, a0
                  sraw         a4, s8, t2
                  ori          t0, s2, 244
                  divw         t6, s9, t4
                  lui          s0, 454488
                  sltu         s6, s4, t1
                  sub          zero, a2, s5
                  mulhu        t5, a4, a0
                  ori          a0, gp, -519
                  subw         a3, s10, t4
                  srl          t3, a1, t6
                  ori          t5, a2, -1400
                  sltu         s6, s9, s10
                  divu         a7, t4, s7
                  srliw        a2, s1, 15
                  and          sp, s9, s5
                  addiw        s5, sp, -350
                  mulhsu       a6, t1, t1
                  and          t0, a1, s10
                  mulh         ra, t0, sp
                  remuw        a6, s1, s3
                  remu         t0, t6, s7
                  srai         a3, t4, 60
                  srli         s5, a6, 33
                  subw         s8, t3, s1
                  remw         a5, tp, s1
                  mulw         sp, s0, t1
                  and          a1, a5, a5
                  nop
                  addi         a5, a0, -1850
                  auipc        a2, 223575
                  srai         s1, s7, 12
                  slti         t3, s0, -1120
                  addi         a3, s9, 1298
                  divuw        t3, s10, s5
                  addw         a0, ra, a6
                  mulhu        s8, t1, s4
                  remuw        tp, a0, a4
                  sllw         ra, gp, s1
                  xori         tp, s1, 338
                  slli         t3, s8, 10
                  addiw        a7, s7, 67
                  srliw        s6, ra, 11
                  srliw        s5, t4, 14
                  divu         s1, s11, s3
                  nop
                  remu         s7, t1, t0
                  srlw         s3, a3, s5
                  divu         s7, t4, a4
                  slt          t2, s2, t3
                  subw         sp, s1, sp
                  slt          sp, s7, s4
                  divu         a5, s6, a1
                  divuw        s1, t6, s5
                  srli         s6, a3, 34
                  divw         t5, s1, s9
                  xori         t0, a0, -719
                  sltiu        s7, s8, 199
                  sra          ra, s0, a7
                  srlw         a0, s4, a2
                  divuw        s8, s1, s4
                  addw         s6, a6, a7
                  divu         s0, s11, s4
                  sllw         s3, s7, a6
                  remu         gp, a1, t2
                  auipc        t2, 156203
                  rem          ra, gp, s5
                  subw         a0, s7, t1
                  srlw         ra, a4, a4
                  sltiu        a5, a0, -1636
                  div          s6, s3, t4
                  andi         a7, a3, 1821
                  auipc        s11, 889479
                  remuw        ra, a7, gp
                  divu         a7, a0, s2
                  sra          s8, sp, t4
                  mul          s2, t4, a3
                  mulw         s0, s1, a0
                  srliw        a5, s6, 20
                  sltu         s1, s5, tp
                  div          t0, zero, s7
                  srliw        a0, t6, 30
                  sraiw        s6, a7, 6
                  mulhsu       sp, a6, t4
                  sraiw        t3, s2, 31
                  add          a2, t2, s3
                  addiw        t3, s1, -1728
                  subw         s7, a0, s3
                  subw         s11, s3, s5
                  xori         ra, s6, 553
                  remu         t3, a1, s11
                  and          s10, a4, s1
                  addiw        s10, t4, -431
                  rem          s8, a4, t0
                  auipc        a3, 373715
                  addi         t3, a3, -601
                  sra          s10, zero, t4
                  add          a0, t4, t3
                  sra          tp, a7, s11
                  addiw        t2, s0, -1598
                  sllw         zero, a3, a4
                  sltiu        s2, tp, -241
                  sllw         a2, t3, zero
                  sraw         zero, gp, a5
                  sltiu        t6, s2, -1265
                  mulhsu       s0, a5, s3
                  xori         s7, t5, 505
                  sraiw        a7, t1, 27
                  sub          a3, t3, a1
                  mulhu        a6, t3, a4
                  subw         s0, t5, s0
                  sub          a3, a6, s8
                  sllw         t0, s9, s2
                  mulw         t2, t3, gp
                  auipc        a6, 259711
                  sll          sp, t6, a2
                  slt          tp, s8, a4
                  lui          sp, 42637
                  sraw         s0, t6, a4
                  sub          a1, s4, t3
                  sraiw        s5, a6, 13
                  rem          gp, a4, s11
                  sub          s10, s3, s3
                  ori          a0, s1, -1364
                  sra          a3, s4, a5
                  andi         s11, ra, 632
                  andi         sp, a2, 1341
                  slliw        tp, s5, 27
                  remu         t0, a1, s4
                  ori          t2, sp, 565
                  remu         zero, sp, s5
                  mulh         sp, s6, s1
                  or           sp, t1, t0
                  addi         s7, t6, 453
                  sllw         zero, s6, t1
                  subw         t2, s5, t3
                  slliw        s11, s3, 21
                  mulh         a0, a7, s9
                  remu         t6, s11, s1
                  sllw         a1, s4, t3
                  lui          s8, 591424
                  sub          tp, s3, sp
                  mulhu        t5, zero, sp
                  slliw        a4, t5, 23
                  remw         t6, t6, s5
                  sltiu        a2, s9, 507
                  slti         t2, tp, 664
                  xori         t3, s0, -650
                  and          t6, s8, t4
                  remu         s8, s3, a6
                  addw         a3, tp, a3
                  mul          t6, a5, s8
                  divu         t3, t0, t1
                  sraw         s1, sp, t2
                  slt          s5, s3, s9
                  sraiw        s2, t6, 30
                  remw         t2, t5, s11
                  remu         t2, s11, a3
                  remuw        a2, ra, zero
                  slti         a0, a4, 1377
                  div          t0, a0, t0
                  sraiw        s7, gp, 26
                  subw         a2, s8, a6
                  divu         a4, s2, s3
                  sub          t5, t6, a4
                  sra          a6, s1, ra
                  srlw         s6, a0, t4
                  sll          s1, s8, t3
                  srl          a6, t1, s7
                  subw         tp, gp, a1
                  addiw        t5, s0, -1912
                  auipc        a2, 739774
                  add          s3, s0, a7
                  mulhsu       s6, s3, t6
                  andi         ra, a0, 845
                  divw         t2, s6, s8
                  nop
                  sltu         tp, t6, s11
                  add          s11, s10, s1
                  addi         t2, s8, -1136
                  xori         s7, s0, 1663
                  addw         s0, a2, zero
                  srai         s1, s9, 36
                  or           a7, sp, a6
                  sraw         zero, a7, a2
                  mulw         t6, s0, zero
                  slt          ra, s5, s0
                  rem          t3, ra, s7
                  mul          s0, t2, a0
                  addw         s11, gp, t6
                  xor          a6, s7, t1
                  div          zero, t3, t4
                  or           s7, a2, tp
                  slliw        a5, gp, 0
                  sll          gp, s3, s8
                  mul          s5, a0, s7
                  mulw         a2, t2, a6
                  andi         t3, s9, 1717
                  or           a2, s9, t0
                  sltiu        s10, s10, -492
                  slli         t1, a7, 39
                  sllw         gp, sp, s6
                  sll          s1, t4, a5
                  and          t6, s4, a7
                  slti         s2, t3, -1496
                  or           s5, t5, t1
                  addiw        sp, s2, 128
                  divw         a7, t6, a6
                  nop
                  ori          a2, a3, 16
                  divuw        t0, sp, s2
                  auipc        zero, 881508
                  sra          s8, zero, a5
                  divuw        t2, s10, s9
                  sltu         s10, t6, ra
                  xor          ra, tp, t0
                  subw         a7, s0, s6
                  slt          s5, gp, s0
                  srai         ra, t3, 43
                  subw         s11, s11, s10
                  remu         a1, t4, s11
                  slliw        s10, t1, 15
                  mulw         s10, t5, s9
                  lui          s2, 304480
                  sllw         a5, a3, t6
                  rem          t2, a1, s2
                  remu         s8, a6, a7
                  lui          t2, 118822
                  sllw         s8, s0, s4
                  lui          a5, 720707
                  mulw         zero, s1, sp
                  srlw         a0, s11, a2
                  sll          s7, s7, t2
                  srlw         tp, s6, t3
                  addiw        s2, s3, -1821
                  remuw        t0, s5, s2
                  remw         s5, s10, t1
                  remuw        tp, gp, a1
                  auipc        s10, 417941
                  remu         s10, gp, a7
                  srliw        s5, s7, 16
                  rem          s1, t4, s4
                  nop
                  srai         gp, a0, 40
                  srliw        a2, s4, 9
                  remuw        s10, s10, a7
                  srliw        s11, tp, 7
                  nop
                  div          a0, s4, s6
                  nop
                  sll          sp, a5, tp
                  and          s3, s8, a4
                  remuw        s2, a6, zero
                  rem          a4, s4, t2
                  rem          s5, s0, s5
                  sra          a3, s1, a7
                  mulhu        s10, a4, a7
                  mulh         s2, a7, tp
                  sltiu        s6, t2, -512
                  srliw        s8, t2, 4
                  rem          a6, s3, a1
                  andi         s3, s10, -150
                  remuw        t3, gp, s7
                  xori         a1, s1, 1710
                  mulh         ra, a2, s11
                  sltiu        t6, s3, 1530
                  addiw        s5, a3, 156
                  addw         a1, a3, t0
                  mul          a0, s4, a3
                  xor          a5, a3, a3
                  srlw         s0, a2, t5
                  mulh         s8, zero, a5
                  divuw        s6, t1, a7
                  remu         s10, sp, a3
                  xori         a2, s1, 561
                  addiw        s7, t2, 1805
                  slti         s8, s0, 1016
                  divw         s7, zero, s7
                  srai         s8, a6, 63
                  remw         a6, s11, gp
                  or           ra, s3, t0
                  remu         t2, t0, a7
                  slt          s7, tp, t3
                  nop
                  mulhu        sp, ra, zero
                  remuw        a1, s10, t3
                  subw         s8, a6, t6
                  rem          s8, a0, s7
                  slliw        t5, s1, 8
                  sltu         tp, s10, t5
                  nop
                  xor          s1, t3, s2
                  addw         t0, s2, a0
                  srliw        a7, t0, 6
                  addi         t6, a4, 40
                  divu         t5, a7, t5
                  srlw         s6, gp, a3
                  srliw        s10, sp, 16
                  auipc        a3, 81486
                  addi         s6, t6, -1744
                  auipc        tp, 369560
                  lui          s6, 300705
                  mul          t6, t1, s1
                  remw         tp, sp, s5
                  addi         t0, t6, -1837
                  mulh         a7, t6, s2
                  divw         t2, s8, t1
                  sraw         t1, t2, t5
                  sll          a6, a3, s3
                  remw         s2, s11, a0
                  srli         t0, a7, 54
                  xor          s6, s9, a3
                  sraw         sp, a2, t6
                  slti         t0, s6, -1797
                  addiw        s11, s11, 793
                  sltiu        t2, a4, -1157
                  and          s1, a3, s11
                  sra          t3, a3, a0
                  mulw         gp, a2, s10
                  remu         ra, a7, s2
                  srliw        zero, a3, 28
                  rem          s2, a1, a2
                  xor          s11, zero, a6
                  slti         ra, s3, -446
                  remu         s1, s5, a7
                  div          s11, a1, t6
                  div          t6, s0, a0
                  mulh         t1, s6, a5
                  divuw        s11, gp, tp
                  sub          t2, a4, a3
                  xor          t0, a5, t3
                  sll          t1, s9, s10
                  divuw        t2, t5, a3
                  andi         s6, t5, -1468
                  sraiw        a7, t5, 8
                  addi         a7, gp, 278
                  sra          s6, a6, sp
                  andi         a6, s3, 498
                  nop
                  mulh         t0, a4, t4
                  sra          s3, t4, a5
                  nop
                  sraw         t3, t4, tp
                  sraiw        a1, s2, 19
                  srli         s1, zero, 35
                  mulhu        s2, gp, s9
                  mulhu        s11, sp, t2
                  remu         a4, a7, sp
                  sra          s7, s6, zero
                  nop
                  ori          t6, a2, 1641
                  addw         s2, s11, a0
                  slt          s6, s7, ra
                  addiw        s3, s9, -228
                  subw         s8, t6, s7
                  ori          a0, t0, -268
                  remuw        a0, t6, a2
                  sub          s11, s2, s10
                  srliw        s5, a7, 4
                  div          t6, t3, a4
                  addiw        s5, t1, 777
                  remuw        a6, a4, t0
                  subw         t6, a6, t1
                  and          a7, a6, s2
                  sltu         t6, sp, a3
                  srliw        tp, s9, 19
                  srliw        a0, a0, 27
                  sltu         gp, s11, s1
                  mulhu        s7, a6, s4
                  divw         s3, a5, s11
                  sll          ra, tp, a0
                  ori          gp, s3, -509
                  sllw         tp, tp, s3
                  or           a1, s0, zero
                  or           tp, gp, s5
                  sltu         zero, s7, a5
                  divu         tp, s9, a1
                  sltu         a0, a7, s10
                  divu         gp, s5, zero
                  divw         s5, s4, t6
                  divuw        sp, a4, s3
                  slt          a5, gp, a5
                  mulh         a4, s8, t1
                  slliw        s2, s4, 4
                  mulh         s10, t5, ra
                  sra          s11, a1, t0
                  srlw         s6, s4, s10
                  remw         s8, s2, zero
                  add          a0, sp, a0
                  xori         a3, tp, -987
                  srli         s2, t2, 23
                  andi         a5, s1, 1231
                  mulw         s10, gp, t1
                  sltiu        a1, t4, -907
                  divw         tp, gp, s9
                  slli         a5, s5, 55
                  srliw        t6, s1, 7
                  srli         s8, s6, 63
                  mul          a3, ra, s3
                  xori         a5, s3, -394
                  auipc        a4, 162198
                  or           tp, s0, t1
                  addi         t6, t0, -737
                  divuw        sp, s10, a7
                  lui          t1, 104070
                  divu         a7, s11, s0
                  addw         a5, t4, t6
                  divu         a6, s7, t5
                  slliw        t2, s9, 20
                  andi         s11, a3, 854
                  sraiw        a2, s1, 20
                  divw         s6, a0, s7
                  sll          s6, t5, s6
                  sllw         t1, s7, s9
                  sltu         a0, s10, t0
                  mulhsu       t0, a3, t5
                  srli         a1, s4, 51
                  addiw        t0, s1, -876
                  slt          s5, gp, a7
                  divu         t1, s11, s2
                  remu         t0, sp, a1
                  slliw        s5, t1, 2
                  remuw        ra, s11, t5
                  mulhsu       a3, a1, s7
                  sub          s5, s3, sp
                  divw         t6, t3, s7
                  sll          s5, s9, t6
                  or           a6, tp, gp
                  sraiw        s6, ra, 21
                  slt          tp, a0, zero
                  auipc        a4, 870629
                  nop
                  slt          s11, s11, t3
                  subw         a0, gp, s6
                  mulh         tp, t1, t2
                  srliw        s5, t6, 5
                  sltu         a0, t5, s9
                  lui          a4, 425156
                  divuw        a1, s0, s1
                  sraw         s6, sp, s10
                  srliw        s3, s0, 2
                  srl          tp, s7, a7
                  sltu         s10, gp, t2
                  divu         s2, a1, t0
                  sub          a2, a5, a1
                  mulh         s0, a1, t1
                  sraw         s1, s8, t3
                  and          a0, s10, t3
                  remu         sp, sp, gp
                  mulhu        t5, s0, gp
                  srlw         t3, a3, s5
                  slliw        t3, s1, 12
                  sraiw        sp, a4, 16
                  addi         s3, gp, -650
                  divw         s7, t2, a5
                  remu         s11, s2, s6
                  sll          t2, a6, a3
                  and          s5, a7, s5
                  slti         s5, sp, 411
                  addi         s6, sp, -1142
                  add          sp, a4, ra
                  mulhu        gp, s3, s5
                  remu         ra, t6, ra
                  srai         s1, tp, 48
                  add          a4, t6, t3
                  addiw        ra, t6, 687
                  srlw         s1, a1, s3
                  lui          tp, 342364
                  addw         t6, gp, a5
                  mul          t1, t4, ra
                  lui          gp, 599881
                  rem          s2, s11, a0
                  sltiu        gp, ra, 695
                  divu         t3, tp, t3
                  mulh         s8, s6, s2
                  divu         gp, t1, s8
                  divw         s0, ra, s3
                  xor          t1, s4, tp
                  nop
                  sllw         a5, ra, a0
                  div          sp, t2, s11
                  addw         t6, s4, t6
                  srli         s2, a1, 49
                  sra          a6, a0, zero
                  remuw        ra, s3, s3
                  rem          t1, a7, s7
                  srliw        t5, s5, 22
                  sub          a3, s5, t6
                  ori          s6, s3, 1246
                  rem          s10, s5, t5
                  slli         tp, tp, 25
                  mulhsu       t3, a5, gp
                  slliw        sp, t0, 11
                  srai         s8, t1, 10
                  addi         a1, ra, -1616
                  rem          t5, s5, t4
                  xor          tp, a0, zero
                  auipc        a6, 231341
                  sllw         a6, a4, s7
                  remuw        a2, t6, s6
                  divw         a3, a3, s6
                  divuw        s0, a1, s0
                  srl          s1, s3, t4
                  and          a6, t2, a0
                  addiw        t1, s1, -1500
                  rem          t3, zero, gp
                  lui          a7, 585791
                  srl          t0, t1, ra
                  srlw         ra, t3, t5
                  mulw         t1, a1, a3
                  slt          a4, t3, s1
                  remw         s1, s3, t0
                  divw         t5, gp, zero
                  ori          a7, s0, 1043
                  ori          a7, t5, -104
                  xor          t0, gp, t4
                  auipc        a5, 209638
                  divu         sp, t6, a0
                  mulhsu       s3, a5, s8
                  sra          ra, s10, s5
                  rem          a0, s1, a1
                  slliw        zero, t2, 21
                  sub          t1, a2, t1
                  divuw        a5, s10, s3
                  addi         t1, tp, 1406
                  sltu         a0, gp, ra
                  srli         t6, t0, 7
                  srliw        s2, a0, 11
                  lui          gp, 51977
                  sllw         a2, t1, a1
                  mulhsu       s11, t5, s1
                  slt          t0, ra, a2
                  divu         zero, zero, s9
                  sra          s1, s4, s2
                  div          s0, s4, s2
                  andi         t1, tp, -535
                  ori          a5, s6, -789
                  sllw         t2, a7, t2
                  lui          sp, 180990
                  srli         gp, a4, 30
                  ori          tp, sp, -1235
                  addw         t6, tp, s0
                  andi         a7, a2, 1983
                  slliw        a1, gp, 17
                  lui          t1, 7089
                  sraw         s11, s1, gp
                  subw         s8, a4, t1
                  mulhu        s0, gp, s5
                  sltu         t6, s10, a7
                  sub          a2, t6, s9
                  mulw         s11, s6, t5
                  sll          a6, t4, s9
                  sub          s7, a1, s3
                  andi         a2, a7, -1553
                  srl          s3, a4, tp
                  remu         a4, zero, gp
                  andi         a1, s6, 717
                  rem          a5, t1, a4
                  mulhu        s6, s8, t5
                  ori          t0, a0, 1257
                  slt          tp, s1, a2
                  nop
                  divuw        t0, s5, t6
                  mul          s11, t2, s7
                  srli         s0, s10, 50
                  mul          a4, s0, a4
                  remuw        a5, s5, s7
                  or           s8, t0, a1
                  mulh         s5, a7, t1
                  addi         sp, a0, -558
                  sub          sp, a4, t1
                  mulh         a6, s6, a2
                  slliw        ra, s9, 5
                  sraw         s6, a6, s3
                  sraw         a1, tp, s1
                  slli         zero, a0, 56
                  auipc        a0, 920205
                  and          s2, tp, s10
                  mulw         s5, t6, t1
                  sltu         tp, a4, t6
                  div          a6, a5, a5
                  remu         a3, tp, s5
                  mulhsu       s8, s9, s9
                  mulw         a6, s3, a5
                  sraw         a2, a6, s2
                  mulh         a3, t3, sp
                  nop
                  sraw         a2, t1, s2
                  and          a2, ra, t2
                  sltu         s0, t3, s9
                  and          s11, a7, tp
                  xor          s11, sp, a2
                  subw         a4, tp, t3
                  slti         s0, a5, -468
                  sll          t0, t0, tp
                  srliw        a6, tp, 18
                  mulhu        t2, s3, t4
                  div          zero, t6, ra
                  addw         sp, s3, ra
                  remuw        t0, a5, a4
                  slti         s1, s5, 1289
                  auipc        a3, 11224
                  rem          s0, a5, a2
                  remuw        s1, a2, ra
                  sub          s11, gp, a4
                  sll          a7, a3, s3
                  xor          t3, a6, a3
                  sllw         a3, t3, a0
                  slli         s5, t4, 34
                  remu         a7, a6, gp
                  addiw        t6, s3, -1992
                  srliw        s2, tp, 15
                  sraw         ra, a7, a7
                  slliw        a0, s11, 19
                  ori          s2, a0, -462
                  sll          t1, t2, s6
                  sllw         ra, t1, a5
                  divu         s5, sp, s5
                  mulw         ra, s3, gp
                  sltu         t5, gp, t4
                  sltiu        a6, a6, 1731
                  sub          s8, a6, s8
                  subw         t6, a6, t1
                  auipc        a6, 127963
                  slti         a2, s11, -1608
                  slli         s0, s8, 32
                  remuw        s10, s2, t5
                  sra          sp, tp, s5
                  sltiu        a4, tp, -1997
                  andi         s0, a2, 495
                  mulw         s5, s2, a4
                  and          s6, t1, a2
                  mulh         t5, t2, a0
                  sraw         s3, t1, s1
                  slt          s11, s5, s5
                  mulhu        s1, s3, a7
                  subw         a6, ra, s8
                  srli         tp, s1, 17
                  mulw         s5, t3, s4
                  srlw         s10, s9, a0
                  sraiw        a3, s6, 15
                  nop
                  srli         a4, s5, 7
                  remu         a3, s4, zero
                  mulh         s10, s6, a1
                  nop
                  srlw         a1, a1, t1
                  sltiu        s2, s2, 921
                  sraiw        s11, sp, 14
                  srlw         s11, a1, a0
                  sra          a1, a1, a5
                  lui          a6, 604064
                  remw         a1, t5, s3
                  subw         t3, a1, s8
                  srli         t6, t0, 4
                  divw         s3, s5, t1
                  sraw         sp, tp, t0
                  srl          t1, a5, a2
                  slt          a1, t3, s11
                  srli         t0, t0, 42
                  sraiw        a7, t0, 30
                  sraiw        s11, t2, 12
                  sll          s6, a7, t2
                  srlw         s11, a1, zero
                  srlw         t0, s7, sp
                  sltiu        s0, a5, 1002
                  andi         a7, s0, 1464
                  subw         a4, s11, t3
                  and          a2, s5, s10
                  andi         a2, t3, 1620
                  xori         tp, a0, 262
                  srl          a6, a5, a4
                  srl          a6, t3, a1
                  divw         s10, t1, s3
                  srliw        s1, a0, 0
                  remu         zero, gp, t3
                  sltu         a4, s11, s10
                  slliw        gp, s3, 28
                  sraw         t5, a0, tp
                  remw         s5, ra, s5
                  sraiw        a4, t5, 8
                  mulhsu       s10, t2, t2
                  div          t2, t0, t0
                  sll          s7, sp, s9
                  slt          a4, s6, a0
                  sra          a0, a7, zero
                  slti         t1, s9, -1896
                  and          a3, t1, s1
                  slli         zero, a7, 47
                  xori         a2, gp, 380
                  sll          a3, s9, a4
                  nop
                  xori         s1, s11, -29
                  xor          t1, t0, s5
                  xor          a0, a6, s1
                  mulhsu       a5, s1, a2
                  mulhu        s5, t1, a0
                  ori          s8, s10, 291
                  mulhu        s10, ra, a1
                  andi         s3, s5, -1741
                  div          t3, s6, a2
                  sraiw        a6, zero, 11
                  sra          s7, s7, a4
                  mul          t1, s2, t4
                  div          s3, s11, s11
                  remuw        s6, s7, s1
                  lui          sp, 935362
                  addi         t5, a3, 1605
                  div          t2, t2, s4
                  divw         s6, gp, t3
                  sllw         s6, a1, s6
                  xori         a6, s3, -1118
                  srl          a7, a6, sp
                  subw         s10, tp, s10
                  nop
                  divu         a4, ra, a0
                  slli         t1, sp, 18
                  add          a1, s9, s7
                  sll          s2, s5, ra
                  addw         s2, s9, sp
                  slt          gp, t3, s2
                  xor          a4, a3, gp
                  addw         a6, a4, s1
                  div          s7, a7, a5
                  slt          a2, s6, a7
                  div          t6, sp, t6
                  nop
                  add          a6, s10, s8
                  nop
                  slli         s8, s1, 20
                  mul          t1, t4, tp
                  srlw         s2, t6, ra
                  divuw        a5, t5, a7
                  remuw        s7, tp, s10
                  remw         t2, t3, s2
                  sraw         tp, sp, s7
                  divuw        t0, s6, s5
                  sraiw        a6, ra, 22
                  srliw        a4, t0, 13
                  ori          s2, a7, -2034
                  mulh         a0, ra, a1
                  mulh         s11, t1, ra
                  lui          a4, 645311
                  or           t2, a1, tp
                  and          gp, t1, t3
                  lui          s8, 766643
                  remu         t0, gp, tp
                  srl          t6, t3, sp
                  slliw        t3, s6, 4
                  sllw         s3, t6, a3
                  mulh         a6, s10, s10
                  srlw         s6, tp, s4
                  add          s10, t5, s1
                  sraiw        a7, tp, 3
                  auipc        s2, 258788
                  mulhu        s10, gp, s4
                  addiw        a1, a7, -163
                  srlw         s5, s7, a7
                  srl          a3, a6, a4
                  subw         s3, s1, t0
                  sra          s5, s11, zero
                  auipc        t1, 846601
                  srliw        ra, s11, 31
                  and          t6, a6, a2
                  divu         a6, s6, t5
                  andi         gp, t4, -1401
                  ori          s2, s6, 912
                  add          s0, t5, a2
                  lui          gp, 160068
                  and          s0, s2, s8
                  srlw         s5, a3, t0
                  addw         a1, a2, s9
                  xor          s7, a4, s7
                  remuw        a4, a6, t2
                  rem          sp, a4, s9
                  rem          s3, a2, t2
                  mulhsu       a3, a3, s4
                  slti         s8, t6, 1878
                  slti         a2, a3, -356
                  remu         a7, t0, s6
                  sltu         s5, a7, a5
                  mulhsu       s5, s4, s5
                  nop
                  srliw        s3, gp, 0
                  and          s2, s11, sp
                  sltiu        s11, t3, 1653
                  addw         a2, s5, zero
                  srlw         a1, gp, t5
                  andi         s11, ra, -1745
                  remu         a0, s5, t0
                  sllw         a7, t2, s10
                  remu         t1, s6, s1
                  xor          a1, s3, gp
                  srliw        a1, s2, 7
                  mul          zero, t6, s2
                  slti         s3, s1, -1328
                  divuw        a5, s0, s5
                  sll          a2, s2, s10
                  addi         s7, s5, 855
                  or           t2, a3, ra
                  mulw         sp, s8, t1
                  addw         s1, s8, t0
                  divu         a0, tp, s9
                  addiw        s0, t2, 1946
                  mulw         a3, a7, a5
                  andi         zero, t4, -934
                  and          t3, gp, sp
                  mulhu        tp, zero, t0
                  addiw        t2, s2, -926
                  sraw         tp, sp, s2
                  sub          zero, a0, ra
                  slli         t0, s8, 21
                  mul          s11, t5, t1
                  subw         a5, t0, gp
                  remu         s8, s10, s8
                  addiw        s5, t1, 1068
                  subw         t3, t1, sp
                  nop
                  mulw         a3, tp, a1
                  mulhsu       t3, s0, a0
                  addw         s7, tp, s3
                  mulhsu       t6, s7, s2
                  xor          t6, s9, s1
                  subw         s5, ra, t3
                  remuw        t2, s5, t2
                  addw         ra, s10, tp
                  sltiu        gp, a0, -396
                  ori          t3, s11, 922
                  addw         s11, s4, s1
                  xori         a3, a4, -1112
                  addi         s8, s0, 641
                  mulw         a3, a5, s4
                  addi         t5, s8, 1719
                  xor          t3, s0, a4
                  divw         tp, t0, t4
                  srai         tp, a4, 14
                  auipc        a1, 459449
                  subw         s11, t4, sp
                  sra          zero, a3, s4
                  sub          gp, t3, a3
                  div          s0, t0, s10
                  mulhu        t5, t6, s6
                  srli         t2, s1, 22
                  addw         t3, a3, a7
                  mulhu        s8, t5, s5
                  divuw        s2, t3, s8
                  srl          t6, a4, a0
                  remw         t0, t0, t1
                  remuw        gp, s7, a2
                  slt          a0, gp, sp
                  sll          s8, s4, a3
                  remw         t6, s7, tp
                  divuw        s3, s0, a2
                  srlw         t1, s2, t2
                  sltiu        t0, s0, -1152
                  lui          gp, 250681
                  xori         a1, s10, -25
                  ori          t0, t4, -461
                  divw         s7, zero, a1
                  auipc        a4, 964118
                  addw         s11, a5, a4
                  sllw         s8, s2, tp
                  auipc        sp, 484601
                  xor          ra, s10, s4
                  mulw         a6, a3, a4
                  div          a7, sp, s8
                  subw         s6, t6, sp
                  and          s8, sp, s8
                  srlw         a3, t3, s5
                  ori          s6, a7, 240
                  or           s11, gp, t6
                  slli         a5, gp, 9
                  addw         zero, t3, zero
                  div          gp, t1, tp
                  srl          s10, t6, t5
                  mulhsu       gp, a6, a1
                  divu         gp, s10, s2
                  divuw        s11, s3, t2
                  add          tp, a5, s2
                  nop
                  andi         t5, a6, 1520
                  auipc        s11, 96841
                  slt          s2, t5, zero
                  slliw        t3, t6, 12
                  mulhu        s7, s0, zero
                  addiw        s8, s5, -1558
                  auipc        a6, 704395
                  sraiw        s2, a0, 9
                  sllw         a5, s5, t2
                  and          s1, t3, tp
                  mulhu        t1, a6, t1
                  mulhsu       s10, s9, sp
                  ori          s6, a7, -1803
                  remu         sp, s11, a3
                  srl          s11, a2, s0
                  mulhu        s10, tp, s2
                  srl          s1, s5, gp
                  sraiw        a4, t5, 29
                  ori          a5, s8, -1538
                  srlw         a5, a0, t4
                  div          t3, s9, s8
                  addw         s6, a1, a6
                  divw         t0, a0, zero
                  sraiw        s3, ra, 4
                  sraw         s11, a2, ra
                  and          zero, a5, t0
                  or           a6, t2, s8
                  sra          s11, a1, t2
                  srl          a3, a5, s9
                  slliw        t5, s4, 10
                  srl          t3, t3, t1
                  subw         tp, t0, s2
                  xor          a7, t5, a5
                  sllw         sp, s7, t5
                  divw         s3, t4, t3
                  slt          s6, sp, s6
                  slt          s0, s9, s9
                  srl          a7, s2, a5
                  divw         s5, t5, s0
                  remu         s2, gp, a0
                  sll          t5, gp, sp
                  srl          a5, a7, t3
                  divuw        t1, t6, t0
                  divuw        a1, s4, s7
                  nop
                  srli         a7, ra, 5
                  slti         a1, a3, 477
                  slti         tp, s7, 1317
                  slli         a6, s9, 56
                  divu         tp, s7, t1
                  sraiw        ra, t0, 26
                  subw         a5, s3, t0
                  or           s6, s2, t2
                  remuw        a1, a4, s3
                  addw         t5, t0, t3
                  subw         tp, a1, s4
                  or           s1, ra, s10
                  or           a4, a6, t3
                  ori          a7, a1, -543
                  slt          t0, ra, s2
                  slt          s6, s0, t6
                  div          s3, a5, s7
                  mulhsu       s6, s3, t1
                  sllw         s6, a6, sp
                  or           t6, s8, t5
                  divw         ra, s9, s0
                  sll          a6, a4, zero
                  srai         s6, a2, 62
                  mulh         a4, s6, s6
                  slli         t6, a3, 13
                  mul          a6, s3, s1
                  rem          t2, s6, s10
                  mulhu        s2, s8, s2
                  lui          a4, 169284
                  auipc        s7, 79650
                  div          sp, s3, t5
                  sra          tp, t1, a2
                  remu         s5, s11, a6
                  auipc        a1, 218737
                  sll          ra, a2, t5
                  slti         a3, s5, -47
                  auipc        t6, 380729
                  slt          t5, ra, s8
                  srli         s3, s0, 19
                  or           s1, s10, t3
                  lui          tp, 134446
                  mulh         s6, tp, s9
                  divuw        a7, s6, s1
                  nop
                  add          a0, a3, t5
                  sub          t5, a2, a3
                  rem          a3, a7, a6
                  slliw        a7, s4, 21
                  sltu         a1, zero, tp
                  slt          t1, s7, a3
                  remuw        s3, tp, s3
                  rem          s2, s2, s8
                  addiw        a3, tp, 582
                  slt          a7, a6, s8
                  srai         zero, a1, 35
                  srl          sp, s9, a0
                  div          t6, a0, s11
                  sra          ra, a2, t6
                  lui          sp, 351509
                  mulhsu       s5, a3, tp
                  sltiu        a2, t4, 109
                  xori         s5, t1, 1526
                  sltu         s5, s6, s4
                  slti         zero, t0, 218
                  srlw         s6, ra, a4
                  sllw         tp, t3, s7
                  mulhu        a1, a0, a4
                  sltu         zero, a1, s3
                  div          t2, s0, s2
                  andi         s5, s9, 188
                  sub          t3, gp, s10
                  addw         a5, s7, t5
                  divu         a6, a1, gp
                  xori         s1, s0, -1877
                  subw         s1, a4, t2
                  remuw        ra, t4, s1
                  slti         tp, a3, 672
                  srlw         sp, a6, t0
                  addiw        s10, sp, 1131
                  slti         s1, a3, 681
                  addw         s5, ra, a0
                  mulh         s8, s5, t0
                  subw         s8, a2, sp
                  slli         a2, ra, 34
                  ori          t1, s11, -976
                  mulhsu       s1, s4, s10
                  mulhu        sp, zero, gp
                  xori         s8, a6, -1583
                  sll          s6, a1, s11
                  sltiu        s1, t2, -369
                  slli         zero, tp, 20
                  sll          a1, t2, s11
                  sllw         s0, s9, s11
                  rem          t2, a4, s0
                  addi         t2, a3, -1875
                  and          t6, a6, a7
                  xor          t0, s2, s7
                  slti         s8, s2, -1860
                  sraiw        s8, a4, 17
                  ori          a5, tp, -1844
                  lui          a0, 560176
                  srai         a3, tp, 37
                  slti         s7, a2, 1952
                  mulhu        s11, s0, t5
                  xor          s3, s5, ra
                  addiw        t3, s11, -1585
                  sra          a6, a3, s8
                  mulhu        s11, s0, t6
                  andi         t0, t5, -1175
                  sra          t0, t6, t6
                  mulw         t5, s0, s1
                  subw         s7, s6, s7
                  and          t1, t3, a1
                  sra          s2, a1, s11
                  mulhsu       t3, gp, s5
                  ori          s8, s1, 1462
                  addi         s8, a2, 996
                  mulh         t6, t5, a7
                  mulw         s6, s3, t5
                  sra          t6, tp, a0
                  remu         s11, tp, s0
                  slli         a3, s9, 10
                  slli         s5, a7, 22
                  add          a2, s5, s2
                  slt          ra, a7, s6
                  sra          a7, s8, tp
                  sll          s2, tp, ra
                  sub          a7, s11, s11
                  sraw         s7, s8, s6
                  srli         s3, t0, 51
                  xori         s3, ra, 479
                  mulh         s3, s6, a3
                  slt          s8, t5, a5
                  div          s10, zero, a7
                  mulw         t0, t2, a1
                  xor          tp, s4, t1
                  srl          s1, s5, s3
                  slli         s2, a7, 59
                  xori         a6, s2, -45
                  rem          a7, zero, s7
                  slli         a4, s11, 30
                  and          a3, a5, s4
                  divuw        s5, a6, t2
                  sub          a6, s8, a1
                  mulhsu       t1, a5, t1
                  divu         a5, t6, a3
                  mul          t1, s4, a5
                  srli         t2, sp, 16
                  slt          t0, ra, t6
                  add          s10, a7, s8
                  div          a1, s4, t6
                  mulhsu       s11, a2, a5
                  sub          s5, t5, t2
                  addi         s8, t0, 1040
                  rem          gp, s6, a1
                  lui          a1, 78990
                  remuw        a7, s3, sp
                  sraiw        s11, s1, 4
                  srai         t3, a1, 10
                  sltu         s11, t2, t4
                  sraiw        gp, a7, 1
                  remu         a6, a3, s10
                  sub          a1, a7, s1
                  mulhu        t6, a1, gp
                  slli         a4, s8, 0
                  remuw        t6, a7, s0
                  slliw        a0, s8, 13
                  lui          t5, 351948
                  rem          a4, s9, s11
                  add          s11, t1, s5
                  andi         tp, s8, 405
                  remuw        a6, s5, a7
                  srai         a1, a1, 45
                  divu         t3, t6, s11
                  remu         t2, a4, sp
                  subw         s10, s3, a6
                  nop
                  divuw        s1, s5, ra
                  ori          s3, s2, -689
                  sraw         s2, t2, t5
                  rem          t3, s9, s10
                  sllw         s5, t4, tp
                  srai         t2, t4, 14
                  or           a3, tp, t4
                  srliw        t1, a3, 4
                  remw         s8, s9, s0
                  sll          t3, gp, s5
                  and          s8, s6, t1
                  remu         t6, a5, s1
                  div          a2, s7, a2
                  mulh         s2, s0, a5
                  div          s8, t4, sp
                  auipc        s3, 956671
                  slti         s0, t0, -1938
                  remuw        s1, gp, s7
                  slli         gp, s6, 56
                  srl          t6, s5, s4
                  addw         s11, ra, s7
                  srai         s2, s0, 58
                  slt          t6, s3, ra
                  sltiu        a2, a4, 1633
                  srlw         a7, s3, s4
                  sub          s6, t4, gp
                  divw         t5, s11, a4
                  sllw         t1, t1, s0
                  sll          s7, t6, sp
                  mulhsu       s10, a5, s0
                  sll          s7, t6, sp
                  rem          ra, t6, ra
                  addiw        a7, t5, -1817
                  addi         s6, a5, -937
                  divu         s7, a2, t3
                  srl          s10, s9, t0
                  remuw        a3, s6, t5
                  and          t1, s11, gp
                  srliw        tp, s2, 20
                  sra          s11, t3, s10
                  subw         s6, t0, t3
                  sltiu        ra, s0, -611
                  slliw        tp, a0, 4
                  mulhsu       a3, s7, t6
                  sltiu        t2, s3, 781
                  divw         sp, s11, s0
                  srai         a0, a2, 1
                  sraiw        ra, ra, 31
                  subw         t0, sp, s3
                  slt          s8, t2, a0
                  divu         a7, a5, a1
                  sll          a1, s2, s3
                  add          a4, ra, a0
                  remuw        t1, t4, a4
                  andi         zero, t1, 1283
                  add          s5, s7, s10
                  slli         t6, s1, 51
                  divw         s0, a3, s9
                  srai         s6, s8, 58
                  mulh         s5, s0, t5
                  addw         a6, s5, a1
                  mulw         s1, t6, s1
                  subw         s7, s9, tp
                  subw         a4, gp, s9
                  mul          a4, a5, s8
                  sraw         a4, a4, s1
                  nop
                  addw         s10, a2, a1
                  srl          t6, s4, s4
                  divu         s6, s3, zero
                  or           a2, s3, a4
                  xor          t0, t5, a5
                  slliw        t5, t0, 14
                  mulw         a3, a7, t1
                  srli         sp, s7, 1
                  slti         t6, zero, -628
                  mulhsu       s0, a5, s9
                  addi         s3, zero, -1979
                  and          s3, t5, t4
                  add          s1, s8, s11
                  srliw        gp, s3, 6
                  sltiu        t2, a2, -1529
                  srl          s8, a4, s8
                  slt          s6, a0, s4
                  andi         gp, s5, 114
                  sra          a1, s5, s0
                  remu         a1, s7, s3
                  add          s5, s10, a1
                  sltiu        s8, a1, -1074
                  ori          tp, t6, -1812
                  addiw        t6, t3, 1856
                  sub          t5, a5, a6
                  xori         t3, s3, -426
                  divw         a5, a2, s1
                  mulhu        t6, t2, s6
                  remw         zero, sp, t1
                  subw         s0, s5, a2
                  sub          s1, s5, s3
                  or           zero, zero, a0
                  xor          a2, zero, s1
                  sraw         t6, a4, s5
                  sllw         a5, s9, t4
                  addi         s11, t1, -1737
                  addi         ra, s3, -1545
                  srlw         a3, a7, s8
                  remu         s1, t1, t2
                  mulhu        a4, s4, s0
                  srl          s10, a3, s4
                  sllw         s0, t1, a1
                  divw         s5, a2, gp
                  rem          t2, t6, a1
                  srliw        zero, s10, 11
                  divw         t6, s2, t6
                  sltu         s0, sp, zero
                  sraiw        t6, s9, 9
                  and          s5, ra, s8
                  slliw        t1, gp, 11
                  lui          t1, 872710
                  rem          t3, s0, a6
                  and          s10, s2, s1
                  srl          s10, s8, a6
                  sraiw        a4, ra, 22
                  auipc        a0, 402169
                  sraw         s3, s1, a6
                  divw         t6, t3, t5
                  mulhsu       a0, s6, s11
                  sra          t2, s10, s8
                  slt          sp, t4, t0
                  srl          a7, s11, ra
                  srli         a3, a0, 8
                  mulh         zero, s1, t1
                  slti         a1, a3, 1778
                  remuw        s3, s11, s1
                  slli         s10, s8, 22
                  mulhu        s8, t5, s2
                  sltu         a3, s10, tp
                  auipc        sp, 223855
                  mul          t1, s7, s7
                  mulhsu       s7, a4, s4
                  and          zero, s11, ra
                  sub          ra, t3, zero
                  xori         a3, s7, -1599
                  ori          tp, a0, 1202
                  srli         s6, t2, 28
                  or           t3, a4, s6
                  slt          s6, a6, s1
                  andi         s8, s5, 1129
                  sraw         a7, s8, s5
                  andi         s5, s1, -982
                  or           s0, s11, t4
                  sltiu        a7, ra, -1378
                  sub          a0, s4, s4
                  mulh         t1, s5, s5
                  sra          t2, a7, s11
                  mulhu        s8, t0, gp
                  sll          a2, a4, s7
                  subw         s10, s3, a0
                  add          a4, ra, s8
                  ori          s7, sp, 971
                  sraiw        a0, t5, 27
                  slliw        a1, a5, 12
                  slliw        tp, tp, 2
                  srl          sp, s0, t3
                  remw         t3, s6, a4
                  div          t3, s5, a5
                  subw         a4, a3, t3
                  slliw        a3, s5, 19
                  remuw        a0, ra, s3
                  mulhsu       s1, s11, a4
                  addw         a5, t1, s11
                  xor          s1, sp, a1
                  xor          a7, ra, s1
                  srlw         s7, s6, s11
                  mulhsu       gp, a3, a2
                  divw         a7, t3, t4
                  sraiw        a3, zero, 27
                  srl          a5, tp, s3
                  auipc        tp, 946597
                  mulhsu       s2, a1, s7
                  rem          s1, s10, s0
                  srli         t0, sp, 61
                  mul          a2, sp, a2
                  remu         s5, a1, s5
                  remu         s0, a7, t4
                  xori         a5, s0, -1737
                  sltiu        sp, s6, 429
                  slti         s8, s7, 1781
                  mulh         s7, s11, sp
                  andi         t0, s9, 301
                  subw         zero, a4, s2
                  slti         a6, s7, 1878
                  ori          a3, s5, 193
                  slli         s7, sp, 9
                  slliw        gp, s4, 5
                  addi         t6, zero, 582
                  slti         s1, s8, 262
                  nop
                  sra          a2, a1, s2
                  subw         a2, s2, s9
                  remuw        t3, gp, t0
                  addiw        a2, t6, -869
                  slliw        a0, a0, 31
                  remu         t6, ra, t3
                  srliw        gp, s0, 9
                  sraw         ra, a1, s7
                  remu         s1, a0, s9
                  sraw         s11, ra, a0
                  xor          t6, t2, s8
                  ori          a7, t4, -1144
                  sltiu        s6, a7, 1769
                  srl          t1, s9, s11
                  mulhu        t1, t1, s8
                  divu         sp, a2, a6
                  sllw         t3, a2, s10
                  srai         s8, sp, 60
                  xori         a0, s3, 1033
                  subw         a6, s2, a1
                  sll          s5, gp, s9
                  sraw         a0, s7, s8
                  divuw        s3, a4, t4
                  divu         t1, t4, s0
                  rem          a7, a7, s6
                  srli         a0, s4, 25
                  srlw         a3, a4, a2
                  slliw        a5, s7, 1
                  srli         a3, ra, 39
                  sll          a6, s9, s1
                  addiw        a2, t3, -1671
                  remw         t0, s7, s8
                  remu         a3, t4, gp
                  rem          a0, a3, t4
                  addiw        a1, s0, -1246
                  and          s11, a6, t4
                  add          s0, tp, tp
                  divu         a1, a6, t6
                  subw         s1, s7, s6
                  slt          t3, a5, s0
                  auipc        t3, 310097
                  srliw        ra, s4, 23
                  sll          s5, gp, a6
                  or           a3, s8, a5
                  mulh         a0, t0, s0
                  srliw        s10, s2, 18
                  slti         a7, t6, 1627
                  remw         t2, a3, s7
                  addi         a2, s1, -1633
                  subw         zero, a3, tp
                  mulw         s0, s9, a1
                  sltiu        a5, s8, -1522
                  slli         s11, a5, 14
                  sra          a2, a5, t6
                  remuw        a1, a1, s11
                  addw         t5, s2, t2
                  andi         t2, ra, -1111
                  slli         a4, gp, 8
                  xori         s10, a3, 190
                  auipc        s2, 361082
                  add          s5, a5, tp
                  xori         t2, s7, 1924
                  sraw         a7, a5, s8
                  lui          t3, 644514
                  addi         s6, a5, -153
                  mulhu        tp, t3, s8
                  andi         ra, a7, 1240
                  addw         s0, tp, zero
                  srl          a7, zero, s0
                  remu         a1, gp, a4
                  slliw        zero, a4, 1
                  sltu         t3, sp, a3
                  sraiw        a2, s7, 31
                  srai         a7, a6, 29
                  slt          t0, a2, sp
                  divu         ra, a3, a3
                  andi         tp, s1, 707
                  remu         s11, tp, s5
                  and          t6, a1, ra
                  mulhsu       t3, s10, s2
                  addiw        a3, s10, 902
                  addiw        s7, t4, 939
                  sra          s1, s1, t4
                  remw         s1, t5, s11
                  srlw         t6, a2, sp
                  srliw        s0, a3, 14
                  sraiw        t2, a2, 11
                  add          s7, s7, a4
                  sltu         a2, t5, s5
                  and          s1, s2, s8
                  remuw        zero, zero, ra
                  addiw        sp, s2, 1941
                  sraiw        ra, s8, 17
                  add          t2, s8, s5
                  sltiu        s1, a6, 1466
                  addw         t0, t1, s11
                  mulhsu       s2, s1, s1
                  sraw         a3, s6, a2
                  mulw         s6, s10, a4
                  xori         t5, a4, -2044
                  srliw        a7, t1, 18
                  mulw         s6, a1, s6
                  rem          s8, s8, gp
                  srl          s10, s3, s0
                  slli         sp, a4, 10
                  xor          s8, a3, a2
                  mul          s5, a5, t4
                  nop
                  addiw        a4, s4, -1302
                  xori         t0, a1, -422
                  divw         t6, t5, gp
                  mulhsu       t3, s10, t0
                  slli         s10, a5, 45
                  addw         a7, s3, a7
                  andi         s3, s9, -334
                  sllw         s5, t6, a3
                  addi         s7, s8, 1334
                  sltiu        t2, a1, -145
                  mulhu        s5, t1, a2
                  mulhu        a5, a5, ra
                  addw         ra, t2, t4
                  sltu         t5, t0, s11
                  sra          a6, t1, a0
                  xor          s6, s10, sp
                  slliw        a5, tp, 11
                  srlw         t6, a7, a5
                  lui          a7, 904319
                  sllw         a4, a2, s5
                  xori         s6, sp, -621
                  lui          s8, 994012
                  slt          t2, a6, a1
                  mulhsu       zero, s6, s1
                  nop
                  nop
                  slti         s10, s2, -1959
                  sra          s6, s4, a0
                  and          a7, s8, ra
                  addw         a3, t2, a6
                  add          a7, a5, a1
                  nop
                  lui          s6, 119640
                  divuw        t2, t3, a6
                  mulhu        s5, s2, s4
                  slti         a6, s10, 807
                  addw         tp, s6, s7
                  sub          s10, s4, a3
                  remuw        t1, t1, zero
                  remuw        a3, a5, s7
                  or           sp, a2, zero
                  sll          s11, t1, s4
                  rem          s0, s0, s11
                  sraw         s10, t4, s11
                  sll          zero, s4, t3
                  xor          t6, a5, t0
                  sraiw        s2, s1, 21
                  divw         s3, t4, s1
                  mulh         s2, s7, t1
                  auipc        zero, 835573
                  slli         s7, s2, 62
                  mulh         zero, ra, s9
                  slt          tp, ra, s11
                  remuw        s5, s10, a1
                  addi         s10, s4, 492
                  srai         t5, t2, 23
                  divuw        t1, s1, s4
                  andi         s3, a4, 1611
                  ori          s3, t3, -1698
                  srai         t0, sp, 30
                  sraw         a7, zero, s0
                  srl          zero, a6, s3
                  div          t2, s7, a2
                  xor          s6, t4, a1
                  sraiw        gp, gp, 17
                  mulw         a0, a0, t5
                  srli         a3, a2, 2
                  divw         t5, t4, t2
                  srliw        a4, ra, 0
                  and          a4, s11, s10
                  sltu         a1, a4, t1
                  srai         s1, tp, 3
                  divu         a6, a5, s4
                  srl          a3, a3, s0
                  srli         a2, t2, 17
                  slt          s11, a0, a1
                  addi         tp, s1, -2003
                  sllw         s6, a5, t4
                  or           s0, ra, a7
                  sraw         s8, t4, a0
                  xori         tp, t0, 318
                  slti         t5, tp, 862
                  slli         s3, s6, 54
                  xori         t2, zero, -1092
                  nop
                  mul          t1, a1, ra
                  mulhu        tp, s0, gp
                  addw         sp, a0, t3
                  xor          s7, gp, a1
                  remuw        t3, t5, s8
                  mulhsu       s7, a3, ra
                  sltu         a6, a4, s10
                  addw         t1, t3, ra
                  remu         a6, a7, s1
                  remw         s10, s9, a2
                  mul          s6, s9, sp
                  subw         s8, a1, s5
                  mulhsu       a6, a1, s4
                  sltu         t2, t4, gp
                  slt          t5, a7, gp
                  mul          s1, t0, t5
                  addi         s8, a5, -606
                  div          t6, s2, t3
                  sra          tp, a6, a2
                  slli         t3, tp, 16
                  remu         s5, a4, zero
                  lui          s10, 1045482
                  sltu         t3, a0, a6
                  srai         t6, s1, 5
                  sra          t3, s9, s9
                  sra          sp, a3, s5
                  sub          s5, s0, a4
                  mulhsu       a0, tp, t3
                  slt          s11, s0, s0
                  sub          a2, a1, a2
                  srlw         s1, a5, t0
                  sub          a5, sp, a0
                  sll          t0, s5, t6
                  divuw        a0, s10, zero
                  mulhsu       t6, gp, a5
                  sltu         s3, t2, a4
                  xori         a1, s10, -970
                  xori         s1, s5, 1178
                  sll          t0, s5, s9
                  nop
                  srai         s8, s3, 23
                  mulh         s5, sp, s7
                  slliw        a7, tp, 17
                  addiw        s5, t0, -824
                  divw         s2, gp, s2
                  srlw         gp, t5, zero
                  slli         a4, t1, 56
                  addi         t3, s3, 2012
                  sub          s8, t0, a4
                  mulh         gp, a4, t6
                  remu         sp, a1, ra
                  srli         a5, ra, 13
                  sll          a6, zero, t1
                  auipc        s0, 218836
                  andi         a2, a4, 1736
                  slliw        t2, a3, 30
                  xori         t5, s6, -109
                  xori         a5, s3, -775
                  slti         s10, s7, -145
                  lui          t5, 251969
                  xori         s0, t6, 1771
                  lui          gp, 933693
                  sub          s2, s3, gp
                  or           a7, a2, a0
                  slli         s5, s8, 17
                  mulhu        s11, t6, s6
                  sra          gp, s3, a5
                  sll          t6, a6, a3
                  and          s5, t1, a4
                  sub          zero, tp, a7
                  divuw        s6, s3, t5
                  mulhu        tp, gp, t0
                  divw         t5, a7, s5
                  nop
                  mul          s8, a0, a7
                  mulh         a5, s1, s3
                  and          s2, ra, a5
                  and          t6, t0, t5
                  nop
                  mulw         s7, t0, gp
                  rem          ra, s9, s8
                  nop
                  slt          t3, t2, s4
                  mul          a1, a0, s9
                  sll          s10, s3, sp
                  subw         t5, tp, a5
                  srai         s11, a4, 2
                  andi         a1, s5, 1605
                  remuw        a4, t0, t0
                  divw         s11, t4, s11
                  sllw         t0, zero, a5
                  mulw         a3, s11, gp
                  sllw         s0, s3, a4
                  sraiw        s1, t5, 26
                  nop
                  addw         a3, s1, s3
                  auipc        a6, 615243
                  srli         t5, s11, 24
                  mulh         tp, a1, t1
                  sraiw        s5, sp, 22
                  subw         s11, s7, t4
                  mulhu        s1, s9, s1
                  sll          t1, a1, a6
                  remu         a5, s3, ra
                  divuw        s3, a2, t0
                  slli         gp, a2, 57
                  sltu         a5, a2, s10
                  ori          a0, s9, -902
                  divw         a7, s0, s8
                  slliw        t2, a3, 12
                  add          s1, t1, a3
                  remuw        t2, a3, t0
                  srli         t0, s3, 26
                  nop
                  remuw        zero, t0, s3
                  sltu         t3, s6, a2
                  sra          t6, a2, s9
                  sltu         s5, a5, tp
                  mul          a3, t0, s4
                  rem          a7, s0, t3
                  divu         a1, s4, a3
                  add          s7, a0, a0
                  sltiu        s0, s4, -51
                  add          t5, ra, a3
                  rem          s8, sp, t3
                  divuw        t6, a3, s3
                  sll          t0, s1, s1
                  mulw         s8, t6, t0
                  andi         zero, sp, 650
                  ori          s3, t0, -175
                  sltu         a5, a5, a3
                  mulh         s8, s4, t0
                  srliw        a2, s2, 23
                  sll          a4, s2, s3
                  slti         t6, a3, 715
                  mulw         zero, s8, s0
                  remw         a4, t4, s6
                  addiw        s11, a4, -1117
                  slt          zero, a3, ra
                  lui          gp, 992469
                  divw         a7, s0, a7
                  mulh         s10, t5, t1
                  addiw        a0, ra, -1585
                  and          s0, a2, s5
                  ori          s10, a2, 1681
                  or           ra, a2, s7
                  slli         t6, s11, 19
                  divuw        s0, s8, tp
                  remw         s3, t3, s11
                  srli         t6, s4, 62
                  addw         a5, s3, s0
                  slliw        s0, a3, 30
                  lui          s5, 405214
                  remu         a7, t1, zero
                  sra          t3, s4, a6
                  sltu         a2, s7, a5
                  mulw         s2, sp, a7
                  nop
                  or           a5, s0, s10
                  or           s0, s6, a0
                  srl          zero, a5, a0
                  remuw        t5, t1, a7
                  sraiw        s6, s1, 10
                  slt          s11, s11, a7
                  andi         a4, gp, -1228
                  addiw        a2, s9, -1266
                  xori         t0, ra, 666
                  addiw        s10, s5, -9
                  div          a6, sp, t1
                  andi         s0, t6, -582
                  andi         s5, a4, 1607
                  ori          a7, t5, 1818
                  slliw        s1, s7, 6
                  sub          ra, a2, t1
                  slli         a2, s2, 26
                  sraw         a0, s11, sp
                  divu         a3, s8, a0
                  addw         t0, s0, a4
                  srai         a7, a6, 12
                  addi         ra, s3, -267
                  sllw         s2, s1, s5
                  remu         tp, zero, s3
                  sltiu        a4, s6, -1461
                  divuw        a3, sp, s3
                  sll          a7, s3, s6
                  xor          t5, zero, t1
                  sraiw        s3, t0, 30
                  divu         s10, zero, a0
                  divuw        ra, gp, s2
                  sub          t5, t4, a2
                  subw         s8, a0, s7
                  xori         a3, a3, 1560
                  mulhsu       s11, tp, s7
                  srli         ra, a4, 48
                  nop
                  sltu         a2, a2, s6
                  mulhsu       t0, sp, a7
                  addiw        zero, s11, 827
                  mul          s11, s2, a3
                  mul          t2, t6, zero
                  sllw         zero, t3, s1
                  remu         zero, s9, s9
                  sub          t2, s9, t4
                  sltiu        a3, gp, 1193
                  slli         s1, gp, 19
                  divuw        s10, a6, s9
                  sraw         s8, t2, a6
                  remw         t6, a3, t5
                  divw         s11, a6, a7
                  srlw         t5, s2, s5
                  xori         a3, a3, -692
                  sltu         s2, s1, t1
                  sllw         sp, a2, s1
                  slt          s11, t1, a2
                  srai         a4, s7, 26
                  mul          t1, sp, t0
                  sub          s11, a1, t4
                  divw         a1, s8, s11
                  or           t3, a7, s6
                  div          a4, a7, sp
                  mulhsu       s1, ra, a2
                  remw         t2, a1, a3
                  mul          s5, a4, s0
                  addi         s0, s5, 769
                  and          t6, s6, s1
                  mulw         t3, s7, s6
                  addw         t2, t0, t6
                  subw         s1, s5, s10
                  xori         gp, t2, 302
                  sltu         s3, a4, tp
                  divuw        s6, t1, a6
                  mulh         t6, a4, s6
                  sll          a3, t0, a0
                  srliw        t1, s2, 8
                  ori          t3, t1, 470
                  xori         s0, s10, -423
                  mulh         ra, s1, s8
                  sraw         s1, a1, s3
                  sraiw        a1, t6, 26
                  xori         t5, t4, 167
                  sllw         t5, a3, t1
                  sra          a7, s0, s1
                  srai         t6, s5, 20
                  remuw        s6, s5, s11
                  srl          a0, s6, t4
                  srlw         t6, t1, a2
                  sllw         a1, a1, s5
                  sraiw        zero, s1, 6
                  subw         s8, t2, gp
                  sraw         sp, s8, ra
                  lui          s10, 222674
                  srli         s7, a4, 46
                  auipc        s5, 339468
                  rem          a4, t4, t4
                  srli         gp, a1, 62
                  auipc        t5, 853448
                  sllw         t3, s0, tp
                  remu         s3, a3, s3
                  sllw         t1, a1, s4
                  mulw         sp, s10, s8
                  mulhsu       a7, a6, sp
                  srliw        s10, a2, 29
                  mul          t0, zero, s0
                  and          ra, s0, a5
                  remu         s10, s2, gp
                  remuw        a1, sp, s10
                  remw         a7, t5, t2
                  and          s0, s6, s5
                  sllw         s5, t1, gp
                  sraw         t3, zero, s2
                  sll          a2, t6, t3
                  srli         a0, s7, 8
                  sllw         ra, a5, t1
                  divu         a0, a6, t2
                  remu         a4, s0, s7
                  mulhsu       s2, sp, t0
                  addi         a5, s7, 982
                  sra          a0, ra, t3
                  addw         zero, t1, t2
                  and          s10, a1, s11
                  srliw        sp, s6, 28
                  sra          s5, s10, t5
                  sltiu        s10, t5, 1779
                  xori         s1, a3, -1991
                  slti         t2, s8, 668
                  mulhsu       gp, s3, s4
                  mulhu        s8, s9, a5
                  sub          s10, a2, zero
                  and          s11, s1, a5
                  divu         s6, gp, zero
                  addw         s8, s4, t0
                  andi         s11, s7, -1364
                  srliw        a7, sp, 11
                  rem          s11, t4, s11
                  andi         s5, a2, -588
                  slliw        s0, a2, 11
                  mulhu        s3, s1, t6
                  slliw        s11, sp, 15
                  and          s1, s10, gp
                  div          tp, a3, s7
                  rem          s2, s7, a5
                  slti         a6, sp, -1079
                  ori          zero, ra, 373
                  remuw        ra, t3, tp
                  srlw         t2, tp, gp
                  slli         s7, gp, 5
                  and          s7, t1, a2
                  mulhsu       t6, a4, s11
                  lui          t3, 435965
                  sltu         a1, s1, t4
                  sltiu        zero, s7, 860
                  andi         s6, s10, -1442
                  remuw        s8, tp, a2
                  sub          tp, a7, s2
                  divw         s1, a5, gp
                  and          sp, sp, s8
                  mulhu        s5, s8, s9
                  sltu         s6, a4, t5
                  sllw         ra, s10, s3
                  and          a5, t3, s2
                  sraiw        t5, s10, 22
                  mulhu        a5, t2, s6
                  srli         t3, t5, 38
                  or           s5, tp, a4
                  remu         a1, t2, ra
                  sra          t3, t4, t4
                  srli         t3, a4, 13
                  xor          t6, a1, s0
                  xori         t5, t1, 1624
                  mulhu        t6, gp, t0
                  addiw        s5, a6, 1503
                  auipc        a1, 580618
                  slliw        t2, s2, 9
                  addiw        tp, s1, 727
                  slti         s2, s9, -7
                  andi         a0, s2, 1297
                  divw         gp, tp, s5
                  divu         s8, a6, t2
                  mul          a3, t4, a6
                  xor          a2, s9, a6
                  sub          t1, a4, a3
                  or           a6, s6, tp
                  auipc        a3, 957884
                  div          s8, t2, s4
                  remw         s8, a0, t6
                  sllw         t0, t4, zero
                  remu         a1, s5, a3
                  srliw        s6, a1, 3
                  subw         ra, t4, ra
                  sltiu        gp, a5, 1639
                  addi         a0, s1, 380
                  sll          t3, tp, tp
                  srli         a7, s4, 23
                  and          s1, sp, s8
                  remuw        a6, s0, t3
                  sra          s5, s4, t5
                  lui          t6, 834697
                  mulhsu       a1, s4, s6
                  addi         tp, s0, 195
                  slt          a4, tp, s4
                  remuw        t6, t1, s11
                  rem          s11, t0, t1
                  subw         a1, t5, a0
                  remu         zero, a2, a5
                  sllw         t1, tp, s0
                  sraw         t3, t2, s11
                  div          t5, s1, s8
                  lui          t1, 225440
                  mulhsu       s5, s4, t5
                  divu         a6, a1, s2
                  mul          t0, s3, a6
                  xor          s3, s7, s5
                  sltu         s0, t3, a1
                  div          a3, s4, gp
                  mulh         s8, t1, s3
                  xor          s7, a1, t1
                  remuw        s6, s11, t5
                  remuw        s5, sp, s7
                  auipc        a4, 684309
                  or           t3, tp, s6
                  and          s2, a6, ra
                  srlw         t5, tp, a6
                  mulhsu       t3, t4, s11
                  slti         t3, ra, 1366
                  srliw        sp, a3, 29
                  divuw        a6, s3, t6
                  sraiw        zero, t2, 9
                  sra          s6, t2, gp
                  slt          t2, t6, t3
                  sltiu        a7, t2, 131
                  sll          a6, s3, s11
                  subw         s3, zero, s4
                  divuw        t3, s0, t0
                  slliw        t3, s7, 11
                  srli         t3, s6, 35
                  sra          s8, a7, s9
                  mul          s6, a5, a3
                  addi         s10, s7, -334
                  add          s2, t3, s7
                  remuw        a4, gp, t3
                  remu         s2, a0, a4
                  ori          s2, zero, 239
                  srai         s7, ra, 31
                  remuw        tp, t5, s5
                  mulhsu       a7, s9, a4
                  lui          tp, 505416
                  srai         s5, t5, 59
                  slt          t1, a4, s11
                  rem          zero, tp, s10
                  ori          a0, a7, -1623
                  xori         s1, s4, 167
                  andi         s3, s6, -1040
                  remu         a0, a6, t3
                  srli         a6, a4, 8
                  slti         tp, a6, 1863
                  srlw         s7, zero, t3
                  slli         a4, a1, 55
                  sltu         s11, zero, tp
                  ori          s7, a1, 1115
                  sub          s6, t1, t1
                  sraiw        t6, a7, 20
                  div          s3, a3, s5
                  andi         s5, s10, -1038
                  ori          sp, s4, -209
                  auipc        a7, 16802
                  slt          s5, tp, zero
                  xor          ra, a0, ra
                  auipc        t3, 379144
                  slt          s8, a4, s1
                  or           a0, t5, s2
                  subw         s10, a1, a0
                  div          gp, a2, ra
                  divu         t1, s2, t4
                  mulw         s6, a6, s10
                  auipc        gp, 101690
                  addiw        s10, s5, 1197
                  sraiw        s6, t0, 29
                  sraw         a7, a4, s4
                  slti         a2, sp, 259
                  addi         a6, t5, 873
                  sub          s10, t5, a4
                  mulhsu       s8, s5, s2
                  sllw         t1, t3, a2
                  mulh         a0, a2, s3
                  slt          tp, ra, s7
                  remu         t5, t0, s0
                  mulw         s11, a4, s10
                  remu         a6, s3, a1
                  addw         a6, a3, s2
                  divw         s7, s9, tp
                  subw         a0, s3, a2
                  mulhsu       s11, s0, a1
                  remu         a3, t1, s9
                  ori          zero, ra, 675
                  slliw        a3, tp, 27
                  slti         s10, t2, 1408
                  divuw        s8, s10, s2
                  divuw        sp, t1, gp
                  slti         a6, s0, 254
                  srli         s6, s1, 6
                  mulhsu       t2, a4, s8
                  srai         a0, a5, 59
                  remw         a5, t2, s6
                  sltu         a2, zero, s0
                  mulw         sp, s6, s0
                  mulw         s6, gp, t0
                  srai         t6, t4, 15
                  sraw         s8, s10, t1
                  mulhsu       t2, zero, s10
                  srliw        a7, a3, 30
                  slt          t1, s1, s4
                  addiw        t6, t5, 1977
                  add          s8, a6, s1
                  div          a5, t4, t6
                  lui          s7, 1001963
                  mulw         a0, s5, t1
                  addiw        a3, s7, -1287
                  nop
                  slli         t3, t2, 6
                  sub          a0, a4, a3
                  srlw         s2, s3, s0
                  addiw        t3, a6, 608
                  srai         t6, s6, 36
                  srli         a3, a6, 16
                  remuw        a4, s3, s7
                  srliw        t6, a4, 3
                  subw         t3, a3, a4
                  lui          s5, 557624
                  xori         a4, s7, 224
                  addiw        s5, a0, 512
                  addi         s7, s4, 1495
                  subw         a3, t3, s5
                  sll          s6, s6, s11
                  slliw        a4, t5, 14
                  remw         s3, ra, zero
                  sra          s5, s4, sp
                  ori          a5, s6, -129
                  and          a1, a7, a2
                  slt          s10, s2, a0
                  addw         a6, sp, s11
                  divuw        s3, s6, t6
                  mulh         a3, s5, t3
                  sllw         tp, s2, zero
                  slliw        t0, zero, 8
                  sll          t2, s2, a3
                  remuw        a3, tp, ra
                  sltu         t2, t0, a5
                  xor          s8, s9, s4
                  slti         s3, sp, -715
                  srl          s2, a2, a3
                  srlw         s5, t0, s3
                  ori          s1, a1, -927
                  sraiw        a3, a6, 15
                  ori          s11, s8, 1346
                  mulw         s2, s1, s5
                  subw         s7, s6, ra
                  srl          a0, sp, t2
                  mulw         s5, a3, t1
                  div          s8, s4, s10
                  addi         s11, t5, -160
                  srl          s8, t6, s7
                  remw         a4, s10, s9
                  mulhsu       a2, a1, t0
                  mulhu        s1, t0, tp
                  nop
                  divw         s3, t4, s1
                  sltiu        s5, a1, 12
                  xori         a3, t2, 1492
                  slti         a4, s0, -223
                  sltu         t0, s1, t1
                  remw         t5, t2, t3
                  remu         s8, a1, s4
                  slli         s2, s4, 54
                  srliw        a3, a0, 3
                  ori          sp, s0, 583
                  slt          t5, tp, ra
                  sraw         a3, a2, ra
                  addiw        s6, a0, 1463
                  divw         gp, s5, a4
                  slliw        tp, a2, 25
                  srlw         a7, t4, s6
                  div          s3, a4, a4
                  srli         a5, a6, 53
                  andi         a1, s9, -371
                  slt          s5, a0, ra
                  or           tp, tp, sp
                  slliw        s11, t2, 31
                  add          ra, t6, sp
                  addi         a5, gp, -466
                  addw         s0, s7, t5
                  add          tp, t5, t0
                  ori          a6, a5, 932
                  sraw         gp, tp, s0
                  or           s8, a6, sp
                  slliw        s1, s1, 21
                  addw         a7, a5, t2
                  remu         a0, a5, s4
                  srliw        t2, ra, 28
                  sllw         a4, s5, s10
                  mulw         a3, a5, s0
                  mulh         s1, gp, t3
                  andi         t5, t1, 865
                  rem          gp, tp, t1
                  auipc        zero, 313630
                  xor          a5, a3, s9
                  srai         sp, s3, 38
                  slt          a6, zero, s2
                  andi         a3, s4, -1834
                  slti         t5, sp, -1241
                  slliw        a7, a2, 30
                  sltiu        a3, s0, -497
                  srl          t6, a1, t0
                  addw         ra, a4, a5
                  mulw         s8, a7, a1
                  addw         t1, s5, a5
                  srlw         sp, s10, s11
                  divw         t5, t4, zero
                  lui          s3, 601892
                  lui          s1, 298981
                  rem          s6, gp, s5
                  sltiu        s1, s7, 1797
                  slt          s7, a0, ra
                  auipc        ra, 507945
                  subw         a3, ra, s2
                  srai         s10, s10, 40
                  divuw        s0, s6, a0
                  mulhu        s0, a2, t1
                  divuw        t5, s5, t4
                  slliw        t5, a2, 4
                  rem          a0, a0, s10
                  slti         s3, s4, -611
                  sltu         a3, s0, a4
                  remu         s3, a4, a0
                  subw         tp, a6, zero
                  sltiu        t6, a1, 438
                  mulhsu       s1, t1, s10
                  mulh         s7, t5, a5
                  remu         a2, s8, s1
                  sll          t2, s8, s6
                  remw         t3, zero, t3
                  sraw         a0, s0, t1
                  rem          s7, t4, s3
                  slli         t3, gp, 48
                  andi         s1, s3, 1974
                  slli         s11, s10, 37
                  divu         t3, t1, t5
                  lui          s11, 62492
                  divw         gp, s1, t4
                  sll          s8, s8, t1
                  and          s3, s9, s2
                  divu         a2, s3, t1
                  srlw         a4, t0, zero
                  mul          s1, s5, a5
                  sraw         a1, t2, s8
                  divu         zero, ra, gp
                  div          zero, s5, s10
                  divuw        tp, a0, a5
                  srlw         t5, a7, s2
                  sltu         a1, s2, zero
                  ori          zero, a2, 1893
                  sllw         a1, a6, a7
                  andi         gp, a5, 82
                  srli         a2, a1, 18
                  srliw        s3, a5, 1
                  auipc        t3, 320119
                  rem          a4, s10, s8
                  sltiu        s1, zero, -1038
                  divw         t0, sp, a6
                  srli         s7, s3, 6
                  xori         s8, zero, -1793
                  mulw         a1, t1, a2
                  addiw        tp, s9, -1732
                  addw         a1, gp, s7
                  add          s1, tp, s2
                  sraw         a0, t2, s4
                  slt          s10, t3, a5
                  srl          s0, t3, s9
                  divw         s6, s11, s4
                  sllw         zero, s4, s7
                  add          t1, t3, gp
                  xor          a6, a5, s11
                  slti         a0, t4, -1423
                  sraiw        s6, s5, 21
                  sraw         s8, a0, t6
                  lui          t6, 715240
                  auipc        t1, 537419
                  auipc        s2, 531311
                  addiw        s7, a6, -993
                  lui          s6, 92104
                  ori          a7, sp, 467
                  div          a7, a4, t0
                  mulh         ra, s4, sp
                  addi         s11, s8, -1769
                  srl          a0, s9, tp
                  slliw        a2, s7, 12
                  srliw        s1, t5, 6
                  addi         s3, s1, -5
                  mulh         s10, s3, a1
                  divw         a7, t5, gp
                  mul          sp, tp, s0
                  or           zero, ra, a4
                  mulhu        t3, s5, t1
                  sll          t2, s0, t1
                  divu         s6, a1, a1
                  srai         t6, s11, 44
                  slti         s5, t4, 557
                  mulhsu       t2, a5, gp
                  subw         s8, t6, ra
                  remu         zero, s8, s10
                  nop
                  remuw        ra, t5, t4
                  rem          a3, a3, zero
                  lui          t3, 463950
                  slli         s10, t2, 19
                  mulh         a3, sp, t2
                  mulhu        a3, s7, t5
                  sltu         s1, t3, t5
                  mulhu        s2, t3, s11
                  slli         t2, s4, 21
                  auipc        s5, 977765
                  mulw         s7, s7, a0
                  mul          a1, s2, sp
                  lui          a1, 872184
                  lui          a2, 91948
                  divu         s2, s5, s10
                  addw         t2, s8, s1
                  divu         a6, t6, sp
                  andi         t2, a0, 248
                  srli         a7, a3, 34
                  slli         s0, a3, 54
                  andi         s8, s11, 867
                  divu         s1, a4, sp
                  srliw        s5, s2, 0
                  srl          s11, t3, a1
                  sllw         a0, s8, sp
                  slti         t2, tp, 425
                  sra          a4, tp, s11
                  divu         t2, s6, s2
                  xori         t3, zero, 313
                  sltiu        t0, t4, -184
                  mulhu        s11, t5, a4
                  mulhu        a4, tp, s8
                  div          tp, t2, t2
                  sraw         t6, s9, s10
                  mul          a3, t5, s7
                  lui          s5, 604579
                  add          t5, s0, zero
                  and          s0, s10, a0
                  srli         s11, s1, 39
                  xori         s11, s4, 258
                  sra          a2, a1, t3
                  mulhu        t6, t3, t3
                  addi         a4, t0, -816
                  sll          s10, s0, a7
                  or           ra, a1, a7
                  mulw         s2, sp, t4
                  add          gp, ra, a4
                  sllw         s0, a6, sp
                  slt          t3, a6, s3
                  addw         a7, t0, t3
                  divw         ra, s3, t3
                  addi         a6, t5, -345
                  lui          a2, 985681
                  addiw        s1, s8, -1642
                  srliw        s11, sp, 15
                  addw         t6, t6, s4
                  ori          s7, a6, 849
                  slli         s7, zero, 14
                  slliw        s0, s3, 4
                  mulh         t0, s10, a2
                  addiw        s11, s8, -708
                  andi         s5, t0, 791
                  auipc        t3, 619713
                  subw         t1, a2, tp
                  slli         ra, t4, 0
                  sraiw        s6, t1, 6
                  srli         gp, a0, 6
                  srlw         ra, s10, a2
                  xor          a0, t3, s10
                  div          s11, s1, t5
                  or           s0, s7, tp
                  sltiu        ra, a0, 1102
                  srlw         s6, t6, s4
                  ori          zero, s8, 1286
                  divu         s11, t3, t6
                  addiw        a7, a0, 1320
                  sllw         s0, zero, t4
                  srlw         a5, s1, s6
                  xori         a5, s11, 95
                  sraw         sp, sp, t1
                  and          a6, s9, t3
                  auipc        t5, 857108
                  sltu         t3, a1, a2
                  xor          a3, a2, t6
                  remu         a6, s9, s0
                  addw         sp, a5, gp
                  srli         t0, s5, 47
                  sllw         ra, s8, s1
                  addiw        s10, t6, -1494
                  sllw         s5, s6, t0
                  mulhsu       a5, a7, gp
                  addw         a7, t2, gp
                  slliw        s5, a1, 3
                  sraw         a0, t6, s9
                  sll          a7, ra, s5
                  srlw         tp, gp, s3
                  srlw         s8, a7, a4
                  slti         s1, s2, 1957
                  remw         t5, a3, t3
                  subw         a5, a6, t5
                  remw         s11, a6, t0
                  sub          t1, a2, t2
                  and          t5, a4, ra
                  auipc        a2, 937075
                  sll          s6, s8, t2
                  sll          gp, a5, s10
                  mulhu        a3, t4, s5
                  slliw        t2, t6, 9
                  mulw         s8, s6, s3
                  rem          sp, ra, t4
                  add          gp, t0, s4
                  remw         t0, t5, s7
                  sub          a2, s7, t4
                  subw         t0, s2, a4
                  xori         s11, t5, -1101
                  mulhsu       t6, t1, t1
                  srliw        t0, a4, 26
                  mul          a5, ra, s0
                  sltiu        s0, s2, -1960
                  sltiu        tp, zero, 1332
                  slli         t2, a7, 22
                  lui          t3, 530820
                  addiw        t6, s8, -1848
                  mulhu        s2, s10, s5
                  lui          s8, 685895
                  divuw        tp, t0, a0
                  lui          s2, 280670
                  sll          a7, s11, s0
                  addw         t2, s7, a3
                  ori          a4, a1, -1962
                  divu         t0, a5, a5
                  sraw         t1, ra, t5
                  mulh         s11, t1, t5
                  rem          a4, t4, t3
                  remu         a0, sp, sp
                  and          s7, s8, s3
                  mul          tp, gp, t4
                  mul          s10, s0, s11
                  divuw        s7, a6, t3
                  srliw        s5, s4, 14
                  addiw        s11, s7, -1712
                  mulhsu       s7, t5, sp
                  slli         t3, s0, 51
                  div          s2, sp, s0
                  srai         s8, t2, 59
                  sll          zero, t5, a2
                  addi         s0, s1, 1968
                  mulhsu       s8, s2, a7
                  sub          s7, a6, ra
                  divw         a5, s1, a4
                  sll          s2, t1, t5
                  sll          a5, s9, a5
                  subw         a3, t5, t0
                  srlw         tp, s5, s5
                  ori          t0, a4, 572
                  remw         t3, t1, s0
                  addiw        s8, a7, 1183
                  sltiu        tp, t3, 611
                  xor          t3, t6, t6
                  remw         ra, s4, t4
                  addw         s1, a0, t4
                  slli         s0, s8, 16
                  divuw        t2, s9, s6
                  mulh         s2, a3, zero
                  remuw        s5, a4, a5
                  srlw         t6, ra, s4
                  auipc        t2, 827533
                  mulhu        t3, t2, a4
                  sllw         a5, s10, ra
                  sraw         s11, a3, s4
                  subw         tp, a2, s3
                  mulhu        s1, t4, a4
                  rem          t2, tp, a6
                  mulhsu       a1, t2, zero
                  sllw         s8, t1, a2
                  slt          s1, s8, s1
                  sraiw        t1, s4, 27
                  srl          a5, s5, a2
                  subw         a3, sp, s10
                  divw         s2, s5, gp
                  addi         s7, s10, -552
                  auipc        t2, 714887
                  remu         gp, ra, s6
                  nop
                  sraiw        s5, a2, 13
                  add          s11, sp, a3
                  xori         s8, t4, 343
                  sllw         t2, a0, s5
                  sub          s3, a7, a4
                  mulw         a6, a0, tp
                  lui          t3, 261670
                  divu         ra, ra, s8
                  sll          t3, sp, s9
                  mulhsu       a1, s3, gp
                  remuw        sp, s8, s4
                  rem          a3, s8, s11
                  addw         s11, s7, s4
                  mulw         s3, a5, ra
                  mulhsu       a7, t2, a5
                  mul          a7, s6, s2
                  div          a3, s7, t4
                  lui          s1, 430457
                  xori         sp, sp, -985
                  remw         s0, a5, s2
                  mulhu        s2, a4, s11
                  rem          s0, sp, ra
                  sltiu        tp, a4, 475
                  nop
                  remw         gp, s6, s3
                  nop
                  slti         ra, a5, -1123
                  srai         t0, a3, 38
                  srl          s11, s3, sp
                  sub          s11, a0, zero
                  remu         s11, s8, a5
                  mul          a0, a4, tp
                  remuw        a3, s7, a0
                  sraw         a1, a3, sp
                  slli         a1, t0, 1
                  and          t5, s10, a6
                  mulw         t3, a7, t5
                  addiw        s5, t4, 700
                  div          s10, ra, a1
                  sub          s10, s1, a4
                  slliw        a6, a7, 0
                  sltiu        s5, ra, 1185
                  srliw        t3, t1, 19
                  sraiw        s2, gp, 2
                  xori         a4, t6, -1924
                  or           t3, s9, ra
                  mul          a7, a7, s2
                  addw         t3, ra, a0
                  nop
                  divu         s11, s11, s4
                  sltiu        s1, sp, -133
                  sraw         zero, a2, a7
                  srlw         t5, s9, s7
                  lui          s0, 268462
                  divw         tp, s4, s7
                  addi         t6, t1, -1602
                  sltiu        s3, t5, 1024
                  nop
                  add          s1, a0, a5
                  add          t0, t2, t0
                  divu         t1, tp, a4
                  or           sp, a1, t2
                  srliw        s11, s4, 20
                  srlw         zero, t6, a1
                  remw         t1, s0, a3
                  and          a6, gp, t1
                  srai         gp, t0, 47
                  mulhu        a0, s2, ra
                  srli         s1, a3, 28
                  andi         a4, a7, 436
                  slt          a7, a4, t1
                  srai         a6, s2, 11
                  slli         s8, sp, 15
                  slt          t3, t3, s2
                  srlw         sp, a0, s4
                  sub          s2, s10, s7
                  and          s5, a3, a0
                  addi         zero, a3, 1724
                  divu         a0, tp, s3
                  sllw         gp, s4, s8
                  srliw        a1, t3, 29
                  lui          s6, 390001
                  remw         t3, t0, ra
                  addw         t6, t4, zero
                  sltiu        t3, s9, -688
                  ori          s6, gp, -1926
                  slliw        t1, a7, 13
                  mulhu        gp, sp, a7
                  slliw        gp, zero, 15
                  sraw         s3, s6, a0
                  sub          s5, a1, a3
                  divu         s10, s10, a4
                  nop
                  or           t6, t6, a1
                  mulhu        a7, t2, s9
                  remw         a6, s9, a7
                  remw         s10, t3, s2
                  mul          a0, s6, t3
                  addiw        s5, a3, 1525
                  divuw        s1, t5, a1
                  remuw        gp, s8, s10
                  srl          a4, t2, s8
                  divu         s6, s8, s5
                  divw         s5, a2, sp
                  auipc        t3, 432322
                  or           s11, s2, s2
                  andi         t1, a2, 846
                  remu         tp, a7, t6
                  slli         s8, a5, 0
                  addi         a3, t1, 440
                  slliw        a7, s2, 4
                  srlw         ra, a5, t0
                  sraiw        s1, s8, 22
                  srliw        s8, a7, 21
                  mulw         zero, a6, s11
                  mulh         ra, t4, s11
                  slli         s6, s3, 61
                  addiw        t6, s0, 521
                  sltiu        a7, t5, 12
                  addw         t1, s6, ra
                  sltiu        s6, a0, -406
                  sltu         sp, s5, s5
                  srli         s10, t0, 9
                  slt          tp, a0, a0
                  auipc        t3, 995463
                  mulh         a4, tp, s6
                  remu         s1, a5, t6
                  srlw         a3, a0, a5
                  nop
                  add          s10, t3, s5
                  slli         a7, t5, 34
                  sltiu        gp, s3, 1986
                  slt          a3, s4, s9
                  sraiw        a5, a0, 5
                  mulw         s0, sp, a7
                  auipc        tp, 338452
                  lui          s6, 313111
                  andi         a4, tp, -684
                  mulw         t6, s7, t5
                  remuw        s0, s2, s8
                  slti         a6, s5, 1902
                  sraw         s11, t1, t1
                  mulw         s10, s8, sp
                  xor          t3, a7, t3
                  and          tp, zero, sp
                  sll          a2, s4, t5
                  remw         a4, a7, tp
                  remuw        ra, t1, s9
                  lui          s8, 311805
                  sraw         a1, t3, t1
                  or           a1, a7, t0
                  srliw        s2, t3, 0
                  remw         tp, a3, a4
                  add          t5, a5, t6
                  srl          a6, s8, t5
                  divu         sp, s3, a0
                  addiw        s0, s1, 897
                  subw         t1, sp, s7
                  rem          s8, s8, a4
                  sll          s5, zero, a3
                  mulw         t0, s11, s3
                  mulhu        t6, tp, t3
                  sllw         a0, t3, a7
                  slti         t0, ra, -816
                  mulw         t6, gp, a1
                  add          a1, s8, a2
                  sll          s2, a3, a4
                  mulhu        s11, s10, zero
                  ori          t2, tp, -598
                  subw         a3, sp, a5
                  slti         s1, a3, -1222
                  slli         s11, s7, 25
                  srlw         a6, t3, zero
                  div          a0, t0, sp
                  sraiw        s5, s5, 14
                  xor          s1, s10, a2
                  and          a6, s7, s0
                  sllw         s8, a3, s4
                  slli         s10, s11, 14
                  addiw        s11, t0, -1655
                  and          sp, a5, t3
                  srliw        t3, tp, 0
                  addi         sp, s11, 141
                  slt          s1, t5, a4
                  sllw         a4, s2, a6
                  sltu         a4, s2, a1
                  sll          s6, t3, a4
                  mulhu        gp, tp, s2
                  sltiu        gp, s6, -833
                  srli         s10, a4, 12
                  mulh         a1, a3, a2
                  srli         a6, t3, 37
                  slliw        t6, a0, 11
                  sltiu        s3, s2, 119
                  xor          s8, s5, t4
                  sltu         a5, a0, s3
                  remuw        zero, t5, a6
                  addi         s2, s1, -656
                  addi         a1, t1, 513
                  addw         s5, t6, s4
                  sub          a0, s6, sp
                  sub          tp, s3, s7
                  sltiu        a4, s8, 600
                  srlw         a6, t0, ra
                  mulhu        s3, s9, a0
                  rem          s1, t5, zero
                  srlw         a6, a1, t1
                  mulw         s8, tp, a3
                  or           s7, t6, s5
                  srai         a1, s9, 27
                  slt          a4, s9, t0
                  divw         a3, t4, s10
                  mul          a5, zero, t1
                  subw         a3, s9, s11
                  slliw        s8, a6, 23
                  rem          t2, a1, s3
                  slliw        s7, s7, 29
                  sllw         a7, a5, s9
                  sraiw        a5, s1, 18
                  mulhu        sp, gp, s3
                  srliw        t3, gp, 13
                  mulhu        a1, t1, s3
                  lui          tp, 951939
                  mulw         tp, gp, t5
                  sll          a4, s9, s6
                  srl          s1, s11, sp
                  divuw        a2, zero, a4
                  div          s0, gp, a7
                  addiw        a0, s11, -284
                  mulh         s2, a3, s3
                  slliw        sp, s0, 30
                  xori         s6, s1, 122
                  srli         a4, t6, 46
                  srlw         gp, a6, s1
                  divu         sp, a5, a2
                  divu         s3, a7, a0
                  srai         a0, a3, 41
                  sltiu        a4, ra, -1124
                  sltu         s8, t6, t5
                  srlw         s6, t4, s5
                  divw         a3, tp, zero
                  nop
                  srliw        t3, a5, 20
                  divu         gp, a0, s3
                  addiw        s5, s6, 1325
                  or           s10, a5, a3
                  remw         a0, s7, t6
                  mulhu        s0, s9, a3
                  rem          sp, t0, a0
                  srlw         a2, sp, zero
                  mulhsu       s0, t2, a6
                  remuw        a4, s6, a6
                  mulh         a6, s4, s9
                  mul          a1, ra, t5
                  sra          s11, a5, t1
                  sltiu        s0, a3, -1953
                  mulhsu       s8, t6, a2
                  divuw        t5, s7, a3
                  remu         t3, s1, t3
                  addw         s8, s10, zero
                  mulhsu       s1, t4, t2
                  mulw         t2, a5, s9
                  slti         s8, sp, 185
                  div          t0, s1, a2
                  div          a7, s0, a1
                  divuw        zero, s9, t6
                  srlw         s5, s2, t6
                  mulhsu       a2, t5, s1
                  srl          t6, s9, t6
                  srlw         t5, sp, s7
                  addiw        s10, t3, -981
                  mulhu        t0, t1, t3
                  srai         s3, a0, 31
                  add          a6, sp, t4
                  mulhsu       t0, s3, s2
                  sub          t3, ra, s0
                  srai         s7, s8, 42
                  or           s0, s1, s8
                  addw         a1, s0, s4
                  div          s5, a3, t3
                  srlw         a3, s8, s9
                  srai         t1, a6, 15
                  remu         s11, a3, t2
                  remu         s11, t1, a7
                  remw         t6, t6, tp
                  sraiw        a6, s10, 5
                  slti         a2, s6, 365
                  slti         zero, a3, 525
                  divu         s10, ra, s5
                  rem          a2, s10, s7
                  xor          a7, a1, s8
                  and          s11, s9, a6
                  sra          a5, s3, a2
                  srliw        ra, t5, 25
                  mulh         t6, t6, ra
                  srli         t5, s2, 54
                  sll          a6, s3, s1
                  subw         s8, s6, zero
                  mulh         t1, a0, t3
                  srli         a1, t6, 56
                  xori         t3, s10, -1408
                  srli         s11, s2, 39
                  remuw        t6, s6, s3
                  xori         t5, t0, -814
                  srliw        s5, s1, 14
                  sraw         a4, s4, t2
                  slti         s1, ra, -1982
                  sll          s10, s10, s4
                  srai         a3, t2, 20
                  addiw        s10, t4, 125
                  divw         s11, a2, s4
                  rem          a7, s10, t3
                  divu         a4, s0, s11
                  nop
                  sltu         sp, s2, s3
                  sra          a6, tp, t3
                  mulw         s1, s5, s7
                  slliw        s7, s9, 18
                  remuw        s11, s2, s5
                  srai         a4, s3, 20
                  mulw         a1, t5, gp
                  srl          t1, s11, sp
                  and          s1, a6, s1
                  sll          s0, sp, s5
                  sraw         s3, s6, t5
                  sra          a7, a0, a2
                  slli         a1, t3, 34
                  remu         t3, t5, s0
                  remw         t3, sp, s11
                  mulhsu       s6, a0, s4
                  sraiw        a0, s2, 31
                  divw         s6, s5, a5
                  sltu         s6, tp, s8
                  slli         s6, t6, 18
                  sra          a7, a6, s5
                  sraw         s1, a5, t6
                  sra          a0, s6, s10
                  xor          a0, t6, a0
                  andi         t6, t1, -63
                  mulhsu       s3, t0, t1
                  divuw        zero, s0, s5
                  and          s0, s4, gp
                  srliw        s6, a1, 22
                  remuw        s10, s2, t4
                  nop
                  xor          gp, sp, sp
                  xor          t6, s11, s3
                  remuw        a7, a1, s11
                  xor          s6, s6, t6
                  subw         a3, s9, a2
                  mul          t5, s4, t2
                  divu         ra, t3, s1
                  sll          s3, a1, s2
                  slti         gp, a2, -1903
                  nop
                  addi         tp, a3, 1661
                  addw         a7, zero, s7
                  sltu         t0, s3, a4
                  nop
                  remu         s8, a6, s11
                  ori          s7, t0, 686
                  mulhu        s8, t0, ra
                  sraw         zero, s4, tp
                  sll          a0, s7, s3
                  divu         a5, s0, t1
                  xor          a1, t1, a6
                  srlw         a7, t0, s11
                  remuw        a0, sp, s10
                  sra          s0, tp, s9
                  srai         t1, t2, 22
                  subw         s8, s8, t1
                  auipc        t1, 71335
                  srliw        ra, a6, 8
                  mul          a0, a3, s8
                  remu         zero, s11, s2
                  srliw        a5, t6, 18
                  mul          s7, t4, a5
                  xori         a7, a2, -1726
                  srl          t3, t6, t6
                  srl          t3, a2, t0
                  sltiu        a4, tp, 532
                  mulhu        ra, t6, gp
                  srai         s8, a0, 53
                  sllw         s3, s0, s3
                  divu         a0, a2, t6
                  andi         t3, t1, -200
                  lui          zero, 332489
                  divw         s11, t2, s6
                  xor          s8, s1, tp
                  ori          s2, a1, 1849
                  and          ra, t4, s1
                  mulw         s0, s11, t4
                  mulw         t0, t1, sp
                  add          a1, t5, a3
                  sllw         t3, a4, t5
                  remw         a1, gp, a7
                  srai         s10, tp, 12
                  auipc        a5, 276462
                  sllw         t3, s5, t2
                  mulhu        s1, a1, s2
                  rem          a7, s11, sp
                  sraiw        a1, a3, 22
                  mulhsu       t0, s10, t3
                  sraw         s6, s1, zero
                  addi         t0, sp, 1349
                  and          t5, s4, t1
                  remuw        a2, s2, s10
                  mul          a0, s11, tp
                  xori         gp, tp, -238
                  sub          a4, s6, s1
                  nop
                  divu         t6, s9, a0
                  srliw        a2, t0, 21
                  or           a2, ra, s3
                  rem          tp, a2, sp
                  divuw        a2, sp, a2
                  divw         t1, tp, zero
                  srli         t3, a4, 27
                  remuw        zero, a3, a5
                  xor          t6, a3, a6
                  srliw        s3, t6, 27
                  srliw        gp, sp, 28
                  sraw         tp, a1, a2
                  mulh         s10, s5, s5
                  ori          t6, a6, 115
                  add          t2, s4, a2
                  auipc        s10, 748977
                  sll          a7, a3, s5
                  sra          s3, a1, s8
                  sllw         t2, s4, a0
                  lui          tp, 553923
                  xori         t0, s9, 1895
                  andi         a0, s10, 1660
                  ori          t0, a4, -1133
                  sltu         a0, t2, s4
                  slti         s10, tp, -8
                  srliw        a5, s1, 14
                  mul          s6, a3, sp
                  remuw        t0, zero, t6
                  srai         a7, s8, 17
                  sraw         t3, t0, s1
                  divu         s7, s5, s5
                  sra          s0, ra, s6
                  divw         a7, a0, ra
                  addw         s1, t4, a4
                  mulhu        zero, s4, t1
                  andi         a0, t4, -328
                  slli         tp, s2, 61
                  sll          zero, ra, a3
                  slli         s8, s11, 3
                  slt          s0, t6, gp
                  ori          a2, t5, -1569
                  remuw        s2, t1, a3
                  sraw         t6, s6, s7
                  remuw        a5, s8, s4
                  srli         s8, t1, 51
                  subw         t5, s6, a1
                  mulw         s5, a1, s2
                  div          t5, a0, ra
                  sub          gp, ra, a5
                  sll          a2, t3, t1
                  nop
                  mulw         s7, s11, s1
                  nop
                  div          s5, a5, s1
                  xori         a3, s8, -1895
                  rem          t1, a4, a3
                  ori          a6, s3, 12
                  sll          t3, s4, tp
                  remuw        a7, s2, tp
                  addi         t3, s5, -1303
                  andi         t3, s4, -1938
                  lui          a3, 883091
                  srai         a2, s9, 17
                  sub          s8, a3, a3
                  mulhsu       t3, s2, a0
                  addw         t0, t5, ra
                  sltiu        t5, sp, -405
                  ori          s11, ra, 105
                  sraiw        tp, s2, 16
                  xori         s0, a0, -1075
                  mulhu        s2, s4, t4
                  subw         s3, t2, a7
                  sraiw        s0, zero, 24
                  subw         t3, a7, s5
                  addw         t1, a4, a0
                  sltiu        s2, s0, -1468
                  mulhsu       s10, t3, t1
                  mulh         t5, t3, a1
                  sltu         t1, a4, s1
                  mulw         tp, a2, a4
                  sll          t3, sp, s2
                  srliw        a2, t2, 30
                  subw         a5, ra, t2
                  lui          t1, 680819
                  xori         s3, t4, -1727
                  auipc        ra, 859171
                  lui          t5, 1039378
                  divuw        s3, s4, t5
                  add          s11, t1, a1
                  andi         s11, s2, 151
                  and          s8, a4, a5
                  andi         a6, a6, -1449
                  remuw        s8, s8, t2
                  xor          t2, a2, zero
                  mulhu        s10, a4, s7
                  slli         ra, s8, 42
                  div          t6, s9, t3
                  srli         a4, s2, 9
                  and          a5, s4, s7
                  add          t1, ra, a0
                  la x25, test_done
                  jalr x0, x25, 0
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
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x3f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x20, x20, -4
                  sd  x29, (x20)
                  add x29, x20, zero
                  addi x29, x29, -256
                  sd  x1, 8(x29)
                  sd  x2, 16(x29)
                  sd  x3, 24(x29)
                  sd  x4, 32(x29)
                  sd  x5, 40(x29)
                  sd  x6, 48(x29)
                  sd  x7, 56(x29)
                  sd  x8, 64(x29)
                  sd  x9, 72(x29)
                  sd  x10, 80(x29)
                  sd  x11, 88(x29)
                  sd  x12, 96(x29)
                  sd  x13, 104(x29)
                  sd  x14, 112(x29)
                  sd  x15, 120(x29)
                  sd  x16, 128(x29)
                  sd  x17, 136(x29)
                  sd  x18, 144(x29)
                  sd  x19, 152(x29)
                  sd  x20, 160(x29)
                  sd  x21, 168(x29)
                  sd  x22, 176(x29)
                  sd  x23, 184(x29)
                  sd  x24, 192(x29)
                  sd  x25, 200(x29)
                  sd  x26, 208(x29)
                  sd  x27, 216(x29)
                  sd  x28, 224(x29)
                  sd  x29, 232(x29)
                  sd  x30, 240(x29)
                  sd  x31, 248(x29)
                  add x20, x29, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x5, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x5, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x5, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x5, x27, ecall_handler
                  li x27, 0x1
                  beq x5, x27, instr_fault_handler
                  li x27, 0x5
                  beq x5, x27, load_fault_handler
                  li x27, 0x7
                  beq x5, x27, store_fault_handler
                  li x27, 0xc
                  beq x5, x27, pt_fault_handler
                  li x27, 0xd
                  beq x5, x27, pt_fault_handler
                  li x27, 0xf
                  beq x5, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x5, _start
                  sd x0, 0(x5)
                  sd x1, 8(x5)
                  sd x2, 16(x5)
                  sd x3, 24(x5)
                  sd x4, 32(x5)
                  sd x5, 40(x5)
                  sd x6, 48(x5)
                  sd x7, 56(x5)
                  sd x8, 64(x5)
                  sd x9, 72(x5)
                  sd x10, 80(x5)
                  sd x11, 88(x5)
                  sd x12, 96(x5)
                  sd x13, 104(x5)
                  sd x14, 112(x5)
                  sd x15, 120(x5)
                  sd x16, 128(x5)
                  sd x17, 136(x5)
                  sd x18, 144(x5)
                  sd x19, 152(x5)
                  sd x20, 160(x5)
                  sd x21, 168(x5)
                  sd x22, 176(x5)
                  sd x23, 184(x5)
                  sd x24, 192(x5)
                  sd x25, 200(x5)
                  sd x26, 208(x5)
                  sd x27, 216(x5)
                  sd x28, 224(x5)
                  sd x29, 232(x5)
                  sd x30, 240(x5)
                  sd x31, 248(x5)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
                  mret

load_fault_handler:
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
                  mret

store_fault_handler:
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x29, x20, zero
                  ld  x1, 8(x29)
                  ld  x2, 16(x29)
                  ld  x3, 24(x29)
                  ld  x4, 32(x29)
                  ld  x5, 40(x29)
                  ld  x6, 48(x29)
                  ld  x7, 56(x29)
                  ld  x8, 64(x29)
                  ld  x9, 72(x29)
                  ld  x10, 80(x29)
                  ld  x11, 88(x29)
                  ld  x12, 96(x29)
                  ld  x13, 104(x29)
                  ld  x14, 112(x29)
                  ld  x15, 120(x29)
                  ld  x16, 128(x29)
                  ld  x17, 136(x29)
                  ld  x18, 144(x29)
                  ld  x19, 152(x29)
                  ld  x20, 160(x29)
                  ld  x21, 168(x29)
                  ld  x22, 176(x29)
                  ld  x23, 184(x29)
                  ld  x24, 192(x29)
                  ld  x25, 200(x29)
                  ld  x26, 208(x29)
                  ld  x27, 216(x29)
                  ld  x28, 224(x29)
                  ld  x29, 232(x29)
                  ld  x30, 240(x29)
                  ld  x31, 248(x29)
                  addi x29, x29, 256
                  add x20, x29, zero
                  ld  x29, (x20)
                  addi x20, x20, 4
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
