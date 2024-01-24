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
                  li x31, 0x8000000000001105
                  csrw 0x301, x31
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0xb
                  li x1, 0xe
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xfa055a14
                  li x6, 0x2e558b6c
                  li x7, 0x80000000
                  li x8, 0xf
                  li x9, 0x1
                  li x10, 0x6
                  li x11, 0x7f2f51f
                  li x12, 0xd
                  li x13, 0xf8fad311
                  li x14, 0x80000000
                  li x15, 0xfa6291d4
                  li x16, 0x0
                  li x17, 0xfa2ebdb4
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf953d712
                  li x21, 0xfa9c2db5
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xa
                  li x25, 0xf9cfa1b3
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x8940aa22
                  li x31, 0xb177aa72
                  la x29, user_stack_end
main:             sltiu        zero, a5, 2044
                  remuw        s11, ra, a6
                  addiw        t6, a6, 1897
                  mulhu        t1, t6, gp
                  subw         a2, s1, s9
                  sllw         tp, t3, t3
                  subw         a7, gp, a4
                  srli         s8, s5, 49
                  addiw        s10, s6, 578
                  mulh         a7, a2, a6
                  sll          a6, t2, a3
                  addi         t1, s7, 1544
                  xori         t0, s7, 719
                  subw         s4, s8, s10
                  srl          a7, t2, a5
                  addi         a3, s9, -541
                  slli         s6, a0, 36
                  sub          s1, t0, s10
                  srl          s6, s8, tp
                  srliw        s10, a6, 6
                  sra          t6, s5, zero
                  sllw         tp, sp, s1
                  subw         s8, a6, ra
                  slli         s10, t1, 52
                  addi         a3, s2, 1410
                  andi         sp, a4, -104
                  mul          zero, a1, s2
                  srai         gp, s3, 9
                  mulhsu       s6, s4, a0
                  remu         tp, s0, t0
                  slt          s7, ra, t3
                  add          gp, a1, t6
                  remw         t1, a4, s9
                  divuw        a1, a1, a1
                  slti         s6, t5, 1196
                  div          a0, t2, s4
                  slt          s0, t1, t3
                  mulhu        s11, t1, t0
                  andi         t3, zero, 1577
                  xori         s10, a5, -1055
                  xor          s11, sp, s0
                  sltiu        a0, a5, -155
                  mulhsu       a1, s1, a5
                  sltu         sp, s7, a7
                  ori          s6, t1, -1479
                  srliw        a0, t4, 11
                  sllw         t1, a0, a1
                  addw         gp, gp, tp
                  remw         s0, t4, s1
                  slt          s5, t0, tp
                  mulhu        t6, t0, s11
                  or           s10, sp, t2
                  slli         t3, t4, 52
                  slt          a7, s2, s3
                  divu         t0, a4, t0
                  mulh         sp, s2, a0
                  srai         t6, s6, 53
                  add          a0, s6, t0
                  mulh         sp, a2, zero
                  lui          s5, 530401
                  subw         s3, s8, a7
                  mulw         zero, s4, s9
                  remu         a7, ra, a6
                  sraiw        a2, s2, 28
                  slli         a1, t5, 43
                  add          t0, s5, s0
                  mulh         s10, t2, s8
                  add          s0, a5, ra
                  lui          s5, 115482
                  and          a3, a6, s9
                  slliw        s11, s4, 28
                  lui          t6, 564945
                  xor          t3, a0, a7
                  add          a6, s4, t0
                  rem          s10, zero, s4
                  mulhu        gp, t6, s3
                  sltiu        sp, gp, -1674
                  addiw        a0, t3, 311
                  xori         s10, s9, -133
                  andi         s8, s5, 578
                  ori          s11, a3, 1860
                  rem          a4, a5, a4
                  slliw        s5, a1, 5
                  srl          a6, t2, s11
                  sltu         tp, t1, zero
                  andi         s3, s4, 773
                  slliw        gp, a0, 12
                  slliw        sp, s3, 18
                  sllw         a6, s7, s10
                  and          t1, s6, a1
                  sraw         s3, a3, s5
                  sll          t1, s2, s2
                  rem          tp, s9, zero
                  srlw         s5, t0, t2
                  xori         sp, s5, -538
                  subw         s3, tp, s4
                  srli         s1, a5, 4
                  srai         s5, t0, 56
                  andi         s1, gp, -1173
                  slli         s8, gp, 25
                  auipc        ra, 29104
                  divuw        s8, a7, a6
                  add          s7, s10, t1
                  srlw         t3, s11, gp
                  xor          a7, s9, ra
                  addw         s3, ra, a0
                  addiw        a4, t4, -1912
                  srli         ra, a0, 35
                  sllw         s1, a1, t6
                  xor          a0, a7, t2
                  sra          a3, t2, a1
                  remu         s10, s3, a5
                  addi         a1, s4, -28
                  sra          a1, s5, s9
                  slli         a3, s4, 40
                  auipc        ra, 959184
                  srliw        t3, a1, 11
                  addw         s1, s1, s0
                  auipc        a2, 210268
                  mulh         a4, ra, a5
                  sll          a0, t0, s0
                  mulhsu       s8, t2, s4
                  sltiu        s6, a2, 1215
                  nop
                  remw         s7, a7, t6
                  sra          s7, a0, ra
                  srlw         s1, s8, s10
                  sltiu        a3, t4, -1071
                  sltiu        a4, s0, -1956
                  sltiu        s11, a0, 1079
                  or           s5, s4, s6
                  slli         a4, s3, 12
                  slliw        t3, t2, 11
                  sltu         s2, s1, gp
                  divw         a7, s7, s8
                  sra          a2, s2, s1
                  remuw        s7, t5, a0
                  remu         s8, t2, s10
                  sllw         s10, a2, s0
                  andi         zero, a1, -927
                  addiw        s1, s7, -1649
                  subw         s1, t1, t4
                  remuw        s0, s3, zero
                  sraiw        tp, t0, 7
                  add          s5, t5, s6
                  remu         t3, t1, zero
                  sub          a4, gp, t1
                  remu         s4, a4, a5
                  sraiw        a4, a2, 2
                  xor          zero, gp, s11
                  sraw         s5, a5, tp
                  mulhsu       a0, t3, t6
                  remw         a4, t6, t3
                  div          ra, s11, s11
                  nop
                  sllw         tp, t0, t4
                  and          a6, a6, s3
                  mulhu        a5, s6, t1
                  remw         t0, a2, s10
                  xor          a3, s4, a2
                  srlw         gp, t2, s2
                  srl          t0, tp, t1
                  ori          a0, s2, 404
                  mul          t0, a5, gp
                  mulh         a3, s5, t6
                  mulh         s4, a3, sp
                  andi         tp, s5, -785
                  sllw         s0, a7, t6
                  srli         a6, s4, 15
                  subw         sp, ra, gp
                  sraiw        s8, t2, 5
                  slliw        s0, gp, 3
                  mul          s4, a2, a7
                  sraw         t3, a7, t0
                  srai         a6, s9, 11
                  srlw         a4, a4, s6
                  srlw         a4, a0, a6
                  remuw        t1, t3, t2
                  or           ra, a6, t5
                  div          s0, t0, t0
                  sra          s7, a1, s1
                  div          s5, t6, s10
                  slti         s2, s10, -1307
                  sra          s6, a2, t6
                  remuw        s4, t6, s1
                  and          s6, s9, zero
                  mulh         a0, sp, t4
                  remu         s6, sp, zero
                  slt          s3, s6, s8
                  sraw         s4, s3, a3
                  sltiu        a7, a5, -738
                  sltiu        a7, a0, 1840
                  remw         s2, tp, s5
                  remu         a4, tp, t2
                  sraiw        s1, ra, 25
                  or           s5, tp, a3
                  sraw         s7, a7, zero
                  divuw        t0, t0, s10
                  nop
                  mulw         t3, s3, s4
                  sraiw        a4, s0, 23
                  divw         sp, a0, t3
                  remu         t3, s11, a1
                  addi         s1, t4, 0
                  nop
                  and          s7, t1, t2
                  andi         s1, a6, -1711
                  divu         t0, s11, s2
                  rem          s2, a3, sp
                  sllw         t0, t1, s6
                  div          a5, s0, sp
                  sllw         s2, s11, t3
                  divu         a1, sp, t1
                  sllw         s10, s2, s7
                  subw         s8, t1, a2
                  srliw        s1, zero, 14
                  mulw         s10, s0, s3
                  or           s7, a5, sp
                  addiw        a6, t5, 966
                  mulw         a0, sp, t6
                  remw         s5, gp, s10
                  slli         a3, s6, 57
                  slli         s0, s0, 4
                  slt          a6, s6, a2
                  sraiw        t3, t1, 25
                  auipc        sp, 273069
                  sltu         t6, s3, s9
                  mulhu        a6, s11, a5
                  slliw        a7, s10, 16
                  mulh         a4, s7, t4
                  sub          a7, s11, s1
                  slliw        s2, t6, 5
                  srlw         t2, s10, sp
                  xor          t2, s2, s0
                  sllw         t6, a0, gp
                  remuw        sp, t6, zero
                  divw         t1, s6, s4
                  andi         s2, t5, 551
                  andi         a6, a2, 840
                  sllw         s6, tp, s4
                  slliw        s10, s0, 22
                  andi         t2, gp, 1071
                  mulw         a4, t3, s9
                  nop
                  div          zero, s0, s2
                  remu         sp, zero, t2
                  and          t1, s3, sp
                  srl          t3, s4, a5
                  remu         s2, s4, s1
                  slliw        s10, ra, 14
                  addw         s6, s9, a3
                  nop
                  subw         s6, t2, t5
                  srai         s8, t6, 26
                  slt          s8, s11, t4
                  slti         s0, s2, 1933
                  slt          sp, s0, t1
                  srliw        s5, sp, 1
                  mulh         a1, t2, a0
                  slli         s1, a2, 28
                  srliw        t6, s6, 21
                  andi         t6, a4, -998
                  mulh         sp, a1, a2
                  div          s3, sp, s8
                  slli         t0, ra, 40
                  remw         sp, a2, t1
                  xori         zero, s11, 365
                  remuw        t6, a6, s11
                  sll          s4, s3, a0
                  sltiu        s10, a2, -2004
                  or           s11, a0, s10
                  addw         a4, ra, gp
                  srai         s11, a3, 58
                  srl          s1, t1, a6
                  sltiu        a0, a6, 122
                  auipc        t3, 447992
                  rem          t3, a5, t4
                  mulhsu       a3, s4, sp
                  srai         s5, s2, 3
                  sraw         a6, a5, a3
                  mulw         s5, a5, gp
                  xor          t3, a6, a0
                  or           a5, ra, t6
                  srliw        s3, s4, 11
                  slti         a0, a0, 1085
                  auipc        s11, 1029240
                  sltu         s0, s4, ra
                  slliw        zero, t0, 7
                  mulh         a5, a4, t5
                  slti         s1, t2, -771
                  srlw         zero, tp, a6
                  remuw        tp, a4, t3
                  andi         ra, t3, -155
                  slt          s1, t4, s1
                  or           t1, a5, zero
                  sraiw        s5, s1, 14
                  srli         a4, s9, 36
                  divw         t6, s8, a4
                  or           s11, s6, s9
                  subw         s8, s1, s0
                  addw         a4, a4, a5
                  addiw        t0, t1, -283
                  slli         t1, t1, 52
                  ori          a2, zero, 1533
                  remu         s0, s5, gp
                  div          a0, tp, t3
                  divu         zero, s5, s5
                  remuw        a2, s10, zero
                  addiw        s0, s11, 765
                  and          s7, s9, s7
                  rem          a2, t6, a4
                  addw         t1, a0, t2
                  auipc        a6, 975801
                  divu         s10, gp, a3
                  add          s10, s1, t0
                  sra          t3, a7, s1
                  and          a5, t1, ra
                  sub          s11, a7, a7
                  addi         a4, s1, -1912
                  lui          s4, 311329
                  sraw         s11, s8, s9
                  addi         s6, s5, -117
                  add          a5, ra, gp
                  add          a6, s8, t6
                  sraiw        gp, t3, 22
                  sraiw        a6, a1, 7
                  divu         ra, a2, s10
                  mul          tp, a7, gp
                  mulw         a6, s6, ra
                  addw         zero, a2, t4
                  or           t3, tp, s3
                  nop
                  divu         a2, t1, t6
                  sub          ra, zero, t4
                  lui          s1, 1009067
                  mulhsu       t3, zero, tp
                  lui          t6, 867410
                  div          s6, t1, t3
                  xor          a7, s3, s10
                  and          a7, t5, s9
                  mulhu        s4, t2, t3
                  srli         s10, s1, 33
                  addi         t1, a1, 402
                  mulhsu       ra, s7, s3
                  srl          s2, s5, t0
                  slliw        s5, t2, 30
                  sraw         ra, gp, s6
                  remu         s3, a1, s8
                  add          s8, s2, t1
                  rem          a5, tp, s10
                  mulh         tp, s5, ra
                  sraw         a7, s11, t1
                  add          sp, s9, t0
                  slt          s1, s7, s11
                  srliw        s11, t3, 1
                  auipc        a7, 305222
                  addw         s7, sp, s2
                  srli         sp, s2, 25
                  and          a5, a5, s7
                  lui          a4, 987896
                  addw         s8, s5, tp
                  mul          s4, a1, gp
                  srli         a6, s8, 58
                  srliw        zero, s0, 5
                  mul          t2, s9, a7
                  xori         t3, t6, -14
                  slti         a7, s7, -559
                  srli         s6, zero, 62
                  or           a2, s5, a2
                  mul          t1, zero, s0
                  addiw        t6, s2, -655
                  ori          s8, s4, 1175
                  or           t1, s7, a6
                  sllw         s3, zero, gp
                  slti         s0, s8, 980
                  sra          a6, a6, t5
                  srl          s3, s8, t2
                  sll          t3, t3, a4
                  rem          s1, s9, s4
                  ori          s8, s0, -1594
                  sltu         s5, t6, a6
                  ori          s5, a0, -656
                  xori         gp, tp, 355
                  sraw         s1, s5, s7
                  ori          s7, a7, -674
                  mulh         ra, s11, a7
                  mul          a3, s1, a3
                  mulhu        s5, a6, s11
                  mulh         a3, gp, a0
                  srliw        a3, s1, 3
                  srl          a6, s10, sp
                  divw         a2, s5, s10
                  srliw        s4, a3, 2
                  divu         s3, tp, zero
                  div          a4, t4, s11
                  remw         a3, t1, s1
                  addi         a1, s2, -1615
                  mulhu        a0, s1, s1
                  srlw         a6, s7, t1
                  srl          a0, sp, s10
                  sub          a0, tp, sp
                  divu         t6, s7, a5
                  sllw         tp, a2, t2
                  andi         t3, s0, -727
                  add          t2, s4, s8
                  slli         t0, t0, 41
                  mulhu        s8, a5, a6
                  sraw         ra, t5, s3
                  sraiw        zero, a2, 1
                  slliw        t6, s11, 14
                  srai         s11, s8, 37
                  sraiw        t6, s2, 12
                  mulhsu       s10, s10, s11
                  subw         s11, s9, s6
                  slli         t3, s3, 48
                  xor          s7, s7, s4
                  slli         a2, s5, 28
                  sraiw        sp, t1, 21
                  sraiw        s0, gp, 4
                  addi         t6, a4, -1433
                  xori         s10, s3, 1738
                  mulhsu       s6, s7, t4
                  andi         a4, t5, -1967
                  sll          s8, t4, t6
                  mul          s10, s10, t5
                  addi         t6, s0, -1714
                  sraw         s11, s1, zero
                  divu         a6, a6, a5
                  sra          t6, s7, s11
                  remuw        s8, a7, ra
                  remw         s6, a5, s11
                  divw         s10, a5, s9
                  srli         a3, s5, 26
                  slli         t1, s11, 22
                  sltiu        t3, t6, -1188
                  sltiu        s7, s6, -1464
                  and          s8, s1, s1
                  srai         tp, a7, 63
                  ori          a1, s11, 2037
                  slliw        a5, s1, 15
                  slt          s5, a1, t3
                  remu         s5, a1, s11
                  nop
                  sraiw        t1, a7, 16
                  mul          s10, t5, t0
                  remuw        a7, t0, tp
                  xor          gp, a2, gp
                  andi         s11, s2, -646
                  rem          a1, s5, t5
                  divuw        s6, a3, a1
                  and          a6, a7, ra
                  ori          s7, s5, -74
                  addw         s2, t1, a3
                  slt          t6, gp, a4
                  nop
                  slliw        zero, s0, 6
                  divuw        s1, s8, t6
                  divu         a1, ra, a2
                  srliw        sp, a2, 27
                  mulhu        a1, s6, s0
                  addw         t2, a5, s10
                  auipc        a6, 135909
                  addiw        s2, t1, -1458
                  xori         s10, s5, 166
                  lui          s7, 684744
                  sltu         s8, s7, a7
                  addiw        s10, t4, -756
                  remw         s11, tp, s1
                  sltiu        a7, a6, 159
                  srlw         a4, zero, a5
                  sllw         s2, a2, t1
                  and          a0, t5, t1
                  subw         s11, ra, a2
                  srli         s11, s2, 31
                  sra          s7, t6, t0
                  sllw         a3, tp, s0
                  div          a6, a3, a7
                  remu         s6, a5, t2
                  sra          s11, a4, t1
                  lui          t3, 1001688
                  lui          a0, 106078
                  sra          s6, s1, s4
                  nop
                  mulhu        a6, a5, ra
                  addiw        ra, a2, 515
                  andi         t6, s10, 849
                  subw         a5, t1, s3
                  srli         a5, s2, 63
                  or           t6, s5, s1
                  srlw         zero, a5, s10
                  slti         a1, a7, -1934
                  sllw         zero, gp, s7
                  srli         s11, a2, 57
                  or           a5, ra, s2
                  srli         a6, s4, 62
                  srl          t2, a6, gp
                  xor          s1, a1, s4
                  mulhsu       s0, a3, ra
                  xori         a6, t2, 117
                  srai         s3, a5, 46
                  mulh         s4, s6, a4
                  divw         s0, a6, t6
                  addw         zero, t2, a3
                  mul          s0, s11, a2
                  remw         s10, sp, s1
                  remu         ra, t2, ra
                  divw         s3, a0, s11
                  andi         s1, t0, 1948
                  auipc        sp, 954562
                  sll          t6, a1, t3
                  xori         s1, gp, 2041
                  divuw        s3, s9, s6
                  sraw         a4, s0, s10
                  andi         tp, a0, -1060
                  xori         ra, s5, 1007
                  mulh         gp, s2, a5
                  divuw        t3, s7, a5
                  mulhu        s5, a7, gp
                  mul          s1, s0, a1
                  ori          zero, ra, 1825
                  addw         t3, a0, t4
                  slt          a1, s3, a4
                  sll          zero, t3, gp
                  divu         t1, zero, t1
                  xor          t2, a3, s9
                  divw         t1, a6, t4
                  sub          a0, sp, a6
                  nop
                  divuw        t1, t5, a3
                  mulh         s4, s1, s9
                  addw         t1, t2, t5
                  addiw        a6, sp, -664
                  xori         a6, s2, 929
                  sub          s7, s7, s4
                  sltiu        t2, t3, -1131
                  sub          a7, s10, s1
                  mulhsu       t3, s2, s7
                  addiw        s1, s6, -1032
                  slliw        a2, t6, 3
                  rem          a3, gp, t0
                  mulh         t0, a0, ra
                  div          s0, sp, a2
                  or           s2, s2, a0
                  divw         a1, t5, s3
                  subw         a0, a6, s2
                  sltu         zero, a6, t2
                  divuw        a5, s5, s7
                  auipc        s3, 651560
                  slt          a6, a6, s11
                  mulh         s8, s10, s4
                  rem          t3, a5, s4
                  lui          s10, 785851
                  remuw        a2, t0, s4
                  addiw        s5, s10, -375
                  sll          a3, a3, zero
                  lui          a4, 279892
                  srai         t6, s1, 9
                  mulh         t6, s10, s3
                  divw         a7, gp, t0
                  subw         sp, t3, zero
                  xor          t3, t1, zero
                  addw         t1, t6, s7
                  rem          s1, t1, s2
                  xori         s4, t3, -508
                  or           s10, s1, a0
                  slti         s1, a1, -115
                  slli         sp, s10, 4
                  sraw         a0, a5, t0
                  remuw        a0, sp, t5
                  sub          s11, s2, a5
                  ori          t6, s5, 1101
                  sltu         s3, s0, s2
                  div          t3, gp, s2
                  xor          s0, s8, s5
                  mulw         s2, t3, s4
                  sraiw        s4, s5, 27
                  add          gp, a2, s10
                  divw         s8, a7, s7
                  andi         a6, t0, -894
                  sraw         sp, s10, sp
                  divu         t0, sp, t5
                  mul          a6, t6, s1
                  or           sp, s8, s10
                  slliw        a6, a7, 27
                  or           s6, a0, zero
                  andi         a1, s7, -531
                  sllw         s4, t6, t3
                  addi         s1, zero, 1771
                  mulh         t2, a7, tp
                  slti         a1, zero, -880
                  addiw        s8, a1, 895
                  mulw         t1, t6, t6
                  xor          s1, s5, s8
                  sllw         s10, a6, a2
                  div          s3, s2, t2
                  slli         a7, a6, 22
                  sra          sp, sp, s10
                  xori         a5, s7, 1942
                  xori         s0, tp, 1587
                  nop
                  divuw        sp, s9, t0
                  or           sp, tp, a1
                  divu         s2, t2, gp
                  andi         s1, s8, -929
                  srai         zero, a4, 21
                  subw         a5, t1, s3
                  sraiw        s1, t1, 5
                  remuw        s5, s5, s3
                  ori          s7, zero, 938
                  ori          a0, a0, -485
                  remu         s8, s6, a3
                  srli         a4, s6, 40
                  subw         a4, t5, s2
                  auipc        a4, 790344
                  ori          a7, t6, -660
                  xori         sp, t4, 1290
                  srliw        s11, t1, 29
                  sra          s11, t3, a7
                  mulw         a7, s7, zero
                  remu         s0, tp, a4
                  xor          s8, t5, t6
                  auipc        sp, 652392
                  subw         tp, s6, a4
                  divw         s8, s10, s11
                  addi         s10, a4, 1816
                  divu         t6, s11, a7
                  auipc        a2, 782138
                  divw         t0, a6, t3
                  sub          sp, a2, gp
                  addiw        s7, sp, 131
                  remuw        t3, s4, a3
                  andi         a1, a7, 1246
                  auipc        a3, 882043
                  sltu         t0, t1, t4
                  srliw        s3, s2, 31
                  addw         s10, s5, s11
                  divw         ra, t4, a6
                  rem          s5, s6, t1
                  srai         zero, sp, 36
                  remw         tp, s3, s6
                  srl          a0, a6, s1
                  mul          s6, t2, t3
                  div          s6, s4, sp
                  and          s7, a6, s4
                  mulhu        a0, a2, t3
                  sraiw        a7, s2, 30
                  sraw         zero, a6, tp
                  mulh         s7, zero, t6
                  srlw         a2, t4, a1
                  andi         a7, t0, 1226
                  sraw         s6, s7, t1
                  srai         a1, t5, 42
                  sll          tp, s11, t1
                  div          s1, s11, s2
                  slti         sp, s4, -761
                  xori         t6, zero, 1458
                  srl          a3, s11, a7
                  sub          t3, t1, a5
                  sltiu        s8, a2, 1937
                  mul          s4, a4, s1
                  sltu         s8, s8, s8
                  remu         s4, s3, s5
                  addiw        ra, s3, -2033
                  mulhsu       a0, s9, s6
                  mulh         a1, s0, s0
                  and          s6, a4, t4
                  mul          s3, t1, ra
                  mulhsu       t3, t6, s7
                  xori         sp, t2, -1188
                  lui          a3, 461387
                  remw         t1, t3, a2
                  srai         s11, s1, 35
                  mulhu        s10, a2, a4
                  add          a4, s10, s6
                  remu         a5, a7, s9
                  remw         t6, a6, t5
                  srai         s7, a0, 5
                  lui          a1, 969234
                  or           s2, a7, a0
                  srliw        t2, a5, 13
                  mul          sp, zero, s7
                  remu         a2, tp, s10
                  srai         s5, s10, 18
                  addiw        tp, ra, -1605
                  and          t6, s3, a0
                  sra          s8, sp, s10
                  mulhu        s4, t1, s11
                  nop
                  auipc        a1, 380054
                  auipc        t1, 517587
                  xor          a4, ra, sp
                  addiw        s1, a6, -1063
                  ori          ra, t0, 1829
                  mulhsu       s2, s6, t6
                  divu         s5, s3, s7
                  slt          tp, t0, t6
                  div          s11, s1, zero
                  srlw         sp, s1, t6
                  xori         t0, s10, -500
                  andi         gp, ra, -983
                  srli         s8, gp, 0
                  rem          s3, a3, a3
                  remw         a4, s7, s11
                  srli         a6, t2, 40
                  mulh         a5, t1, gp
                  add          s2, s1, s9
                  srl          s2, zero, t0
                  addiw        t1, a6, 1019
                  auipc        s0, 17101
                  sltu         s5, gp, ra
                  ori          a5, tp, 132
                  xori         s2, t5, 1965
                  xori         t0, a2, 183
                  mulh         zero, a0, ra
                  addiw        s0, zero, 819
                  remuw        a7, zero, t2
                  srai         s11, t2, 1
                  nop
                  slti         t0, s2, 300
                  sll          a1, a7, s3
                  lui          t3, 1045473
                  xori         s10, s6, -1076
                  addw         s2, a7, t5
                  mulh         t1, t3, s5
                  srliw        s0, s4, 19
                  mulw         s11, t5, s5
                  nop
                  ori          s5, s7, 851
                  subw         t6, s10, s9
                  sltu         a1, t4, sp
                  addiw        a3, a2, 761
                  divuw        gp, s7, a5
                  and          s2, ra, t3
                  xori         s0, t5, 616
                  addw         t6, t4, a0
                  sll          s3, s10, s8
                  remw         t1, s0, t0
                  sra          a5, gp, s6
                  addw         s1, ra, tp
                  slt          t6, s4, gp
                  divu         ra, s3, s2
                  and          zero, s1, t1
                  or           a3, s11, s7
                  slti         s11, t0, 115
                  sllw         gp, a7, t6
                  slti         a4, s3, 539
                  ori          zero, zero, -555
                  srli         s0, s7, 31
                  addi         s2, tp, 259
                  lui          s2, 190079
                  remw         s2, a7, tp
                  remw         s1, t3, s2
                  mulw         t6, zero, t4
                  sllw         a7, s4, a1
                  subw         a6, s10, gp
                  srli         ra, s11, 3
                  andi         a3, tp, -2018
                  mul          s11, s7, a0
                  sra          t3, tp, tp
                  lui          a7, 613016
                  sll          s0, gp, s4
                  divw         s7, sp, a6
                  mul          s0, a7, t3
                  ori          a1, s7, -1175
                  xor          a7, a3, a4
                  sltiu        gp, s1, 1766
                  remuw        zero, a7, a4
                  sltu         a6, a0, ra
                  sra          s4, t6, s11
                  lui          s0, 111770
                  rem          s1, t3, s6
                  xor          sp, a5, t3
                  remu         a4, s6, ra
                  subw         a6, s5, zero
                  mulhu        tp, s10, a1
                  sltiu        s0, t3, -1407
                  sllw         gp, s7, a1
                  and          t3, s4, a4
                  subw         a5, s5, s3
                  sltiu        t6, s1, 679
                  mul          s1, s0, gp
                  sub          a4, t3, t5
                  mul          a2, sp, s1
                  sub          s3, s8, t5
                  sll          t6, a2, t0
                  sltiu        t1, s5, -511
                  addi         s1, t1, -551
                  mulhsu       s0, t0, s2
                  slliw        s7, a4, 22
                  div          s4, t4, s8
                  sllw         s4, s11, t6
                  mul          s10, t5, a4
                  sraiw        s2, t1, 24
                  slli         a7, a6, 38
                  srai         a3, s8, 57
                  srlw         a5, s10, s4
                  sub          ra, s8, t5
                  addw         s2, t3, t0
                  mulhu        t3, s3, s1
                  andi         a7, a0, 27
                  slt          s6, t4, a6
                  sub          a7, t3, a5
                  slt          a0, s9, s0
                  nop
                  remuw        s4, t6, s2
                  mulhsu       sp, s1, s5
                  remw         a6, s5, a0
                  slliw        s3, a0, 28
                  sra          a3, a4, tp
                  addw         s0, a2, s3
                  slti         a0, s10, -1376
                  divw         a0, a4, s4
                  sll          a1, s1, a6
                  sltiu        sp, s5, 1588
                  or           tp, t3, a1
                  remw         s10, s1, s8
                  addw         s10, s7, t3
                  srlw         s6, s7, s11
                  addi         tp, sp, 292
                  srlw         a3, a0, a1
                  xor          a4, s8, sp
                  mulw         s6, s8, s10
                  addw         s6, t3, s8
                  sra          s1, s4, t6
                  mulhu        a3, s4, a3
                  mulhsu       a6, s0, t4
                  mulw         a2, a2, a0
                  sltiu        t1, a5, 1784
                  slti         s1, t5, -1743
                  divu         t0, s3, a3
                  srliw        s11, s2, 13
                  sltu         zero, s0, a2
                  mulw         s11, s8, t4
                  xor          t3, s3, t3
                  remw         t0, t6, t2
                  srliw        t6, s5, 3
                  divuw        tp, s2, sp
                  slliw        tp, a5, 21
                  srai         a4, t0, 34
                  mulhu        tp, t3, s4
                  slt          s10, a4, a6
                  sraiw        t1, a5, 16
                  nop
                  addi         s0, s0, -304
                  sltu         sp, s7, sp
                  sltiu        gp, a6, 690
                  and          t3, a7, s6
                  auipc        s4, 405478
                  or           s2, ra, sp
                  srlw         s0, a0, a3
                  and          a0, s11, t0
                  mulhu        ra, t4, zero
                  sllw         t3, sp, t5
                  divuw        s4, a1, ra
                  sub          a5, a5, t4
                  srli         a4, zero, 55
                  slliw        s4, s10, 6
                  remw         a3, a5, gp
                  or           a3, s7, a5
                  slti         a2, s5, -1430
                  slt          s8, t1, a4
                  sub          t1, zero, s4
                  xor          a5, s11, a2
                  sra          zero, s1, s1
                  remuw        s10, a4, sp
                  sra          tp, s3, a4
                  andi         s11, t6, -1689
                  sraw         a6, s4, s2
                  addiw        t6, zero, 868
                  srli         s2, tp, 63
                  xor          tp, t4, a7
                  ori          s5, t4, -397
                  mulhu        a4, a6, a5
                  mul          s1, a7, t1
                  srlw         s6, s7, s9
                  addi         zero, s3, 1240
                  xor          ra, t0, a5
                  sltu         tp, t4, sp
                  mul          s6, s5, t6
                  nop
                  sltu         a1, a4, ra
                  srai         a7, s3, 58
                  mulw         s2, s9, t4
                  ori          a3, ra, -1427
                  sltu         s3, zero, a5
                  addw         s11, a3, a1
                  nop
                  divw         a3, a4, a5
                  slli         ra, s9, 26
                  xori         s3, a6, -931
                  mulw         a6, tp, a2
                  sraw         t1, s0, s9
                  and          s11, s9, a2
                  sltiu        a5, a0, -1992
                  andi         s5, a0, 1621
                  sllw         s0, t0, s4
                  sra          a5, sp, s4
                  mulhsu       ra, s5, a1
                  slti         a7, a3, 680
                  auipc        t0, 997848
                  mulw         s6, a5, tp
                  mulw         a5, t0, t1
                  sltiu        a4, s11, -1728
                  remuw        a6, zero, a6
                  sllw         t6, gp, a0
                  srli         s10, s8, 31
                  addi         s2, s8, 1498
                  slli         a2, s7, 17
                  auipc        s6, 9439
                  sub          a2, a0, s0
                  div          a3, s2, s9
                  auipc        tp, 679402
                  andi         s5, s9, -786
                  remuw        sp, a4, a5
                  sub          zero, zero, t0
                  add          tp, a0, t0
                  mul          s5, s5, t3
                  sra          gp, t1, ra
                  subw         gp, t1, a4
                  sra          s11, a0, s11
                  addw         a2, a4, zero
                  add          a7, a6, t3
                  auipc        sp, 433394
                  srl          s6, t5, t5
                  sra          tp, s10, s10
                  divw         s4, a1, s2
                  mulh         ra, s1, sp
                  rem          s7, a0, t3
                  sltu         s11, s2, s8
                  sra          s8, t5, t6
                  subw         tp, s5, s8
                  div          a3, s8, s2
                  rem          s8, s8, a5
                  mul          s4, s5, s4
                  xori         s8, a1, -1311
                  rem          s5, a3, a7
                  add          t2, s9, s9
                  srli         a0, zero, 0
                  sub          t3, s3, t2
                  subw         ra, t6, a7
                  srli         zero, s4, 4
                  sll          a7, s11, t5
                  sub          s10, a5, a2
                  remw         a3, gp, t3
                  nop
                  sra          s8, s11, s10
                  mulh         s11, t5, t6
                  or           a1, a1, a2
                  srliw        zero, a4, 3
                  auipc        s10, 169336
                  sltiu        t3, a3, -811
                  divw         a0, s6, t5
                  remw         a1, t4, s8
                  nop
                  mulh         a4, a1, t1
                  remu         s0, s8, t2
                  srl          s6, s11, tp
                  mulhsu       s3, s10, t1
                  sraiw        t3, t5, 17
                  remw         a0, tp, t3
                  divw         s11, t1, s4
                  srlw         s2, s3, t4
                  rem          ra, s8, s7
                  divw         t3, a1, s9
                  sraw         a3, ra, s11
                  auipc        a2, 761680
                  mulh         t0, zero, s2
                  mulw         ra, gp, a7
                  and          s11, a2, tp
                  and          s3, a0, s2
                  sltu         a4, tp, a7
                  sltu         a2, a6, s6
                  remw         s1, t4, t6
                  addw         s1, s11, a4
                  sraw         t0, sp, t2
                  mulhsu       t0, sp, a1
                  or           sp, t3, sp
                  srliw        s6, ra, 6
                  mulh         t0, gp, s6
                  divw         tp, a1, t1
                  mulhu        s6, s7, tp
                  xor          s11, s0, s6
                  sll          s11, ra, t5
                  sltiu        a2, t6, 960
                  xor          ra, zero, a2
                  sraw         t1, gp, s0
                  lui          s3, 331915
                  slti         t3, a0, -50
                  slliw        a7, s4, 3
                  sraiw        s0, s4, 8
                  divuw        s7, s8, ra
                  mulh         s0, t3, s4
                  remw         ra, ra, sp
                  or           s0, a0, zero
                  xor          sp, t3, t5
                  sltiu        t1, s4, 607
                  slti         gp, a3, 1841
                  sraiw        s6, s2, 6
                  remu         a4, a2, ra
                  andi         t2, a5, 1209
                  rem          s5, a5, a0
                  mulhsu       s11, a3, s5
                  divuw        s6, t4, s8
                  srlw         t6, s3, s7
                  andi         s11, s10, -1451
                  divw         ra, zero, a0
                  rem          a2, s7, s10
                  slt          t6, a0, ra
                  addw         ra, t5, s4
                  divw         s10, s0, s11
                  add          t6, a5, t4
                  mul          s5, t4, s0
                  slli         s10, a7, 24
                  rem          t2, t0, ra
                  or           t3, s5, a4
                  addw         s3, s6, a2
                  srliw        a0, s2, 15
                  ori          t3, s1, -384
                  slti         t2, a5, -1189
                  nop
                  remw         s1, a7, s9
                  sllw         tp, t3, s8
                  divu         a0, a2, gp
                  slli         s8, ra, 28
                  or           s2, t3, s8
                  srai         t6, gp, 9
                  remu         t1, ra, s7
                  sraw         s10, t5, a7
                  sllw         a4, s11, t4
                  sraiw        a7, a2, 26
                  mulhu        t6, t3, s7
                  srli         s2, t3, 57
                  subw         s5, a6, a3
                  slli         s5, t2, 35
                  divuw        s3, s8, s11
                  sltu         s1, t6, s0
                  sra          a7, t4, s5
                  subw         zero, ra, s4
                  ori          s8, t6, 901
                  addiw        s7, a0, 1498
                  remw         s6, ra, s6
                  sllw         a1, a3, a3
                  divu         s1, a7, s9
                  mulw         s0, s9, t6
                  sltiu        s3, a1, -1949
                  nop
                  addiw        s7, a3, 1433
                  mulhsu       gp, s9, sp
                  sra          a2, s4, s7
                  lui          a3, 196667
                  nop
                  auipc        s5, 29101
                  sltu         t0, t0, t6
                  remu         zero, a1, s8
                  divw         ra, s2, s4
                  xor          s5, s2, t5
                  addi         s10, tp, -132
                  remw         s7, a1, a5
                  sltu         s5, a5, zero
                  slli         a4, a4, 41
                  auipc        a4, 476388
                  divw         s11, t3, a4
                  srai         t3, s1, 57
                  ori          s11, sp, 805
                  divuw        gp, a5, t1
                  lui          a6, 1023801
                  srliw        s6, t1, 20
                  xor          t6, s10, t2
                  slliw        s11, ra, 31
                  subw         s7, a0, s1
                  remu         s3, zero, t3
                  rem          s3, a6, t1
                  remu         s3, s4, sp
                  divu         s6, a5, s11
                  remw         t0, a7, s9
                  sra          t2, s0, s6
                  slti         t1, s2, -1867
                  mulhu        t6, gp, t0
                  div          a5, zero, a1
                  add          a0, s5, s10
                  srai         s11, s2, 50
                  addi         a3, sp, -817
                  rem          a3, s3, tp
                  slli         s11, a2, 10
                  mulhsu       sp, a2, t1
                  srli         s0, a3, 4
                  xor          t6, t4, a0
                  addiw        a1, s8, 1003
                  addi         t6, t3, 783
                  rem          t2, a7, s1
                  addiw        ra, t0, -773
                  srl          a5, s9, t2
                  ori          gp, s6, -215
                  sltiu        t2, a2, -226
                  andi         s5, t0, -1437
                  divu         t3, s3, s4
                  sraiw        s10, s2, 10
                  sub          a6, a2, a7
                  srlw         sp, sp, gp
                  mulhsu       s11, a0, s10
                  mulhu        gp, s1, t1
                  slt          s3, s10, s0
                  mulw         sp, a0, a1
                  divuw        s5, a6, t4
                  mulw         t1, t6, tp
                  slliw        a7, s2, 15
                  andi         s0, t1, -2029
                  sub          a3, s1, a1
                  sll          a2, a5, s0
                  srliw        a6, t4, 25
                  xor          gp, s4, t3
                  mul          a2, a2, a1
                  sltiu        a0, s0, -1545
                  sll          a1, s6, t2
                  sra          tp, t1, a6
                  and          t1, s1, s8
                  nop
                  sltu         s6, a7, s0
                  srlw         tp, s2, zero
                  divuw        a3, t2, s4
                  add          t3, s9, tp
                  mulhsu       a4, s11, s5
                  subw         a2, sp, t3
                  slli         a3, t6, 13
                  or           s6, t6, t4
                  xori         a7, a4, 493
                  or           s0, t6, s7
                  nop
                  slt          a6, ra, sp
                  xor          a0, s2, s2
                  subw         ra, s6, t3
                  mulhu        a2, a1, a6
                  remuw        t1, a1, t6
                  nop
                  addiw        a2, sp, 753
                  mulhsu       t2, tp, t1
                  srliw        s8, t6, 9
                  div          a6, sp, s2
                  mulh         s5, s3, s1
                  nop
                  srai         t3, s10, 52
                  xor          sp, a7, s9
                  and          gp, s0, ra
                  divu         s7, a1, a5
                  rem          a3, a2, s10
                  slli         a7, a3, 7
                  divw         s4, a5, s11
                  mulh         tp, a0, t2
                  srl          s4, s0, a6
                  mulhu        t2, a4, t3
                  slti         tp, a3, 1791
                  sltu         t2, s4, t5
                  sraiw        s11, s1, 30
                  srl          a1, s11, gp
                  mulhu        t3, t1, tp
                  subw         gp, s3, a2
                  srl          s4, t0, a1
                  slt          zero, s11, s5
                  sltiu        t6, tp, -326
                  sub          s8, gp, s0
                  nop
                  remuw        a6, tp, t2
                  mulhu        gp, a7, a1
                  divuw        ra, s3, tp
                  auipc        s4, 992166
                  remw         t0, t4, s1
                  or           sp, s7, s7
                  addiw        t6, a4, 826
                  or           s7, a5, s3
                  srli         sp, t5, 7
                  lui          s7, 910607
                  addw         a4, s6, s0
                  slti         s3, tp, 1465
                  srlw         t2, a5, t2
                  mul          a4, s6, s4
                  auipc        a3, 16822
                  nop
                  sll          a5, a5, s4
                  rem          s1, s11, s0
                  sra          tp, ra, t0
                  xor          s0, t6, s7
                  add          t6, t6, s10
                  slliw        s0, gp, 13
                  sub          t6, ra, t5
                  ori          s5, ra, -1720
                  sll          t1, s10, ra
                  remu         s6, s9, t2
                  slti         t3, s10, 1600
                  mulw         s8, a0, s3
                  mulhu        ra, s8, s7
                  sub          t6, s10, s7
                  sraw         a4, t0, a6
                  rem          s5, gp, sp
                  auipc        t0, 334996
                  slli         a2, zero, 23
                  remuw        s8, s7, t0
                  xor          s2, t4, s0
                  slliw        s11, a4, 17
                  srl          s4, a0, zero
                  mulhsu       s11, t3, s9
                  remu         t0, tp, t4
                  srli         a6, a4, 59
                  div          s5, a1, ra
                  mulhsu       tp, a6, zero
                  lui          s2, 999641
                  slliw        s11, s7, 21
                  ori          s6, a4, -381
                  sraiw        t6, a0, 9
                  remuw        a1, s4, s0
                  divw         s6, t0, s2
                  srliw        t6, s8, 27
                  mulhu        s11, a7, a7
                  slti         t0, t2, -860
                  sltiu        t1, t3, 867
                  srlw         a4, t1, ra
                  subw         s10, t6, ra
                  mulhsu       s8, t1, t4
                  or           s3, t6, a6
                  sra          t2, t2, tp
                  divw         a7, s4, s5
                  sltiu        a7, s7, -1020
                  mulhsu       a2, t3, gp
                  sll          zero, t1, s4
                  divw         gp, t2, t5
                  auipc        t3, 224469
                  mulhsu       s6, ra, t2
                  andi         s2, s3, -1449
                  mulhu        a3, gp, s11
                  or           s1, t0, a3
                  xor          a1, s3, t1
                  rem          t6, s1, zero
                  slli         tp, t1, 19
                  add          s1, tp, s4
                  addiw        s8, a1, 1970
                  remu         a1, zero, zero
                  sraw         s0, a5, a5
                  sllw         s7, ra, s3
                  divu         a3, a7, a2
                  sll          t2, gp, t0
                  sub          sp, a7, s2
                  nop
                  mulh         a6, a3, a7
                  divw         a4, gp, a2
                  sra          t3, s2, ra
                  mulw         a3, s0, s8
                  nop
                  addiw        a7, zero, 1804
                  nop
                  remu         a6, s5, t3
                  slt          s0, t4, s4
                  divu         t0, a2, t0
                  mulhu        s3, t3, zero
                  sllw         s7, t0, s3
                  sraw         s2, ra, s9
                  divw         t6, ra, s8
                  xor          s10, t5, a1
                  srlw         a1, t2, s4
                  mulh         sp, t2, s7
                  lui          s1, 840021
                  xor          a2, t1, t4
                  xor          a2, t4, a0
                  mulhsu       s11, sp, t6
                  div          s1, a4, t2
                  srai         a2, zero, 14
                  rem          s4, s0, s10
                  lui          a0, 457890
                  nop
                  sraw         t6, s8, t6
                  lui          tp, 878067
                  remu         a2, s7, a7
                  ori          s0, a0, 37
                  and          a2, a5, s1
                  sllw         s8, sp, s10
                  addiw        gp, a1, 134
                  sltiu        s7, a1, -1200
                  remw         t6, s3, t2
                  sll          a4, a1, t4
                  mulhsu       s6, gp, ra
                  srl          tp, t1, s8
                  subw         a2, s6, sp
                  xor          s1, s2, t6
                  addiw        s0, s0, 81
                  divw         t0, s11, a0
                  xori         s3, s2, 372
                  slti         gp, tp, -932
                  sub          a1, zero, s8
                  sraiw        t2, a5, 16
                  srl          tp, a3, s6
                  divuw        s0, t1, s3
                  and          a1, s10, a7
                  divu         s4, t0, s8
                  addiw        s2, s1, 1675
                  sraw         s4, t0, a2
                  addi         a1, a6, -72
                  addi         s0, s11, 1938
                  mulhsu       t3, tp, s10
                  addw         s10, s9, s8
                  subw         t6, gp, sp
                  slliw        t6, a0, 29
                  srlw         a1, a0, a6
                  div          a5, t1, t0
                  divw         a5, s8, t5
                  srlw         s5, a3, a3
                  rem          a1, s7, t2
                  remu         ra, s5, s10
                  sll          zero, a0, t5
                  sltu         s3, t4, s11
                  ori          t2, s0, -1496
                  divw         t2, a5, a3
                  mulw         a2, s10, t6
                  sll          t6, a3, tp
                  subw         s11, s4, t6
                  sllw         s2, ra, s5
                  mul          s6, t2, s0
                  divu         s5, s0, a3
                  srlw         t0, s5, t2
                  sra          a1, t2, a1
                  mulhsu       gp, t0, t6
                  divu         tp, a7, a5
                  addi         tp, a5, -490
                  mulw         a4, tp, s1
                  and          a4, t5, s3
                  divuw        s5, s1, s7
                  srli         s3, s10, 29
                  remu         t0, zero, t2
                  mulhsu       t6, s7, a3
                  divu         a4, s8, a7
                  div          t6, tp, a5
                  remw         s8, s3, ra
                  sraiw        a1, gp, 31
                  mul          gp, s3, s0
                  mulhsu       s8, s8, gp
                  mul          s8, t0, s5
                  srliw        a1, s4, 0
                  srliw        zero, a0, 10
                  slli         s8, tp, 40
                  divuw        a6, tp, t0
                  remu         s3, s4, t4
                  div          tp, s5, gp
                  lui          tp, 872273
                  mul          a6, a3, a5
                  and          s11, s9, a6
                  mulhsu       s8, t6, s3
                  mulh         s11, gp, t4
                  andi         a0, t1, -1578
                  sraw         s11, a2, a0
                  subw         a5, s10, t5
                  slliw        a7, gp, 16
                  add          s1, a2, t0
                  add          a6, a6, gp
                  srli         a6, a1, 12
                  addi         tp, t5, 27
                  xor          a7, t2, t6
                  slt          s11, a7, t0
                  divu         a1, a7, gp
                  ori          t0, s4, 1086
                  srlw         a3, s1, a1
                  mulw         s1, t5, tp
                  remuw        t3, a5, gp
                  remuw        gp, t4, s8
                  mul          s11, t1, s11
                  mulhu        a0, s10, sp
                  slliw        s8, tp, 6
                  subw         a3, s3, s1
                  srli         a5, a7, 63
                  and          s5, t4, t0
                  sll          s2, ra, a0
                  divuw        a6, s1, t6
                  auipc        s10, 237669
                  remw         t6, s8, a0
                  srai         a1, a1, 23
                  xor          gp, s2, t2
                  remw         s7, a0, a6
                  slliw        ra, zero, 15
                  srliw        t1, t2, 28
                  auipc        s0, 851848
                  sll          s6, s7, a7
                  mul          s3, gp, t1
                  srliw        t3, t1, 5
                  nop
                  remu         s2, t4, s9
                  srl          t3, zero, a1
                  remw         s11, s4, s7
                  divw         tp, tp, t3
                  sltiu        s0, s3, 1831
                  srli         s6, gp, 31
                  slt          s1, s4, t1
                  sll          ra, a7, t1
                  addiw        a0, s8, -1160
                  srai         s7, s1, 31
                  mulhu        ra, t4, zero
                  xor          t3, a4, s5
                  sraiw        a4, t2, 27
                  mulhu        a6, a7, t1
                  divw         t2, gp, t6
                  div          gp, t1, s9
                  xor          s10, a7, s3
                  remw         s5, s8, sp
                  slt          t3, a4, t3
                  remw         s7, t5, t4
                  sllw         a6, s6, t3
                  srlw         t2, t6, tp
                  srl          s8, s8, s10
                  addi         t6, t1, -2047
                  rem          zero, a5, t4
                  ori          t0, a0, 604
                  slliw        a5, s1, 8
                  slli         a0, s9, 62
                  divw         s6, t0, a2
                  slti         a2, t2, -1955
                  sltu         s4, t0, t4
                  add          s10, a1, s10
                  addi         t3, s10, -1040
                  xor          s11, s7, zero
                  sll          t2, s8, s0
                  remu         s0, a0, a6
                  srl          a7, s3, a2
                  mul          a4, t6, a2
                  rem          ra, a1, s8
                  sltu         s4, a5, a7
                  nop
                  slti         s10, t0, 1630
                  xori         sp, a1, -475
                  srl          t0, t4, t0
                  rem          t1, s4, a2
                  slt          a3, a4, s6
                  divu         sp, sp, sp
                  divw         a3, s7, zero
                  xor          s2, a1, t4
                  mulhu        a3, s0, a6
                  div          t6, sp, t0
                  srl          a4, t0, s5
                  addw         s5, s4, t3
                  mulw         s8, t1, zero
                  sltiu        t0, a6, -734
                  divw         s11, s4, a2
                  sllw         s10, a6, s9
                  slli         s4, gp, 52
                  remu         a7, t1, s8
                  mulw         t2, t1, a3
                  auipc        a0, 580205
                  subw         sp, s1, sp
                  ori          s6, gp, -1035
                  slt          zero, zero, a4
                  divu         a5, a2, a4
                  sltu         t6, a7, s3
                  mul          s4, gp, sp
                  sub          a6, s1, s4
                  addi         t3, s1, -313
                  slti         sp, zero, -619
                  ori          ra, a6, 329
                  divw         a2, a7, s1
                  remuw        t2, s11, sp
                  and          s6, a0, a7
                  mulhu        a7, zero, a0
                  andi         ra, a3, 225
                  srliw        s0, t1, 31
                  mulw         t2, t0, tp
                  or           t1, s4, s0
                  remu         s5, s9, t5
                  mulhu        s6, s11, tp
                  rem          zero, s1, s2
                  slt          a0, t3, t5
                  addiw        a1, a7, 602
                  sltiu        gp, a1, -1418
                  div          s1, t6, s7
                  xori         s11, s5, 92
                  divw         t2, t2, t6
                  xor          a2, t4, t4
                  remu         gp, a4, s0
                  divuw        s2, s2, a6
                  nop
                  sllw         s11, t4, s7
                  andi         a7, t4, 1465
                  remu         s7, s8, a4
                  addw         s3, s6, t0
                  remw         s0, a5, t5
                  srli         a2, t5, 51
                  rem          t6, a6, gp
                  slt          s4, s1, a2
                  addi         a4, gp, -969
                  addiw        t0, a4, 675
                  srai         a4, sp, 53
                  sraiw        a7, t1, 18
                  sltu         t1, t1, s10
                  add          s4, t2, s10
                  mulw         tp, t3, t3
                  ori          s0, t4, -597
                  srai         t0, s10, 58
                  slli         t2, s9, 36
                  slli         s10, t2, 18
                  nop
                  remuw        t1, a2, a6
                  sllw         a0, a2, s11
                  sllw         t6, a6, t4
                  slliw        gp, t1, 29
                  remuw        s3, a6, a6
                  sll          a3, a3, a7
                  mulw         zero, s7, s5
                  auipc        s8, 771674
                  divu         s3, ra, s1
                  slti         a0, s10, -1231
                  remuw        tp, s0, s2
                  slli         a5, s9, 3
                  remuw        t0, t6, a4
                  sltiu        a5, zero, 295
                  mulw         a7, t4, s7
                  addiw        s1, a1, 1848
                  remw         a6, s0, s0
                  addiw        a6, t2, 925
                  or           tp, tp, t6
                  srai         t0, s9, 34
                  remu         t3, s2, s11
                  mul          s1, s6, gp
                  div          a6, t4, a6
                  slt          ra, s3, s10
                  remuw        t1, t0, s9
                  sub          s6, a7, a0
                  auipc        s8, 1019686
                  sltu         s10, a4, a0
                  sub          a4, s5, t5
                  addiw        s6, s1, -378
                  remw         gp, t5, s2
                  divw         ra, s0, t3
                  sltiu        tp, s6, -1149
                  srai         s10, s2, 20
                  addiw        s8, a1, -646
                  subw         sp, t2, s0
                  remu         t2, ra, a7
                  and          zero, a3, s0
                  auipc        s0, 371476
                  remuw        t6, t4, s4
                  mul          t6, s10, s10
                  srlw         s2, s0, s10
                  sraiw        s10, a0, 27
                  addi         tp, t1, -423
                  addi         s7, tp, -19
                  andi         s4, ra, 1560
                  divu         t0, s0, a3
                  mulhsu       sp, a2, s7
                  slt          s7, t3, t2
                  xor          a7, a3, s3
                  mulh         s10, t4, a0
                  sllw         s6, t1, s3
                  srlw         s7, ra, s10
                  sll          s5, a4, s7
                  sraw         t6, t4, sp
                  sraiw        tp, s8, 6
                  sra          tp, t1, t0
                  divuw        sp, a4, t0
                  xor          a4, sp, a1
                  addiw        zero, s0, 475
                  mulw         a3, s5, s1
                  sraiw        a1, t5, 0
                  slt          t1, t3, t4
                  nop
                  sra          t2, s10, s0
                  subw         a4, s11, t1
                  mulw         a1, a2, s3
                  xori         zero, t1, 1197
                  or           a0, s8, gp
                  sltu         zero, s7, t2
                  divuw        zero, a4, tp
                  andi         s8, t5, -1821
                  remu         a2, t6, ra
                  addi         zero, t6, -454
                  remuw        s5, s6, t0
                  remu         a5, s5, s0
                  or           t0, a0, gp
                  sraiw        zero, t0, 26
                  mul          s10, s10, tp
                  sra          t6, t3, s6
                  mulhsu       a5, a7, s3
                  divu         t0, s7, s1
                  and          s11, t2, s9
                  ori          a2, s5, 87
                  sraw         t1, a0, a7
                  slliw        a2, s9, 31
                  sraiw        a2, s9, 8
                  sllw         t6, a6, s10
                  divuw        s1, zero, a3
                  divw         s5, s4, ra
                  rem          t2, t1, s3
                  remu         s4, s5, a4
                  add          a6, s6, t5
                  ori          ra, t5, -1950
                  add          t0, s1, s7
                  add          t1, sp, t0
                  divuw        s6, t3, sp
                  sraiw        a7, s3, 12
                  divu         a2, a1, a0
                  srliw        a3, a2, 16
                  divw         a7, a6, t5
                  addw         t2, t0, zero
                  srlw         a4, a3, t2
                  ori          a6, gp, -1434
                  sra          s8, a1, s11
                  remw         s10, s1, s7
                  xor          s10, t0, a0
                  sraw         a5, t2, s8
                  mul          gp, t3, s10
                  mulw         a7, a6, s11
                  mulw         s1, s11, t2
                  sub          a5, s11, s8
                  remu         s8, s1, a1
                  slt          t3, t4, t4
                  mulhu        gp, s9, s8
                  slti         t3, s3, 1682
                  lui          a2, 821856
                  div          t2, t4, zero
                  sra          ra, sp, t2
                  mul          a7, sp, a7
                  rem          a4, t0, sp
                  add          s8, s7, s11
                  sltiu        a6, t3, -1838
                  mulhu        a3, a6, a5
                  remu         s7, t3, s7
                  xor          a6, zero, s3
                  divw         s10, t2, s7
                  remw         s10, t1, s4
                  sub          s1, t3, s9
                  mulh         tp, a6, s8
                  andi         s7, s3, 824
                  addw         ra, tp, t6
                  mulw         zero, gp, t5
                  sltu         a3, a4, t2
                  div          s2, a7, sp
                  ori          tp, s3, 1581
                  srl          ra, t2, t1
                  mulh         s6, s1, t1
                  mulh         s6, s10, a4
                  slliw        s4, s2, 28
                  sraiw        tp, ra, 10
                  rem          a2, s4, s4
                  xor          t2, gp, tp
                  mulh         s7, s6, a2
                  slliw        s8, a1, 23
                  rem          a5, s3, s9
                  sll          t0, sp, s8
                  rem          t1, a5, s0
                  addiw        a7, ra, 668
                  mulhsu       s7, a1, a7
                  remw         a1, zero, gp
                  sllw         tp, t0, s3
                  sllw         a3, t6, s1
                  remu         t3, s1, s9
                  rem          t3, t5, t6
                  divw         s7, t3, t6
                  nop
                  divu         a3, s5, gp
                  slt          ra, a3, s5
                  slliw        a1, t6, 20
                  addiw        s6, t1, -73
                  remuw        a2, s7, t1
                  mul          s7, a5, a2
                  srai         t1, s1, 28
                  addi         a5, s2, -1674
                  srli         s2, a2, 47
                  ori          s8, ra, -782
                  slli         a6, a1, 30
                  remu         a0, a6, s6
                  mulh         sp, t0, a7
                  addi         a7, s11, 1282
                  sub          sp, s0, a2
                  addw         s7, s0, sp
                  mulhu        s4, s10, t4
                  sraw         s1, t3, a0
                  sra          a6, t1, a4
                  divu         s7, s3, t1
                  andi         zero, t2, -763
                  slliw        a3, t3, 2
                  sub          a7, a7, s7
                  divuw        zero, t5, s0
                  addiw        t2, s4, 1649
                  add          s2, s8, s3
                  srl          a2, a7, t1
                  or           a6, s5, sp
                  addiw        s5, s11, 477
                  sll          a6, a7, t1
                  mulhu        sp, s8, s2
                  srliw        zero, ra, 4
                  srli         t0, gp, 59
                  slti         a0, zero, 301
                  srai         tp, t4, 47
                  mulhu        a6, s5, a3
                  nop
                  xor          t3, s0, zero
                  div          t6, a1, tp
                  srli         s5, a6, 21
                  divu         s10, s0, a0
                  addi         a5, a3, 1072
                  divuw        t2, t1, t0
                  remu         s2, a0, s5
                  sllw         a2, s2, a7
                  rem          s1, a6, s1
                  auipc        a7, 1014237
                  addw         s1, a3, a3
                  subw         s5, a0, a2
                  auipc        gp, 526220
                  remuw        s0, s5, ra
                  divw         zero, gp, s4
                  divu         s4, t3, s8
                  xori         a5, s6, 1658
                  slt          t1, a0, t4
                  slt          a0, a0, s0
                  mulh         a3, s4, s2
                  rem          s5, s1, t2
                  remu         a5, s10, s4
                  andi         s10, a7, 1472
                  or           s6, t2, t3
                  add          a1, t6, s1
                  or           s10, t0, s6
                  div          s7, s10, s8
                  sub          ra, a2, t2
                  addi         s0, s9, 1306
                  sraw         s7, a5, t3
                  srai         zero, s5, 2
                  sll          s0, t5, t0
                  sllw         zero, zero, s7
                  lui          s7, 169557
                  addiw        ra, s7, 1659
                  remu         t3, a5, sp
                  sll          s4, t4, s4
                  srai         gp, t1, 1
                  slliw        a6, a0, 3
                  and          s7, s9, a5
                  sraiw        zero, gp, 29
                  divw         s1, s8, s0
                  srlw         t2, t3, t2
                  divuw        sp, s2, s8
                  xori         a5, a1, -1646
                  srai         a7, t0, 2
                  addiw        s0, s1, -1983
                  remu         a0, t5, a6
                  remw         s2, s2, s4
                  divw         ra, a5, t3
                  sraw         s7, t3, zero
                  sraiw        gp, s4, 23
                  mulh         s8, t3, s9
                  sllw         a6, t5, t6
                  add          t6, zero, t6
                  xori         gp, t2, -1830
                  sraw         s11, s9, t3
                  or           s11, t5, a1
                  sraw         a5, s11, t3
                  remu         sp, a0, t3
                  div          a6, t1, a7
                  sra          tp, a1, ra
                  srlw         ra, s8, a2
                  mulhu        s4, zero, s3
                  lui          a5, 709782
                  addi         a5, t2, -1206
                  srai         a2, s3, 44
                  addw         gp, a5, t2
                  sltu         ra, s9, s7
                  rem          t6, zero, gp
                  lui          a4, 737745
                  add          s2, t2, t0
                  mulhsu       s1, a3, s7
                  add          t6, s4, a0
                  sub          s2, t3, a3
                  add          s10, s2, s1
                  or           zero, t3, s1
                  divw         a3, s6, t0
                  divuw        t3, a1, t2
                  srai         t3, a6, 2
                  sra          t0, s3, s4
                  mulhu        a6, gp, t0
                  xor          s0, t2, s0
                  slt          s3, t5, s8
                  slliw        t6, a6, 28
                  divw         s1, t2, tp
                  remw         s1, a2, a2
                  and          s10, a2, s9
                  ori          t2, t2, 92
                  or           a4, a0, sp
                  div          s6, a2, a2
                  div          zero, a0, s6
                  slli         s4, a1, 3
                  remu         s7, s7, s4
                  addi         a4, t5, 580
                  rem          s3, s11, s6
                  mulh         t6, zero, s4
                  mulh         a6, s10, s7
                  divu         t1, s5, sp
                  sltiu        a5, s0, 725
                  andi         s10, t3, -711
                  div          s2, s6, tp
                  slt          s10, s7, t5
                  srl          a1, a5, t3
                  remw         s6, tp, s1
                  subw         s11, s4, t3
                  divw         s3, s5, sp
                  slt          a7, t4, t1
                  sra          s5, a6, a0
                  add          a2, a7, zero
                  remuw        a6, a6, t0
                  sraiw        s6, a5, 15
                  srli         s11, s10, 1
                  mulhsu       a1, t6, t5
                  andi         s8, s7, -1960
                  slliw        a5, s4, 27
                  mulw         t0, a7, a0
                  mulhsu       a7, s5, s5
                  srai         s2, s7, 63
                  auipc        s11, 188737
                  sra          s0, s9, a4
                  divu         a2, s5, gp
                  rem          s2, t1, a7
                  srli         s8, zero, 44
                  andi         a7, s10, 178
                  slliw        t6, t2, 9
                  sra          t6, a5, s10
                  add          a7, ra, s5
                  mulw         s0, s0, s11
                  srliw        s5, s4, 11
                  lui          s1, 743180
                  rem          a3, tp, s0
                  sraiw        t0, a5, 29
                  nop
                  srliw        t3, s8, 7
                  add          sp, s11, t6
                  sraw         s11, s3, sp
                  nop
                  remuw        a4, t4, s2
                  rem          a1, t5, s4
                  mulh         s4, s3, t2
                  addiw        a5, t2, -1199
                  divuw        t3, sp, a7
                  mul          a7, t3, s10
                  sltiu        tp, a6, -1747
                  sraw         a2, t3, s8
                  slt          s3, s6, t4
                  mulw         a3, ra, tp
                  mulw         a0, a1, s1
                  mulhsu       t2, t2, zero
                  remw         s8, ra, t3
                  ori          a4, a4, -214
                  mulhsu       s2, s7, ra
                  xor          s6, s9, zero
                  slti         s0, a7, -224
                  and          a2, s6, a2
                  auipc        tp, 22122
                  andi         sp, t3, 118
                  and          s5, t0, gp
                  sra          s11, gp, ra
                  sub          ra, a1, a1
                  slti         s4, s9, 1625
                  sraw         t0, t0, t5
                  sub          a7, s3, a7
                  rem          s8, t6, a0
                  divuw        a4, t3, a5
                  or           t6, s1, a7
                  sltiu        a4, zero, -1258
                  xori         s1, t6, -1464
                  sraiw        s1, ra, 27
                  mul          a4, s1, a7
                  sll          s5, a6, a7
                  sll          s0, t2, s10
                  andi         t0, s2, 359
                  xori         s5, s5, 1978
                  addi         s10, a6, -683
                  sltu         s6, a5, t2
                  mul          a2, a6, s3
                  xori         t6, s2, 1264
                  remu         s6, gp, t0
                  xori         a6, s9, -981
                  add          sp, a5, a6
                  subw         a7, s0, t0
                  andi         sp, a7, 735
                  srliw        t1, ra, 15
                  srl          t2, t4, tp
                  mul          s3, s3, s10
                  subw         s2, a2, t0
                  srl          s11, tp, t2
                  sllw         t1, a7, t5
                  mul          t6, s10, s8
                  addi         sp, a3, -1069
                  sltiu        zero, gp, 446
                  xori         s5, s1, -1622
                  srl          s5, a4, a5
                  divw         t6, s11, s4
                  lui          a6, 636531
                  andi         s1, s5, 694
                  sltu         t2, t2, t4
                  nop
                  or           t3, s2, s1
                  sraw         t0, a5, s0
                  slli         a7, a7, 56
                  nop
                  divuw        tp, sp, t0
                  srlw         t6, s11, s10
                  xor          s8, s0, ra
                  remuw        s7, s11, gp
                  or           t2, s6, s2
                  srlw         a4, s10, s1
                  remu         s11, s6, t6
                  addw         a4, ra, s7
                  remuw        t2, a5, t3
                  sltiu        s7, s9, -1222
                  div          tp, t4, a5
                  mulhu        a5, a1, t0
                  remw         a6, gp, t0
                  xor          s4, s5, a2
                  srli         tp, t6, 8
                  sllw         s5, t1, a7
                  lui          ra, 758087
                  mul          a4, s11, a5
                  sltiu        a2, t1, -2028
                  divu         s1, t2, a1
                  srl          s10, ra, s8
                  xori         a4, s10, 468
                  sraiw        s4, a7, 4
                  sltiu        s8, zero, 1828
                  remu         a7, s2, s5
                  div          zero, gp, tp
                  mulhu        a0, tp, a1
                  sltiu        t1, t5, -706
                  lui          a6, 837574
                  sra          s0, s4, a6
                  andi         s3, s10, 171
                  add          t0, zero, t0
                  sra          t3, s0, tp
                  sra          s8, s3, t3
                  srl          tp, tp, a0
                  mulh         t1, s0, t5
                  sltu         tp, s11, s5
                  andi         s10, t1, -534
                  add          s2, t2, a7
                  sraiw        gp, s4, 30
                  addiw        s0, a5, 731
                  srai         t6, a0, 20
                  srai         t2, s8, 25
                  mulw         zero, s10, a0
                  remu         s0, s5, ra
                  slt          t1, t2, s0
                  srli         a4, s5, 48
                  ori          t6, t6, 162
                  srlw         t3, a4, s8
                  slliw        a1, tp, 21
                  srliw        s11, a6, 6
                  divu         t0, t6, a2
                  srlw         a7, a3, t4
                  divuw        t6, s11, s3
                  divuw        a0, t0, s11
                  nop
                  mulhsu       a7, t3, a5
                  lui          a1, 231760
                  srlw         t3, s0, tp
                  mulhsu       a3, s5, t5
                  slti         t2, s5, -1977
                  div          zero, t3, s2
                  mulhsu       t2, t3, t6
                  divuw        a4, s11, a3
                  xor          a4, t5, gp
                  sraiw        a4, a2, 20
                  sllw         a3, gp, t0
                  remw         s0, gp, s5
                  srlw         s10, t3, a4
                  sll          a5, sp, s2
                  ori          sp, s4, 569
                  mulhsu       a7, a0, t6
                  srai         a5, t3, 39
                  divw         a1, s2, s4
                  mulw         tp, t6, a2
                  divw         s7, a5, sp
                  div          a7, a0, t0
                  divuw        t3, s10, s5
                  and          a0, a0, a5
                  sltiu        a5, s2, 190
                  addw         zero, a6, s0
                  remu         a0, s0, s5
                  addi         a0, t5, 324
                  lui          a3, 328969
                  sub          s1, s8, t2
                  sltiu        s3, t2, 1951
                  addi         a4, a3, 123
                  mulh         a1, s1, a4
                  and          a2, s9, s8
                  xor          a3, t5, s6
                  srliw        s11, s2, 8
                  mulhu        a7, s4, t5
                  addiw        s2, s9, 910
                  divu         s8, s4, t6
                  ori          s4, a7, -623
                  slti         t0, s4, -1482
                  mulhu        s8, s9, s10
                  divuw        a5, a7, s6
                  mulh         a6, a3, a7
                  remw         a5, a1, a6
                  sraw         a5, s10, a3
                  addiw        s11, s7, -417
                  mul          s5, t3, zero
                  mulhu        t6, s4, s11
                  xor          t2, t1, s2
                  remu         ra, ra, t2
                  srlw         t6, tp, a1
                  remuw        a6, s8, t6
                  lui          ra, 332728
                  auipc        t6, 661021
                  auipc        s4, 795290
                  sltu         s5, t2, s8
                  and          t0, t4, sp
                  mulhu        a6, zero, t4
                  sra          s1, a0, a3
                  or           gp, a2, ra
                  slliw        t3, zero, 20
                  slli         a1, s1, 48
                  xori         s5, s8, -231
                  sltu         s2, t1, a1
                  divw         t2, a5, a4
                  and          s11, s7, tp
                  slliw        t0, a6, 0
                  sraw         s6, s9, ra
                  xori         s1, gp, 626
                  div          t6, a1, s1
                  and          s3, t6, a5
                  xori         s6, t2, -351
                  slliw        s0, a6, 7
                  auipc        t1, 791869
                  mulh         s2, t1, t4
                  and          t0, a5, s4
                  srliw        s8, t6, 14
                  sllw         t0, sp, a3
                  mul          a4, s1, tp
                  divw         s11, t5, s8
                  slli         t1, a1, 46
                  and          s2, s10, zero
                  sra          t2, sp, a2
                  mulw         s11, t2, a1
                  xori         s5, sp, -1662
                  addiw        zero, a7, 1144
                  sraw         s8, s1, a7
                  srlw         a1, t5, t5
                  srlw         s11, a6, s4
                  sraiw        s4, s3, 8
                  addiw        t6, a3, 1248
                  divw         tp, s5, t2
                  subw         s11, t0, t2
                  sltu         a3, a6, tp
                  nop
                  sub          s10, s2, s9
                  lui          s1, 345998
                  sllw         s10, s1, s8
                  srai         s5, a0, 57
                  divuw        t2, s10, a4
                  auipc        ra, 1007681
                  srl          s1, s6, s8
                  sll          s2, s5, t2
                  remuw        a3, t2, s3
                  sllw         s3, tp, t1
                  div          tp, s1, s0
                  nop
                  slt          s4, s1, s7
                  ori          a7, t1, -583
                  or           s2, t6, a4
                  addiw        a4, s7, 1507
                  remw         gp, s11, s11
                  nop
                  divw         zero, s11, a3
                  add          a3, s6, s8
                  andi         s4, s8, -1997
                  slli         t2, s5, 41
                  slt          s2, a2, t5
                  slti         t2, t5, -1429
                  or           s5, t0, gp
                  rem          s10, zero, sp
                  rem          a6, a2, s2
                  ori          s8, t0, 258
                  sltiu        s4, a5, -125
                  sll          t2, a1, s5
                  andi         a1, s11, 367
                  srliw        t6, a0, 10
                  add          s3, a2, ra
                  nop
                  mulw         s1, tp, s3
                  addiw        s1, s0, -169
                  srlw         a3, t4, t4
                  mulw         sp, a7, s7
                  lui          s10, 503799
                  slti         a2, zero, 1616
                  sll          t0, s7, t5
                  mulh         tp, t3, sp
                  srl          t1, t3, ra
                  sltu         a4, s1, a3
                  remuw        t1, s7, s1
                  divu         a5, s0, t2
                  xori         a1, a1, 499
                  slli         sp, s6, 51
                  andi         a2, t3, -1314
                  remw         t3, t4, a1
                  xor          a0, a4, s8
                  slli         a3, gp, 41
                  rem          s4, s8, s4
                  sll          s1, s6, a4
                  sub          a7, s7, zero
                  remuw        a3, t6, t0
                  srai         zero, s6, 16
                  sll          t6, ra, s9
                  sltu         sp, t6, s7
                  div          t0, s4, t5
                  div          a4, ra, ra
                  rem          t6, s10, s7
                  sraw         a7, t3, sp
                  slti         a3, t3, 925
                  sll          zero, t6, gp
                  auipc        s3, 826667
                  and          a7, tp, a7
                  sltu         s2, ra, s11
                  srlw         tp, a1, s10
                  sll          a2, s5, t3
                  auipc        a0, 982780
                  slliw        s5, s8, 6
                  lui          s2, 39873
                  slli         s5, s4, 43
                  rem          s3, s11, a6
                  addi         t2, s9, -480
                  slli         t0, s0, 22
                  add          s1, t6, a6
                  xor          gp, a6, s6
                  remuw        s5, s5, a1
                  addiw        a4, a7, -611
                  add          s7, t1, a0
                  remw         t3, s6, s11
                  srliw        s1, a0, 10
                  rem          t0, s7, s7
                  sraiw        a0, s0, 11
                  mulw         s5, a2, t1
                  srlw         s6, t5, s1
                  ori          s10, tp, -1774
                  sub          s10, t2, a2
                  mul          tp, t5, t2
                  mulhu        s2, s9, t5
                  sra          s8, a5, a4
                  srlw         t6, s7, ra
                  xor          s3, gp, t0
                  slliw        a1, a6, 10
                  sra          a2, s9, s4
                  sllw         a1, s6, a5
                  slli         a3, tp, 2
                  remw         s10, s1, t5
                  mulw         t2, a3, a0
                  lui          s0, 210066
                  remuw        s4, t1, s6
                  andi         s6, s0, 65
                  divu         s5, s6, sp
                  add          s2, a5, t3
                  andi         s2, s10, -1164
                  srai         s0, t2, 39
                  srl          tp, s8, s11
                  and          s6, s5, s7
                  subw         s3, s8, sp
                  and          s8, gp, s4
                  mul          s7, sp, s1
                  xor          s10, s5, a2
                  lui          s6, 716306
                  slti         t3, tp, -1128
                  sub          a0, s4, tp
                  addiw        s5, gp, 1603
                  mulw         t3, s8, a7
                  mulhsu       tp, a4, s2
                  sra          t1, t2, t5
                  add          t1, sp, zero
                  sub          t2, a2, t2
                  xor          t6, s2, ra
                  addw         t0, s0, tp
                  xori         a6, t1, -1044
                  and          a4, t4, s10
                  slliw        s0, s11, 1
                  rem          a0, a1, a2
                  sraiw        a4, t2, 26
                  slti         s5, zero, 705
                  remu         a1, a0, s11
                  and          a7, s0, s9
                  ori          a7, t3, -266
                  addi         s4, tp, -233
                  sllw         s1, t1, a1
                  srai         a5, t6, 6
                  sub          s1, gp, ra
                  mulhsu       s10, a4, s9
                  lui          a7, 213444
                  sraw         t0, s8, s0
                  sub          t0, a0, a6
                  slt          t3, a1, a4
                  div          a2, s6, zero
                  nop
                  mul          ra, tp, t3
                  slti         a6, a6, -172
                  lui          a4, 396386
                  srliw        s10, a0, 9
                  srai         s8, t3, 23
                  mulw         gp, t2, t5
                  mulhsu       a1, t2, s7
                  xor          a4, t1, t0
                  auipc        s0, 763620
                  and          t6, t3, s0
                  sraiw        a4, a0, 13
                  div          s3, s7, a7
                  mulhu        t2, t5, a5
                  remu         a0, ra, s9
                  or           zero, a4, t5
                  subw         s0, a6, s4
                  sllw         t6, t0, a1
                  remu         t1, s2, t4
                  div          a6, s1, zero
                  add          a1, s9, s1
                  mulh         a7, s11, s10
                  addi         a2, t4, -1224
                  xori         sp, a0, 1719
                  sltiu        gp, sp, -1624
                  sraw         s8, a6, t0
                  mulhu        sp, s7, s1
                  mulw         a1, s0, s1
                  sltiu        s3, s4, 717
                  divw         a1, t4, s5
                  xori         s2, a1, -1250
                  slliw        a5, a7, 14
                  div          tp, a0, s9
                  slliw        s3, a7, 9
                  xor          a2, s4, s3
                  auipc        a3, 638606
                  subw         s5, t3, t2
                  subw         a1, a6, t6
                  srliw        s8, s6, 1
                  divw         tp, t6, zero
                  xor          a0, gp, s5
                  xor          s3, s5, a0
                  remu         s10, s0, t0
                  divw         s3, s10, s11
                  subw         a0, a4, a2
                  sraw         sp, gp, t1
                  subw         t1, s0, s0
                  sll          a6, a3, a6
                  mulw         s7, t0, t0
                  slli         a2, a0, 13
                  srai         s8, a3, 46
                  sllw         s5, t3, s1
                  slti         a0, t2, -1446
                  slli         t1, s11, 17
                  slliw        s3, s0, 21
                  sraw         a7, a7, ra
                  sraiw        s3, t2, 11
                  rem          a3, t3, t6
                  rem          sp, a4, s3
                  sra          gp, s11, a5
                  xor          a1, a0, t1
                  srl          t3, a3, a5
                  sraw         sp, s3, s11
                  sra          s5, a2, a5
                  sra          s3, s11, s6
                  srai         s8, s9, 38
                  sub          gp, t4, s2
                  sltu         s8, sp, t0
                  divuw        s8, s9, a1
                  div          s11, s2, a4
                  sra          s5, a1, s8
                  div          t3, s4, a6
                  andi         tp, s5, 397
                  slli         a1, a0, 0
                  rem          s7, s5, a1
                  remuw        a5, a2, t3
                  slt          a2, ra, t4
                  rem          s1, t3, s3
                  sllw         t6, a2, s11
                  sllw         s7, s0, a5
                  nop
                  lui          s3, 1004218
                  mulh         t1, a2, t3
                  mulhsu       a3, a0, a2
                  srliw        t1, t4, 5
                  mulhsu       s6, sp, s6
                  div          s11, a0, a5
                  mulw         s3, a6, a4
                  xori         tp, ra, 855
                  srlw         gp, s0, zero
                  andi         a2, s5, -1539
                  sub          t2, t3, a2
                  subw         t1, t3, gp
                  xor          a5, a4, ra
                  lui          s11, 843223
                  rem          sp, s2, s10
                  slt          s2, t6, s10
                  slti         t6, s10, 941
                  xor          a7, s4, s10
                  addi         a5, s3, 1033
                  srai         s5, a5, 4
                  sll          ra, a5, s2
                  divw         gp, zero, s3
                  sltiu        a7, a1, 699
                  mulh         s7, s0, a1
                  sra          s0, a6, a6
                  div          t6, t4, s5
                  mulhsu       sp, s11, a6
                  andi         sp, a2, 1165
                  div          a0, a6, a1
                  mulh         ra, t2, ra
                  mulhu        s11, s0, s4
                  xori         a7, sp, -1348
                  divu         s4, s5, a1
                  xor          s1, s1, gp
                  sltu         s6, t3, t5
                  nop
                  slti         t2, s9, 174
                  mulh         s7, t4, s2
                  sltu         zero, s6, s3
                  rem          a4, t1, s4
                  remu         t1, a6, a2
                  slli         s5, s10, 56
                  nop
                  addiw        zero, a6, -1581
                  divu         zero, a5, s1
                  divu         tp, sp, a4
                  srlw         tp, s4, s11
                  sraiw        s1, ra, 25
                  mulhsu       t2, t1, s3
                  addiw        s2, s3, 537
                  auipc        s3, 272560
                  ori          t0, t2, -896
                  auipc        a4, 388638
                  srai         s8, s8, 37
                  slli         a1, t4, 14
                  lui          a3, 838330
                  sltiu        s2, t1, 1630
                  remuw        s11, s1, s3
                  mulhu        tp, s3, ra
                  slliw        s0, s10, 10
                  andi         s0, a7, 291
                  xori         t2, a1, -1464
                  ori          t6, t2, 1773
                  sltiu        a2, s6, 1703
                  sra          s11, t3, s11
                  mulhu        a1, s2, t0
                  div          s4, s3, s11
                  div          s10, zero, sp
                  div          s11, s2, s5
                  lui          t0, 846661
                  or           t6, s8, s0
                  auipc        t0, 33564
                  sllw         a4, s4, a3
                  add          s10, a5, s6
                  subw         zero, s11, s3
                  or           sp, a0, t4
                  mul          s0, a3, s11
                  mulh         s6, a7, gp
                  addiw        a2, a2, -414
                  sub          t3, s8, a6
                  srlw         s2, t0, t4
                  mul          s5, t4, s10
                  slti         a6, t0, 1445
                  mulh         s8, gp, s2
                  sraiw        t0, s6, 0
                  sraiw        a6, s5, 22
                  slt          s7, t2, a0
                  xor          s6, s9, t5
                  div          a7, t5, t5
                  xor          gp, a5, s9
                  ori          a0, a4, -1604
                  sltiu        a0, s1, 1485
                  xor          s10, s4, a0
                  auipc        a5, 192873
                  xor          a2, a7, t2
                  sub          t6, s10, s4
                  sraw         s2, s0, t5
                  remu         a4, s2, s3
                  subw         s4, a7, t5
                  srliw        s5, s6, 8
                  remu         tp, a7, ra
                  remw         t1, a5, t6
                  and          a3, s6, sp
                  subw         s4, s1, t5
                  srliw        a7, s6, 31
                  remw         s8, a4, gp
                  mulhu        ra, s10, zero
                  remu         t1, a7, a6
                  nop
                  auipc        s3, 662013
                  lui          t1, 703221
                  div          gp, a6, t2
                  divuw        t6, sp, s1
                  mulh         s2, s3, t5
                  sll          s7, t4, gp
                  slliw        s6, a4, 23
                  xor          a2, s5, s5
                  srli         s10, s1, 35
                  sub          s10, a6, a7
                  rem          a4, s2, a2
                  sraw         a4, t0, gp
                  sub          gp, t5, s0
                  or           s5, ra, s9
                  nop
                  mulhu        s6, t3, tp
                  sltu         s3, a2, s1
                  srli         s7, a1, 51
                  sll          s7, s10, s0
                  sll          tp, s3, t3
                  nop
                  mul          t3, s4, tp
                  divw         s7, gp, zero
                  mulhsu       a5, tp, s11
                  divu         tp, t1, ra
                  sltu         t1, a3, t4
                  divu         gp, s11, a3
                  ori          t2, gp, -730
                  auipc        a1, 116126
                  srli         a0, ra, 16
                  addi         s3, s7, 1415
                  sltiu        ra, a4, 1268
                  srliw        t0, a7, 26
                  sltiu        s11, s6, 1981
                  sll          a0, sp, zero
                  sltiu        a6, s4, -616
                  sub          s5, s9, s3
                  subw         s4, s11, zero
                  ori          a3, a0, 248
                  mulhsu       s3, gp, t2
                  slti         a7, t2, -1880
                  sltu         t6, t1, s2
                  subw         gp, s11, s5
                  srli         sp, t5, 41
                  sll          s5, t6, a0
                  addw         s2, t6, s0
                  xor          a4, s1, t6
                  auipc        a6, 312061
                  mulhu        a7, s9, a1
                  mulhsu       s1, s8, s1
                  nop
                  div          s0, s0, s3
                  lui          s6, 1042203
                  srliw        a6, a7, 27
                  andi         a6, s6, 1324
                  addiw        s5, t3, 1229
                  srai         t2, a6, 47
                  sllw         t2, s4, zero
                  sllw         t1, zero, s2
                  andi         t1, a7, 887
                  slliw        s10, a2, 24
                  mul          s2, a2, s5
                  andi         s0, s4, 1713
                  slliw        a6, s4, 21
                  and          s3, tp, s8
                  mulh         a7, t4, a7
                  or           a6, s6, t4
                  lui          zero, 770642
                  subw         s1, a7, t0
                  andi         t1, a1, 1754
                  sltiu        a5, s8, 1153
                  add          s0, s1, s10
                  mulh         t6, s7, s4
                  xori         s11, t1, -100
                  addw         gp, a0, s2
                  sltiu        s7, t0, -1503
                  mul          a6, a7, a1
                  or           t6, a6, t2
                  andi         tp, a5, 873
                  mulh         t0, t4, a3
                  addi         tp, s8, -534
                  slli         s11, s7, 37
                  sraiw        a3, s6, 26
                  add          t0, t1, t5
                  remu         s6, s2, s8
                  remw         t3, s7, s3
                  mulh         s11, a6, a6
                  sltiu        a7, s5, -1225
                  xori         a1, a3, 1903
                  sltu         s3, s5, s6
                  srlw         a1, a4, s3
                  add          tp, s6, t5
                  remw         a2, a1, s7
                  sra          s7, a7, t2
                  sltiu        s4, s0, 1158
                  subw         a7, gp, t2
                  slliw        s5, t4, 29
                  lui          t0, 779927
                  sraiw        a0, a6, 30
                  divuw        a3, s6, a5
                  auipc        ra, 734258
                  sraw         s0, a5, s3
                  xori         s1, a6, -272
                  sltiu        ra, s4, -1765
                  rem          t3, t3, a2
                  srli         t3, a7, 49
                  divuw        t3, s9, s11
                  div          a3, s1, s4
                  add          tp, s8, s9
                  sllw         s0, zero, s1
                  srli         s7, s3, 60
                  remw         a7, s3, t6
                  ori          s11, zero, 1556
                  lui          s8, 521817
                  remw         t6, t1, s10
                  lui          s5, 407749
                  addw         t3, s3, t5
                  remu         a2, a6, t0
                  addiw        s0, a4, 156
                  and          s2, t6, tp
                  divu         s10, s3, s7
                  and          sp, s6, s4
                  srli         s2, s4, 48
                  xori         s1, t5, 662
                  or           s8, s0, s6
                  sll          a2, t3, zero
                  remw         s10, gp, gp
                  srai         t3, t1, 58
                  add          s11, a4, gp
                  remuw        a4, s7, s8
                  addiw        s6, s10, 1455
                  or           s6, s8, a4
                  divuw        s8, a4, s1
                  and          s0, s11, s4
                  srlw         a7, a7, t5
                  xori         a5, a0, 1286
                  mulh         t0, t4, t4
                  slliw        gp, s9, 5
                  divw         s2, a4, a0
                  divuw        t3, s0, s8
                  sub          s10, t1, a6
                  srlw         s11, t3, a2
                  auipc        t3, 118290
                  sub          a3, s1, t5
                  srli         s7, s3, 42
                  divw         s8, s3, t0
                  mulhu        s10, s0, s2
                  andi         t0, a1, -309
                  sraiw        t1, t0, 6
                  div          s6, a7, s11
                  remw         s0, a5, a0
                  add          a5, s11, a7
                  mul          t3, s10, s0
                  subw         t3, s6, s7
                  slti         a2, s5, 3
                  sltu         s0, t1, s5
                  srlw         a5, s9, a1
                  addw         s8, tp, sp
                  sraw         a3, s4, a1
                  sltu         t6, a1, t2
                  xori         a3, t3, 924
                  remu         s0, s5, tp
                  rem          t6, s11, t2
                  remw         a0, s10, t0
                  rem          s8, s10, a4
                  mulw         s1, s5, gp
                  ori          s11, s4, 1003
                  mulhu        a4, a3, a4
                  divw         t2, t4, a2
                  or           s8, ra, a6
                  remuw        a1, a7, s11
                  divu         s2, t3, s10
                  mulw         s10, s1, a1
                  xor          a6, sp, t2
                  addw         a2, a5, a1
                  div          s5, s1, ra
                  and          t0, a4, ra
                  srl          a0, a5, s10
                  addw         s1, a4, a2
                  add          zero, s4, s10
                  mulhsu       t2, s3, s8
                  sll          sp, s0, a5
                  slti         sp, s0, -1595
                  addi         t6, t6, 937
                  andi         a6, gp, 583
                  remw         t2, s2, a6
                  sra          s4, t0, a1
                  sll          zero, s5, t4
                  slti         a1, t0, 1269
                  slli         s7, a5, 59
                  srli         s7, tp, 29
                  sll          a5, s2, s5
                  mulhu        s2, s3, a1
                  remw         s0, a5, t6
                  sraw         zero, a6, s8
                  mulw         t1, a6, s8
                  ori          t2, t0, -353
                  lui          s8, 256751
                  xori         s4, a5, -573
                  ori          a4, s3, 629
                  slti         a7, s6, 157
                  sra          s6, a5, ra
                  xori         a0, a7, 685
                  xori         s5, sp, -1944
                  mulw         a3, s3, s0
                  mulhu        t2, s3, zero
                  mulhu        s2, t1, t0
                  remw         s1, s0, zero
                  srl          a0, a0, sp
                  divu         s5, t6, s10
                  or           t1, t6, zero
                  slliw        a7, a4, 19
                  sra          s4, s5, gp
                  and          a3, gp, s9
                  xori         a2, s0, 2009
                  andi         a6, s10, 342
                  mulhu        t2, t4, zero
                  and          a6, t2, s2
                  ori          s5, zero, -1553
                  remu         s2, s7, t1
                  mulhu        t2, s1, s3
                  addi         s3, a0, 1254
                  remu         a6, a6, t0
                  mulhsu       a5, t1, a3
                  lui          t2, 210104
                  nop
                  xori         s6, gp, -108
                  srl          s10, a0, t6
                  srlw         tp, ra, a1
                  addw         s7, s10, t4
                  slli         a6, sp, 61
                  divw         t3, a6, a2
                  nop
                  sll          zero, s4, s11
                  andi         a7, t6, -465
                  sub          s10, a5, s6
                  divu         s0, tp, a6
                  srai         sp, tp, 45
                  slt          a5, tp, a7
                  sll          a6, zero, sp
                  srl          s11, t6, s2
                  mul          s11, s7, s10
                  xor          a7, ra, s1
                  lui          t3, 346723
                  xori         a3, a5, 1605
                  rem          s2, a2, t6
                  sraw         s1, t3, t5
                  srai         a5, a6, 5
                  sub          a5, s11, s4
                  slli         s11, s5, 38
                  sll          a3, s1, a3
                  nop
                  srliw        s11, a4, 24
                  remu         t1, s2, t2
                  remu         s4, s11, s4
                  sltiu        a7, t6, 374
                  ori          t6, a3, 1161
                  or           s10, s8, s9
                  div          zero, s3, s7
                  mulhsu       s7, s1, t0
                  addw         s7, s0, t6
                  ori          t2, s8, 205
                  sra          s1, t3, tp
                  slti         tp, gp, -868
                  mulhu        s1, s7, a6
                  sra          a4, t4, t0
                  rem          s10, zero, s2
                  remu         s2, sp, zero
                  srl          a3, a7, a3
                  slti         a1, s0, 866
                  remuw        s4, t5, a3
                  divu         a4, t5, a7
                  srlw         s2, s5, t2
                  srai         s5, a5, 28
                  sltu         a3, s2, a0
                  addw         sp, s0, sp
                  srai         a5, s5, 20
                  mulw         t1, s10, t1
                  slli         a0, s9, 4
                  sraw         s4, a4, ra
                  ori          a1, t4, 1384
                  subw         t6, t2, zero
                  sltiu        t0, a0, 361
                  xori         a3, s9, -840
                  remuw        a5, s6, s9
                  sra          a3, a3, tp
                  slt          s3, s1, t4
                  andi         a2, a3, -1249
                  divu         t0, gp, tp
                  srli         s0, s5, 60
                  srlw         a4, s2, s9
                  ori          gp, a3, -127
                  sllw         t6, gp, a4
                  auipc        a1, 840279
                  auipc        s3, 375595
                  addw         ra, s0, t1
                  or           zero, tp, a4
                  slti         gp, s3, 722
                  subw         s5, a3, s2
                  srl          a0, ra, s4
                  remu         sp, a6, a0
                  slt          s7, a4, s0
                  mulh         t3, gp, s1
                  mulhsu       a2, s10, a0
                  remu         t6, t4, a0
                  mulhsu       gp, a7, s1
                  sll          s2, s3, sp
                  auipc        a5, 543548
                  remuw        s5, s7, t2
                  mulw         a0, s8, t5
                  add          a6, a1, t6
                  andi         s4, a3, -730
                  sub          gp, s9, s6
                  slliw        a1, ra, 4
                  addi         a7, a1, -48
                  auipc        t1, 497346
                  lui          a0, 34395
                  andi         s6, t1, 1957
                  subw         s8, s0, s3
                  sra          zero, a5, s8
                  divuw        s6, a4, t2
                  mulhsu       s8, sp, s9
                  sraiw        a2, s4, 2
                  slliw        t6, s1, 27
                  divw         sp, s11, a6
                  srli         tp, a6, 25
                  div          zero, s11, a2
                  lui          s8, 422713
                  remu         s8, tp, a0
                  auipc        t2, 349759
                  slli         t0, s6, 0
                  slt          t0, t2, zero
                  addw         a7, t4, t1
                  divu         s2, t6, zero
                  sll          gp, t0, s0
                  or           s8, s8, s0
                  slt          s8, a6, ra
                  sub          t6, a1, t1
                  lui          s3, 569226
                  addiw        a3, a7, 1778
                  sub          a0, s4, s10
                  sll          s2, ra, ra
                  lui          tp, 32470
                  sraw         a0, s11, tp
                  slt          s10, sp, gp
                  mul          s7, a4, t0
                  srl          zero, a7, s9
                  slti         gp, s10, -692
                  ori          s7, t1, 1426
                  srai         s6, s8, 38
                  sllw         a0, s6, zero
                  mul          gp, zero, a4
                  sllw         t1, s6, a7
                  remu         s11, s8, tp
                  slli         a3, a4, 16
                  add          ra, s10, s5
                  srli         a2, s0, 3
                  xori         s10, t1, -1596
                  auipc        t1, 832713
                  xor          tp, s10, t6
                  xor          s4, a6, zero
                  mul          a1, s9, s9
                  slti         s3, s9, -450
                  divu         a0, t2, t2
                  slti         s4, s11, -629
                  mulhsu       tp, s0, s5
                  remw         s0, s2, a5
                  mulh         a5, t1, s5
                  sra          s8, s3, a3
                  lui          s4, 153139
                  sraiw        s0, t3, 12
                  mulhu        s8, s11, t4
                  slt          t1, a4, s1
                  mulw         t3, a0, a6
                  mulhu        s7, t0, a5
                  srliw        a1, a6, 5
                  xori         s8, s9, -754
                  srli         a2, s6, 24
                  sltu         t6, zero, s5
                  sltu         s7, a0, t5
                  divw         s7, tp, t3
                  divw         a7, s11, a7
                  addw         a1, t2, a1
                  and          tp, s7, a7
                  srai         s3, a1, 63
                  mul          a4, s6, t0
                  subw         a6, zero, t6
                  sra          t2, tp, t2
                  mulhsu       a4, s0, tp
                  sraw         t2, s7, s3
                  sltu         a4, s11, t5
                  xor          a0, s3, t3
                  auipc        s10, 472178
                  remu         s5, s9, s7
                  slt          s1, t3, zero
                  mulw         gp, sp, t5
                  srli         a6, t4, 16
                  srl          t0, t5, tp
                  mulhu        a5, s4, a6
                  sub          a3, t5, s9
                  div          s5, a1, tp
                  add          s11, s9, a0
                  or           ra, s9, a7
                  srli         a4, s4, 60
                  sraw         s11, s1, tp
                  divw         s3, s8, a7
                  addi         t2, s5, -545
                  sraw         s5, t6, s9
                  auipc        t3, 1015648
                  addw         a4, t4, t2
                  addw         t6, sp, a4
                  srliw        s6, s6, 21
                  divw         s3, s1, s10
                  xor          zero, a4, s4
                  and          gp, s1, ra
                  add          a5, s4, a1
                  subw         tp, gp, t0
                  andi         a5, tp, -1727
                  sltiu        s3, s3, -63
                  sll          a3, gp, s0
                  srai         gp, s3, 5
                  lui          t2, 240185
                  mulh         s1, sp, a1
                  ori          s4, s3, 533
                  ori          s6, s8, 598
                  sub          s10, a4, a6
                  divu         ra, s5, s3
                  srlw         s1, a7, t0
                  div          a5, a5, t2
                  sllw         s6, a6, a6
                  and          t3, a3, s3
                  divu         a5, t5, s8
                  nop
                  remu         gp, t5, s9
                  subw         s7, s2, gp
                  remu         ra, a1, t6
                  srliw        a5, t4, 21
                  divuw        t3, s9, s7
                  ori          s1, s0, 907
                  add          t3, a0, t0
                  addi         a0, a1, 1453
                  mul          s2, ra, s8
                  sltiu        a7, s9, 1344
                  mulhu        a2, gp, t5
                  lui          a1, 689132
                  divu         t0, s9, s3
                  mulh         a4, gp, s9
                  sraiw        s8, a2, 12
                  ori          a0, t3, -684
                  sub          s8, a0, s4
                  mulhsu       t1, a4, t4
                  divw         a2, t0, s11
                  slt          a3, a5, s2
                  rem          zero, a6, gp
                  addi         s8, s4, -1915
                  add          s7, t6, a2
                  rem          t0, t1, gp
                  mulw         s5, s11, s6
                  sltu         s10, sp, s1
                  sltiu        gp, tp, 43
                  add          s4, t1, s6
                  sra          a2, t2, a5
                  divu         zero, s6, t0
                  mul          s8, a0, s2
                  xor          gp, s8, t6
                  divw         a0, zero, a0
                  addiw        s11, ra, 403
                  auipc        t0, 340069
                  mulw         s8, a3, a4
                  srliw        s4, s3, 18
                  mulw         s5, a1, a2
                  add          s4, s7, gp
                  slti         s6, t6, 213
                  auipc        t2, 998536
                  slliw        s5, s0, 1
                  add          a2, s10, s2
                  divw         zero, a1, tp
                  slt          s4, t3, t6
                  auipc        a3, 804387
                  mulhsu       ra, t4, a7
                  add          a5, s3, sp
                  add          a1, a6, a2
                  remw         s10, t6, a5
                  sll          gp, zero, sp
                  nop
                  xori         s8, s6, -1479
                  or           gp, s9, sp
                  sraiw        s5, s1, 3
                  srli         gp, tp, 5
                  addi         a1, a5, -54
                  divu         s1, a0, tp
                  div          t1, s8, t6
                  srai         ra, a5, 30
                  mulw         s4, s11, t4
                  sra          a7, t1, s7
                  sll          t2, zero, gp
                  addiw        s5, s7, -1212
                  and          a7, a7, a3
                  srai         a4, a6, 30
                  slliw        a6, t6, 31
                  rem          a2, a1, s11
                  divw         a1, s8, s1
                  srl          s3, s11, s9
                  add          s0, t4, a5
                  mulh         a7, ra, s3
                  subw         a0, s5, s5
                  andi         s1, a0, 278
                  div          ra, s2, ra
                  srliw        sp, s5, 14
                  slti         s10, zero, -1815
                  remu         a4, s10, s4
                  xori         ra, a1, 870
                  mulh         a5, a5, t4
                  ori          s1, s9, -350
                  lui          a6, 915763
                  mulw         a3, a4, a7
                  mulw         sp, s9, s4
                  remw         a5, zero, s3
                  srli         s5, a2, 7
                  sllw         a0, s5, s3
                  slli         s7, s4, 35
                  ori          a3, s4, -1288
                  nop
                  slliw        s3, a4, 14
                  addiw        t6, t4, 1099
                  slti         s2, a7, -191
                  mulw         a4, a7, a7
                  sraiw        zero, s4, 30
                  addiw        s3, t6, 1016
                  rem          ra, zero, ra
                  mulhsu       s2, s3, t3
                  sltiu        a3, s5, -184
                  srai         ra, t6, 38
                  mulhsu       s2, s10, s7
                  addi         gp, t3, 396
                  mulhsu       gp, s7, a1
                  remu         a2, a7, sp
                  mulhu        s5, a5, s3
                  add          s2, s5, a4
                  srl          s0, a5, tp
                  srai         a7, t3, 48
                  divw         t3, t1, t0
                  div          s1, ra, t4
                  sub          t6, s3, a1
                  and          sp, a2, zero
                  mulhu        a4, s5, t6
                  div          a7, t0, s8
                  sllw         s1, s2, s8
                  or           t6, sp, a3
                  slti         a0, a2, -1994
                  mulhsu       a4, t3, a2
                  addi         a6, gp, 313
                  divu         s0, a7, tp
                  rem          s10, t5, a3
                  divw         a6, a4, a4
                  nop
                  sltiu        s11, zero, -964
                  xori         s10, s7, 1709
                  sll          s8, a6, t1
                  sll          s3, a6, s10
                  srlw         s6, a6, a7
                  mulhu        a1, ra, a5
                  sra          t0, t2, s2
                  mul          t6, s11, s10
                  srliw        s10, t0, 25
                  slliw        t2, t6, 30
                  sltu         s3, t5, t0
                  slt          a6, t1, t1
                  addi         t6, tp, -295
                  auipc        s3, 809338
                  slli         s11, s2, 0
                  mulw         gp, a5, s0
                  slti         t1, a4, 1476
                  ori          t0, s4, -768
                  rem          s1, s5, s7
                  sra          a3, t6, s3
                  auipc        t0, 272093
                  and          s3, a5, s0
                  slti         zero, a5, -842
                  xori         t6, ra, 901
                  remu         s8, s3, a3
                  sllw         a3, s4, s5
                  mul          t0, s3, a1
                  divuw        t1, t5, s4
                  slli         a3, s5, 63
                  addi         s8, t5, 1399
                  sraw         a0, a5, s2
                  srliw        s2, t5, 9
                  sltiu        a6, s5, 353
                  mulhsu       a2, s4, t1
                  andi         a0, ra, -1178
                  divw         a3, s3, s6
                  remu         t2, s6, s6
                  auipc        a2, 271325
                  divu         gp, s6, ra
                  sra          sp, gp, a1
                  srli         t0, a2, 62
                  srli         s0, s10, 60
                  mulh         sp, t3, a1
                  sraiw        s7, s10, 11
                  slti         t1, sp, 902
                  add          a5, zero, s4
                  srai         s8, a4, 45
                  andi         tp, s3, -1901
                  sltiu        a6, a1, 3
                  addw         a5, gp, gp
                  addi         a2, t0, 694
                  mulh         s8, a0, gp
                  sll          sp, s5, s3
                  lui          a0, 853329
                  remu         s1, s4, s7
                  srai         t6, s3, 52
                  srl          a2, a0, t2
                  srliw        a2, s0, 27
                  or           a1, a7, sp
                  lui          s6, 811508
                  srl          s0, s7, a5
                  srl          t6, a5, a0
                  srlw         t2, s9, tp
                  addw         t2, s10, t0
                  nop
                  divuw        gp, s0, t4
                  sraw         t3, t2, a2
                  add          s7, s8, s4
                  xori         s4, a6, -587
                  add          s1, a1, a3
                  addw         a5, t4, s6
                  mulhsu       a5, gp, s7
                  xori         a2, s7, 474
                  rem          a7, sp, s7
                  xori         a6, t2, 959
                  remw         t1, t5, a6
                  sltiu        gp, s1, -1028
                  sltu         s2, s8, a1
                  divuw        tp, a3, s11
                  slt          a7, t1, t4
                  or           s5, s8, gp
                  sll          s3, t4, ra
                  remu         gp, ra, s3
                  mulh         a1, sp, a7
                  nop
                  divw         s10, ra, a7
                  or           s1, a2, a3
                  divw         a5, s5, s8
                  and          s6, s3, t4
                  mulh         s7, t2, s3
                  mulhu        t0, s0, s0
                  remu         a0, s2, s4
                  addw         t3, a7, a4
                  sll          s8, zero, t6
                  nop
                  addiw        tp, s1, 517
                  mulw         ra, s7, a4
                  rem          s6, t6, t2
                  srli         gp, t5, 33
                  sub          a5, s2, t6
                  addiw        t6, s10, 377
                  addiw        s5, tp, 1081
                  srl          a0, zero, a7
                  addiw        s6, s5, 1551
                  remuw        s8, s7, a5
                  srl          s3, t3, a5
                  remuw        a4, a2, s10
                  slt          t6, t4, t4
                  sraw         a3, gp, a0
                  xori         t1, s0, 560
                  andi         a0, s10, 663
                  mulw         a4, t2, a5
                  slli         ra, s2, 39
                  srai         s4, zero, 0
                  lui          s4, 907894
                  xori         a4, s2, -500
                  auipc        a0, 279003
                  remu         a4, s5, gp
                  addiw        s5, a1, 1708
                  slt          s5, t5, s0
                  mul          s11, a7, a6
                  remw         s3, s3, a5
                  divu         s11, t2, t1
                  and          a7, a1, a6
                  sllw         s1, s0, gp
                  addw         t6, t6, t4
                  rem          a1, t2, a1
                  sll          s8, s3, s5
                  add          a1, a5, s7
                  xor          a3, t5, s6
                  slti         s5, a1, -1009
                  mulh         zero, s10, s4
                  sltu         s1, t0, t4
                  srlw         s7, t4, zero
                  mulh         s5, t5, s8
                  srli         t6, a1, 29
                  slt          t0, ra, sp
                  slli         t1, s0, 41
                  remu         a4, s10, s3
                  xori         t0, t4, 377
                  slli         s7, a4, 14
                  remu         a7, ra, a0
                  mulw         t2, s3, tp
                  divw         a6, t4, s5
                  sraiw        sp, s3, 13
                  auipc        t3, 573107
                  divu         s10, a6, t5
                  addw         a0, s0, a2
                  rem          a6, zero, tp
                  divw         t3, t4, t1
                  sub          s7, tp, s11
                  add          tp, t3, t0
                  srlw         a4, a2, s7
                  mulh         s8, a4, t1
                  sltu         s6, t3, s9
                  addw         s7, t0, t5
                  sll          s2, s6, s6
                  addw         s1, a2, ra
                  mul          s11, t5, a3
                  srliw        sp, t6, 7
                  slli         sp, a0, 16
                  remuw        a7, t4, s4
                  xor          tp, t6, zero
                  or           s10, t1, s7
                  sll          tp, a7, t5
                  mulh         a7, s0, a2
                  srai         tp, t0, 49
                  nop
                  sltiu        s10, t2, 22
                  divw         a3, s11, ra
                  div          a2, a5, t1
                  and          a3, a7, a0
                  divuw        a5, t0, a3
                  sub          s3, s8, sp
                  and          s4, a5, s8
                  addi         s7, t6, -399
                  xori         s3, a4, -1921
                  slli         a5, t0, 59
                  remw         s1, a4, a1
                  sllw         ra, ra, tp
                  addw         a1, a7, gp
                  slti         a0, t2, 1197
                  rem          t3, sp, a7
                  sltu         a6, tp, zero
                  slti         t2, s8, -293
                  add          a2, s3, s3
                  divu         s2, s1, a7
                  addiw        s4, zero, -1208
                  srliw        s6, zero, 22
                  slli         a5, gp, 28
                  remu         s10, t4, zero
                  addiw        a4, a7, 1882
                  mulhu        a1, t0, t0
                  subw         s1, a5, t3
                  slli         s3, s9, 20
                  divw         s4, ra, s3
                  sllw         sp, s1, t6
                  divuw        s5, t5, sp
                  rem          s6, s0, t0
                  remw         t1, a4, s11
                  slt          t6, t1, gp
                  addi         s7, s0, -518
                  sllw         t1, a3, s11
                  sraw         s2, ra, tp
                  sltiu        zero, s7, -101
                  div          a0, t4, a0
                  divu         s1, s8, t2
                  addi         t6, s11, -1244
                  addiw        t2, a4, 659
                  ori          s3, t6, 266
                  slliw        a7, s8, 28
                  addw         s5, s7, s3
                  lui          a3, 973837
                  sub          s7, s9, s4
                  nop
                  slti         s7, a0, -1682
                  srl          a5, a5, a5
                  sltu         s3, a4, a6
                  mulhu        s4, a0, tp
                  rem          s2, sp, s7
                  divuw        s0, s0, sp
                  addiw        ra, zero, -1216
                  remu         s10, t1, s7
                  subw         a5, sp, ra
                  srlw         a1, s2, s11
                  srliw        a3, t0, 1
                  remuw        t2, a5, a3
                  sraw         s7, s10, t4
                  mul          t3, a4, s11
                  xor          a3, s2, t5
                  sll          zero, t2, s5
                  rem          t2, t5, s2
                  mul          t2, a7, s11
                  sub          ra, t1, t2
                  sra          a1, s11, s6
                  and          a4, s10, t2
                  sltiu        t3, s1, 219
                  mulhsu       t0, zero, t5
                  lui          t1, 497560
                  mulw         s7, a5, s6
                  mulhu        s1, a0, s3
                  andi         a0, s2, 1518
                  mulw         t0, s9, a0
                  nop
                  add          s1, t3, s7
                  divw         s5, s9, a7
                  mul          a2, s0, a5
                  slli         s4, t5, 32
                  mulhsu       a3, t3, zero
                  and          a2, s3, sp
                  andi         a3, s3, -747
                  srl          s10, t6, t3
                  slt          a2, s1, tp
                  sllw         a6, s0, sp
                  sltiu        a1, a0, 1763
                  addw         s3, t1, s4
                  srlw         a4, s7, s6
                  rem          a3, s9, a4
                  addi         t3, t0, -1981
                  slt          s4, t1, t0
                  rem          a0, t0, t6
                  andi         s8, s9, -253
                  srl          s11, a1, a0
                  divuw        a4, s4, s11
                  ori          a2, zero, -1061
                  sra          t2, a4, s8
                  auipc        a7, 117835
                  and          a4, a7, t5
                  sltu         s10, t4, s8
                  slli         gp, a3, 63
                  ori          a3, s4, 326
                  rem          s4, a1, a3
                  srl          s3, a0, t6
                  remuw        a5, s2, s3
                  andi         s11, s7, 107
                  slti         s1, zero, 396
                  slti         a2, s9, 512
                  srai         s8, sp, 33
                  divuw        t2, a2, gp
                  srli         s5, a1, 38
                  remuw        t6, s0, s3
                  divuw        t0, a0, s2
                  srlw         ra, a4, a3
                  sraw         tp, t2, s0
                  or           a7, s10, sp
                  srliw        s1, s3, 2
                  slli         a7, t6, 61
                  nop
                  sll          t0, a0, s8
                  sltu         a6, a0, a7
                  divw         s10, s0, t5
                  mulhu        s1, a3, s11
                  sllw         a5, tp, tp
                  sll          s10, t6, s0
                  remu         a3, t2, gp
                  add          a3, a7, a0
                  remu         t3, s3, tp
                  xor          s11, a4, a7
                  mulhu        s11, a6, s5
                  rem          s11, ra, s5
                  addiw        t1, gp, 1979
                  slliw        t2, t3, 2
                  addiw        t1, a2, -874
                  andi         gp, s10, -406
                  slliw        s11, a7, 21
                  mulhsu       s3, t3, a3
                  andi         tp, s4, 1421
                  divuw        s6, t1, t3
                  subw         a7, a3, t0
                  subw         gp, sp, s8
                  mul          a7, t1, s7
                  mulw         s7, s6, ra
                  mulw         t0, a2, a0
                  addw         t1, s6, s7
                  srai         t6, a6, 33
                  sll          s11, a0, s5
                  nop
                  nop
                  sra          s0, s0, gp
                  slti         sp, s0, 117
                  ori          s0, gp, -284
                  srl          t6, t3, s0
                  add          s2, s4, sp
                  srlw         s3, t1, t5
                  or           a6, s1, a1
                  andi         s2, a3, 1319
                  xor          a5, s7, t4
                  sltu         a7, s0, sp
                  lui          s2, 15355
                  ori          s11, a1, 1146
                  slliw        gp, a6, 25
                  sllw         a4, s11, s3
                  sll          tp, zero, a2
                  sll          a2, a5, ra
                  rem          a4, a7, zero
                  rem          s6, t1, t0
                  addiw        sp, a0, -651
                  subw         ra, a2, s7
                  subw         a7, s7, t2
                  div          s6, a0, zero
                  mulhu        s2, s7, a5
                  mulw         a5, s0, t0
                  mulw         t6, s11, a2
                  sraiw        s8, a6, 5
                  sltu         a2, a0, t4
                  addiw        s3, ra, -767
                  lui          a5, 388677
                  subw         a3, s5, s5
                  or           s11, s8, t6
                  sltu         t0, t5, a5
                  div          ra, s9, a5
                  xori         a6, s1, 302
                  srl          t2, s11, ra
                  sltiu        zero, a0, -1169
                  div          t2, a5, t4
                  sllw         zero, s8, s9
                  addiw        s7, s2, -1748
                  slli         s4, ra, 25
                  addiw        s10, s9, 21
                  remuw        s4, t1, s2
                  divu         a6, tp, t0
                  sraw         tp, s9, t1
                  addi         t6, s9, -715
                  auipc        s6, 892117
                  auipc        s11, 327691
                  lui          s11, 819637
                  addw         s0, t6, t6
                  sra          s5, a1, a6
                  mulhu        a1, s8, ra
                  divw         s1, zero, s11
                  sltiu        a5, s7, -850
                  sll          a3, gp, a0
                  mul          s0, t4, a2
                  srliw        s2, a2, 24
                  mul          s5, zero, tp
                  sra          t6, s1, gp
                  addiw        s5, a1, -936
                  srai         s5, t1, 47
                  mulw         t0, t6, a7
                  divu         t1, t3, zero
                  sltiu        t3, s6, 1074
                  lui          t6, 146964
                  addi         s4, a1, -947
                  xor          sp, s1, a0
                  sra          a7, s1, zero
                  srai         a7, a7, 13
                  auipc        s2, 129528
                  slli         a1, s2, 16
                  xori         a3, zero, -1898
                  add          t0, s5, s1
                  sub          s6, a4, t0
                  mulhu        a1, ra, t1
                  sltiu        tp, s11, -1123
                  mulh         s10, a5, a2
                  andi         t3, s8, -1987
                  mulh         s3, s2, a5
                  slti         s11, s11, -945
                  mul          ra, t2, a6
                  remw         t1, s1, s0
                  addi         sp, t6, -1875
                  remw         t2, sp, s7
                  divw         s10, s9, ra
                  or           t0, a4, tp
                  div          s0, a7, a0
                  xori         s2, gp, 1649
                  addw         a4, a7, t6
                  divu         s10, tp, t3
                  remu         s10, s7, sp
                  addiw        t3, a6, -713
                  sraw         a1, s2, sp
                  add          gp, gp, t0
                  xori         a3, s2, -411
                  divu         s8, s0, s8
                  xor          s1, a4, a1
                  divuw        t6, t2, a2
                  addi         a3, a2, -1709
                  divuw        s5, t6, a3
                  divu         zero, s8, a3
                  slli         a0, t6, 54
                  xor          s3, a6, t4
                  or           t6, s10, s9
                  sraw         s5, zero, s1
                  mul          sp, a2, a6
                  srlw         a5, a6, a4
                  sllw         s4, a3, t0
                  mulw         s1, s0, gp
                  srl          zero, t1, a0
                  lui          a3, 431964
                  subw         a2, a0, a0
                  mulh         a4, t4, zero
                  mulw         t3, a6, s8
                  addi         zero, gp, 1004
                  srli         ra, t5, 31
                  subw         s3, tp, a2
                  srlw         s4, s4, a1
                  rem          a4, a6, s5
                  div          s0, a4, s1
                  sub          a2, s7, a0
                  slli         s8, s0, 46
                  divuw        a6, a0, t1
                  and          zero, a6, a2
                  subw         a3, s8, s2
                  mulw         a2, s2, t2
                  sltu         t6, t1, t6
                  or           s6, a2, a0
                  mulhu        s7, a6, s8
                  mulhsu       t1, a7, a3
                  ori          gp, a1, -643
                  and          a6, s6, t0
                  andi         t6, s10, 1599
                  sraiw        a1, tp, 2
                  rem          sp, s9, ra
                  divuw        s3, a4, s2
                  slti         ra, s7, -987
                  slti         t0, a2, -1047
                  remw         gp, s7, a5
                  srai         t3, s4, 12
                  sltiu        s3, s5, -1928
                  sllw         s5, tp, t4
                  divw         t0, t5, a1
                  slt          t1, t3, a1
                  div          t2, sp, s11
                  xori         tp, s4, 922
                  divw         a0, a3, a6
                  or           a7, sp, s1
                  remu         a5, s7, t4
                  xor          t3, s11, s0
                  divw         s2, s6, s8
                  sub          s11, t5, a7
                  or           s7, s5, t1
                  sub          sp, t6, s6
                  sraiw        a5, s1, 18
                  auipc        s1, 404850
                  srai         t6, s10, 12
                  srli         gp, s3, 49
                  subw         s7, a2, s5
                  div          s5, t5, zero
                  sraiw        ra, t2, 17
                  addw         t6, tp, s6
                  srlw         a6, s1, t3
                  addw         gp, t6, s5
                  slli         s10, t5, 17
                  mulhu        sp, ra, t4
                  remu         gp, a2, a5
                  mulhsu       t3, s9, tp
                  srlw         s7, t2, t4
                  add          a1, a0, s11
                  sub          s1, a2, s0
                  sraw         ra, s4, sp
                  divw         s5, a5, tp
                  sltu         s0, s7, s1
                  add          ra, t6, zero
                  sltiu        a4, s0, 468
                  slli         s2, a5, 37
                  auipc        a6, 310786
                  sll          t2, s7, gp
                  srli         a6, t1, 51
                  srl          t6, ra, s1
                  subw         t6, s3, a3
                  remuw        s2, t0, gp
                  slti         a1, s11, 488
                  addw         s4, t5, s8
                  rem          t3, s2, tp
                  slli         s1, s8, 39
                  sltu         a1, t3, s7
                  rem          gp, sp, a7
                  sltu         a1, a0, s5
                  ori          s10, s8, 784
                  srlw         s7, t3, zero
                  srlw         a4, s8, s6
                  lui          t2, 125939
                  and          s5, s2, s10
                  divu         a3, s0, zero
                  rem          a3, t5, s3
                  subw         s10, s4, s10
                  sltiu        s4, t6, 347
                  remu         s3, a3, s4
                  ori          a2, s11, -168
                  remu         s3, t2, s4
                  ori          tp, s8, 2008
                  divuw        s1, s0, s9
                  or           a5, a7, a0
                  or           a4, s5, t3
                  mulhu        a5, a7, t1
                  mul          s3, s7, t2
                  remu         ra, s5, sp
                  sraw         s2, s2, a3
                  sltiu        t2, t1, -658
                  slti         a1, a3, 770
                  subw         t3, a4, s4
                  sra          a6, a7, a6
                  add          zero, s1, a4
                  divu         s8, s10, a5
                  sllw         t1, s3, a1
                  or           a7, a6, tp
                  addiw        s0, a5, -1692
                  srli         a2, t3, 7
                  remw         t3, s8, s0
                  divu         t1, s4, t2
                  slti         a4, s5, -1989
                  sraiw        s11, t6, 7
                  sra          sp, a4, t1
                  xor          t1, s2, a6
                  mulh         ra, a1, t3
                  sllw         s6, a0, ra
                  mulh         t0, s7, a5
                  srli         a4, s4, 26
                  auipc        a7, 719911
                  sltiu        s3, s3, -1753
                  srli         tp, t3, 51
                  slti         s10, s8, 221
                  sraw         s10, ra, t5
                  srl          s4, a5, t0
                  andi         s8, s4, -1799
                  sltu         s6, t6, s8
                  srliw        s11, a3, 13
                  mul          s5, s2, t4
                  sll          s6, a5, s3
                  divw         s3, s1, t4
                  xori         s7, a1, -542
                  mulhsu       a0, t3, s9
                  rem          s1, sp, t1
                  auipc        t6, 907825
                  andi         t6, t6, -1434
                  sub          s1, a3, s5
                  auipc        s10, 181537
                  slliw        a4, s1, 20
                  ori          s7, sp, -1683
                  remu         s5, sp, a4
                  andi         s0, a0, 414
                  nop
                  srai         a1, a4, 35
                  subw         s1, t3, s7
                  mulw         a0, t2, a5
                  srliw        s4, t1, 29
                  and          t6, t6, s9
                  srlw         a0, a7, a6
                  sra          s1, a1, gp
                  mulhu        t0, a5, a7
                  slti         s1, s3, 301
                  mul          a6, a1, a0
                  slli         t0, t6, 50
                  srl          t3, zero, t4
                  slti         a6, sp, -784
                  div          a2, s9, a7
                  divw         sp, a6, zero
                  slliw        s10, t3, 20
                  remu         t3, s3, zero
                  srlw         a1, s2, s5
                  mulw         ra, s8, t2
                  lui          a6, 735358
                  divu         s6, a7, s10
                  sraiw        a4, ra, 20
                  slt          zero, s8, t5
                  xor          zero, t2, s6
                  slti         s5, s0, -1424
                  add          gp, s3, s6
                  addiw        a2, a6, -756
                  div          s1, a7, a1
                  divw         a1, t2, s11
                  andi         a6, t4, 1045
                  mul          a3, t0, ra
                  sltiu        a6, sp, 489
                  sraiw        a7, s1, 11
                  addiw        a0, tp, 1082
                  mulw         tp, s3, a2
                  andi         a1, s4, 955
                  divw         t6, s3, t5
                  divw         a4, t1, t1
                  rem          s10, ra, a0
                  div          gp, tp, t4
                  remuw        s8, s4, a0
                  rem          a4, s8, s5
                  rem          s4, t5, s7
                  lui          tp, 536036
                  xori         s0, a0, -1441
                  or           zero, s8, s10
                  mul          s1, a6, a7
                  ori          a3, s1, 1633
                  srl          t3, a4, t2
                  div          t3, s10, gp
                  mulhu        s6, s0, gp
                  srai         t2, s9, 39
                  div          s0, s5, tp
                  srl          t3, t5, s7
                  and          s11, s6, s8
                  mulhsu       a4, a3, a0
                  srai         s2, ra, 14
                  srlw         s1, s0, s11
                  and          a1, t6, a5
                  divw         a3, a3, s1
                  sub          s5, t5, a2
                  slli         a6, t0, 51
                  xori         s7, t1, 1808
                  sllw         s4, t2, s10
                  divu         s3, a4, a5
                  slli         s3, a3, 2
                  add          a2, sp, s4
                  sub          s7, tp, a7
                  add          s1, t3, s1
                  sltiu        t3, t3, 104
                  sraiw        s1, a2, 28
                  divuw        t3, a4, t4
                  sll          sp, zero, s1
                  ori          t6, s8, 1132
                  sraw         s1, a2, sp
                  srai         tp, a3, 26
                  xori         s7, s10, -953
                  srliw        s2, tp, 3
                  auipc        s5, 873571
                  sra          s6, s0, tp
                  slliw        s1, s9, 7
                  sra          t6, tp, t5
                  lui          a2, 844685
                  remw         a5, a5, ra
                  sub          s5, s11, t2
                  ori          a4, a5, -1638
                  xori         s5, s9, -1266
                  slli         s6, s10, 36
                  auipc        a4, 530410
                  remu         a2, s1, t3
                  srli         s5, a6, 18
                  div          t1, ra, s4
                  slliw        s6, s7, 16
                  mul          a7, zero, a0
                  auipc        sp, 996975
                  sltu         ra, t3, s8
                  lui          s8, 691048
                  slt          t3, t3, s5
                  sraw         a0, t1, s2
                  srlw         t6, s7, t3
                  sllw         s5, gp, sp
                  auipc        a4, 853102
                  slti         zero, s2, 876
                  remu         a4, t1, s4
                  srliw        a5, s3, 8
                  auipc        t6, 347276
                  mul          s6, a3, sp
                  nop
                  divuw        t6, gp, t0
                  mulhu        sp, s10, a3
                  mul          t6, a4, sp
                  and          a2, sp, a7
                  auipc        t6, 918651
                  auipc        a0, 683220
                  andi         t6, a2, -953
                  andi         a0, tp, -1053
                  srliw        s6, s10, 28
                  mulh         t2, t1, s4
                  divu         a6, s4, t0
                  divu         s3, a4, s3
                  lui          s5, 968380
                  addiw        a0, t3, 821
                  sll          s10, s5, zero
                  divw         t0, a3, a0
                  andi         s2, s5, -487
                  nop
                  add          a0, a0, a5
                  divw         a1, s6, s9
                  xor          a0, s2, t4
                  sraiw        s11, a4, 27
                  slli         t0, s5, 57
                  ori          a4, s10, -1842
                  divw         t1, ra, t5
                  add          a7, a3, gp
                  slliw        a6, s9, 4
                  sraiw        t6, a7, 9
                  remuw        a2, s10, t5
                  sll          t3, t5, a3
                  sll          a1, s7, a6
                  addiw        a0, a5, 1651
                  slt          a6, s4, t0
                  slti         a0, a3, -1974
                  ori          s10, a5, 838
                  divw         t3, tp, s5
                  sllw         a6, t3, s9
                  divu         a0, a5, s10
                  sra          s3, a1, s10
                  sra          tp, t6, s8
                  srlw         t2, s4, t4
                  remuw        s3, a1, a3
                  rem          t6, sp, s11
                  srlw         t0, sp, s11
                  srlw         sp, s4, gp
                  xori         t0, t3, 1379
                  divuw        s3, t0, a1
                  andi         t3, a7, 238
                  srlw         tp, s1, s7
                  lui          a7, 971401
                  sraiw        t0, s8, 20
                  sllw         a7, t2, t5
                  divuw        s2, a0, zero
                  mulw         s3, t1, a0
                  div          tp, a6, s1
                  nop
                  nop
                  lui          s3, 818101
                  subw         s6, a0, s4
                  remu         sp, zero, t1
                  slti         s7, t0, 1073
                  and          s8, s9, a0
                  slli         t3, s10, 14
                  or           a7, gp, zero
                  sraiw        sp, s6, 6
                  divw         s6, s2, a0
                  divu         s10, s4, a0
                  mulhsu       a0, t1, t4
                  remw         a4, a6, s8
                  divw         s5, t3, zero
                  mulhsu       a0, s9, tp
                  slli         a4, a7, 23
                  add          a6, a0, t0
                  addw         a0, s11, a3
                  remuw        t6, s3, s5
                  divu         gp, a2, a2
                  sll          a0, s0, a6
                  addiw        s2, a3, 1415
                  srliw        t2, tp, 1
                  mulhsu       gp, s6, s10
                  sltu         a4, a5, t1
                  rem          t0, s2, s7
                  sraiw        a6, s5, 28
                  mulhu        t0, s8, t1
                  auipc        s5, 494838
                  sub          a6, t1, s0
                  and          a3, s8, sp
                  sraiw        a7, s5, 5
                  addiw        s7, a0, 770
                  or           a7, a1, ra
                  sra          s1, a4, a4
                  slti         a0, s8, -1487
                  ori          t2, sp, 1888
                  add          t1, t5, t2
                  addw         s1, s7, a0
                  sra          a4, t1, s5
                  remuw        tp, s0, t1
                  xori         a1, tp, 1947
                  remuw        s0, ra, s11
                  sraw         t2, t1, s3
                  divu         s5, a6, a7
                  remuw        t6, s5, zero
                  addi         t6, t0, -1792
                  slt          gp, t5, a5
                  mulw         t6, a1, gp
                  nop
                  add          sp, s10, t2
                  sltu         tp, a5, a1
                  sllw         s8, s2, s6
                  sraw         t2, gp, t3
                  addw         s2, s11, a1
                  srlw         ra, t1, s8
                  mulw         s3, a4, a7
                  divuw        a4, t4, sp
                  mulw         a6, s11, a3
                  or           s10, s7, t6
                  mulhu        s6, s11, t4
                  slli         a5, s0, 19
                  divu         t6, s7, t2
                  add          t2, s5, tp
                  srl          sp, s3, s11
                  mul          gp, s2, t0
                  srl          s7, a2, s5
                  divw         sp, a1, t5
                  xor          a7, a7, t5
                  andi         sp, s0, 592
                  mulhsu       a7, t1, zero
                  slliw        t1, a6, 19
                  divw         a4, a6, s7
                  divuw        s11, t6, s1
                  lui          s8, 1034795
                  mulhu        a4, t5, a1
                  ori          s2, s0, 1856
                  sll          gp, a2, a2
                  mulhsu       s0, s0, a2
                  addi         s6, a3, -1051
                  mulhsu       s6, a6, a3
                  sltu         t6, t5, t0
                  addi         s10, a1, -1440
                  auipc        ra, 315755
                  xori         s11, t1, -1714
                  slti         gp, t2, -1296
                  srlw         tp, a3, s1
                  sraw         t2, t0, sp
                  mulh         a6, ra, s6
                  sll          a0, s4, t1
                  addiw        a0, s10, -254
                  mulhsu       t6, s4, a5
                  sltu         a7, a1, a0
                  auipc        s2, 305496
                  srli         s10, t4, 28
                  sltiu        s1, s1, -644
                  mulhsu       gp, a0, zero
                  addw         s8, s6, zero
                  srli         s2, t6, 47
                  sraw         a2, zero, a3
                  sraiw        t3, s11, 0
                  mulhu        s10, a5, gp
                  sraiw        zero, t0, 29
                  srai         s0, s3, 27
                  srli         a2, a7, 5
                  divu         a4, s7, a0
                  add          s3, t5, a5
                  add          gp, zero, s10
                  mulw         t3, t6, a2
                  div          t6, t5, t6
                  or           s6, s8, a3
                  sub          s3, zero, zero
                  addw         a1, s9, tp
                  add          t2, a2, s9
                  slli         zero, t0, 15
                  mul          s11, tp, t0
                  mulhsu       t6, s5, s11
                  srai         ra, s4, 46
                  srlw         a2, s5, a1
                  srliw        s10, t5, 27
                  addw         a3, s10, s9
                  mulhsu       t2, s3, a1
                  andi         s4, gp, -1312
                  srli         t6, s1, 14
                  addiw        s4, s9, -1303
                  addi         s11, s11, -1047
                  srlw         gp, t2, s4
                  slt          s2, s4, a5
                  srli         a1, a2, 36
                  srlw         ra, s8, a4
                  addw         s2, s10, s10
                  remu         s5, t1, t3
                  mulw         s7, s3, s8
                  addi         sp, a3, -186
                  divuw        s10, t3, sp
                  nop
                  ori          zero, a7, 540
                  subw         s6, s10, s11
                  and          s1, t0, s9
                  remuw        tp, a3, s4
                  slliw        t2, a4, 4
                  sltiu        t2, a1, -1276
                  addw         s4, s6, tp
                  lui          zero, 263194
                  mulw         a7, sp, s0
                  sltiu        t1, sp, -1839
                  srliw        a7, a7, 14
                  nop
                  rem          s4, t0, t2
                  subw         sp, t6, s7
                  sll          s1, a0, a6
                  and          s5, ra, t1
                  rem          a0, t4, t5
                  add          s11, ra, a3
                  slliw        a6, a3, 30
                  slt          a4, s9, t4
                  addiw        s1, t6, -184
                  mulhu        t6, s6, s3
                  sraiw        ra, a7, 31
                  lui          a0, 685910
                  mulh         a2, tp, a1
                  xor          a0, s6, s6
                  divu         a6, t2, a7
                  div          gp, s6, a3
                  mulh         s6, a1, s7
                  sra          s1, a5, s2
                  sraw         a2, s6, s2
                  sll          s5, s4, a1
                  addw         s11, t0, s1
                  addiw        a0, a2, -93
                  and          s11, a6, s5
                  slli         t6, s1, 30
                  addiw        t6, s9, 298
                  addiw        a2, a6, 375
                  mulhu        zero, t5, t2
                  sllw         s4, s3, zero
                  mulw         a2, a3, a2
                  remw         ra, s3, t5
                  sra          s11, s0, a1
                  div          a5, a0, a7
                  slt          tp, s4, s10
                  sltu         t0, a2, a0
                  xor          a3, a3, sp
                  xor          s8, s7, s3
                  andi         s7, s8, -777
                  mulh         a6, t3, s6
                  sltiu        a1, t5, 1104
                  mul          t0, t6, s4
                  sll          s11, sp, s2
                  mulhsu       gp, t1, a7
                  sraw         s8, t5, gp
                  subw         s7, s8, t1
                  divw         s5, a7, s5
                  srai         t0, t6, 63
                  srliw        tp, a7, 30
                  srl          t6, s6, t5
                  divuw        tp, t6, t1
                  nop
                  sllw         s1, sp, s0
                  div          s8, s1, s5
                  mul          sp, gp, s4
                  andi         ra, sp, 1949
                  add          s8, s6, s0
                  mulhu        a4, s8, t5
                  xori         tp, s5, -142
                  add          a6, s2, s7
                  andi         a0, t3, -1677
                  srliw        a6, zero, 24
                  divuw        s0, s0, tp
                  sll          sp, tp, a4
                  divuw        s11, t5, s1
                  sra          s3, a5, s5
                  sllw         a6, a4, a3
                  nop
                  auipc        t3, 945056
                  slti         a4, a3, 1733
                  nop
                  mulh         a7, a3, t0
                  nop
                  slliw        t6, t5, 16
                  sll          gp, tp, s2
                  sllw         a0, s3, s1
                  sltiu        a1, t6, 843
                  slliw        s10, t5, 8
                  slti         a6, s8, -1547
                  and          s3, a5, s5
                  sltu         s10, sp, s10
                  divw         a0, s6, s2
                  ori          a3, t2, 243
                  rem          ra, gp, a3
                  mul          s11, a2, a4
                  mulhu        tp, a3, a6
                  add          t3, t2, s4
                  mulw         a4, s2, a7
                  sllw         t2, t6, s9
                  srli         sp, tp, 3
                  or           s4, t0, t0
                  subw         ra, t1, a0
                  divuw        t1, t6, t0
                  srl          s2, ra, s11
                  sltu         s4, t3, gp
                  srlw         s11, ra, ra
                  slli         a7, t3, 48
                  or           s11, s1, ra
                  mul          s5, a2, s3
                  rem          tp, s10, a4
                  slli         a3, a7, 36
                  auipc        s3, 867888
                  or           s1, t0, a3
                  sll          a3, sp, s7
                  addiw        s4, ra, -350
                  mulw         s8, s6, tp
                  slli         t6, t4, 49
                  srli         s2, s6, 22
                  srli         gp, t3, 30
                  srl          s6, a6, s7
                  srli         t0, s11, 51
                  slt          sp, a7, s6
                  remuw        s11, s9, s7
                  div          t1, a6, s7
                  sra          s8, s9, t2
                  subw         a7, ra, s11
                  div          s0, s10, t3
                  sraiw        gp, s4, 12
                  xor          t6, s3, s10
                  rem          t1, s1, sp
                  nop
                  slliw        sp, s4, 16
                  divw         a0, s1, a4
                  srl          a6, s2, t4
                  srl          s0, sp, s8
                  sltiu        t6, tp, -1681
                  srlw         ra, s7, a0
                  remuw        ra, s3, t4
                  slt          a0, s5, gp
                  divu         a6, s5, tp
                  add          gp, tp, a4
                  subw         s11, a5, zero
                  sraiw        s3, a1, 30
                  addiw        a6, t3, -1982
                  ori          sp, t3, 1121
                  sraiw        s1, s3, 1
                  srl          s3, s5, s5
                  or           a5, a6, s9
                  sub          s6, t4, sp
                  mulhu        t1, t2, t2
                  divu         a7, a7, a7
                  srlw         a5, t2, s6
                  slli         s0, s1, 35
                  add          s5, s7, t5
                  rem          a2, t4, a3
                  sub          gp, s11, t1
                  add          t6, a6, s10
                  slt          ra, t2, zero
                  and          a6, s4, tp
                  lui          a2, 626413
                  slliw        s6, s0, 9
                  srlw         zero, tp, s8
                  or           gp, t2, a0
                  srli         a4, a7, 37
                  andi         a5, a7, 1511
                  andi         s11, a6, -1705
                  rem          a5, s7, t2
                  mulhsu       s6, tp, s10
                  add          a2, a0, tp
                  divuw        a1, s3, s4
                  subw         s0, s0, tp
                  sltu         a0, a3, a4
                  add          a4, a7, a3
                  sra          a4, t5, tp
                  and          s11, a1, gp
                  srlw         a1, zero, t2
                  rem          t1, a0, gp
                  mulw         a4, s1, a4
                  addw         a3, a7, s4
                  ori          s1, s11, 1357
                  addiw        s11, a3, -447
                  mulh         t0, t0, s10
                  remuw        s5, s7, a6
                  srai         t2, zero, 54
                  sllw         a6, s7, s4
                  addw         s5, gp, sp
                  auipc        t3, 153640
                  sltiu        s7, a1, 186
                  sltiu        t3, t0, -1260
                  slti         a1, t3, 901
                  remuw        t2, s9, s3
                  andi         t0, a7, -1393
                  sraw         a2, s3, a5
                  auipc        sp, 614337
                  divu         s2, t6, s2
                  remu         t0, s6, a6
                  addi         gp, t0, 1952
                  subw         s6, a6, s9
                  divuw        s11, s9, t6
                  nop
                  addiw        a6, tp, -1961
                  subw         a7, t6, zero
                  srl          s6, a4, t0
                  nop
                  sub          a3, t6, t5
                  divu         s3, s7, a5
                  andi         t1, s6, 1764
                  sub          a3, s4, a3
                  sub          s4, s0, t3
                  sraiw        a1, a7, 24
                  addw         s0, a2, tp
                  andi         t6, s10, -388
                  addiw        a7, t4, -1329
                  srai         t0, gp, 12
                  slli         s4, t3, 1
                  sltu         a1, s9, t5
                  mulhsu       t0, t3, s3
                  add          s8, s11, t2
                  slliw        a6, s7, 14
                  sllw         a7, a2, t1
                  or           s1, s10, gp
                  srliw        gp, a1, 27
                  addw         s6, s8, s5
                  lui          zero, 846566
                  slliw        s8, a0, 1
                  nop
                  lui          s7, 4195
                  addi         s6, a5, 132
                  srl          t6, s8, a4
                  slti         t6, s11, -1152
                  sllw         t6, gp, a7
                  nop
                  slt          a7, s0, a5
                  auipc        t3, 63119
                  sllw         t0, s2, t5
                  srli         a7, s4, 49
                  sltu         s1, a1, a4
                  remuw        s11, sp, a6
                  mulhu        s0, s5, a1
                  srl          a7, ra, s10
                  add          t0, t3, t0
                  sltiu        a1, t5, 975
                  lui          a7, 274340
                  srl          zero, gp, s1
                  slliw        gp, t3, 16
                  andi         s0, s3, -1686
                  sraiw        t3, t4, 13
                  mul          a7, s2, a6
                  xor          t1, s11, s10
                  slt          a0, s7, zero
                  xori         s10, a0, -1373
                  lui          s6, 772596
                  xori         s10, s8, 298
                  sll          a2, s4, s6
                  divw         a6, s0, zero
                  remu         t6, s2, s7
                  rem          t3, a2, s7
                  sraw         a0, zero, a7
                  sltu         t3, a4, t0
                  divu         a7, sp, a1
                  srlw         a7, s1, t1
                  remuw        t2, a1, t4
                  addi         s6, sp, 1385
                  srai         a2, ra, 48
                  sllw         a1, a2, a3
                  srli         s6, gp, 16
                  subw         a1, a0, a0
                  addi         a6, t1, 1965
                  add          a6, a4, s8
                  srl          s3, s6, tp
                  srli         zero, s2, 1
                  subw         sp, zero, t4
                  mulh         s4, s7, s0
                  ori          a2, s4, -1052
                  mulhsu       s4, s0, a3
                  mul          s8, s6, s2
                  and          a4, t2, t0
                  mulhsu       s2, tp, s0
                  sraiw        s6, s7, 28
                  divw         s8, s11, tp
                  or           a0, s2, s6
                  and          s1, t1, s4
                  sub          a4, a0, a3
                  mulh         s10, s10, a6
                  slti         t1, a2, 1326
                  xori         t1, zero, -169
                  remuw        a3, t3, t6
                  srli         s1, a6, 24
                  slliw        s1, s3, 25
                  divw         ra, s0, zero
                  div          s10, sp, t6
                  srli         s0, t5, 15
                  slt          s8, sp, s4
                  addiw        s1, s8, -564
                  addi         a6, a0, -1366
                  ori          a3, s9, -1670
                  andi         sp, s0, 1433
                  auipc        s1, 390249
                  sltiu        s1, s8, -1362
                  slti         gp, a3, 832
                  lui          a1, 179809
                  srai         ra, s2, 19
                  mulh         t2, s5, t0
                  slliw        a3, t5, 14
                  mulhu        s5, s6, t2
                  xor          t6, a0, t6
                  mul          a7, a2, s0
                  srlw         t3, a2, tp
                  sltu         s1, a0, s1
                  sll          s4, s5, t2
                  srliw        a4, s2, 3
                  xori         t2, zero, -1582
                  nop
                  slt          t2, t3, s6
                  divw         a7, a5, t2
                  slliw        a0, t1, 25
                  sll          s0, a2, a3
                  srlw         sp, t1, s11
                  slt          a2, t6, a7
                  sub          s2, s8, zero
                  sub          s11, t0, s1
                  auipc        gp, 354814
                  addw         zero, s3, s11
                  mulh         a1, a6, sp
                  divu         a3, s5, t1
                  sltiu        a4, s7, 983
                  addw         s11, a3, t3
                  sra          t3, s0, s3
                  mulw         s11, t0, a5
                  slli         a2, s5, 22
                  nop
                  mulw         zero, s1, t3
                  slliw        s8, t0, 0
                  remw         a4, s8, a1
                  sub          gp, s1, t0
                  mulhu        a4, sp, t4
                  sra          t1, s6, s10
                  sra          zero, s11, s7
                  sllw         s11, a1, t3
                  addw         ra, s4, s8
                  div          sp, sp, t4
                  sltu         t3, t5, t2
                  rem          a3, s4, gp
                  srai         t6, s6, 43
                  rem          a4, t1, t1
                  divw         a2, s11, t0
                  remw         s10, s10, t4
                  slli         a3, s0, 0
                  subw         s6, s8, s9
                  sraiw        s0, s5, 21
                  srlw         t6, a5, s9
                  ori          s4, t3, -362
                  divuw        s5, t2, s6
                  srliw        sp, s7, 1
                  mulhu        s7, a3, s1
                  slt          s8, s3, zero
                  nop
                  divuw        t3, t6, sp
                  sub          t0, s2, s0
                  addi         t0, tp, 1846
                  remw         t0, s9, s4
                  remu         a3, s8, zero
                  lui          gp, 799682
                  addi         t2, sp, -325
                  slt          a5, s11, s10
                  ori          t1, s11, 1433
                  srlw         t3, t1, t1
                  add          s6, s5, a1
                  slti         a1, ra, -1498
                  xori         t6, a0, 382
                  sltiu        sp, a4, 897
                  addw         sp, t5, t3
                  remuw        t1, sp, a0
                  andi         a4, s10, -410
                  srli         t0, s6, 45
                  mulhsu       t0, s3, s0
                  sltu         zero, tp, a2
                  xori         a3, zero, -780
                  slliw        s8, zero, 15
                  or           t6, a1, s7
                  sltu         a6, tp, s9
                  slliw        t0, s9, 26
                  srai         tp, ra, 27
                  or           s7, ra, a1
                  slliw        s5, s6, 16
                  sra          s5, s6, s10
                  rem          s11, t1, a3
                  divu         a0, s2, zero
                  sll          s2, t2, s3
                  sub          t0, s5, s0
                  srlw         s11, a4, a4
                  remw         a4, s2, s2
                  div          t2, s0, s9
                  slt          s4, a3, s0
                  sllw         sp, s3, s6
                  sraw         t0, zero, s8
                  sub          sp, s7, t3
                  slliw        a7, a7, 24
                  slliw        a3, s1, 26
                  or           ra, a1, s1
                  srlw         a2, t6, s8
                  sltu         t1, a4, t0
                  divuw        a5, a7, t5
                  addw         a4, t1, s5
                  xor          s10, s9, a2
                  mulw         t3, t4, t0
                  mulh         zero, s1, sp
                  sltu         s0, t1, ra
                  rem          gp, a5, s6
                  sltu         t3, s11, s3
                  srliw        t1, s0, 18
                  remw         s1, t3, a5
                  mulh         t2, a3, s11
                  mulhsu       t6, t3, s6
                  divuw        a6, gp, t6
                  divuw        t6, s10, s7
                  slt          s0, s10, a1
                  srl          s6, sp, a1
                  subw         s7, t4, a7
                  addw         s3, zero, s11
                  sraiw        a6, s10, 17
                  sltiu        a0, s3, 678
                  remu         s11, a1, s6
                  addi         a6, t0, 796
                  slli         sp, s5, 38
                  remuw        s11, s6, s3
                  auipc        s0, 314717
                  addiw        tp, s2, -96
                  rem          gp, a5, a6
                  sraiw        t0, sp, 15
                  srli         zero, t0, 34
                  mulhsu       t6, s9, a5
                  add          a2, s0, s1
                  sltiu        s10, s1, -1235
                  nop
                  and          a4, s7, s6
                  mulhsu       a3, s2, t2
                  div          a3, s8, s3
                  sltiu        a3, t1, 1025
                  divu         t2, s4, a5
                  mulw         s8, t3, zero
                  sraw         s2, a6, t0
                  add          sp, s9, sp
                  mulw         s2, a1, ra
                  mul          ra, t2, s7
                  lui          s6, 750636
                  srli         s8, t0, 15
                  div          s0, a1, t4
                  slli         a2, a7, 22
                  sra          a4, a1, t6
                  and          t3, a6, ra
                  xori         s4, s9, -1935
                  div          a6, s7, t0
                  divu         a0, s8, a2
                  and          s10, a3, s3
                  mul          s6, a1, gp
                  addi         t1, t1, 375
                  xor          zero, t2, t0
                  srliw        s1, s5, 1
                  slliw        zero, t0, 11
                  sub          s3, a3, tp
                  sllw         t3, s0, a6
                  mulh         s7, a6, a2
                  srli         s11, a1, 46
                  sub          s3, a1, t3
                  slt          s0, a0, a2
                  sraiw        zero, a7, 30
                  srai         sp, s3, 40
                  srli         s10, a3, 18
                  srl          s8, a5, s5
                  xor          s10, sp, a1
                  or           a6, s7, tp
                  remuw        ra, tp, ra
                  sraiw        a6, a5, 10
                  subw         s7, s10, gp
                  slti         s0, a5, -773
                  xori         t3, t2, -1817
                  div          t6, ra, s8
                  slti         s5, t1, -1421
                  add          s10, s11, t4
                  sll          s10, s6, t3
                  sraiw        a0, a1, 2
                  addiw        gp, sp, 1804
                  divuw        a7, s0, s4
                  or           t6, t1, s1
                  rem          a1, t6, t3
                  slti         s4, s3, 1979
                  sltiu        a2, t6, 0
                  srai         t0, s2, 5
                  srai         t1, t4, 0
                  or           a1, ra, a7
                  srlw         s4, a5, s9
                  sraw         t0, t4, tp
                  lui          a0, 830993
                  xori         s10, t6, -911
                  slti         s5, s4, 113
                  lui          s11, 224910
                  add          t1, t3, s1
                  srl          s6, gp, s8
                  addw         t6, t6, t2
                  sraw         gp, t6, s10
                  sllw         s5, a5, sp
                  ori          a3, s8, -371
                  ori          a2, a0, 1876
                  and          a4, t2, t4
                  slti         zero, t5, 751
                  sltu         s4, s2, s7
                  sraiw        s10, t4, 9
                  srai         t0, t2, 39
                  or           s2, s11, sp
                  ori          gp, t4, -450
                  mul          s11, a3, t5
                  xor          ra, s3, t4
                  mul          s7, a5, s1
                  slli         t0, s3, 14
                  and          t0, a4, a0
                  srlw         s10, a7, a6
                  xori         s1, a0, -835
                  mulw         sp, gp, s0
                  or           a3, a6, a3
                  slliw        s4, s4, 16
                  mulhsu       s6, s9, s10
                  sltu         a2, zero, a5
                  xori         s0, a2, 1636
                  lui          t3, 1002733
                  lui          s0, 943352
                  sll          t3, s10, t3
                  andi         s5, t5, 866
                  or           s4, ra, zero
                  mulh         tp, s4, t1
                  srai         t3, a0, 17
                  srl          s3, s10, s9
                  or           s10, zero, a7
                  sltu         a0, s11, sp
                  mulw         tp, a2, t5
                  slti         s0, a2, -1685
                  div          a3, tp, a4
                  slliw        a6, a1, 17
                  sll          s11, s7, t0
                  slli         gp, t1, 45
                  auipc        zero, 987169
                  and          s11, zero, gp
                  andi         t6, s7, -416
                  mulh         t1, a5, t4
                  andi         t0, s6, 742
                  slt          s0, t6, s8
                  mulhu        s6, s5, gp
                  ori          s10, a2, 804
                  remw         a0, s3, a2
                  sraiw        a6, s3, 11
                  sra          s7, t3, s2
                  sll          a5, s8, s4
                  xor          s11, s1, s4
                  xori         a3, s9, -1768
                  rem          gp, s9, t0
                  andi         zero, s1, 726
                  sll          tp, a4, a4
                  or           a1, s2, t1
                  srliw        t6, s0, 20
                  sltiu        s8, s0, 88
                  and          ra, s8, tp
                  remw         s5, sp, tp
                  sll          s10, s0, a5
                  slli         zero, s1, 51
                  xori         a1, t2, 582
                  or           s5, a0, s9
                  auipc        t6, 459381
                  xor          s2, a3, t2
                  auipc        tp, 1031867
                  srl          s6, t6, t3
                  mulw         a1, a1, tp
                  sraw         a2, a3, t6
                  auipc        sp, 602393
                  and          s0, s4, s3
                  slt          s8, a3, s0
                  divu         sp, s8, s1
                  add          t2, s11, s7
                  slt          t1, s11, s6
                  and          a3, gp, t3
                  auipc        s7, 279622
                  sub          s6, t5, a1
                  srliw        ra, t4, 0
                  slti         gp, t5, 325
                  auipc        gp, 72661
                  andi         s0, s11, 1699
                  lui          a0, 1021915
                  srl          a3, s6, sp
                  div          a6, s10, zero
                  slti         s2, s2, 559
                  rem          a2, s3, t6
                  mulw         zero, t0, s8
                  xor          a0, t2, t3
                  xor          s10, ra, t4
                  mulhu        t3, s4, s7
                  sra          a4, s5, t5
                  sltu         s3, s2, ra
                  sltiu        t3, s10, 1495
                  rem          t0, t6, a4
                  sraiw        a0, s7, 9
                  sll          a6, t1, gp
                  add          a6, a4, s2
                  remu         t1, s7, gp
                  divu         a4, a1, t2
                  slti         gp, s2, 1613
                  addi         sp, s0, -1796
                  sltu         a4, a2, t5
                  or           s11, a6, s4
                  srlw         s4, gp, s4
                  remuw        a5, s6, t2
                  remuw        s4, t6, tp
                  slti         s1, t4, 456
                  srli         s3, t0, 39
                  divw         s10, t6, t1
                  auipc        ra, 1025633
                  divuw        sp, a1, t1
                  addi         t2, s8, 190
                  srl          sp, a6, a7
                  subw         gp, gp, a4
                  remw         zero, t0, t3
                  srliw        t6, s6, 24
                  remuw        a2, zero, s5
                  divu         t2, a5, t2
                  remw         t6, s1, t2
                  rem          tp, s1, s11
                  srliw        gp, t0, 30
                  mul          a7, s5, s5
                  srliw        s6, ra, 20
                  srlw         zero, t0, sp
                  mulhsu       s2, a0, s6
                  sll          t0, s9, a5
                  andi         a3, a5, -1226
                  slli         tp, s7, 6
                  srai         a4, s11, 21
                  or           t6, s11, s6
                  mulh         gp, s7, t4
                  sraiw        s0, s3, 3
                  addi         s7, t6, 447
                  srl          a6, s10, s11
                  slti         zero, t1, 423
                  div          sp, s11, t3
                  and          t6, t1, sp
                  mul          ra, ra, t3
                  lui          a6, 633721
                  sraw         t0, s5, a4
                  ori          s6, a4, -32
                  divu         s5, t5, a3
                  sraiw        s7, s1, 17
                  addw         s10, a2, a2
                  srli         s10, s0, 33
                  remu         s3, t3, tp
                  addw         t3, a7, s10
                  addi         tp, a2, 1488
                  slti         t1, a0, -772
                  slti         s7, s7, 1511
                  add          s11, a3, s10
                  mulhu        t3, t6, t4
                  srl          sp, a1, t1
                  slt          s4, s8, a6
                  srl          s1, a2, s2
                  divuw        s2, a3, a7
                  rem          s1, t6, s9
                  xori         s0, a3, 1066
                  sltiu        s1, s6, 673
                  slli         s2, gp, 20
                  sllw         s10, s2, a4
                  or           zero, s4, gp
                  lui          t1, 702430
                  nop
                  or           a0, t0, t5
                  sltiu        s2, s2, 969
                  lui          tp, 373704
                  addw         a0, a2, a7
                  sltiu        a2, t5, -1577
                  mulh         gp, s6, s7
                  divuw        s7, s9, t6
                  sltiu        s3, s2, 857
                  mulhsu       t2, a2, a0
                  sll          a5, t4, s9
                  addiw        t2, s11, -854
                  srl          gp, s5, tp
                  add          a1, a6, tp
                  divw         s5, gp, t6
                  addi         s6, s7, 666
                  remuw        t3, s4, t3
                  divuw        ra, a1, t6
                  divu         s5, zero, zero
                  mulh         t1, s5, tp
                  mulhsu       a4, t4, s1
                  andi         s5, s10, -950
                  xori         gp, tp, -787
                  and          gp, s3, a1
                  addiw        s0, a3, -651
                  div          s3, t2, ra
                  lui          t2, 865853
                  rem          s10, s9, s6
                  addi         zero, a1, -48
                  srli         s0, a5, 11
                  srli         a6, a0, 56
                  divu         s8, zero, s6
                  srl          s5, s5, s9
                  sll          t6, t4, t6
                  sltu         a5, t5, t2
                  xori         s11, a7, -1463
                  subw         s3, s2, s7
                  divuw        t2, t3, t3
                  slliw        a2, t4, 26
                  remw         s2, a0, ra
                  remuw        s4, a1, ra
                  sraiw        s7, t2, 24
                  mulhsu       s5, a3, s5
                  rem          s10, a1, t0
                  slti         t3, s6, 261
                  sra          a4, t4, t3
                  addi         s1, s11, -741
                  xor          a0, s0, a2
                  srl          tp, s7, s5
                  divw         ra, a2, sp
                  srai         a0, s3, 38
                  sub          s2, s0, gp
                  xori         ra, gp, -788
                  sraw         a2, s2, s4
                  mulhsu       s10, s4, s4
                  mul          s10, t6, s7
                  addiw        a2, a4, 753
                  xori         s4, sp, -1019
                  mulhu        s8, s1, a4
                  or           a5, t1, s3
                  srliw        s6, t0, 26
                  slt          t6, a3, a5
                  sraw         s2, a6, a4
                  sraiw        a4, t2, 20
                  sltiu        t3, s1, -237
                  addiw        t2, a5, 996
                  rem          a7, a2, t1
                  sll          ra, a4, s9
                  xori         s11, t3, 1387
                  remw         a7, s6, t4
                  slt          a1, a2, ra
                  slli         ra, zero, 19
                  andi         a7, s6, -1003
                  addw         t3, a7, ra
                  mulhu        tp, s11, s1
                  addi         t6, tp, -1117
                  rem          tp, s8, a5
                  ori          t3, t0, 907
                  addiw        a1, s4, 926
                  addi         s2, s9, 1050
                  mulw         s0, s7, t4
                  sra          s7, s2, s4
                  slti         t0, sp, -1011
                  mul          tp, t2, s7
                  slliw        a4, s2, 3
                  auipc        gp, 704847
                  addw         s6, t2, a2
                  rem          a5, a2, t1
                  mulhsu       tp, a6, ra
                  and          a4, s3, a2
                  remu         s4, a2, s11
                  sub          s10, ra, t6
                  divuw        t3, t1, s8
                  sltiu        gp, s10, 971
                  slliw        s7, s1, 21
                  remw         gp, s2, t6
                  andi         a0, gp, -1593
                  sraiw        a2, t5, 30
                  subw         s10, t6, s9
                  mulhsu       t6, t5, t5
                  mulhsu       s8, a2, t6
                  div          a7, gp, ra
                  addi         a4, t1, -1041
                  lui          a1, 454898
                  addi         a3, s5, -692
                  slti         a0, s0, 1268
                  lui          s4, 362396
                  xor          t1, t1, t6
                  add          s10, s9, ra
                  sraiw        t3, s2, 20
                  lui          s11, 929733
                  slliw        tp, gp, 20
                  add          s11, s4, s9
                  sra          s3, a2, a3
                  nop
                  div          a4, t2, a4
                  divuw        a5, s1, a1
                  divuw        a7, a1, tp
                  addi         a6, a1, 1302
                  sllw         s11, s0, s0
                  remu         s7, a3, a5
                  mulhu        t6, a1, gp
                  sra          s0, ra, t3
                  subw         t2, t0, gp
                  xori         s6, s6, -1875
                  slliw        a2, gp, 23
                  remuw        s6, t4, a2
                  slti         a7, s1, 1522
                  xori         a1, t6, 1640
                  mulh         s4, s10, t2
                  mulhu        s4, s6, a7
                  slli         sp, s5, 29
                  or           s3, s0, a5
                  remu         s3, a3, t1
                  ori          t3, ra, -700
                  sra          t2, t1, s3
                  andi         s11, t1, 1326
                  remuw        tp, s7, t2
                  srlw         t3, s7, s4
                  srliw        t1, t0, 13
                  divu         s1, ra, s0
                  mulhsu       t6, t4, s6
                  srliw        a2, t4, 0
                  lui          a7, 164885
                  xori         s3, a7, 148
                  slliw        a4, t3, 23
                  div          t2, s8, s6
                  addi         t1, s5, 799
                  ori          a2, t5, -1320
                  or           a6, t4, s6
                  slli         a3, t1, 8
                  srlw         s10, s4, t4
                  sraw         gp, s7, a0
                  lui          t3, 1021743
                  and          gp, ra, t5
                  slt          s0, zero, t0
                  divu         zero, t3, a6
                  sllw         sp, a6, t3
                  div          s2, s7, t0
                  sub          a5, s5, a1
                  srli         t0, s5, 6
                  srl          a3, s4, a5
                  mul          a0, s3, t3
                  rem          s10, gp, s11
                  divu         s7, tp, s3
                  sra          a5, a4, s7
                  and          s3, a1, t3
                  sra          sp, zero, s10
                  divuw        s0, s8, ra
                  srl          t2, a2, a0
                  sll          ra, a7, tp
                  divuw        a3, zero, s7
                  lui          a7, 19507
                  slliw        s4, t5, 1
                  slt          gp, s6, t3
                  srl          a1, s5, sp
                  nop
                  addi         s0, t5, 876
                  srl          a1, a6, s8
                  auipc        a4, 708516
                  divw         sp, s0, a5
                  sub          t6, s7, s11
                  divw         s7, t6, tp
                  mulhsu       s4, a2, a5
                  mul          t6, t5, t0
                  sraiw        s8, zero, 17
                  slli         a5, s7, 10
                  srliw        a6, s2, 30
                  xori         t3, s0, 802
                  sll          s7, zero, s0
                  ori          t3, a7, 1543
                  or           s5, tp, s2
                  sltiu        t0, s7, -499
                  addi         s1, tp, -1914
                  srai         t0, zero, 57
                  mulw         a7, a7, gp
                  addi         a5, t6, 1717
                  sraw         s2, s10, t2
                  srlw         s8, sp, a3
                  or           s11, s8, a5
                  subw         t2, a5, a4
                  addi         sp, zero, 611
                  xori         a7, ra, 1729
                  subw         s5, s2, t1
                  remw         t1, a6, a7
                  srl          a6, t0, s11
                  or           zero, a6, s0
                  div          s0, a2, s5
                  sltiu        t3, a7, 1308
                  mul          s0, tp, t2
                  andi         a0, s5, 1669
                  mulw         a5, s4, s11
                  mulhsu       s6, gp, gp
                  mulh         t6, a3, s8
                  sll          a5, a4, t4
                  addiw        a7, a1, 94
                  divw         ra, s1, s7
                  srliw        tp, s11, 19
                  xor          s0, tp, t2
                  addw         ra, a6, s0
                  auipc        t6, 701689
                  srli         t6, sp, 43
                  srlw         s0, sp, a2
                  or           a3, zero, a4
                  srai         a7, zero, 23
                  slt          a3, ra, s8
                  remuw        t2, t5, t3
                  mulhsu       s3, s0, tp
                  divw         a0, t5, a5
                  slti         zero, s4, 1454
                  mulhsu       t3, t2, s10
                  slti         a0, s9, 468
                  andi         s10, ra, 1847
                  divuw        a1, s6, a1
                  divuw        s11, ra, t0
                  auipc        s8, 677059
                  addw         s2, s6, s7
                  mulw         gp, tp, a6
                  divw         s1, s3, s8
                  or           s7, gp, s7
                  auipc        t0, 136877
                  xori         t6, t5, 59
                  sra          gp, sp, s9
                  srl          s8, a6, s11
                  sra          s3, a6, t2
                  srlw         s7, t3, a6
                  srlw         t6, t0, s11
                  ori          a4, s11, 34
                  sra          a1, s6, a6
                  sraw         t2, s3, t6
                  sra          s5, gp, a3
                  add          a4, t0, a3
                  xor          a4, s3, s9
                  xori         s2, zero, 325
                  sll          s11, ra, t1
                  sraiw        s1, a4, 29
                  sra          t2, t2, a3
                  mul          t2, a7, s9
                  mul          ra, s6, t5
                  srl          t1, sp, t5
                  srliw        s7, t5, 3
                  sltiu        t1, s11, 1164
                  lui          a5, 201035
                  xor          s0, a3, a0
                  sraiw        s2, t6, 17
                  mul          a3, a3, ra
                  auipc        t3, 792286
                  lui          sp, 760250
                  sub          t6, a5, tp
                  sllw         s10, s2, s8
                  mulhsu       s8, t2, s11
                  sll          a4, s10, sp
                  div          t6, s9, s10
                  mul          ra, a0, s6
                  sllw         tp, gp, a5
                  mul          s2, s6, a5
                  andi         gp, t1, -1768
                  subw         s6, tp, t6
                  sra          s6, zero, gp
                  divu         t0, t1, t4
                  andi         a7, a1, 1390
                  remuw        t2, s1, zero
                  andi         s6, gp, 1893
                  xor          s0, a1, t3
                  srli         s8, s10, 29
                  add          s3, t3, s8
                  srl          s2, a6, a3
                  sllw         a3, s10, s1
                  srli         s4, a5, 1
                  addiw        gp, sp, 710
                  sll          tp, zero, a2
                  lui          s3, 924472
                  slliw        s7, s0, 15
                  slli         sp, a2, 32
                  mulhsu       zero, a0, s8
                  srliw        a1, s8, 12
                  xor          s6, t0, zero
                  srliw        a3, a2, 7
                  mulw         sp, s6, t1
                  sltiu        s3, t0, -1824
                  mulhsu       s1, a4, ra
                  and          a0, a4, a4
                  srlw         s3, a3, a0
                  mulhsu       ra, s5, s4
                  xor          s2, a3, a5
                  and          t3, a3, ra
                  srl          s5, t0, zero
                  sltiu        a0, a2, -683
                  sllw         s7, t3, s4
                  or           sp, t2, a3
                  subw         tp, s9, t1
                  remuw        s8, s3, sp
                  addi         s4, t5, -872
                  subw         t6, a5, a1
                  sraw         s5, s6, s10
                  add          s10, t3, s11
                  mulh         gp, s3, s11
                  srl          s10, a3, a6
                  remw         s11, t0, a2
                  subw         a2, t3, t0
                  xor          a1, s9, a1
                  div          s1, s0, sp
                  nop
                  mulhu        gp, a5, ra
                  sraiw        a5, tp, 23
                  remuw        a3, s8, s8
                  subw         s1, sp, tp
                  mul          gp, t5, s8
                  mulhu        t0, tp, a2
                  mulhu        tp, s9, s2
                  subw         a6, s3, a0
                  addw         s3, s11, a6
                  xori         zero, t6, 383
                  slli         ra, t2, 7
                  auipc        s10, 349700
                  or           a2, t1, t0
                  remw         s11, s8, s2
                  nop
                  remw         s8, t6, tp
                  addw         a1, s2, a4
                  sub          a3, s4, a5
                  lui          s8, 702999
                  srliw        a3, zero, 4
                  slli         t1, s4, 38
                  and          a0, s3, s6
                  xor          a4, t5, t6
                  sltu         t0, s11, tp
                  sllw         t0, s10, t3
                  divu         a5, s8, s4
                  andi         a3, gp, -1530
                  remw         a3, t5, a6
                  srliw        s1, a6, 31
                  ori          a2, s10, 121
                  srli         sp, s8, 43
                  ori          ra, ra, 992
                  sltiu        s4, t3, 493
                  lui          t6, 1001298
                  addi         t3, s7, -1664
                  srai         t3, s9, 21
                  sra          a2, s2, s3
                  mulh         s7, a0, a5
                  srl          s0, a5, a4
                  sraw         a7, a0, t1
                  sub          a3, s3, a3
                  slli         t6, a4, 16
                  sllw         gp, a3, gp
                  remu         a1, gp, tp
                  remu         a4, a7, s11
                  mulw         zero, ra, t0
                  addw         sp, t3, gp
                  mulhu        sp, s8, t6
                  divuw        a1, s5, a3
                  subw         a4, s6, t5
                  mulw         s5, s6, zero
                  div          s3, s1, tp
                  lui          s7, 842742
                  mulh         gp, s5, s9
                  div          zero, a5, t4
                  slti         sp, t4, 1198
                  sltu         s11, s9, a6
                  subw         a6, a4, t6
                  mulw         zero, a5, s5
                  rem          a5, ra, s11
                  srlw         a5, s3, a1
                  addi         t1, a5, 1620
                  sra          t1, s2, gp
                  mulw         s5, t2, t6
                  rem          s1, t2, s3
                  slti         a7, t0, 754
                  sraw         a5, s11, s8
                  sraiw        s6, s10, 21
                  addiw        s4, t5, 484
                  addiw        s1, a2, 1053
                  ori          s10, s3, -1030
                  and          s8, a1, s9
                  andi         t3, a2, 1545
                  subw         a2, a3, s11
                  divu         a7, s4, sp
                  div          t2, t3, t3
                  mul          s1, t1, a4
                  add          t1, a5, t4
                  addi         t1, s1, 1422
                  sltu         a5, t1, s0
                  srlw         t6, t1, s7
                  auipc        s5, 986608
                  srlw         s0, s10, a4
                  and          ra, s4, s8
                  sraiw        tp, a6, 27
                  mulw         t6, s10, s11
                  add          a3, t6, s9
                  srlw         zero, zero, ra
                  mulhu        a7, s4, ra
                  nop
                  and          a6, t5, a6
                  lui          zero, 177256
                  sraw         s7, s7, tp
                  slli         s3, t1, 1
                  auipc        zero, 1047598
                  or           s1, a2, a7
                  srli         a6, t5, 24
                  sltiu        a1, t0, 912
                  divu         zero, a5, zero
                  sra          a6, sp, t1
                  addw         tp, a0, s10
                  srli         s1, t3, 1
                  divu         a3, t0, gp
                  addiw        s0, gp, -825
                  srlw         a6, t0, t0
                  remu         a3, t0, t1
                  sub          t0, a5, s1
                  sra          s11, s0, s6
                  remw         ra, zero, a2
                  xor          t3, t2, gp
                  sraiw        s11, t6, 14
                  mul          tp, s4, t0
                  ori          a6, s8, -703
                  add          s0, s11, a2
                  div          s6, t1, s0
                  remu         s3, s9, t4
                  div          a3, ra, s8
                  divw         s3, sp, s10
                  sll          s10, s6, t2
                  nop
                  subw         s5, a7, s5
                  addw         ra, a1, a1
                  rem          s6, a2, a6
                  nop
                  slli         a7, a5, 10
                  mulw         t3, t4, t5
                  mulw         s4, s3, t5
                  mulh         s10, s0, a3
                  xori         tp, t4, -1486
                  remw         s4, tp, t1
                  srliw        tp, s10, 19
                  andi         t1, t4, 1143
                  mulw         t0, t1, a1
                  addw         s7, a1, ra
                  add          s1, s1, a6
                  sra          s1, gp, gp
                  srli         t6, s10, 43
                  sltiu        s6, s3, -1153
                  mulhu        sp, a4, t5
                  sltu         s8, a4, sp
                  sll          sp, s0, s6
                  sllw         a2, s10, s5
                  sltiu        zero, gp, 1473
                  subw         t2, s0, tp
                  sub          gp, a3, t4
                  divuw        s8, a3, s10
                  remu         s5, s0, t0
                  ori          tp, s0, -511
                  and          sp, t0, s2
                  mulhsu       s4, a0, s3
                  mulw         t6, tp, t2
                  srliw        a4, t2, 20
                  sll          a6, a3, a7
                  slti         t6, s4, 1145
                  subw         s10, a2, t2
                  slt          t2, tp, s8
                  subw         s3, a3, a2
                  srli         t0, a2, 51
                  addiw        a0, s6, 938
                  sltu         tp, t2, a2
                  sltiu        s6, t1, -2043
                  xori         t2, a5, 1598
                  slli         t3, a2, 62
                  add          gp, a6, zero
                  xori         gp, a2, 1707
                  xor          s10, a1, a2
                  sub          t3, t6, a6
                  xori         s5, s4, -1543
                  xor          a3, s11, a1
                  sllw         t1, s3, t2
                  slli         s4, s8, 17
                  srliw        a5, tp, 30
                  slti         s4, tp, 970
                  remuw        s0, a6, a0
                  andi         a4, a2, 1079
                  xor          s8, sp, tp
                  addiw        t0, a4, -1128
                  add          a3, s11, t6
                  mulh         t2, s10, s6
                  xor          a0, t4, t5
                  srai         t3, t6, 45
                  subw         s4, a0, s1
                  ori          a1, a7, -1509
                  remw         a6, s10, a6
                  slt          s5, sp, s8
                  sll          ra, t5, t4
                  srai         a2, a0, 5
                  divw         t6, ra, s9
                  srlw         s11, t3, s9
                  sub          a6, t6, t2
                  sltiu        a6, s0, 630
                  slt          a0, a1, t5
                  mul          a7, a1, a6
                  mulhsu       s10, a7, a2
                  addw         sp, ra, s8
                  addw         t6, a0, gp
                  remw         t2, s1, s4
                  srl          a2, t0, s9
                  and          s10, t3, a4
                  divuw        s7, s3, a3
                  remu         gp, a5, a7
                  addiw        s2, tp, 250
                  nop
                  addi         t3, s1, 1219
                  sltiu        t6, zero, -768
                  addw         ra, a7, gp
                  addiw        s5, a1, -1207
                  lui          s1, 159185
                  addi         sp, t3, 1152
                  srl          a4, s2, s9
                  slli         sp, t5, 6
                  sll          s5, s7, s10
                  divuw        t6, zero, s4
                  xori         t0, s3, 1569
                  andi         t0, s10, 950
                  sllw         tp, t1, s8
                  srliw        s5, a7, 11
                  sraiw        s0, sp, 11
                  add          s1, a7, s9
                  rem          s3, t6, t0
                  remw         s2, a7, s10
                  sltiu        sp, a6, 1241
                  srliw        gp, t6, 14
                  divuw        t6, a7, a1
                  andi         s3, t2, 881
                  srlw         a3, t3, a1
                  slti         ra, s2, -298
                  sra          s3, t3, a2
                  addiw        s10, s4, -2038
                  xor          t2, a1, s4
                  lui          s10, 961899
                  srli         tp, a2, 43
                  addi         s10, t6, 1455
                  divuw        s5, t4, s8
                  div          t3, gp, s10
                  divuw        a4, t0, t0
                  addi         s0, t0, -1176
                  slti         a7, t1, 1464
                  srli         s10, zero, 33
                  mulh         s6, a4, ra
                  mulh         tp, s1, a3
                  or           s5, s5, a0
                  sltu         a3, a5, s1
                  and          s11, gp, a7
                  addi         t0, a6, -1891
                  div          s11, t1, a0
                  xori         a4, s6, 1083
                  div          s6, s0, s6
                  divuw        a3, a2, a4
                  srlw         s8, tp, a2
                  slti         a2, t5, 1463
                  mulhsu       s4, s11, s4
                  xori         s3, s10, -1663
                  srliw        a7, ra, 23
                  sltiu        s11, a5, -1192
                  sll          s8, sp, gp
                  div          a6, s3, a2
                  srl          zero, t5, s2
                  slt          s10, s1, s8
                  remuw        s7, tp, s9
                  auipc        s7, 1014385
                  srliw        s1, a7, 0
                  slt          t0, s10, s4
                  mulhsu       t2, s10, s7
                  mulh         s11, s8, a5
                  sraiw        s2, s6, 6
                  div          sp, t5, t0
                  slti         a3, s5, -1956
                  ori          t6, a1, -701
                  srli         a4, s11, 44
                  or           t3, t6, s8
                  rem          s8, t1, s2
                  srli         s0, t4, 49
                  slliw        t2, t6, 31
                  slli         t3, a7, 43
                  addiw        a3, s5, 894
                  subw         t6, s4, t6
                  rem          s7, a7, sp
                  slt          t6, a4, s6
                  div          s1, a0, a5
                  divuw        t6, gp, a0
                  srli         s10, t2, 38
                  add          s5, s8, t4
                  divw         s3, ra, a7
                  xori         s2, a3, -1230
                  remw         a1, s0, a2
                  sub          a6, zero, t5
                  srl          a5, gp, t2
                  divu         t2, s9, a5
                  mulh         t0, s11, zero
                  slliw        a1, t6, 2
                  divw         t2, a7, s1
                  ori          s3, sp, -134
                  subw         a4, a4, t0
                  mulw         a6, s8, s0
                  ori          s10, a1, 517
                  div          a4, s11, ra
                  mul          a2, tp, s4
                  slt          a3, s8, s10
                  sub          ra, t4, a4
                  remu         s10, t0, s2
                  srai         s3, sp, 29
                  slti         a1, a1, -1406
                  divw         a6, s9, a2
                  ori          s7, s2, -1099
                  addw         s10, a7, zero
                  div          t6, a5, s3
                  srai         s4, s5, 23
                  divu         ra, a0, a5
                  srlw         tp, s4, a5
                  xori         s1, s11, 11
                  mulhsu       a7, t3, a7
                  remu         s6, s6, s0
                  nop
                  remw         s6, a6, t1
                  andi         t3, a0, -1262
                  addi         sp, s1, 1693
                  sllw         s1, s0, a1
                  sraiw        a2, sp, 9
                  add          t3, s8, s11
                  subw         a0, zero, s10
                  srl          t0, s4, s9
                  divw         s7, t1, s3
                  sraiw        s10, a6, 3
                  mulw         s2, s7, s0
                  slli         a1, a7, 3
                  andi         tp, s5, 573
                  sllw         t3, a7, a3
                  add          ra, t1, s10
                  auipc        s8, 27394
                  ori          gp, a0, 257
                  and          s3, a1, a2
                  lui          a4, 548320
                  srl          s2, s1, t3
                  mul          s6, a3, a3
                  mul          t6, t1, t4
                  sllw         gp, a0, s4
                  sltu         t2, t1, a3
                  ori          t1, t1, -1901
                  mul          a0, s3, tp
                  lui          s0, 349529
                  rem          s11, s0, s5
                  addw         s4, t5, a2
                  sltiu        t0, a3, 639
                  srliw        s8, t1, 19
                  slli         s10, gp, 36
                  sraiw        s2, t6, 28
                  mulh         s2, s10, s1
                  mulw         a1, s6, a3
                  xori         t2, s10, -567
                  addiw        a6, a6, -1563
                  auipc        s11, 724396
                  addiw        s6, t4, 1413
                  addi         a1, gp, 57
                  sub          t3, t3, t2
                  addw         s2, s1, a1
                  srai         a3, s5, 38
                  slli         t0, a5, 19
                  mulhu        s5, t4, s1
                  srliw        s10, a7, 20
                  slli         zero, s8, 56
                  xori         s10, t1, 724
                  lui          s0, 170637
                  andi         s7, a5, -616
                  sra          gp, s9, s8
                  mulh         t2, a0, s11
                  auipc        ra, 657472
                  rem          s11, a5, s0
                  nop
                  remu         a4, s9, t6
                  srai         zero, s0, 34
                  mul          s5, sp, s5
                  remu         zero, t4, sp
                  slliw        t3, t3, 15
                  mul          tp, a5, a6
                  xori         t6, sp, -1389
                  auipc        a4, 357001
                  mulhu        t3, s7, s1
                  divw         t3, s2, a1
                  nop
                  sraw         a0, a3, s10
                  mulhu        s11, a2, gp
                  slti         s2, a1, -865
                  sraiw        gp, gp, 27
                  remuw        t3, a6, gp
                  ori          tp, s4, 588
                  sraw         a6, t6, s0
                  remu         a1, t4, t3
                  mulhsu       a5, s11, s11
                  mulhu        zero, a4, s4
                  mulhu        t3, t3, s5
                  mul          s1, s8, s0
                  subw         s2, a3, t3
                  remw         a2, a6, s3
                  srai         a4, s11, 46
                  sra          s11, s5, s0
                  addiw        s4, t4, -605
                  remu         gp, t3, gp
                  sll          a7, s7, s11
                  nop
                  lui          s0, 992043
                  divuw        t1, ra, t0
                  add          gp, a3, t0
                  remw         zero, s3, a2
                  slli         s6, a4, 29
                  addi         a2, s3, -1185
                  remu         s5, s10, s2
                  slliw        s8, ra, 9
                  srliw        s2, a7, 15
                  mul          tp, a7, a6
                  srai         s4, gp, 8
                  sra          s1, s9, t0
                  mul          a4, a6, s7
                  divuw        t1, gp, a0
                  sub          a4, t0, tp
                  srli         t6, a4, 36
                  addw         s5, s5, s6
                  remu         t0, zero, a4
                  sltu         s10, sp, ra
                  sra          ra, s10, t3
                  slliw        s2, t3, 21
                  xor          s0, sp, s10
                  xor          a4, s8, t3
                  sltu         s11, a2, sp
                  slliw        t1, a7, 13
                  addiw        a4, s11, 1741
                  sll          a2, s10, t0
                  srlw         t3, s10, a1
                  sraiw        s4, a5, 19
                  sra          sp, a4, s0
                  andi         a2, tp, -464
                  slliw        a7, t5, 27
                  mulhu        s7, a4, a3
                  addw         tp, t0, a3
                  div          s2, s8, t1
                  xor          a5, s11, t5
                  slliw        sp, s7, 14
                  srl          s5, t1, t0
                  slli         a4, ra, 13
                  mulhsu       t2, a3, a7
                  sra          tp, sp, s8
                  sraw         s5, s8, a6
                  or           a6, s8, sp
                  divw         s7, ra, t6
                  remuw        t1, t5, sp
                  subw         s6, t1, sp
                  sllw         a5, a1, s6
                  remw         s7, a2, t0
                  remu         s4, a6, t5
                  sraiw        s6, ra, 12
                  slliw        t1, tp, 8
                  andi         s10, s4, -438
                  mulh         a1, a4, t6
                  srliw        a0, s7, 23
                  remuw        s0, a7, ra
                  sllw         s4, a6, t3
                  slti         s10, t1, 1268
                  divuw        ra, t2, t4
                  addw         a4, s8, s6
                  srlw         a5, a2, a2
                  srliw        a0, zero, 6
                  and          sp, t4, zero
                  auipc        a4, 339670
                  ori          zero, t0, -882
                  mulh         s3, s4, s5
                  andi         a5, s1, -1401
                  add          s4, a7, t5
                  remuw        s1, a3, s9
                  div          s1, zero, s7
                  slliw        s11, a2, 7
                  remuw        t6, sp, a6
                  div          s8, t4, a7
                  xori         t3, a6, 2032
                  sub          a2, a2, zero
                  or           s0, a7, s0
                  mulh         ra, s5, s11
                  sllw         a6, s0, s6
                  mul          s4, a5, ra
                  sraw         t1, s1, tp
                  addw         s11, t6, s5
                  addw         s11, a5, t0
                  remu         s6, t4, t3
                  slliw        a1, s6, 9
                  sraiw        s7, tp, 24
                  divw         s4, a2, s7
                  sllw         a7, t1, s0
                  auipc        a2, 894087
                  xori         s4, s8, -349
                  srai         a1, a2, 13
                  slli         a4, s2, 43
                  addiw        t6, sp, 1479
                  divuw        s8, a6, t6
                  addw         a5, s5, tp
                  and          s1, s5, a5
                  xor          s7, a7, a7
                  sra          s8, s6, s6
                  sraiw        t3, a0, 3
                  addi         a2, s0, 1498
                  mulh         zero, t6, a7
                  sltiu        a2, s4, -1207
                  remw         s5, t1, a7
                  xori         s5, s6, -685
                  divuw        s4, a0, a4
                  auipc        t3, 607865
                  srli         s5, tp, 22
                  srl          t2, a3, s11
                  sraiw        s0, sp, 25
                  remuw        s0, s8, zero
                  remu         s7, a3, t2
                  div          a3, s5, a4
                  or           a0, gp, t2
                  remw         s8, s2, s2
                  nop
                  sll          t3, s11, t1
                  auipc        s7, 855792
                  subw         t6, a1, a1
                  slt          s5, s11, s4
                  mul          tp, s5, a1
                  sltu         a4, a5, zero
                  divw         a2, a2, t5
                  xori         t6, a0, 1423
                  sub          a5, s2, ra
                  srl          a4, a4, s0
                  mulw         a2, zero, s2
                  mulhsu       s4, s11, ra
                  sraw         a7, t4, s0
                  sub          zero, t2, s10
                  remw         ra, s6, s0
                  divw         s10, s9, tp
                  slli         sp, t6, 37
                  lui          a2, 610349
                  mul          s5, a2, t4
                  srl          ra, t1, s2
                  slli         t2, a2, 24
                  srli         s4, a6, 15
                  sraiw        a5, t6, 27
                  slt          t0, a7, s2
                  remuw        ra, a5, s10
                  add          s1, s3, s4
                  slli         s3, s0, 48
                  ori          ra, s2, 922
                  slt          s0, tp, t2
                  srai         a7, s9, 48
                  remw         t0, a6, ra
                  remu         t1, t6, a6
                  div          s8, s2, t3
                  subw         a3, a3, t4
                  sra          a4, sp, t2
                  remuw        t1, s10, t1
                  andi         s5, a3, 353
                  srlw         s11, a0, zero
                  sltiu        t0, t0, 314
                  remu         s5, t1, s10
                  srliw        s2, s11, 10
                  auipc        a6, 449219
                  subw         s4, gp, t6
                  mulh         a3, s7, t4
                  auipc        s4, 495803
                  mulhsu       t2, s3, s11
                  xor          t6, a3, s9
                  auipc        s5, 816056
                  srliw        a7, t1, 26
                  sraiw        s5, s8, 0
                  slli         s3, t5, 61
                  auipc        s4, 73294
                  rem          s4, gp, a7
                  sra          s1, ra, s5
                  ori          s7, s8, 675
                  or           gp, s8, s0
                  sraw         sp, s4, s7
                  srliw        s1, a4, 24
                  rem          gp, ra, a5
                  div          s6, a5, s10
                  slt          t3, s3, s9
                  nop
                  xori         a6, a4, -501
                  sltiu        gp, tp, -1185
                  slli         a3, t1, 9
                  divu         s6, a4, ra
                  and          s4, t5, a5
                  srl          s7, s4, t5
                  lui          t3, 199534
                  mulw         zero, zero, sp
                  lui          s2, 898285
                  sll          a4, s11, ra
                  subw         gp, t2, t0
                  slliw        t2, tp, 19
                  add          a7, s4, s5
                  sllw         t6, t6, a5
                  remu         s5, a7, s4
                  srlw         s0, a1, sp
                  andi         t6, a3, 724
                  divu         ra, a2, s3
                  mulh         a5, a2, s10
                  sub          a5, s11, a2
                  divw         s11, t1, t0
                  xori         t2, t6, -1778
                  addiw        s1, s10, -1052
                  lui          s0, 200999
                  sll          s4, s6, s2
                  addi         s7, s10, 826
                  and          a4, gp, ra
                  and          t2, s4, tp
                  sll          t3, s2, s0
                  remuw        t3, t6, s5
                  or           a6, t2, s2
                  srliw        a7, t3, 12
                  ori          t3, t1, -1109
                  slti         a4, s9, -1825
                  sraw         s11, a5, t0
                  mulhsu       a7, s3, s1
                  xori         a7, a5, -685
                  sub          s4, a5, a2
                  srliw        sp, t1, 2
                  xori         t0, a1, 364
                  div          s2, s5, a3
                  lui          s6, 548911
                  mulh         a5, t4, a1
                  addw         t6, s4, t6
                  sra          s7, a0, sp
                  ori          a1, s0, -1552
                  remuw        gp, gp, t1
                  div          t2, a5, a3
                  divu         a4, s7, s8
                  nop
                  and          s7, s5, zero
                  or           a7, gp, s4
                  sraiw        s8, a4, 14
                  sltu         s1, zero, sp
                  remu         s0, s4, a1
                  slli         a5, t2, 49
                  sllw         a1, a2, a2
                  sra          a3, zero, s6
                  divuw        s4, a7, s11
                  sll          a7, s5, a6
                  or           s11, s0, s2
                  and          a0, a2, zero
                  slliw        s11, gp, 20
                  sra          s6, s3, tp
                  sub          s3, a4, t2
                  remw         a4, s1, t1
                  lui          t3, 398917
                  addi         a3, s8, -384
                  div          gp, s11, t6
                  addw         s6, a4, s11
                  divw         tp, s1, s9
                  rem          t6, t4, t4
                  remuw        a2, s7, s11
                  lui          tp, 639768
                  mul          s5, t1, s1
                  divw         a0, a1, t6
                  sub          gp, s10, s3
                  addw         s2, a2, zero
                  divu         sp, t0, s5
                  divuw        a6, gp, s0
                  xori         a2, a0, 164
                  divw         t6, a0, a4
                  srai         s3, a0, 45
                  remu         s10, a1, t1
                  addw         t0, s9, t2
                  nop
                  xori         a1, tp, 1845
                  slti         a5, s5, -1825
                  xori         s4, a1, 701
                  auipc        s1, 103441
                  sub          s5, t1, s6
                  remuw        tp, s1, s5
                  subw         t2, a5, sp
                  slliw        a3, s4, 3
                  div          ra, gp, s6
                  subw         s10, t3, s7
                  and          t3, t3, ra
                  srl          s3, a6, s8
                  divu         a3, s10, a5
                  remw         ra, s7, gp
                  xor          s10, sp, t4
                  sub          a0, s0, a6
                  mul          s1, a2, t0
                  xor          s11, s5, a0
                  auipc        a4, 693857
                  divu         a2, s2, s5
                  andi         s0, s1, 1761
                  divuw        t1, a7, s4
                  sltiu        s7, s1, 1526
                  slli         s1, s7, 57
                  srl          a4, a0, s6
                  divw         a6, t4, s0
                  srl          s2, a5, s10
                  subw         s4, a6, t0
                  xor          a4, gp, gp
                  lui          s3, 669724
                  auipc        s10, 441708
                  mul          s4, a5, s1
                  addw         a4, t4, s7
                  remuw        s6, s11, a3
                  mulw         zero, t2, s11
                  srl          t1, t4, tp
                  sltiu        zero, t5, -360
                  srli         s10, s0, 29
                  srl          a5, s11, s4
                  slti         a7, s2, -848
                  ori          s6, s4, 1917
                  sll          a7, a3, t5
                  remu         zero, ra, s7
                  xor          t6, s1, t5
                  slti         a1, s5, 1578
                  sltu         s6, s5, a7
                  divuw        t3, t4, s6
                  mulhu        a2, a2, s2
                  slli         zero, s10, 50
                  divuw        s6, t1, s9
                  srai         zero, a2, 48
                  divw         s10, s9, a6
                  addw         a4, s2, s8
                  srli         sp, t2, 13
                  sraw         a5, s0, s8
                  srl          a3, s1, t0
                  remu         s7, s9, s11
                  srai         s4, a3, 28
                  xor          t0, s10, s7
                  sll          t0, s10, a2
                  divw         a4, s6, s0
                  mulw         tp, gp, gp
                  slli         a3, a3, 16
                  mulhu        a7, s7, s1
                  mulhu        t0, ra, s1
                  sra          tp, a0, s1
                  subw         t3, s9, a7
                  srai         s5, t4, 40
                  slliw        tp, a3, 30
                  addiw        s4, s5, 96
                  xor          a3, sp, t1
                  sraiw        s10, zero, 4
                  srli         ra, s1, 27
                  subw         t3, a0, s3
                  mul          a4, s3, tp
                  auipc        a5, 733781
                  addw         t2, s5, t1
                  rem          a3, s10, t4
                  addw         a2, a3, s5
                  sraiw        a5, a4, 30
                  divu         s5, a0, t6
                  srai         a0, s1, 54
                  sltiu        s11, gp, -940
                  mulh         s3, t5, a0
                  sra          a3, s5, t1
                  add          t1, t3, s5
                  sraw         s10, s1, gp
                  slli         t2, s1, 56
                  addi         ra, s11, 1196
                  slliw        s5, ra, 3
                  sraiw        s5, t6, 11
                  div          a4, gp, t4
                  sra          t3, gp, a3
                  srai         a4, a1, 61
                  slt          tp, ra, tp
                  sltu         t2, t4, tp
                  addiw        s10, a6, -828
                  srliw        t6, t5, 12
                  remw         s1, s4, t6
                  xor          s0, a4, a7
                  divuw        s1, a0, s1
                  xori         t2, s2, 1156
                  mulh         s11, s2, a4
                  mul          s7, s11, a2
                  nop
                  sll          s2, s4, s0
                  sllw         s5, t1, a2
                  div          a7, a7, s7
                  addiw        gp, tp, -226
                  divu         ra, s4, a4
                  sll          s5, sp, a3
                  remuw        a1, t0, t2
                  ori          t3, ra, 66
                  addi         gp, a3, 901
                  auipc        a6, 167861
                  sll          ra, a1, a0
                  xor          a0, s8, s0
                  mulw         s5, t5, a1
                  mul          s2, s9, t1
                  srliw        zero, zero, 15
                  or           s7, t4, s8
                  addiw        ra, a5, -726
                  sll          t0, gp, sp
                  ori          t0, ra, 435
                  remu         t3, a3, s6
                  sltiu        s3, s0, -1367
                  sub          a2, s6, tp
                  add          a7, a5, t0
                  xor          a5, s9, t6
                  xor          sp, a7, s0
                  sll          t6, s3, s11
                  mulhu        s0, s0, s8
                  srai         t3, a3, 23
                  mulw         s6, s4, a3
                  and          sp, s10, a0
                  remu         sp, s11, s4
                  sraw         sp, s2, s9
                  xor          ra, a1, a3
                  mulw         t1, t4, t3
                  sub          s3, t3, s11
                  slli         s8, a4, 21
                  sltu         t2, zero, s4
                  mulw         s1, tp, s2
                  sll          a7, a3, s1
                  sraw         t2, s7, t6
                  ori          s0, s7, -1848
                  addw         tp, a7, s1
                  xor          t1, t4, ra
                  ori          zero, t1, 1537
                  srli         t6, ra, 55
                  ori          s10, a5, 2018
                  div          t6, gp, tp
                  slti         t1, t1, -1918
                  sraiw        a5, s2, 6
                  sraw         t3, s11, a6
                  mulh         a7, zero, a5
                  mulw         a2, a4, a6
                  mulhu        a0, a4, zero
                  mulhu        s7, s9, a2
                  and          s11, sp, s10
                  and          s2, a3, s10
                  auipc        sp, 1019230
                  sltu         sp, t5, s5
                  slliw        s1, t3, 2
                  slti         zero, t2, 1846
                  slti         t3, s5, -328
                  ori          s2, t6, 671
                  sll          s0, s7, s6
                  sraiw        zero, s3, 18
                  divw         zero, s10, s4
                  sltiu        t1, s6, 1950
                  nop
                  sllw         a7, zero, a2
                  subw         s4, gp, gp
                  addi         s3, t5, 750
                  mulhu        sp, s6, t6
                  sll          s5, zero, s9
                  slti         ra, s7, -344
                  slliw        a5, s8, 3
                  add          a6, a5, s2
                  remw         s3, s7, t3
                  add          t6, zero, tp
                  slt          a1, s3, sp
                  mulhu        s10, tp, a1
                  add          s7, s1, a1
                  mulw         t1, t2, a7
                  lui          s11, 304278
                  rem          gp, s3, s5
                  sraiw        ra, s11, 1
                  xori         a0, t5, -480
                  remu         a6, s2, s8
                  srli         s11, s11, 45
                  divw         s6, t2, s0
                  ori          zero, a4, -1655
                  remuw        ra, s10, t0
                  sraw         s0, s7, a3
                  remw         zero, a7, s0
                  ori          s2, a7, -494
                  sraw         s6, gp, s10
                  xor          a6, t5, t6
                  xor          s6, t2, s8
                  mulh         sp, s7, t5
                  mul          s1, t3, s0
                  sltiu        s5, s9, 1705
                  auipc        zero, 807448
                  divw         t6, t1, a7
                  addi         s6, t6, -671
                  srli         a2, a4, 37
                  srli         a5, a5, 34
                  sllw         sp, t0, s2
                  subw         s11, s4, t2
                  add          t6, s10, a1
                  sra          s3, s7, a6
                  divu         s5, a0, s8
                  sll          s5, s7, a0
                  slli         s2, t4, 33
                  sllw         a5, t1, a0
                  mulw         s3, gp, s9
                  mulhsu       s4, a7, s3
                  srl          s5, t1, a0
                  xor          a4, s9, a5
                  addiw        a3, s6, 1923
                  sltu         a0, sp, t2
                  sll          s8, t0, a7
                  mulh         tp, zero, s11
                  remuw        a2, a1, gp
                  ori          sp, s3, 1701
                  div          s8, s11, t5
                  addiw        t3, t4, 1157
                  addw         a3, sp, a7
                  and          s5, s4, s11
                  lui          t0, 223915
                  srliw        t6, t6, 11
                  srli         a4, s4, 62
                  sll          a5, t0, t6
                  slli         a7, s8, 17
                  remuw        ra, ra, t5
                  srliw        s1, s1, 28
                  addiw        s2, t2, -909
                  subw         a3, s9, s6
                  remw         s0, a7, s6
                  nop
                  srai         s5, s11, 11
                  slti         zero, a2, 1588
                  xori         a6, t3, 459
                  slli         t1, s2, 57
                  xori         s1, zero, 282
                  mul          s1, a4, s9
                  remuw        t3, t2, gp
                  mulh         t0, s5, a0
                  sltu         s11, s4, s3
                  addw         s11, tp, a1
                  mul          s7, s3, a7
                  srl          a4, a0, a3
                  sll          a0, s6, s5
                  add          t3, sp, s6
                  sub          a2, s1, s9
                  mulh         s8, t3, a1
                  sllw         s1, zero, s7
                  ori          t0, sp, -1161
                  addi         s0, s5, 1103
                  divu         a4, tp, s8
                  sltiu        ra, s10, 767
                  lui          s11, 1624
                  slliw        s11, s2, 10
                  remuw        s7, a7, t5
                  divuw        s5, s5, s1
                  nop
                  sraw         s3, t5, s0
                  or           tp, t3, t0
                  mulw         s4, s9, s3
                  subw         sp, a2, t5
                  srl          a7, t5, tp
                  sraiw        s8, s6, 14
                  xor          s5, a1, s2
                  auipc        s5, 246655
                  sra          a7, s6, ra
                  mulhu        s11, a4, s10
                  addi         a6, a1, 1936
                  remw         s11, t3, t2
                  srlw         t6, a6, s4
                  slli         tp, s11, 28
                  addw         s6, s7, s7
                  andi         a7, gp, 347
                  srlw         a0, a0, tp
                  rem          a3, s4, a6
                  lui          a4, 930754
                  srliw        s11, t6, 6
                  sllw         ra, s7, gp
                  divw         tp, s3, s3
                  sra          s11, t0, zero
                  sraw         s0, s2, s8
                  addiw        t0, t2, 1065
                  addi         a7, t4, 740
                  slliw        a4, tp, 19
                  sraiw        t1, a6, 22
                  sll          tp, t2, s8
                  add          t0, s3, tp
                  addw         a6, s3, t5
                  remu         gp, a5, t1
                  sllw         t6, s6, t1
                  sll          s10, a2, a1
                  sllw         t3, s3, s7
                  sll          zero, a2, t4
                  slliw        s2, a3, 27
                  divu         t2, a5, gp
                  sllw         s6, zero, s10
                  slli         t0, a6, 0
                  remu         s11, s2, a6
                  sll          ra, tp, t3
                  mulhu        gp, s8, s11
                  srai         s5, s10, 40
                  add          s3, s7, a7
                  addw         a1, t0, t2
                  mulhu        a5, sp, a4
                  divu         a2, t4, a4
                  sltu         a1, t5, s1
                  mulw         gp, zero, s6
                  srl          s2, a1, zero
                  xor          tp, a4, s5
                  add          s0, tp, s9
                  sltiu        a4, a2, 1225
                  srli         a1, s9, 1
                  sraw         s6, a5, t3
                  srai         a6, gp, 47
                  remw         t1, s5, t1
                  ori          sp, s1, -1726
                  or           gp, s6, sp
                  auipc        s11, 467846
                  divu         s0, a5, s3
                  addw         s2, sp, s3
                  xor          s4, a2, s10
                  lui          sp, 936796
                  slti         zero, s0, -1307
                  andi         t2, t0, -773
                  subw         tp, s6, tp
                  sub          a2, a7, t6
                  sub          s8, s6, s6
                  remu         sp, t1, s8
                  xori         a1, t6, 918
                  divu         s6, sp, s8
                  sraw         a4, s0, t1
                  rem          t2, s9, gp
                  mulhsu       t1, a4, s3
                  xori         s1, t1, 1727
                  addw         s8, s5, s2
                  addw         a0, t2, t6
                  addiw        ra, zero, -1835
                  xor          s0, s5, a3
                  mulw         s6, s1, t3
                  slli         a3, s10, 52
                  divuw        ra, a5, s7
                  and          t0, t6, t2
                  srliw        t1, a0, 3
                  addiw        ra, a3, 1099
                  nop
                  nop
                  mulhsu       zero, t6, a1
                  subw         t6, s8, t4
                  remw         a2, ra, s4
                  nop
                  sub          t6, t4, a2
                  ori          t2, a3, -881
                  slliw        ra, t0, 6
                  rem          sp, s3, t2
                  mulhsu       t3, a3, t5
                  remw         t6, s11, t6
                  andi         t3, s5, -736
                  and          s1, zero, s4
                  andi         a6, a5, -137
                  mulw         a7, s5, s0
                  mulw         s4, a6, s2
                  sllw         s2, t4, s3
                  andi         s11, t5, 1470
                  mulh         t2, gp, s9
                  sraiw        s10, s5, 29
                  mulhsu       t0, s1, gp
                  remuw        zero, ra, t5
                  xor          t0, s4, s10
                  slti         a7, s5, -256
                  sub          a7, s3, zero
                  xori         s4, tp, 690
                  divw         s3, t2, t6
                  andi         s11, t5, 1224
                  mulw         s11, s4, a7
                  sraw         a4, t6, s4
                  lui          t2, 916398
                  divu         s11, t3, tp
                  addiw        s3, t0, 1353
                  sltiu        s2, s10, 1108
                  nop
                  nop
                  slliw        s5, s4, 23
                  divw         a6, a5, s1
                  sltiu        tp, s7, 535
                  sllw         t2, s1, t5
                  rem          s11, s11, a6
                  divw         a6, s10, s11
                  sra          t3, s8, a3
                  lui          a7, 964805
                  remu         zero, gp, ra
                  sra          a5, s5, t1
                  lui          s11, 710268
                  remw         a7, s2, t6
                  or           t1, s10, t5
                  slt          t6, t3, a6
                  divu         s3, s5, sp
                  srl          a1, s0, a1
                  mulhsu       s6, s9, s1
                  slti         a2, gp, -728
                  slti         gp, a4, -759
                  divu         s3, a6, a6
                  remu         tp, a3, a7
                  sraiw        s10, s10, 17
                  div          s1, zero, ra
                  divuw        t3, a3, t0
                  or           gp, a2, a4
                  sraiw        s3, a2, 5
                  srl          s5, s7, s2
                  addw         t0, s11, zero
                  sltiu        sp, s4, -732
                  addw         s8, s4, ra
                  divuw        s0, t4, t6
                  sub          s7, a4, s6
                  mul          s11, a7, t0
                  divw         s0, s4, t3
                  and          sp, s1, s11
                  mulhsu       s7, t4, a5
                  sraw         s4, t1, a5
                  slliw        s8, sp, 20
                  remu         a2, t4, s3
                  sra          s10, s5, s6
                  slt          t1, t5, t3
                  remu         s2, gp, s4
                  and          a1, s6, s9
                  mul          s2, t1, s1
                  remu         s5, s7, a0
                  sllw         s8, s2, a5
                  ori          tp, t1, 1080
                  mulh         t6, s2, zero
                  slli         s1, sp, 10
                  auipc        s7, 476152
                  xor          s3, t6, s6
                  remu         a7, t6, s11
                  andi         a0, s11, -1681
                  andi         t3, t4, 1655
                  addi         s7, t3, -1881
                  add          a1, a1, t1
                  xor          a7, s2, s9
                  srl          a1, s7, a3
                  or           ra, s0, t0
                  auipc        t2, 340317
                  or           s0, a4, t1
                  xori         tp, a3, -160
                  slli         tp, s2, 54
                  nop
                  auipc        s3, 679883
                  sub          s3, s3, a5
                  srlw         t6, a4, s0
                  srl          s5, t1, sp
                  sltu         s7, a2, s0
                  divuw        t1, s2, t5
                  mulh         s0, s8, a0
                  auipc        s1, 497543
                  sllw         s0, a7, a5
                  mulw         s3, s2, tp
                  slli         s4, t1, 42
                  rem          s5, a7, a5
                  nop
                  mulhu        sp, t4, s3
                  addw         t3, tp, a3
                  srli         s10, s0, 40
                  divu         t3, tp, zero
                  nop
                  nop
                  xor          t6, s7, ra
                  sltu         s6, s7, ra
                  mulh         s8, ra, s7
                  andi         a7, a4, -580
                  sra          t1, s0, s1
                  auipc        t6, 58189
                  srlw         a2, s0, zero
                  rem          s10, a2, gp
                  xori         s4, tp, 1260
                  lui          t3, 95053
                  mul          tp, s4, t4
                  div          a6, a5, s4
                  addiw        tp, s6, 339
                  sll          a4, s4, a1
                  mul          a2, a1, s9
                  addi         a6, t4, 1247
                  slli         s6, s7, 25
                  mulw         sp, ra, s4
                  divw         s5, a7, s11
                  srlw         a4, s0, t2
                  andi         s11, t4, 839
                  sraiw        s1, s2, 24
                  subw         a5, ra, a5
                  rem          a6, ra, t2
                  sltiu        s1, zero, -600
                  lui          t6, 684325
                  slli         a3, t2, 49
                  mul          s1, s11, a6
                  sra          a7, t2, s1
                  divw         s2, s4, s3
                  auipc        a3, 157442
                  srai         t6, s5, 45
                  slti         ra, s8, 1684
                  auipc        s8, 527155
                  remuw        a7, t0, a3
                  addw         a5, tp, s6
                  sraiw        a1, a2, 13
                  remuw        t2, t1, a7
                  sltiu        t1, s6, -1088
                  mulh         sp, t6, a7
                  slt          s7, t5, t3
                  xor          s3, s4, t4
                  add          t2, a0, sp
                  addw         t6, s5, s3
                  srl          tp, a1, s5
                  slliw        s7, s3, 1
                  slt          s10, ra, t6
                  add          s3, s5, s5
                  or           s5, s6, sp
                  sraw         s1, a1, t6
                  mul          s1, s6, t3
                  mulh         a1, a1, ra
                  remu         t0, s1, a5
                  mulh         s5, t2, zero
                  addiw        gp, s4, 777
                  divuw        a2, zero, gp
                  subw         s4, a1, s10
                  sra          a1, a2, s1
                  mulh         t0, a0, tp
                  mulh         a0, s2, s10
                  mulhu        a3, s1, gp
                  srai         s6, s9, 18
                  xori         t2, s8, 1569
                  slliw        a3, s1, 1
                  srli         s10, t1, 8
                  mulh         a1, s1, a4
                  slliw        s0, a0, 25
                  xor          s7, sp, s5
                  addw         t2, tp, t1
                  srl          s10, t1, t5
                  divuw        a3, a4, zero
                  srl          t3, a4, a1
                  or           s6, a1, t3
                  slliw        s11, t3, 15
                  mulw         a5, gp, s6
                  ori          s0, sp, 295
                  andi         s5, a6, -1737
                  slliw        tp, s1, 10
                  ori          a4, s8, 1085
                  srlw         s10, s0, s5
                  sll          sp, tp, s3
                  divuw        s3, t1, t5
                  sllw         s5, s1, s3
                  divuw        t6, s2, s3
                  rem          t6, a2, a6
                  srliw        s3, t3, 16
                  srliw        s3, a7, 29
                  xori         s10, zero, -1862
                  sub          a5, a3, gp
                  addiw        tp, a7, -667
                  addiw        t3, sp, 915
                  sltiu        gp, a7, 1122
                  addi         t3, zero, 1288
                  subw         a1, zero, s7
                  srliw        a0, t0, 13
                  subw         s3, s0, s0
                  srliw        t3, s5, 18
                  divu         s8, s0, t4
                  slliw        t0, a0, 13
                  srli         s4, s1, 19
                  slti         gp, s8, -1897
                  addi         t2, ra, -1293
                  sltiu        s10, s4, 414
                  sub          s0, a5, t1
                  addiw        tp, a0, -1939
                  remuw        s2, a0, t3
                  remu         s0, s3, t2
                  nop
                  remu         a0, s11, s7
                  ori          s0, a5, -1780
                  addi         t3, t6, 526
                  xori         tp, zero, 1168
                  remuw        s6, t5, tp
                  subw         s2, s3, s10
                  srai         t0, a2, 54
                  mulhu        t6, t5, s6
                  mulw         a5, t3, t1
                  sraw         s3, t3, s7
                  srai         s8, s0, 55
                  addw         tp, s8, s10
                  mul          gp, sp, tp
                  ori          t6, zero, -42
                  sraiw        s5, zero, 18
                  divw         s11, s2, ra
                  nop
                  xor          a3, a3, t3
                  mulh         s10, s0, s1
                  andi         zero, t3, -1498
                  srl          s10, s3, t2
                  srai         s5, s2, 28
                  slti         s1, a7, 1346
                  sraiw        s11, t6, 19
                  slti         s5, t5, 477
                  or           s8, s1, ra
                  mulhsu       s8, a0, s8
                  mulhsu       gp, t5, t6
                  sltu         t3, tp, s10
                  sltiu        s2, a6, -573
                  sll          t6, t2, sp
                  remuw        a4, s0, a6
                  mulw         a1, t5, tp
                  srl          a1, s1, a7
                  remu         a7, tp, a1
                  div          s8, t0, a3
                  divw         a7, t3, a6
                  slliw        s3, t2, 12
                  and          t0, a6, t5
                  divw         s7, t6, s6
                  remw         s10, a4, zero
                  sraw         a4, t6, tp
                  auipc        s3, 1010513
                  rem          a3, a0, t6
                  addiw        a1, a0, -1541
                  srli         t3, t5, 56
                  remu         ra, zero, zero
                  addw         t1, gp, s11
                  or           s5, s3, zero
                  mulw         t3, ra, a6
                  slliw        s6, a0, 25
                  slli         s7, a6, 26
                  sraw         s10, t3, t6
                  sltu         a1, ra, t1
                  mulw         a5, a3, ra
                  sllw         a1, s6, s6
                  xor          a5, s0, a0
                  andi         a4, ra, -1528
                  srai         s3, a1, 49
                  andi         s2, a5, -822
                  mul          s1, a4, s10
                  srlw         s7, a3, a0
                  sraiw        s1, sp, 8
                  div          s4, s6, tp
                  remu         gp, s2, tp
                  slliw        t3, a4, 23
                  sra          gp, a4, t4
                  subw         t0, a5, t4
                  mulh         a3, t0, t3
                  remuw        s11, t4, s1
                  mulhu        t2, t0, s8
                  xori         a3, t2, -1294
                  mulw         s11, s0, s2
                  sub          s1, t2, gp
                  srli         gp, tp, 12
                  mulw         tp, a1, a5
                  add          gp, a2, t5
                  slt          ra, s8, t6
                  and          zero, s0, t4
                  srai         ra, s0, 41
                  mulhu        a5, s5, s8
                  mulhsu       t0, a4, t6
                  mulhsu       a0, a5, s10
                  xor          s5, tp, a2
                  or           a4, a4, s11
                  remw         s11, a2, gp
                  sra          a3, t0, a0
                  sra          s4, a4, s3
                  xor          t3, t3, s6
                  srli         t3, t2, 22
                  rem          sp, t2, a7
                  sllw         sp, ra, s5
                  sltiu        s5, s1, -1142
                  or           a3, t2, t2
                  mul          a2, a7, ra
                  slliw        s0, a3, 17
                  remuw        t2, s1, a5
                  sllw         zero, gp, s9
                  sraw         t3, a0, a7
                  remuw        sp, a4, s9
                  mulh         a5, tp, s0
                  remuw        s4, s6, s6
                  mulhu        t3, t6, s5
                  remuw        s11, s3, a2
                  lui          s6, 72268
                  div          ra, s7, a1
                  mul          s10, zero, a6
                  divu         a4, s10, a7
                  divuw        a5, s4, zero
                  sll          a5, s2, a6
                  remu         s2, a6, zero
                  slti         a6, t1, -830
                  sub          t2, s2, t4
                  sll          s10, t0, s3
                  srliw        s10, s2, 7
                  mulw         s8, a2, tp
                  and          t2, zero, a4
                  and          t1, t3, t0
                  auipc        a3, 181188
                  slt          t6, t2, a0
                  slli         s6, sp, 3
                  slt          s4, a1, gp
                  slli         s1, a1, 51
                  remw         a5, s1, a2
                  subw         gp, a1, a2
                  srai         s0, s1, 36
                  remu         a2, ra, t1
                  mulh         t6, a0, s7
                  divw         a1, s6, t2
                  xori         t0, s11, -985
                  subw         a5, zero, t4
                  lui          s5, 538940
                  addiw        s10, ra, 840
                  slti         t1, sp, 143
                  sub          a6, s3, gp
                  sraiw        zero, s10, 26
                  rem          zero, a5, s3
                  srlw         gp, t5, s11
                  xori         gp, a4, -1588
                  addi         a3, ra, 1906
                  srliw        t3, s10, 7
                  andi         a6, gp, 1712
                  sub          s0, ra, s1
                  sllw         tp, a7, s10
                  sllw         s0, t4, a0
                  sllw         t1, t2, tp
                  addiw        a6, t3, 459
                  nop
                  slt          a3, ra, t6
                  and          s10, gp, t3
                  andi         a4, t2, 497
                  andi         a0, s7, 796
                  mulh         a2, t4, s11
                  subw         a7, s7, t1
                  mulhu        a5, t4, gp
                  remu         sp, a6, gp
                  sraw         a6, s8, t6
                  slti         s2, a6, 302
                  slti         t6, s11, 583
                  ori          s6, a2, -876
                  mulhu        a0, a6, s8
                  mulh         s4, t5, a5
                  slliw        a4, t5, 15
                  sllw         gp, t1, sp
                  srli         s4, sp, 17
                  divu         s6, t6, a1
                  mulhu        tp, t0, t6
                  sra          t3, t3, a4
                  sraw         s8, a7, s9
                  xori         tp, s10, -1226
                  divu         a1, a1, t3
                  srlw         t6, s0, a5
                  remuw        a1, t4, s4
                  divu         t3, a0, a3
                  mulhsu       t1, t1, t0
                  sub          sp, a0, a6
                  sra          s7, t1, s8
                  xor          s1, t6, s11
                  srli         t1, s2, 57
                  srl          s2, ra, t1
                  mulhu        s7, a7, a3
                  sraw         ra, t6, a4
                  sllw         sp, a1, s3
                  xori         s1, s2, -664
                  sllw         gp, t1, a0
                  sraw         a6, t4, t6
                  srlw         a1, tp, tp
                  rem          s5, s10, a7
                  slliw        t2, a0, 15
                  mulhu        t6, a7, t3
                  slt          t1, s4, tp
                  sllw         t6, a2, t6
                  slt          s5, s7, s3
                  srai         t6, s5, 62
                  mul          s10, t0, t1
                  srai         s2, t3, 6
                  slti         gp, a2, 690
                  slliw        s5, s8, 18
                  sll          t3, s7, t0
                  mul          a6, a7, sp
                  sllw         t1, a5, a4
                  srai         t3, s7, 52
                  sraiw        t2, a1, 24
                  subw         a3, zero, s11
                  srlw         s1, s11, t5
                  mul          a7, a6, s0
                  auipc        t3, 761187
                  add          s4, a1, s4
                  xori         s1, s6, -1634
                  slliw        t6, s1, 7
                  xori         s2, t6, 1990
                  sub          gp, s8, s8
                  divuw        t3, a2, s3
                  sll          ra, s5, t6
                  xor          s2, a4, s9
                  sll          t0, sp, a5
                  nop
                  sltiu        s4, s4, -1374
                  rem          a4, a6, a1
                  remu         zero, zero, a1
                  sraw         a5, s10, s2
                  addw         t6, a7, sp
                  divuw        s10, t0, t3
                  slliw        a0, t1, 14
                  slliw        a2, a1, 5
                  remu         tp, s4, s11
                  lui          s3, 19931
                  slliw        a3, s5, 11
                  divw         a7, s7, s1
                  addw         zero, s2, s6
                  sllw         a5, a5, s0
                  slt          zero, a6, t1
                  sllw         a3, a0, t1
                  divuw        t3, t6, s11
                  nop
                  ori          t2, s0, 1630
                  srli         t2, gp, 2
                  addw         t0, s10, a7
                  addw         a2, s0, s11
                  addiw        s6, t4, -339
                  srlw         ra, s1, a3
                  sub          s0, a6, s6
                  srliw        a4, a4, 11
                  subw         a3, t6, tp
                  sraw         a5, a4, s10
                  xori         a1, tp, 1389
                  srli         gp, a6, 15
                  and          t6, s10, t5
                  srli         a1, a3, 14
                  slt          s7, gp, a2
                  sltiu        t3, s6, 257
                  or           s7, t3, a2
                  addw         s6, zero, s2
                  remu         t1, t1, s1
                  sraw         a3, t0, a5
                  divuw        a1, sp, t6
                  divuw        a2, a4, s6
                  sra          t3, s7, t1
                  slli         a6, s6, 41
                  mulw         s11, zero, s0
                  srliw        a4, ra, 8
                  subw         a5, t3, t1
                  ori          s7, s3, 138
                  andi         s10, s8, 320
                  srai         s3, s6, 25
                  ori          a0, s0, 426
                  and          t1, t2, t3
                  mulhsu       s5, s9, a4
                  divw         s0, a2, a1
                  divu         a0, s4, s7
                  slli         t6, s5, 55
                  div          s10, t6, s3
                  slliw        s2, s6, 16
                  srai         t3, gp, 15
                  srai         t6, s11, 43
                  mulhu        zero, s5, s3
                  sltu         a6, a0, t0
                  auipc        t6, 584975
                  andi         s2, s5, -905
                  div          s5, s6, t4
                  sra          sp, s4, s11
                  sraiw        s5, gp, 9
                  or           s7, t2, a3
                  slli         a2, zero, 10
                  sltiu        t6, t1, 1005
                  ori          a4, a7, 961
                  mul          t0, s9, t2
                  add          t3, s9, a6
                  rem          s4, s11, s8
                  srai         sp, t3, 12
                  mulhu        s6, s4, a4
                  add          s8, t4, s7
                  sraw         t3, sp, a1
                  sll          t1, tp, a5
                  divuw        tp, a7, s9
                  sltu         s11, s5, sp
                  div          a3, t5, a7
                  mulh         sp, ra, sp
                  rem          a1, a1, sp
                  sllw         tp, t3, s2
                  remw         t2, s7, t4
                  andi         s10, tp, -1980
                  remw         a5, a1, tp
                  add          a0, s6, s9
                  divu         s11, s11, gp
                  andi         a0, t5, 17
                  xor          t6, s1, zero
                  remw         a3, a7, a3
                  slliw        tp, t6, 29
                  sltiu        ra, s5, -1976
                  srlw         t1, a6, s11
                  srlw         a7, s2, zero
                  addw         s3, t1, t0
                  sra          s5, t6, t6
                  srai         gp, a2, 24
                  xori         t0, a4, 1900
                  mulh         a0, sp, s11
                  srliw        s11, gp, 5
                  slliw        s2, s2, 27
                  add          s2, t6, t6
                  mul          a4, s6, t3
                  xor          s5, a0, a5
                  sllw         t2, s5, s0
                  sra          a6, tp, a2
                  add          s11, tp, s7
                  slt          t3, a4, t4
                  mul          zero, a7, s11
                  mulw         s8, s3, s3
                  add          s3, s2, s4
                  sraiw        s2, s3, 9
                  auipc        s8, 113843
                  xori         s11, ra, 509
                  sraiw        a3, sp, 21
                  divw         a3, s8, s9
                  divuw        a3, t4, s8
                  nop
                  slli         s4, a3, 50
                  div          a6, ra, s3
                  divw         a3, t3, s6
                  slliw        s11, t5, 12
                  andi         s2, a4, 521
                  mulhsu       t6, sp, s4
                  sll          a3, gp, s0
                  mulh         s8, gp, gp
                  ori          a4, s6, -1771
                  slt          s3, s11, s10
                  srlw         t1, a6, s10
                  add          s2, a0, t5
                  sll          a4, a5, gp
                  auipc        a3, 148430
                  xori         a1, zero, -40
                  addi         a7, a5, 918
                  add          s1, tp, s2
                  slliw        a1, s0, 26
                  auipc        a7, 841803
                  mulh         a3, s4, t1
                  divuw        s7, a5, t0
                  srl          ra, t5, t3
                  mulw         a5, s9, a0
                  addw         s0, a3, s8
                  lui          a0, 797257
                  lui          s0, 521423
                  srlw         s8, t4, s10
                  sraiw        s6, t6, 15
                  addi         a4, s5, 1454
                  addw         t2, gp, a2
                  srlw         t6, t0, s3
                  sub          s8, a5, zero
                  mulw         s3, s1, zero
                  sra          t0, a4, sp
                  srli         s0, t4, 3
                  mulw         s4, t1, t0
                  andi         zero, s8, -1983
                  sltu         s1, t4, a2
                  srai         t2, s6, 43
                  rem          t3, s5, s1
                  sub          s10, zero, s10
                  div          t1, t3, t6
                  auipc        t2, 725269
                  slliw        s7, s1, 31
                  slti         a3, t5, -1749
                  ori          sp, a6, -845
                  srai         s7, a1, 5
                  remu         s6, a6, tp
                  xor          s3, s1, s7
                  andi         zero, ra, -754
                  mulh         s3, sp, t4
                  divw         a2, a5, t5
                  srl          s5, s9, s5
                  divw         s11, t6, s7
                  remu         zero, zero, s3
                  divw         a3, s0, t4
                  srai         s4, a6, 37
                  remw         s10, t4, ra
                  divu         a2, s7, t2
                  xori         t6, t2, -1261
                  divu         a5, t3, s0
                  slt          zero, s1, s1
                  srai         s4, a5, 46
                  div          s6, a2, t2
                  xor          a3, s9, s4
                  andi         s11, a0, 672
                  addi         a3, s10, 595
                  div          s7, s0, t0
                  addiw        t3, a2, -734
                  sra          a7, s6, zero
                  remuw        a0, a4, s7
                  sltu         a3, s7, a0
                  sub          ra, gp, zero
                  add          t2, a6, gp
                  srlw         a4, t3, s4
                  and          a3, a0, s6
                  sraw         s4, t6, s10
                  srliw        ra, t0, 16
                  srai         a4, s6, 44
                  andi         s1, s1, 480
                  sltiu        a7, s0, 25
                  or           s8, a5, a2
                  sltu         t2, a6, s7
                  xori         t6, a0, 2011
                  addi         s6, a0, -153
                  srl          a2, a3, t6
                  mulw         t0, t5, sp
                  mulhu        s3, t0, t5
                  add          s10, s6, a6
                  slt          t1, t1, t3
                  mulhsu       s11, s9, a2
                  srliw        t2, s8, 9
                  mulhsu       s6, s6, s10
                  srli         s5, s6, 5
                  srliw        a6, s3, 3
                  remw         a5, a7, tp
                  subw         sp, a3, s1
                  slt          a0, s11, sp
                  mulh         ra, a7, gp
                  sra          a4, a0, a5
                  subw         a1, a1, s4
                  or           s2, s5, zero
                  mulh         s0, s5, s4
                  auipc        t6, 1027773
                  subw         a6, a0, t6
                  remw         s3, s3, s8
                  slliw        sp, t1, 8
                  divw         a5, s11, s4
                  mulw         a2, t2, s4
                  andi         s5, s0, -1052
                  sraiw        t3, a4, 24
                  mul          sp, s6, t5
                  slliw        s8, zero, 19
                  mulh         t3, s7, s1
                  xor          s3, a1, t0
                  andi         s3, s10, -1036
                  xori         t0, a5, -1248
                  mulhsu       a7, s10, s6
                  addiw        s10, s3, -58
                  remu         a3, t6, t0
                  slti         s0, s8, -1992
                  mulhsu       a7, s6, t5
                  mulhsu       s7, a5, s2
                  lui          gp, 1026612
                  slli         t6, sp, 15
                  remu         t6, zero, a2
                  and          s6, a6, s6
                  slliw        t6, a2, 4
                  xor          a5, a5, a3
                  srli         a5, t5, 27
                  ori          t1, a7, -1808
                  div          ra, a5, a4
                  sltu         t3, a4, t5
                  divuw        s10, t5, s4
                  div          s6, a5, zero
                  slli         s2, s10, 20
                  mulhu        s10, s6, s2
                  auipc        ra, 1033983
                  sraiw        s4, s11, 1
                  divuw        s10, s11, s1
                  addw         t3, t0, s0
                  sra          a0, s10, s0
                  lui          s3, 847208
                  sllw         a7, t3, a3
                  mulhsu       a1, t2, s4
                  slti         t3, s0, 1691
                  mulw         s6, s6, a7
                  mulhu        s6, ra, s4
                  rem          s5, a7, s8
                  srl          s10, a3, a0
                  and          a4, s6, t3
                  sraw         s8, t1, s8
                  sub          s10, a0, ra
                  srl          t0, a4, gp
                  slli         a0, t0, 16
                  addi         s4, t1, -150
                  auipc        a2, 118886
                  slliw        s7, t5, 1
                  sltu         s2, t6, a1
                  or           s7, s8, s4
                  srl          s3, s11, a6
                  subw         a0, a7, tp
                  remu         ra, t2, t3
                  div          s4, ra, s0
                  sra          s6, s3, s6
                  addi         s3, t4, -53
                  srl          s3, s7, s7
                  addiw        s0, s7, 1478
                  mulhsu       s1, a5, tp
                  andi         t6, t6, -1282
                  addw         s7, t2, s8
                  mulw         tp, s0, gp
                  divuw        s4, s4, s7
                  auipc        a3, 576014
                  mulhu        a0, s11, a2
                  remw         t6, ra, s7
                  sub          gp, a3, a2
                  ori          s6, ra, 1389
                  nop
                  srlw         s2, s4, s0
                  divu         s6, sp, s11
                  andi         s5, s3, -1559
                  sltiu        sp, sp, -462
                  or           t3, a5, s11
                  mul          t0, a0, gp
                  divu         t1, tp, zero
                  addw         a3, t3, s2
                  or           s2, t4, a3
                  addiw        a4, s10, 1330
                  srlw         s11, t4, s11
                  div          s0, s8, gp
                  sraw         a7, tp, t2
                  sltu         a3, tp, a7
                  slt          t3, t4, s11
                  mul          s10, s2, a5
                  ori          t2, s3, -1796
                  remuw        s4, s11, s8
                  srliw        t0, a5, 23
                  slliw        s11, t1, 17
                  srai         gp, s4, 31
                  mulw         s3, t5, t5
                  mulh         s8, t6, s2
                  sraiw        t6, s4, 20
                  sub          tp, a2, s11
                  rem          s11, s6, t2
                  mulw         tp, sp, s7
                  auipc        a1, 339753
                  addw         a3, ra, t3
                  andi         t1, s6, -894
                  andi         a5, s3, 1244
                  slt          gp, s3, s7
                  mul          t2, s11, t5
                  addi         s1, a0, -450
                  and          a3, a3, s10
                  divu         s2, tp, s1
                  xor          zero, s2, s1
                  addiw        a6, s0, 1175
                  srli         s5, s6, 10
                  sub          t2, t4, a5
                  remw         gp, sp, zero
                  xor          a2, s10, s11
                  sllw         a0, s5, s7
                  slti         gp, t1, -336
                  addi         ra, t5, 466
                  mulhsu       s1, a3, s4
                  addiw        gp, a1, 165
                  divuw        a3, a0, a2
                  xor          gp, s7, t4
                  or           s2, t3, s3
                  andi         s3, t5, 1345
                  div          s1, t0, t1
                  addw         s6, a5, t1
                  subw         s0, s0, s8
                  srli         zero, a4, 17
                  sll          s6, a3, s10
                  sllw         gp, t1, s9
                  slti         a2, s0, -1328
                  srai         a0, a4, 49
                  mulw         sp, sp, a3
                  sltiu        a5, t1, 966
                  sraw         s8, t1, s11
                  ori          a4, sp, 374
                  remuw        s10, zero, a1
                  sll          ra, s8, a0
                  sraw         t3, sp, s9
                  sltiu        s8, a1, 931
                  sraiw        gp, t1, 6
                  divuw        a1, gp, s10
                  andi         gp, ra, 763
                  remu         a7, zero, s4
                  subw         a3, ra, tp
                  or           s8, s5, t1
                  div          a6, zero, s2
                  mul          s6, zero, s3
                  srli         gp, t1, 21
                  divw         t2, gp, ra
                  sltu         s8, t6, s7
                  srliw        a4, a5, 30
                  sllw         a2, s5, s1
                  xor          gp, s1, s6
                  divuw        s1, t4, a6
                  mulhu        s5, s4, a0
                  and          s1, sp, s7
                  div          a5, tp, a1
                  xor          s5, a0, s3
                  srliw        s3, gp, 11
                  srli         s0, s9, 12
                  mulw         zero, a2, t1
                  mulhu        s4, t3, t4
                  xori         s5, a6, 27
                  divuw        s1, s9, s4
                  auipc        a4, 550296
                  divuw        t2, t4, t6
                  ori          a6, s10, 1617
                  remu         ra, s4, s3
                  srliw        t6, a6, 15
                  nop
                  srai         s0, s1, 45
                  auipc        a3, 639702
                  xori         t3, a1, 1001
                  mulh         a7, t4, a7
                  andi         a5, a0, -943
                  xor          a2, s0, zero
                  or           a2, s0, s8
                  xori         sp, tp, 1551
                  sll          s1, s4, s10
                  sltu         tp, s6, s3
                  sllw         a1, a3, s4
                  mulh         s11, a2, t3
                  addw         s3, a7, s0
                  remw         a5, a5, t4
                  and          a6, a2, t1
                  addiw        t2, a3, 1163
                  divw         a3, a7, s8
                  or           tp, a4, ra
                  sra          a2, t1, a6
                  addiw        s1, a5, -654
                  sll          s4, a0, s5
                  andi         a5, t2, -491
                  add          s8, s1, t5
                  slliw        s5, s6, 31
                  remw         a1, t2, s7
                  slli         tp, tp, 50
                  mulhu        a1, s8, ra
                  sub          s10, s5, s10
                  srli         s1, t3, 48
                  sllw         s0, t1, gp
                  add          ra, a2, a7
                  rem          sp, s11, s8
                  remuw        s11, a7, s6
                  sra          t0, s3, gp
                  ori          a2, a3, -1334
                  sra          s7, a1, a4
                  sll          s10, s6, a5
                  remw         s3, ra, t0
                  nop
                  slt          a1, sp, t0
                  sub          s7, s7, gp
                  addi         t3, sp, -179
                  addw         s2, sp, s4
                  sraw         s10, t3, t1
                  sltiu        s5, a6, -1996
                  sra          t0, s1, sp
                  ori          a2, a2, 241
                  mulh         s3, s7, a5
                  srlw         s6, s4, sp
                  or           s2, a6, s4
                  mulh         a4, ra, s1
                  sraiw        t1, a7, 4
                  divuw        zero, s11, zero
                  addi         s6, s0, 839
                  remu         t0, a2, s11
                  sll          s1, s6, t1
                  divw         s6, s6, a1
                  divuw        zero, t1, s9
                  divw         s11, zero, a2
                  add          t6, tp, t2
                  or           s5, t5, a0
                  subw         a4, a4, t5
                  srl          s2, s10, s1
                  sraw         s6, t2, a5
                  andi         s5, a3, 391
                  addiw        gp, tp, 2003
                  add          a0, s9, t2
                  mulhsu       s5, t3, t4
                  addi         a5, a2, -687
                  nop
                  nop
                  mulw         a7, a7, s9
                  nop
                  sltiu        s5, zero, -886
                  sub          a4, s8, t4
                  addi         a1, t3, -1923
                  div          s11, s11, t4
                  addi         s5, t5, -754
                  sllw         a0, s11, s3
                  srli         a4, s6, 38
                  remuw        ra, t1, t3
                  sraiw        s8, s9, 2
                  addi         s7, gp, 1325
                  sra          s7, a2, s7
                  mulhsu       t0, s1, ra
                  mulhsu       s6, a4, s2
                  remuw        s7, s10, t3
                  remuw        t1, s8, s4
                  mulh         a1, s2, t1
                  xor          s1, s1, s2
                  mul          s1, a7, t1
                  slt          s7, t0, gp
                  or           s11, tp, s1
                  sll          a2, zero, zero
                  subw         t2, s6, a0
                  ori          a1, s0, 1266
                  subw         s0, a0, s8
                  srl          s10, sp, a2
                  srli         s6, s5, 25
                  srli         s10, s0, 39
                  srlw         t1, a5, a2
                  addi         s4, a4, -798
                  srlw         s10, a0, s6
                  mulh         s0, t0, a7
                  slliw        s4, a7, 18
                  srli         a7, t4, 53
                  xor          s11, a3, t0
                  srli         t6, t4, 55
                  addi         a1, zero, -1014
                  remuw        t1, s11, t1
                  remu         s8, t3, t6
                  sub          tp, a3, gp
                  subw         t6, s8, s2
                  sltiu        s3, t3, -49
                  remuw        s11, s5, s8
                  auipc        s10, 296929
                  subw         a0, s2, a7
                  add          s4, s3, s10
                  add          s7, a2, ra
                  divw         a6, s4, zero
                  andi         s10, t5, 1980
                  addi         a0, t5, 573
                  srl          t1, t3, a1
                  sll          a3, t4, s11
                  subw         tp, zero, sp
                  rem          s1, a5, s4
                  add          a2, zero, a7
                  sraiw        zero, t4, 1
                  sraw         a7, s3, t2
                  sll          s8, s7, sp
                  remu         ra, a5, a7
                  sub          t3, a3, sp
                  sra          a3, t1, tp
                  andi         s8, t5, -1612
                  mulhsu       a5, gp, s7
                  div          s5, a2, s11
                  remu         a5, t1, s9
                  srlw         zero, t6, a6
                  mulh         sp, gp, s2
                  srlw         s8, a7, a7
                  mulhu        a3, t6, t1
                  slliw        s8, tp, 4
                  sra          ra, t0, zero
                  srl          t1, a6, t1
                  addiw        s3, s8, -342
                  sra          s7, s0, s10
                  rem          t0, a3, t2
                  rem          t6, zero, t1
                  mulhsu       a1, a0, t5
                  sraiw        a2, a0, 4
                  remu         ra, ra, a1
                  addw         a6, a2, s2
                  mulh         a4, t3, t0
                  srl          t1, a4, a6
                  div          a1, s8, t0
                  srai         t6, a6, 24
                  mul          a5, zero, s10
                  srlw         sp, s11, s8
                  ori          sp, s0, 1459
                  srliw        s0, a0, 15
                  divu         t1, t6, t1
                  auipc        s8, 302607
                  addiw        a1, t6, -1849
                  srli         s6, a0, 28
                  slli         s7, a1, 61
                  nop
                  sltu         s0, t5, sp
                  srli         s10, a4, 62
                  mulhu        t0, a2, a2
                  div          zero, t2, t4
                  slt          s2, ra, a2
                  lui          s8, 707835
                  srliw        zero, s2, 6
                  auipc        s5, 1037263
                  xor          gp, t0, t3
                  divu         s3, s6, a4
                  srliw        a6, s10, 7
                  divuw        s6, sp, t5
                  and          ra, sp, t4
                  divw         s10, a6, s6
                  srliw        t3, s6, 21
                  srlw         s10, a7, a5
                  remw         tp, a7, t5
                  slliw        sp, s6, 8
                  andi         t1, s10, 1966
                  divu         s11, a7, t4
                  slt          a3, a5, a5
                  addiw        a1, a4, 201
                  slt          a7, gp, t0
                  subw         s2, s4, s10
                  subw         s11, s9, a6
                  sraiw        t0, s2, 27
                  srliw        sp, t5, 3
                  sub          s8, tp, t5
                  srlw         a7, a5, s0
                  divu         s5, s5, ra
                  rem          s3, s4, s2
                  divw         s6, s0, a7
                  sltu         s4, t3, s3
                  div          s0, a6, a3
                  addiw        s7, s8, 1625
                  slliw        s0, t0, 27
                  xori         a7, sp, 1200
                  slli         a5, a3, 56
                  ori          s0, s4, 532
                  add          zero, s9, s11
                  divw         s8, a1, s0
                  xori         a6, zero, 1853
                  sllw         s1, a7, t2
                  sraiw        a4, s11, 21
                  xori         zero, t1, -1430
                  lui          s7, 878822
                  sra          a1, s0, s0
                  slti         gp, t1, 1910
                  sraiw        s5, a0, 3
                  sraiw        ra, s2, 24
                  div          s7, s8, s7
                  mul          a2, ra, s0
                  add          s11, s11, s11
                  mul          s4, a1, t5
                  remu         s3, a4, a2
                  sub          zero, s5, zero
                  addiw        a5, s11, 832
                  mulhu        s11, s0, t3
                  sllw         a5, gp, zero
                  divuw        s2, a6, a5
                  slli         t6, a7, 54
                  nop
                  sra          s4, s8, gp
                  srlw         s6, s5, a4
                  slt          s0, a6, t6
                  divw         a6, s4, s11
                  and          a7, a5, t0
                  or           s11, s11, s8
                  andi         a7, s1, 911
                  addiw        s11, sp, -895
                  sltu         s7, tp, s10
                  sll          a2, s10, t6
                  srai         s7, s2, 54
                  remuw        a3, s1, s0
                  addi         s3, sp, 1375
                  sub          s8, s6, s3
                  add          s2, t1, a0
                  lui          a1, 749311
                  sraw         a3, s0, a0
                  subw         a7, s6, a2
                  srli         s3, t1, 2
                  mulh         s5, s0, sp
                  xor          s2, gp, s7
                  andi         tp, a1, -1770
                  sra          s6, t4, s10
                  slti         a6, t1, -151
                  addiw        a2, a7, 1006
                  slti         sp, s1, 309
                  sltiu        t3, tp, -108
                  sltu         t0, a2, s3
                  sll          t2, t6, a6
                  nop
                  or           t3, ra, s2
                  sll          a5, s9, s2
                  addiw        s0, ra, 910
                  srai         t3, s4, 45
                  remuw        t0, s8, t1
                  auipc        a2, 383652
                  remuw        t3, t4, zero
                  remuw        a0, a5, gp
                  divu         t0, s3, s2
                  sraiw        s0, a5, 21
                  mulh         t3, a0, s9
                  and          s5, s1, s4
                  rem          a4, s11, s2
                  andi         s4, t6, 1110
                  mul          s3, s1, t1
                  remu         s11, t2, a5
                  subw         t3, s11, tp
                  sub          a2, a7, s4
                  sraiw        t3, t4, 13
                  nop
                  sub          s10, t0, t6
                  addiw        ra, s9, 954
                  sraiw        t2, a0, 28
                  srlw         t1, a4, s0
                  sraw         a4, a2, s8
                  rem          t6, gp, ra
                  sltiu        a4, s5, 245
                  or           t0, a7, gp
                  mulhu        s3, a5, s11
                  nop
                  remw         zero, a3, t1
                  subw         s8, s1, a6
                  andi         s0, s3, -1922
                  sll          t1, s7, tp
                  srli         a7, ra, 40
                  slli         s4, s4, 41
                  sraw         zero, t6, a3
                  subw         s11, s1, t3
                  divw         s5, a0, s2
                  slli         zero, s9, 0
                  sltiu        a3, t6, 749
                  subw         ra, sp, s5
                  srl          t6, t3, tp
                  xor          a5, t0, a7
                  add          a1, s8, sp
                  mulhsu       s3, a2, sp
                  ori          s8, a4, 2008
                  srliw        a3, a1, 11
                  sraiw        s1, a7, 12
                  sraw         s5, t2, s7
                  sllw         s4, s9, s0
                  divu         s0, s10, s11
                  addiw        s6, ra, 788
                  srli         a5, a2, 1
                  ori          t6, s6, 1664
                  mulhu        a3, t6, s0
                  lui          a2, 634213
                  sll          s11, a3, gp
                  srli         t2, s7, 41
                  auipc        a3, 1022664
                  sraw         a2, s1, s8
                  sra          a6, a4, a6
                  lui          a4, 359883
                  addiw        s11, s6, -212
                  xori         s7, s8, 923
                  xor          tp, s5, s5
                  mulh         a3, a3, s2
                  slliw        a1, s1, 8
                  srli         s11, a5, 62
                  sub          tp, s8, a6
                  srliw        t6, a0, 4
                  remu         t3, s5, s9
                  remu         t3, s5, s10
                  slliw        sp, a5, 22
                  srai         a7, t3, 50
                  divu         s3, s3, s4
                  mulh         a6, a5, s6
                  divuw        t6, a7, a0
                  sraw         a2, s3, s6
                  lui          s5, 263100
                  slti         s6, s3, -1025
                  divw         gp, s5, a7
                  sllw         s10, s7, a6
                  srli         a7, s1, 27
                  andi         t3, s0, -1615
                  remuw        a0, s6, s7
                  xor          s10, s2, sp
                  subw         s3, tp, a0
                  lui          a5, 500381
                  subw         a0, ra, gp
                  and          t1, s1, s1
                  slti         s8, s7, -941
                  or           a3, a4, a6
                  auipc        s6, 253987
                  divw         s1, sp, a3
                  sll          a3, s8, s6
                  ori          sp, a3, -1852
                  xor          s5, s2, zero
                  sltiu        a3, a6, -811
                  mulw         s1, t5, sp
                  remuw        a4, s9, s3
                  ori          t3, s1, 1149
                  addiw        s3, s1, 1263
                  div          s3, s5, s7
                  rem          a6, s3, a6
                  divuw        s8, a4, a0
                  remu         s3, sp, t0
                  sllw         t3, s3, s0
                  remw         a7, a0, s6
                  slliw        t0, a3, 27
                  slt          s7, s7, a1
                  slti         t6, a5, -791
                  srlw         s3, s11, s8
                  sraiw        gp, s3, 26
                  or           s6, t5, s2
                  xor          tp, tp, a0
                  subw         ra, t6, a2
                  sllw         tp, s3, sp
                  mul          s3, s4, zero
                  mulw         a0, tp, t5
                  or           zero, sp, a3
                  addi         a7, ra, 418
                  divuw        s2, s9, a7
                  sltu         t3, s1, s7
                  ori          t0, t4, -656
                  andi         s8, t3, 1594
                  ori          tp, s11, -1854
                  rem          s0, ra, s0
                  sltu         gp, t3, a0
                  mulhu        s6, s11, t2
                  lui          s11, 974094
                  divuw        s7, s4, a1
                  sllw         t1, a1, t6
                  sltiu        ra, s7, 651
                  divu         s5, ra, ra
                  addi         s10, s1, 2018
                  div          t6, a0, t1
                  sltiu        a0, zero, -117
                  sll          s3, gp, s4
                  addw         s4, s6, s2
                  mulw         t0, s11, s11
                  mulh         s11, t5, ra
                  div          s4, a6, sp
                  slt          a3, s0, t0
                  mulhu        s4, s2, sp
                  mulw         sp, s8, s5
                  mulhsu       s10, s6, a0
                  srai         s10, a7, 23
                  and          a2, s8, s10
                  addi         a7, tp, -1300
                  divu         t3, s10, s9
                  and          t3, s11, s11
                  sllw         a3, s5, t6
                  srli         a7, t0, 58
                  divu         t1, s10, a0
                  mul          a3, s3, a2
                  auipc        a3, 583060
                  addi         t2, a1, 1740
                  mulh         s1, zero, t3
                  addiw        a5, gp, -464
                  nop
                  srliw        t2, t6, 27
                  andi         s1, ra, -50
                  divuw        a0, a4, t5
                  or           a0, t4, s7
                  and          s8, a5, t1
                  or           gp, s7, a0
                  ori          s11, s10, 172
                  remw         a1, t3, a7
                  auipc        s7, 554180
                  sllw         a5, a3, t1
                  rem          s11, t4, s7
                  remw         t6, a0, a3
                  ori          t0, t2, 1644
                  sltiu        sp, a4, 545
                  srliw        s8, sp, 10
                  sll          t0, s0, s1
                  div          s10, a5, sp
                  sltiu        a3, a3, 658
                  ori          sp, tp, 396
                  slti         t0, a3, -373
                  srli         ra, s9, 2
                  sra          t0, s5, a1
                  slt          a5, s2, ra
                  sll          s7, a7, t1
                  remu         t1, a1, s3
                  srli         s4, s0, 59
                  addw         t3, s4, t2
                  mulhsu       s6, a0, s0
                  sra          a2, a1, s11
                  mulhsu       zero, s2, s0
                  slt          a7, a7, s6
                  srlw         s1, s6, tp
                  addi         s8, a1, -1684
                  divw         zero, a1, t6
                  sll          a2, s6, a5
                  sraiw        t6, a3, 3
                  sltu         a2, s7, a6
                  and          tp, s8, a2
                  srliw        t0, a2, 2
                  addw         s10, t4, s0
                  mulh         a3, s7, s8
                  addiw        a2, gp, -1258
                  subw         s11, a5, gp
                  sll          a3, a2, a4
                  srliw        s0, a1, 19
                  divuw        s4, a3, t0
                  slliw        t3, a2, 27
                  mulh         a2, zero, a2
                  remu         s11, a5, s0
                  sltiu        s3, a5, -780
                  mul          ra, a2, t0
                  subw         a4, a5, a1
                  divu         tp, s0, t1
                  srli         a4, s2, 33
                  sub          s6, s11, sp
                  remw         sp, a7, s8
                  srliw        s1, s10, 7
                  addw         t6, a5, a0
                  srai         s10, tp, 19
                  sll          ra, s10, t5
                  addi         t2, t4, -823
                  auipc        t6, 828917
                  remu         s10, s3, a7
                  addiw        zero, s5, -1148
                  auipc        t3, 550958
                  nop
                  divu         s0, zero, s7
                  sll          a7, sp, a0
                  andi         s7, s2, 1494
                  divuw        s10, sp, s2
                  slt          sp, t6, s4
                  srli         t1, t5, 34
                  mulhu        sp, s11, t3
                  divu         a0, a4, t2
                  sltu         s5, s10, s5
                  xori         zero, t4, 591
                  sraw         a1, a2, t0
                  divu         tp, t2, t5
                  auipc        t6, 1029921
                  sll          t6, s2, s3
                  mul          s10, s11, s11
                  ori          t2, a4, 523
                  srlw         a6, gp, sp
                  remuw        ra, a4, a5
                  sraw         a3, s10, a6
                  srl          a0, s4, a3
                  sra          s3, s5, t2
                  andi         a1, sp, -390
                  mulhsu       s4, t6, s5
                  mulhsu       s8, a2, s10
                  srl          a2, a6, a4
                  andi         zero, t4, -1648
                  subw         t3, a5, a2
                  xori         sp, t6, 1218
                  addiw        ra, s3, -740
                  srl          a2, s9, t3
                  div          s11, t1, a5
                  divu         zero, t2, s4
                  remuw        a0, tp, s5
                  remw         s5, s9, t5
                  sllw         s5, s8, s8
                  slliw        a2, s5, 18
                  srl          s10, s3, s1
                  nop
                  sraiw        s10, s9, 14
                  xor          a2, s9, s8
                  rem          a0, t4, a0
                  divuw        a6, t4, t6
                  div          t2, a5, a5
                  or           s0, tp, s4
                  sltu         a4, a1, t2
                  div          s11, a7, s3
                  divuw        s3, a1, t5
                  mulhsu       a6, s8, s7
                  xori         s6, a1, 169
                  lui          tp, 679558
                  slti         s0, s4, 978
                  sltu         gp, a3, t1
                  remu         s0, a2, s4
                  slti         zero, ra, -1073
                  remw         s5, tp, a0
                  sra          ra, a7, a2
                  srlw         s2, a3, s3
                  slliw        a3, s9, 28
                  sltiu        s3, a3, 768
                  sra          t2, t1, t5
                  add          s5, s6, a1
                  remuw        s5, s3, a5
                  srlw         s11, t0, t0
                  srl          s5, s5, t4
                  nop
                  mul          s10, s1, s3
                  srlw         s11, a4, s11
                  lui          a6, 179248
                  or           t6, s11, a1
                  srliw        s2, t2, 23
                  divuw        s5, ra, a7
                  and          ra, t2, s10
                  addi         a0, s5, 482
                  sllw         a7, s0, t3
                  sll          a0, a1, t5
                  sub          gp, ra, s3
                  nop
                  addi         t3, s6, -129
                  andi         s10, a0, -609
                  remu         t6, a4, a3
                  remuw        t0, a0, s6
                  add          a7, t1, t6
                  mulh         s4, a2, a5
                  auipc        s2, 633052
                  mul          s5, t0, t5
                  xor          t6, s1, a0
                  nop
                  and          t0, ra, t4
                  nop
                  sraw         gp, s7, a4
                  sllw         s1, a0, s3
                  srli         a6, s5, 44
                  add          t6, a0, a2
                  xor          zero, a1, gp
                  or           t3, s0, s5
                  andi         s5, t4, -11
                  div          sp, s9, t5
                  srl          s2, s10, t5
                  sra          a2, a0, s11
                  slti         a6, a6, 1345
                  and          ra, t3, t4
                  auipc        a0, 733442
                  divu         s6, t1, t5
                  sraiw        a7, a5, 24
                  xor          t2, s4, a2
                  or           sp, s9, s9
                  and          t6, t1, t3
                  sraiw        s1, s2, 19
                  div          t6, tp, a4
                  slliw        a4, a2, 2
                  remu         a0, zero, a1
                  div          sp, a2, a2
                  divuw        s10, t5, zero
                  srl          s10, t6, a2
                  sltiu        a3, s0, -787
                  divuw        s10, s6, a5
                  addiw        a4, t0, -1112
                  srai         a2, t0, 44
                  ori          t2, t5, 1469
                  sll          t1, a4, t5
                  slliw        ra, s8, 14
                  srlw         s5, a1, a6
                  remu         sp, s1, t0
                  mulw         a3, a4, t2
                  mul          s4, a3, s2
                  sltu         s4, t0, s6
                  remuw        t0, gp, a7
                  slliw        a7, s0, 1
                  srl          gp, sp, s9
                  addw         gp, s2, a7
                  mulh         s5, t0, sp
                  ori          a2, sp, 1820
                  srliw        zero, s6, 24
                  auipc        s8, 93511
                  slt          a4, s5, ra
                  addi         s7, zero, 794
                  sllw         a0, a5, s11
                  andi         s10, a1, -550
                  remu         a4, t4, sp
                  andi         s3, t0, 187
                  sraw         t3, a6, gp
                  remw         t3, t1, s2
                  mul          a6, s7, t4
                  sllw         tp, t1, t2
                  div          a7, s6, zero
                  sltiu        t1, t0, 1072
                  xor          a6, a6, a6
                  mulhsu       t1, ra, s0
                  and          sp, s1, s3
                  rem          s7, s6, a4
                  div          a5, a3, a0
                  sra          t6, s9, s4
                  remw         s4, sp, s8
                  and          a2, a3, s3
                  xori         t0, tp, 96
                  auipc        tp, 330783
                  slliw        a6, zero, 21
                  divu         s5, sp, t1
                  srli         s10, s3, 11
                  sra          s4, ra, ra
                  auipc        s3, 786892
                  remuw        s5, gp, t1
                  slti         a5, ra, -653
                  mulw         s4, s7, s7
                  srli         a4, t2, 46
                  slliw        gp, s7, 12
                  rem          s4, tp, a5
                  slliw        t0, s10, 17
                  slliw        s8, gp, 24
                  srai         a0, s9, 63
                  divu         s2, s10, sp
                  auipc        sp, 656124
                  nop
                  remu         t2, s3, t1
                  slti         s7, t2, -1816
                  sub          a2, t1, t3
                  sraiw        sp, a1, 28
                  divw         a5, sp, s6
                  subw         t1, s1, a6
                  sra          s4, t1, s0
                  addiw        t1, s8, 26
                  or           s8, t1, gp
                  mulw         s7, a3, a2
                  remuw        s10, t6, s0
                  addiw        t3, s4, 249
                  xor          a1, s4, t2
                  addi         tp, s11, 1128
                  srl          t6, s2, s11
                  sltiu        a0, t5, 1183
                  sltu         a5, zero, a5
                  sraiw        a4, s7, 17
                  div          s11, sp, s3
                  addi         s7, t3, 1831
                  remu         a6, ra, t4
                  remu         a7, tp, gp
                  sltiu        a3, t4, -351
                  sllw         gp, s1, t3
                  mulh         s5, a1, s11
                  nop
                  divuw        t1, t5, t1
                  sltu         a4, a1, tp
                  addi         s0, s1, 1101
                  andi         t6, a5, 1557
                  sltu         ra, a7, t3
                  divu         s3, s8, t5
                  remw         zero, s10, t1
                  mulw         s5, a4, s4
                  addi         a6, s10, 578
                  subw         t6, s7, gp
                  sraiw        t0, t0, 21
                  divu         s8, t6, a5
                  sltu         a4, ra, s2
                  add          zero, tp, a3
                  sra          s7, t4, gp
                  remuw        s2, a5, sp
                  mulw         t2, a1, a2
                  remw         s11, s0, s10
                  rem          ra, sp, gp
                  mulhsu       a6, a3, a5
                  addi         s3, s8, 638
                  sra          s2, t4, s11
                  and          s11, s11, a1
                  nop
                  subw         s5, t0, a4
                  rem          t6, t2, t0
                  sub          s1, s8, s4
                  mulw         a2, s4, t4
                  addi         a1, a0, 166
                  xori         tp, s8, 2009
                  lui          gp, 479249
                  sll          s1, t6, s9
                  sltiu        a2, t3, 194
                  remuw        s1, s8, s4
                  srlw         s3, s9, ra
                  add          s1, a7, sp
                  remuw        s5, s6, s9
                  sra          t6, s4, ra
                  xori         s0, a1, -1077
                  sltu         ra, t0, a3
                  sll          a1, a4, s4
                  add          s4, zero, a6
                  sltu         t1, s5, a5
                  sraw         s8, a2, s1
                  srlw         s6, t3, a7
                  lui          a3, 727299
                  sltiu        tp, a1, -1292
                  andi         gp, a1, -672
                  xor          a1, s8, a0
                  rem          s11, a2, a3
                  srlw         a7, a2, s5
                  srl          a7, t5, a4
                  ori          a7, a5, -1934
                  andi         t0, s9, -2036
                  or           s5, s9, t3
                  slti         ra, s6, -906
                  slti         a1, a2, -417
                  mulh         t3, s1, s2
                  auipc        ra, 455223
                  mulh         s10, a0, a7
                  sllw         a2, a3, s8
                  sra          t6, s5, s3
                  add          gp, a4, a2
                  remw         t0, s7, ra
                  nop
                  subw         t6, zero, t3
                  slliw        s4, s4, 4
                  divuw        a2, s4, a5
                  remw         a2, a1, t3
                  divu         a7, a1, s4
                  addw         s7, a2, s9
                  remu         s10, t4, t6
                  addi         t6, t3, -1217
                  sraw         a3, t4, a4
                  divuw        a4, s11, s4
                  lui          a2, 371313
                  sll          ra, t1, t2
                  sub          a7, s7, s3
                  div          a6, a0, a1
                  mulw         s8, s8, a1
                  remu         s5, s7, a4
                  sltu         s11, a1, s6
                  or           s5, s2, s5
                  sltu         s11, a1, a0
                  remuw        a1, a2, s0
                  srai         a7, a2, 39
                  div          s7, t2, s3
                  srli         ra, t4, 62
                  xori         t3, t1, 287
                  rem          s0, a5, a6
                  and          a3, s8, sp
                  xor          zero, tp, t1
                  sltu         s1, t3, s9
                  sll          s6, ra, s6
                  andi         a1, tp, -473
                  addiw        a7, ra, -1212
                  mulhsu       s7, ra, s11
                  mul          s8, a2, s5
                  sllw         s2, sp, a0
                  srai         s1, a6, 30
                  mulw         s2, t6, t6
                  slti         s3, s5, -1882
                  mulhsu       s3, s8, a7
                  xor          a5, s10, s4
                  nop
                  xor          a7, s9, a4
                  srl          s1, s9, a4
                  sra          t3, ra, tp
                  rem          t0, s9, ra
                  andi         a7, s11, -544
                  remu         a1, sp, t5
                  srli         t1, a6, 47
                  slliw        s7, tp, 26
                  slliw        a3, a3, 1
                  add          s6, s8, s7
                  div          s0, s7, sp
                  divw         a5, a5, ra
                  remuw        t1, s9, s0
                  div          a0, t1, s4
                  slti         s10, a2, 781
                  ori          a4, a4, -1541
                  mulw         t6, a3, s0
                  slt          s3, s5, t2
                  remuw        sp, a0, s1
                  and          a7, a4, ra
                  xori         s6, t5, 897
                  mulhu        ra, t6, s2
                  srlw         s2, a0, a4
                  or           t6, s4, a7
                  nop
                  mulh         s11, ra, sp
                  mulw         t3, s4, a2
                  divu         a4, gp, s2
                  add          gp, ra, s11
                  and          tp, s6, a5
                  sraw         a1, t6, s11
                  add          t1, t3, t3
                  mulw         a0, a4, ra
                  rem          s0, a1, zero
                  mulw         t2, t3, a3
                  remuw        ra, s3, t0
                  srlw         t3, s4, a3
                  nop
                  divw         s0, s10, a7
                  srai         tp, s11, 27
                  or           a2, t4, s5
                  sllw         t3, s3, a1
                  or           ra, zero, s5
                  remw         s5, a2, a0
                  mulhu        t0, a5, a6
                  divw         s5, a5, s6
                  ori          s11, a2, -104
                  sll          t1, s7, a5
                  addi         a4, s11, 2015
                  remw         a2, s11, s10
                  srliw        s2, s3, 23
                  sraiw        s7, s4, 30
                  addw         t0, s2, a5
                  remw         a0, a5, tp
                  xori         s2, t0, 1887
                  mul          gp, s11, t3
                  srl          a7, a0, tp
                  rem          t1, s5, t3
                  sll          s7, a4, s11
                  sltu         t0, sp, t1
                  addiw        tp, a6, -1866
                  sll          s11, s0, s6
                  sraw         s10, a2, s2
                  or           ra, zero, t1
                  sra          s5, a4, s11
                  rem          s4, ra, a1
                  subw         a7, s6, a1
                  nop
                  divu         s11, t3, a1
                  andi         s6, s5, -747
                  mulh         s4, t5, s7
                  sltu         sp, t2, t2
                  divw         a4, zero, s6
                  sltiu        s0, t3, -1230
                  sltiu        a4, s8, 1331
                  srlw         sp, s0, a2
                  sltu         s5, t5, s10
                  divw         s11, a7, s2
                  and          t1, s0, tp
                  nop
                  divuw        s6, s8, s9
                  mul          zero, s0, a0
                  divuw        a6, s7, a4
                  sltu         s10, a7, t4
                  ori          s11, s5, 473
                  srliw        a3, s9, 1
                  auipc        s10, 554416
                  slliw        a7, a5, 11
                  mulhu        s2, t3, zero
                  sra          s8, t2, a7
                  slli         s5, a5, 3
                  and          s1, s6, s10
                  andi         a6, s10, -1444
                  srai         s10, s6, 45
                  addi         s5, s0, 1311
                  addi         t1, sp, 778
                  srl          t3, s9, a4
                  sltiu        s5, gp, -806
                  andi         s0, sp, -1219
                  div          a0, a4, s2
                  srli         s6, s1, 4
                  srlw         s0, s7, s3
                  slti         t3, ra, 1581
                  xori         ra, sp, -497
                  mul          s5, t1, s11
                  remuw        sp, a6, tp
                  sub          s2, s11, gp
                  lui          s7, 449145
                  remw         s3, t1, s9
                  auipc        s6, 87709
                  add          s5, s1, ra
                  sllw         t3, t6, s6
                  mulw         t6, s3, t4
                  slti         t3, ra, 582
                  subw         s8, t3, t3
                  add          s5, ra, s5
                  sllw         a4, s10, s11
                  mul          s1, sp, gp
                  add          t1, a5, s11
                  srlw         tp, t6, a7
                  sraiw        s6, ra, 7
                  divu         t6, t6, t6
                  divw         s11, a6, s2
                  mulw         s8, a5, s11
                  sraw         tp, s11, s11
                  and          a2, a7, zero
                  andi         s4, gp, -438
                  subw         s6, ra, sp
                  sub          s0, zero, s0
                  ori          t6, zero, 830
                  auipc        s4, 873033
                  andi         zero, s8, 353
                  add          sp, s2, s3
                  divu         s10, s8, t1
                  sll          s5, s2, t3
                  mulhsu       t6, s7, a7
                  slti         t1, s9, -1864
                  mulhu        t1, s3, t6
                  divu         s4, t4, a5
                  sll          a1, t2, t3
                  xor          t3, s7, zero
                  rem          s4, s8, t1
                  add          s7, tp, s10
                  remw         t3, s9, ra
                  sraw         s10, s1, sp
                  sllw         a6, a5, a1
                  nop
                  sraw         s7, tp, a5
                  remu         s10, s7, s4
                  add          sp, t5, zero
                  xor          zero, t5, a5
                  srli         t6, s5, 40
                  nop
                  and          s11, s8, s2
                  slti         a3, s4, -429
                  or           s7, s7, a1
                  divu         a4, s2, s4
                  subw         a7, a1, a2
                  sraiw        s6, s6, 31
                  or           a2, s11, a0
                  xor          s8, ra, a7
                  remu         s8, a1, s9
                  sltiu        tp, t6, -2042
                  slli         s2, a7, 46
                  divu         s5, t0, s8
                  sraiw        s5, s0, 12
                  sub          a7, t4, a7
                  srlw         s0, t5, t2
                  nop
                  sra          t2, s0, t3
                  div          s11, a3, a6
                  add          t1, s10, s9
                  remw         s2, t0, a6
                  auipc        s10, 1043419
                  srli         a3, t1, 11
                  divu         s8, s6, a7
                  and          a6, s4, tp
                  mulw         a7, zero, tp
                  divuw        s6, t3, a5
                  remu         s2, s6, zero
                  xori         s3, s8, -804
                  mulhsu       s11, ra, a7
                  sraw         ra, s3, s7
                  sll          ra, s3, ra
                  sltiu        s2, a0, -489
                  sraiw        a3, s7, 14
                  divw         t3, t2, s2
                  slti         a2, t6, 332
                  slli         s6, s4, 13
                  andi         a0, a7, -807
                  ori          s10, s0, 1925
                  sll          s5, a6, s3
                  rem          t6, s5, s3
                  sltiu        s10, zero, 155
                  addiw        ra, t2, 525
                  remw         a7, s2, a4
                  slt          sp, ra, a3
                  sllw         s0, a2, a1
                  addw         s8, s1, ra
                  mulhsu       t1, ra, a4
                  addiw        a4, a6, -1543
                  srlw         s0, s0, s7
                  slliw        ra, s10, 26
                  sraw         gp, t2, sp
                  srliw        s10, a0, 16
                  mulhu        t6, s1, s10
                  divu         t3, s8, s2
                  lui          s11, 581261
                  ori          zero, s8, 205
                  remuw        s4, s3, t6
                  ori          a3, a0, 1840
                  sraiw        a4, s6, 9
                  sraiw        a2, t0, 5
                  xori         s6, a7, 474
                  divu         a2, s8, a4
                  sll          tp, ra, a6
                  srlw         zero, s1, t1
                  srliw        s10, s8, 18
                  sraiw        a5, s0, 22
                  addi         gp, sp, -1212
                  xor          a0, s5, s10
                  sub          s0, s6, s0
                  srai         s2, s5, 9
                  nop
                  divuw        a7, a5, s3
                  slt          s7, sp, a3
                  xori         s5, s6, 1179
                  add          s7, s7, s2
                  add          a7, sp, s3
                  sllw         s0, t4, s3
                  divw         a2, ra, s0
                  remw         a6, tp, s11
                  add          s1, t4, s1
                  srliw        s0, s6, 2
                  slli         ra, t1, 34
                  sub          a0, s11, tp
                  srlw         s11, s6, s5
                  slliw        s8, s9, 27
                  slt          zero, s9, a4
                  srl          t3, gp, s1
                  mulhu        a4, s0, t3
                  mul          s10, a5, a2
                  mulhu        a5, t4, t2
                  xori         a2, a2, -610
                  mul          t3, t0, s11
                  slti         zero, s8, 1831
                  srl          t3, s9, s4
                  and          a7, s8, s11
                  addi         a5, a7, 1576
                  add          sp, s1, s7
                  xori         a5, t4, -991
                  slliw        a2, s3, 6
                  srliw        a5, s11, 15
                  divuw        sp, t0, s0
                  lui          a1, 840717
                  mulw         a1, gp, a7
                  sub          t0, a7, s8
                  and          s1, a3, s4
                  mulw         t0, s0, s8
                  div          zero, a2, s0
                  xori         tp, s10, 1368
                  srlw         s8, sp, tp
                  sltiu        a1, t5, 148
                  remu         a0, s1, s5
                  nop
                  srliw        t2, tp, 9
                  mul          t2, gp, zero
                  addw         t6, s10, a4
                  mulw         zero, a2, zero
                  add          ra, s2, s7
                  mul          tp, t0, t2
                  subw         t6, t6, s0
                  mulh         s5, zero, zero
                  sltiu        s8, s5, -1269
                  mulhsu       t2, s7, t6
                  srai         s5, a7, 36
                  divu         a4, s5, s6
                  sltu         a6, t1, a4
                  or           s5, tp, a4
                  mulw         s4, t6, s2
                  xor          sp, a0, s1
                  srl          s4, s2, s3
                  add          s1, a7, t0
                  andi         t3, a7, -1327
                  xor          s3, a2, t0
                  sltu         a3, a4, s1
                  andi         s0, a3, -654
                  sll          zero, a5, a3
                  srl          s4, t0, a6
                  sub          gp, a6, t4
                  xor          s3, t4, s3
                  div          gp, a5, a6
                  subw         a5, s9, ra
                  sltu         s6, t3, a5
                  srl          s8, a5, s1
                  srai         gp, s2, 23
                  rem          a1, s9, a4
                  srliw        s8, t6, 1
                  nop
                  remuw        a0, s2, a2
                  and          s6, s5, t2
                  srliw        t1, sp, 31
                  sltu         s1, t6, t2
                  subw         t1, a3, t5
                  sub          s2, tp, t5
                  ori          s8, t1, 1695
                  ori          a4, sp, 1123
                  remu         s2, t4, a6
                  and          t2, a3, s0
                  remw         a1, sp, t5
                  sllw         s8, a3, ra
                  sub          s3, s8, t2
                  sll          s11, s3, t4
                  divu         s1, gp, s6
                  divu         a6, s5, a7
                  sraw         t2, a0, s7
                  addiw        gp, t0, 922
                  xori         a7, s4, -1416
                  srli         t2, t1, 28
                  or           s11, t1, s3
                  sraw         t6, a6, tp
                  lui          t6, 498211
                  mul          s4, s1, a0
                  divuw        t0, s7, s11
                  srli         zero, t0, 16
                  divuw        s4, a3, a0
                  slt          t3, t6, gp
                  sraiw        t3, s5, 30
                  slliw        t0, s6, 3
                  slli         a0, s10, 57
                  addiw        a0, s11, -1394
                  slliw        t2, s9, 19
                  rem          a0, t3, t3
                  subw         s2, s9, a4
                  addw         a4, s3, t1
                  lui          s5, 978180
                  srli         s11, s2, 34
                  xori         s6, tp, 1002
                  addw         s4, gp, s10
                  xor          sp, gp, s6
                  srlw         ra, s0, s9
                  sllw         a3, s2, tp
                  srli         s7, s1, 53
                  divw         gp, s4, s1
                  or           zero, t1, s0
                  divw         gp, s2, a4
                  addw         a4, a6, t6
                  subw         t2, t1, a5
                  sub          t6, t5, a3
                  mulhsu       tp, a7, s5
                  sllw         a1, a0, gp
                  subw         a2, s2, t1
                  mulhu        tp, t6, t5
                  andi         a0, a1, -1158
                  mulh         tp, s7, a1
                  slliw        a5, tp, 31
                  ori          t2, s4, 1221
                  slt          s3, s0, s5
                  and          s6, a4, t6
                  srliw        s11, s0, 31
                  sll          a4, s9, t1
                  srlw         t3, tp, t6
                  slti         s0, t3, 370
                  addi         a2, s8, 1568
                  sltiu        a7, s9, -1388
                  addi         t6, a0, -1227
                  addw         s10, a7, s10
                  sra          t3, s2, s9
                  addi         s0, s9, 332
                  sltu         gp, t5, t2
                  xori         a2, s10, 1993
                  addi         s0, s3, -823
                  remw         s1, a4, s11
                  add          t3, s8, a4
                  remw         a7, s1, t4
                  slti         a0, t1, 1173
                  remw         s7, ra, s4
                  sll          t0, s0, t4
                  srai         a4, a5, 2
                  slli         a0, s2, 25
                  add          sp, s3, s1
                  mulhu        s11, a7, zero
                  divw         a6, s11, a5
                  srliw        s2, s6, 24
                  mulh         gp, a1, t6
                  div          s1, s9, s0
                  auipc        gp, 509583
                  srliw        t0, gp, 0
                  divw         t3, a2, s0
                  srlw         a0, s4, gp
                  xori         t2, a5, 1981
                  mul          a4, t5, ra
                  and          s2, a7, a1
                  sraw         a2, zero, a7
                  sllw         a1, ra, a6
                  slti         t1, a3, 1913
                  sllw         a3, s4, t0
                  slliw        s11, s4, 2
                  slli         gp, t2, 0
                  ori          a4, s6, 1923
                  srlw         s8, t3, s5
                  ori          s8, a3, 1949
                  remuw        a7, t5, s0
                  sub          tp, a4, s2
                  remw         a3, zero, a6
                  mulh         a1, a6, a6
                  slt          gp, sp, s11
                  slt          s4, s3, t4
                  divw         s8, a1, t2
                  mul          s1, t4, t4
                  nop
                  sraiw        a7, tp, 16
                  slli         s4, t0, 46
                  sub          a6, a3, sp
                  mulw         a3, t3, tp
                  slliw        t2, s8, 2
                  slti         t1, sp, 1547
                  srl          a6, ra, s11
                  mulw         t0, s0, s8
                  addw         s6, zero, s11
                  addi         s3, t5, -222
                  auipc        s1, 980236
                  sltiu        s0, s2, 1441
                  mulhu        s11, t0, a6
                  addiw        s5, sp, -1686
                  srlw         a3, s10, s6
                  remu         s11, s3, t1
                  srai         t6, gp, 7
                  nop
                  mulhu        s2, t1, a4
                  remu         t2, sp, s10
                  div          a3, s1, s1
                  or           s3, t3, a1
                  slti         s3, s9, 436
                  mulh         s11, s8, gp
                  sllw         a0, a7, sp
                  slli         t1, s8, 6
                  addi         a3, a4, -1224
                  lui          s3, 595523
                  addiw        tp, a3, -281
                  add          a3, t2, a2
                  sltu         t6, s9, a4
                  addi         tp, s7, 725
                  or           sp, t3, s11
                  rem          a4, t4, t0
                  remuw        s6, a1, a1
                  add          a2, a4, t2
                  mulhu        a2, t0, s5
                  xor          t2, s6, sp
                  addiw        a3, s8, -1944
                  srliw        s11, s6, 17
                  or           a0, a7, s7
                  srlw         a7, s11, s1
                  remu         a0, s11, t1
                  sllw         t6, s11, s2
                  slliw        a1, gp, 12
                  auipc        t3, 484179
                  slliw        s7, s2, 25
                  addw         s2, t2, a7
                  srlw         t6, gp, s3
                  mul          t0, a6, zero
                  remw         t6, t6, t5
                  mulh         a1, t6, t0
                  srai         t0, t0, 40
                  mul          s3, a3, s0
                  addi         s11, a2, 1650
                  sllw         a1, s8, sp
                  sll          s0, tp, t5
                  sltiu        s7, a2, -646
                  mulh         s5, a5, gp
                  mul          ra, t3, a3
                  sraiw        a3, t5, 12
                  sllw         a0, a7, s3
                  slti         t2, s5, 319
                  srliw        t3, a5, 16
                  slli         a7, a4, 51
                  sll          t0, t6, tp
                  sll          s2, s4, a7
                  srliw        t6, sp, 14
                  mulw         a0, t0, s0
                  srlw         a5, s1, ra
                  remuw        s1, t6, s1
                  srl          s3, s1, s7
                  mulhu        t0, a5, t6
                  and          t1, s6, a2
                  sltu         s3, a1, s3
                  or           a4, t4, a6
                  sraw         s10, tp, a4
                  sltu         tp, s7, s11
                  subw         t3, t5, s0
                  sra          sp, a1, s6
                  mul          a0, a1, s1
                  srai         t2, a0, 54
                  srl          zero, s2, a1
                  mulw         gp, s3, s6
                  sltu         sp, t5, s6
                  srlw         sp, t0, sp
                  auipc        s1, 761899
                  mulhsu       s7, a1, a1
                  srl          a0, a0, gp
                  sltiu        s1, s1, -1403
                  addiw        t2, s9, -1296
                  remw         t6, s9, a1
                  remuw        t0, t4, a3
                  srl          s0, t1, s7
                  srl          t1, s8, gp
                  slli         a1, t2, 61
                  srai         t2, s8, 38
                  divu         ra, a6, zero
                  slliw        s7, a1, 29
                  lui          ra, 499129
                  divw         tp, a4, a4
                  sraiw        t6, s10, 24
                  subw         s2, s7, s4
                  remuw        s11, s1, a1
                  sub          t1, t3, a6
                  auipc        t3, 810981
                  slli         s5, a0, 28
                  subw         t3, a6, a3
                  slt          sp, ra, gp
                  xori         s0, t2, -1843
                  remw         s1, s9, s2
                  sltiu        s11, t2, -1763
                  sltu         a1, a5, t3
                  or           ra, a2, a6
                  srlw         t1, t4, sp
                  srai         t6, gp, 44
                  div          a2, s0, a3
                  subw         a5, t4, t0
                  mul          tp, gp, t3
                  xor          s5, t0, s0
                  lui          tp, 890305
                  slti         a5, s11, 368
                  remuw        sp, gp, s6
                  andi         a3, s8, -1890
                  divw         a7, s10, s8
                  div          a4, s4, s10
                  sraw         t1, a5, a5
                  divw         s2, s2, t3
                  ori          s6, s10, 1667
                  addiw        a7, s3, 586
                  divuw        ra, s5, s11
                  and          s1, t6, ra
                  auipc        s4, 658387
                  slt          a6, a2, s7
                  or           t2, s11, t2
                  mulhu        s7, t0, a6
                  auipc        a4, 997223
                  xori         s1, a6, -589
                  remw         s11, sp, tp
                  srl          a2, s3, a3
                  mulhsu       t2, t4, a4
                  srlw         s5, gp, s10
                  sraiw        s7, a2, 0
                  srl          a6, a5, t6
                  addiw        s5, s6, -628
                  mul          s8, a1, a7
                  div          t3, a2, t0
                  addiw        t6, tp, 2024
                  mulh         a1, a5, t2
                  mulhu        a7, s7, a3
                  remu         s0, t4, t0
                  addi         s5, t6, 1569
                  mulw         a7, a7, sp
                  srliw        tp, s3, 3
                  mul          s7, t1, t0
                  slliw        s8, a4, 13
                  rem          a3, a1, zero
                  divw         s6, tp, t5
                  slti         a4, a3, -45
                  rem          a3, zero, t5
                  rem          s10, s8, sp
                  lui          a4, 624100
                  auipc        s11, 48362
                  sraiw        s11, a6, 0
                  srl          zero, s0, s5
                  and          s1, a1, s10
                  addi         a7, s2, 838
                  sraw         gp, s4, gp
                  slt          a7, s1, t2
                  slli         s1, s1, 5
                  remu         t0, s9, a0
                  remuw        t2, s10, t5
                  srlw         s2, t5, t1
                  div          a7, sp, s4
                  divu         s0, a6, sp
                  sllw         s10, tp, gp
                  xor          s5, t4, a0
                  slt          t3, t3, ra
                  mulhu        sp, s8, t5
                  rem          a4, sp, s7
                  addi         ra, gp, -892
                  sll          a4, t4, a6
                  sltiu        a1, t6, -1133
                  slli         a5, t1, 44
                  sltiu        a0, t5, -1071
                  sraw         s4, s2, s1
                  mulhu        s1, a7, gp
                  nop
                  lui          a5, 291313
                  slliw        t1, gp, 6
                  nop
                  srai         t6, a6, 35
                  sltiu        zero, s1, -367
                  addw         t3, zero, a2
                  slt          ra, s7, s10
                  nop
                  sra          s6, gp, a7
                  mulhsu       a2, s4, t6
                  remw         t2, s5, t5
                  srli         sp, a6, 27
                  slti         s10, s10, 1093
                  srai         zero, s3, 4
                  ori          a4, s1, 214
                  addw         zero, s11, t6
                  or           a0, a6, s9
                  mulh         s1, s9, t2
                  divw         t0, t2, s2
                  addiw        t1, s4, -344
                  sltu         s5, s2, t1
                  subw         s7, s0, s7
                  addiw        t6, a2, 92
                  mulhu        s11, s5, s7
                  mul          s4, gp, t2
                  addi         a3, t4, 1865
                  slt          zero, t5, s3
                  lui          tp, 33615
                  sra          s5, t6, t6
                  sraiw        zero, t1, 6
                  srli         a5, s1, 1
                  ori          s5, s0, -229
                  addiw        tp, s5, 1091
                  mul          a6, ra, s6
                  xori         t6, t2, 205
                  srliw        a4, s4, 22
                  sll          a5, t3, s6
                  mulhu        a7, s2, t6
                  mul          tp, t6, gp
                  divuw        s10, s8, a0
                  srliw        a6, zero, 22
                  sraiw        s8, t4, 1
                  ori          s10, zero, -1867
                  srai         a1, tp, 16
                  addiw        s5, s10, 276
                  addi         s10, zero, -1937
                  sll          a0, a6, s4
                  slli         t0, s6, 46
                  sra          sp, t1, gp
                  mul          s7, zero, s4
                  sraw         s5, gp, a1
                  remw         s4, s4, a5
                  srlw         s7, a7, s10
                  xor          a7, tp, s1
                  xor          a0, t3, t5
                  mulh         t1, a4, s5
                  divu         s11, t5, s3
                  sll          t6, a1, ra
                  mul          s6, s4, a7
                  subw         t0, s4, s6
                  xor          a5, t1, t0
                  auipc        s1, 663857
                  xori         zero, a4, 269
                  sll          a6, t2, t6
                  sltu         s3, t1, s3
                  mul          t6, s8, a0
                  sltu         s5, s0, s11
                  rem          s3, t3, gp
                  mulhu        a3, s2, t4
                  addw         t0, a7, a5
                  remu         a1, s3, t5
                  sra          s5, tp, s2
                  addiw        a0, t1, -460
                  ori          t3, s8, -573
                  xor          a7, t3, t3
                  xori         s1, s8, 3
                  subw         t6, gp, ra
                  rem          s6, s3, s2
                  remu         zero, t6, t6
                  addiw        t0, s7, -131
                  sltiu        s5, a4, 655
                  mulh         s5, t6, t6
                  sltiu        s5, s4, -2043
                  sltu         s4, t5, a5
                  srli         t0, tp, 35
                  slliw        a4, ra, 18
                  div          s8, s10, a6
                  addi         s7, gp, 619
                  sraw         s2, s8, s6
                  auipc        s3, 185150
                  nop
                  lui          a7, 507198
                  xori         s7, s8, -901
                  lui          s2, 407625
                  slt          tp, a2, s5
                  mulhsu       s4, t5, s1
                  add          a1, a2, s2
                  addw         s7, t6, t5
                  addiw        s3, t2, 495
                  subw         s2, a2, a7
                  sra          a6, t6, t2
                  mulw         s3, sp, t2
                  mul          s10, t4, s7
                  sltiu        gp, a2, -759
                  and          tp, ra, a7
                  srli         tp, t0, 51
                  auipc        ra, 982955
                  slt          s7, t4, t4
                  mulh         t0, a0, s7
                  and          s10, gp, sp
                  srl          t1, a6, t0
                  divu         t6, s7, a4
                  mulh         s0, s9, s11
                  slliw        t3, a0, 25
                  srai         t2, s1, 40
                  sllw         s2, t5, s5
                  auipc        s2, 358851
                  mul          t3, a1, t1
                  mulhsu       a1, s9, s7
                  sltu         s1, s8, s11
                  ori          a5, s5, -1435
                  sra          s6, sp, a4
                  srlw         t6, t6, s4
                  sltiu        a6, ra, 275
                  div          t3, s7, t3
                  sraiw        gp, a3, 24
                  add          a4, t5, s4
                  mulw         s10, t6, sp
                  auipc        zero, 129603
                  mulhu        s7, a4, a1
                  mulh         s1, a1, a4
                  sltiu        t2, t5, 1605
                  addi         s5, s4, -700
                  srai         t3, a7, 33
                  or           t3, t3, s9
                  sraw         t3, s1, t0
                  div          t6, t2, sp
                  ori          a4, a6, -95
                  slti         a6, a2, -725
                  divu         ra, a5, a4
                  srli         a4, ra, 4
                  ori          s5, s6, 1098
                  slti         s6, zero, -2004
                  divuw        t3, s2, ra
                  sltiu        t1, s3, -1956
                  subw         s11, a6, t3
                  addiw        a6, a6, 1672
                  remw         zero, a0, s2
                  sub          a1, a4, s0
                  addi         s5, a5, 341
                  mulh         s2, s6, t0
                  auipc        a3, 247303
                  srai         tp, s0, 4
                  remuw        s1, s8, s11
                  mulw         t3, t1, s5
                  sll          s3, s5, a1
                  mulhu        a6, a5, t1
                  mulh         sp, s6, s8
                  auipc        s4, 14787
                  addiw        gp, s11, 1400
                  mul          zero, a1, a3
                  div          t6, ra, s7
                  div          tp, tp, tp
                  srai         s8, s8, 16
                  slti         a0, a0, 1085
                  or           a2, zero, s2
                  srli         t3, t6, 4
                  slliw        a6, tp, 12
                  srli         s4, t3, 17
                  srl          s5, s11, s6
                  addw         s1, a6, s6
                  remuw        t2, s8, a6
                  addw         sp, a5, t3
                  slliw        s8, s6, 4
                  sltiu        s7, ra, 1921
                  addw         a1, s3, s0
                  xor          a6, tp, a3
                  slliw        s0, s2, 16
                  and          s1, t5, t0
                  mulh         a7, s6, gp
                  slt          a0, a2, s2
                  add          a2, a5, tp
                  srlw         s2, tp, s1
                  sra          a4, a1, a5
                  mulw         t6, s2, a1
                  addi         a7, s10, 288
                  mulhsu       s4, s0, t3
                  sraiw        tp, a2, 23
                  slliw        gp, sp, 29
                  xori         a4, s10, -130
                  remuw        t0, s11, a0
                  mul          s5, tp, s2
                  div          a1, t0, s9
                  sraiw        s0, ra, 22
                  sltu         s2, s3, t4
                  subw         s6, t5, a7
                  srai         s11, t6, 17
                  subw         a4, t4, s3
                  sltiu        t3, t3, -1447
                  addiw        t0, t1, 449
                  mulw         s3, s1, t2
                  srli         tp, s11, 11
                  slliw        a7, tp, 12
                  andi         s1, a2, -1106
                  remw         s1, t4, a1
                  slliw        tp, a6, 29
                  divu         a2, s2, s9
                  slt          s5, t2, t5
                  xor          s5, s11, s11
                  addiw        t2, t4, -1377
                  add          a4, a2, s2
                  lui          t3, 579847
                  auipc        s4, 647582
                  andi         s4, t5, 1402
                  subw         tp, s3, tp
                  auipc        t6, 844807
                  divuw        s4, s5, s11
                  mulhsu       zero, s10, a6
                  srli         s6, t1, 41
                  srl          zero, t5, s7
                  xor          s4, s0, a7
                  sub          a0, s11, a7
                  slt          t6, t6, s5
                  and          a1, s5, t1
                  rem          ra, s2, gp
                  divu         s8, zero, a6
                  addw         s1, s11, s8
                  mulhsu       s6, sp, s3
                  mul          s0, t1, ra
                  sraw         s4, s1, t1
                  addw         a1, t6, s9
                  srli         a4, s10, 15
                  sll          s10, s9, gp
                  andi         a2, s6, -885
                  subw         s4, tp, s11
                  mulw         s5, t2, s9
                  slti         t0, s0, 1820
                  auipc        a2, 941491
                  remw         a3, tp, t1
                  slti         tp, a3, -455
                  addiw        tp, a7, 78
                  rem          a4, ra, a6
                  remu         s8, a5, s4
                  addw         t3, s11, s1
                  slti         a1, t4, -1585
                  slli         s11, t2, 37
                  xor          t2, a3, s0
                  divuw        a0, t2, ra
                  slliw        a3, s2, 3
                  mulw         zero, s3, t0
                  and          ra, sp, tp
                  ori          a5, s8, -823
                  andi         s1, t1, -819
                  addiw        t0, t2, -1013
                  srai         s8, s8, 12
                  addw         s8, s7, t3
                  remuw        s7, t5, sp
                  sra          s6, tp, a4
                  mulhu        zero, t0, s3
                  addi         s7, ra, -1375
                  srli         a1, a6, 56
                  addw         a7, a3, s4
                  mulw         ra, tp, a0
                  sraiw        s5, a0, 23
                  sltiu        a0, s4, -1425
                  andi         a0, s6, -1573
                  divu         s0, t0, ra
                  and          a4, t5, t2
                  nop
                  mulw         s1, s11, t1
                  xor          a6, a2, s9
                  xori         zero, a3, -1038
                  mul          s8, t5, s6
                  addi         s10, tp, -983
                  slti         s8, a7, -2035
                  sll          s8, a4, zero
                  xor          t6, t4, a4
                  slt          ra, t4, s8
                  div          a0, a2, s0
                  sltiu        s11, gp, -457
                  divw         t3, a6, sp
                  nop
                  or           s8, a6, s3
                  remu         t2, s5, a5
                  sraw         s1, a4, t4
                  divw         gp, s5, ra
                  divu         s7, s2, t3
                  sll          gp, s8, a3
                  srlw         s6, ra, gp
                  srlw         a1, s8, t5
                  remuw        a3, s10, s10
                  sllw         s8, s5, tp
                  sub          ra, tp, t4
                  mulhsu       a7, t6, s10
                  subw         zero, s7, t1
                  sraiw        sp, tp, 11
                  add          s5, s1, gp
                  mulhsu       sp, s8, s4
                  addw         s1, s2, a3
                  or           a6, s1, zero
                  srli         s0, t5, 42
                  lui          t0, 684683
                  srl          s4, a7, s4
                  srl          t6, s8, s0
                  sra          s8, gp, s1
                  auipc        a4, 890791
                  div          a4, s11, s9
                  sraw         a1, a7, gp
                  divu         tp, a1, s2
                  mulw         a7, a2, sp
                  remuw        t6, sp, s0
                  slli         t1, s7, 2
                  nop
                  mulw         s2, t1, s10
                  slliw        s4, t6, 26
                  slti         a4, a0, 1283
                  sraw         tp, zero, a1
                  addi         t0, s0, -732
                  mulh         t3, t5, s10
                  div          a5, t3, t2
                  divuw        s1, s11, t4
                  remw         sp, a4, t5
                  divw         zero, t5, a1
                  addw         t2, ra, a4
                  add          s4, a3, s10
                  rem          s7, t5, s3
                  mulhsu       s10, t0, s11
                  sll          s1, a3, s9
                  slliw        a3, zero, 15
                  sraw         s7, s4, tp
                  or           s4, tp, a6
                  xor          s4, a6, t6
                  divw         t3, s4, s1
                  slli         a6, t3, 38
                  srli         a2, t3, 6
                  sltu         t6, a3, a0
                  sra          a1, t5, tp
                  nop
                  auipc        t6, 156462
                  srli         s7, a6, 36
                  andi         zero, s10, 16
                  addiw        tp, s11, 1762
                  mulhsu       s8, a2, s4
                  remu         s3, zero, a2
                  addi         s5, t2, -1320
                  srli         tp, sp, 42
                  srl          a6, s8, s1
                  divu         t1, s9, s8
                  xor          t3, s0, a2
                  nop
                  mul          a6, a1, s3
                  srl          s0, t5, t3
                  mulw         tp, a7, gp
                  or           a6, t4, s10
                  nop
                  srlw         a3, s3, a7
                  sraw         a5, s7, sp
                  slt          s7, a7, a3
                  srai         a4, s8, 29
                  and          ra, s6, a5
                  xor          s5, t3, s6
                  slti         zero, s11, 1406
                  andi         s0, a1, -572
                  mul          t2, s1, s8
                  slti         s1, t5, -545
                  subw         s4, a1, s5
                  ori          t2, s6, -475
                  srli         s8, s2, 41
                  slt          s2, a6, t5
                  sll          t6, s7, t3
                  sltu         s8, a7, s1
                  xor          a3, zero, gp
                  slli         a6, s2, 11
                  slt          s0, s3, s10
                  slti         s5, s10, -1757
                  mulh         a7, a1, zero
                  srai         t6, t0, 41
                  remw         t6, a3, s4
                  div          t6, s10, s6
                  sub          t6, s3, ra
                  sltu         a6, sp, t2
                  xori         tp, zero, -377
                  mulw         ra, s7, s10
                  mulh         a4, s6, a3
                  sltiu        s2, zero, -702
                  and          s8, gp, s4
                  xor          s6, s9, t1
                  xori         a0, gp, -1575
                  xor          zero, zero, ra
                  divu         s4, s4, a0
                  or           a1, t4, s4
                  mulw         s0, t1, s0
                  divuw        tp, t0, t1
                  srliw        a0, s8, 27
                  remuw        s5, gp, a7
                  mul          s0, t2, a0
                  remu         a4, t2, ra
                  slti         a0, t6, -364
                  sll          a2, s5, tp
                  sraw         s10, s10, s5
                  sraw         t1, s9, a7
                  mulhsu       a2, a2, t2
                  srl          ra, a2, s11
                  sltiu        a4, s2, -1316
                  xori         s0, a1, 2010
                  or           t2, s7, t0
                  sraiw        gp, t0, 22
                  add          s1, tp, s2
                  andi         s10, a7, -1932
                  mulw         t2, a7, s0
                  nop
                  divw         s11, a5, t4
                  divu         t0, t3, s4
                  addw         a3, s4, s9
                  addw         t3, a3, a6
                  rem          a5, s7, a6
                  divw         t2, t5, a4
                  mul          t2, sp, t1
                  remw         t6, s1, t1
                  sraiw        a2, s1, 24
                  lui          zero, 12682
                  slt          a6, t1, s7
                  addi         s11, s8, 1963
                  sraiw        s1, a4, 23
                  sub          tp, s7, s0
                  and          t0, a2, ra
                  and          s7, t0, a7
                  and          tp, sp, a1
                  slliw        a5, t2, 25
                  srliw        a3, tp, 21
                  sll          s2, t6, a1
                  srlw         ra, s11, a0
                  xor          s11, s3, t4
                  lui          t6, 228751
                  slt          t0, sp, s0
                  sraiw        a1, s7, 16
                  sraw         a6, ra, a1
                  ori          t1, s6, 535
                  mulh         ra, a5, s3
                  sltu         zero, s5, s6
                  mulw         t3, s8, a4
                  sltu         t2, t1, s3
                  srl          s3, s11, zero
                  subw         s1, t4, t0
                  sraw         a3, t1, a6
                  slti         a0, tp, -526
                  srai         s4, a3, 48
                  sltu         s8, s10, gp
                  xor          s7, tp, s11
                  remuw        t1, a7, ra
                  addi         t0, a4, -523
                  srli         t3, s8, 31
                  slliw        t1, t6, 29
                  ori          a4, t5, -1547
                  slti         a0, s9, 497
                  divuw        a7, s3, s4
                  rem          s1, a1, s1
                  srl          a7, s8, tp
                  sllw         a1, t3, s8
                  srliw        s8, a1, 11
                  srliw        a4, t3, 2
                  divw         a6, a4, a1
                  divw         a4, a0, s2
                  sltu         t2, t5, zero
                  subw         s10, a6, t4
                  andi         s5, s6, -962
                  remw         sp, s6, t1
                  lui          t3, 46229
                  sltu         a4, s2, a2
                  sltu         s3, t5, s4
                  sltiu        a5, a4, 32
                  sll          s5, t6, s5
                  sltu         s6, s4, a5
                  sra          sp, a0, t2
                  srlw         a5, ra, s1
                  sub          t2, t6, a5
                  and          ra, s2, s11
                  add          s2, t6, a5
                  add          a2, a1, a7
                  subw         a3, t4, t4
                  sltiu        t0, a7, 1820
                  mulw         a4, t4, t4
                  srai         t1, s1, 33
                  remu         s5, s3, t6
                  mulh         s6, zero, s7
                  mulh         a3, s3, a7
                  srl          t1, a5, a6
                  and          t3, s5, a3
                  nop
                  or           a1, s8, s2
                  divw         ra, t2, s6
                  addw         s11, a2, s4
                  srai         a2, t4, 34
                  addiw        s11, s3, 523
                  slli         a2, s9, 26
                  slli         a5, t1, 6
                  slliw        s6, ra, 26
                  sll          zero, s5, s9
                  srliw        zero, s8, 11
                  mulw         t1, a3, t3
                  slti         s10, s11, 1494
                  div          t2, t3, s8
                  slti         t2, a1, -1922
                  addi         s1, a0, -1293
                  srlw         s8, a0, s6
                  mul          t6, a4, t2
                  addw         s10, s3, a7
                  mul          a3, s4, a4
                  srai         ra, s3, 8
                  sub          a0, a7, ra
                  slli         zero, t6, 31
                  sub          s1, a1, s10
                  mulh         a2, a6, s8
                  divuw        s0, s0, s8
                  slt          ra, t2, s4
                  andi         sp, t1, 1239
                  mulw         a5, a4, s3
                  srliw        s0, t1, 29
                  mulh         t6, s5, s8
                  and          s11, s7, s11
                  xori         t6, s6, 1963
                  mul          a3, gp, t1
                  mulhu        s11, t2, a3
                  sub          a3, a0, s4
                  sra          s2, s5, t0
                  sllw         a0, zero, t0
                  sra          s5, s5, t2
                  auipc        s7, 400037
                  sub          s1, t2, s5
                  divu         s0, a4, a1
                  slliw        s1, gp, 0
                  auipc        s4, 927364
                  mulhsu       t6, a1, t0
                  addi         a4, s4, -166
                  subw         zero, tp, t6
                  nop
                  add          t3, t2, s1
                  sub          a7, a5, s8
                  andi         s5, s7, -279
                  sltu         s8, s10, s11
                  addi         a6, gp, 1803
                  addw         s3, t6, s7
                  and          a6, a1, s2
                  ori          a4, t4, 1899
                  slli         s11, gp, 25
                  slti         s11, s3, 1315
                  or           t3, s0, s3
                  rem          s4, gp, a3
                  mulh         gp, s7, s6
                  sra          s10, sp, t1
                  rem          s4, s4, s11
                  remu         a3, s7, t3
                  sraw         s0, t4, s4
                  srli         a4, s8, 15
                  nop
                  sll          s4, a5, s0
                  remuw        a7, a1, s1
                  auipc        s11, 3922
                  sub          gp, s5, s0
                  addi         t3, s2, -463
                  sltu         s1, s5, a1
                  sub          s0, gp, a5
                  sra          s5, t0, a0
                  sraw         a0, s6, s0
                  mul          ra, s2, t2
                  srlw         a7, s9, zero
                  subw         a6, s5, t1
                  slt          s5, s9, s6
                  sltiu        ra, a4, 122
                  mulw         s10, a2, s4
                  slli         tp, a3, 24
                  mulhsu       a2, t6, t1
                  srliw        t3, ra, 5
                  divu         t6, a7, t5
                  mulhu        a3, t4, a5
                  divu         s1, ra, s3
                  divu         gp, t0, s2
                  slliw        a1, s11, 10
                  mulh         s0, t6, a5
                  sllw         s7, a0, t4
                  lui          s8, 670880
                  sraw         s8, a3, s3
                  srai         s2, s4, 38
                  ori          tp, a2, 1964
                  slli         t0, s3, 1
                  slliw        s4, tp, 26
                  sraw         tp, s9, t6
                  srai         s3, s10, 4
                  and          s4, s7, t3
                  div          sp, s11, s11
                  subw         s3, t3, a6
                  srl          s5, a3, a3
                  divuw        a4, s6, a0
                  sub          t3, t2, s1
                  sub          s0, a4, t1
                  srai         s11, s10, 1
                  srli         t3, s1, 27
                  slti         s3, s10, 89
                  nop
                  remuw        t6, ra, s7
                  auipc        s10, 460699
                  xor          s6, s3, t5
                  srl          s8, a1, s11
                  mulh         t1, t0, s11
                  sltu         a6, s1, s7
                  srliw        a7, t3, 6
                  subw         zero, t4, a6
                  divu         t3, t0, s8
                  slli         tp, a7, 37
                  mulw         s1, t5, a6
                  sra          t3, gp, t4
                  srai         s0, t2, 60
                  ori          s0, s0, -403
                  mulh         s1, s0, s2
                  remw         t3, sp, a6
                  mulhu        a4, a7, t2
                  sltiu        s10, t1, -1400
                  auipc        gp, 564658
                  auipc        a7, 471934
                  andi         a0, s5, 1921
                  or           s6, s11, gp
                  divuw        a4, a7, a5
                  xori         a2, a5, -837
                  slli         a3, gp, 54
                  sllw         t2, tp, s8
                  and          t6, s10, ra
                  srli         s2, tp, 35
                  slli         t1, zero, 29
                  sltiu        a7, t4, -1067
                  or           s11, s10, t2
                  sra          s4, s10, a7
                  srliw        s3, s8, 27
                  nop
                  sltiu        s7, tp, -126
                  sllw         s8, s11, ra
                  subw         t3, t0, a5
                  sra          sp, t6, gp
                  mulhu        s0, ra, s9
                  sraw         zero, t3, sp
                  sllw         t3, t1, t0
                  remw         t0, s5, s5
                  srlw         a1, gp, t6
                  srliw        a1, t1, 7
                  slli         zero, s1, 15
                  srl          s0, a7, a6
                  sub          a3, s0, s1
                  srl          gp, s7, a6
                  div          t6, tp, t1
                  mulw         s3, t1, s1
                  slliw        s3, a1, 2
                  srai         a2, zero, 39
                  srli         a7, t5, 28
                  divuw        t3, gp, a3
                  slli         s1, a7, 4
                  mulhu        s4, a3, a4
                  srli         s5, s5, 46
                  subw         s11, s11, a0
                  and          s6, t6, s2
                  slt          a4, s9, tp
                  srlw         a7, s8, a7
                  sllw         s10, zero, s6
                  div          a0, zero, t3
                  mulh         s7, t6, s8
                  srli         s0, t5, 7
                  and          s0, s6, s11
                  ori          t6, a1, -844
                  subw         a5, sp, t1
                  mulhsu       a1, s6, s4
                  subw         t1, s5, ra
                  divuw        s0, s10, s2
                  srai         s7, t5, 0
                  div          s2, s6, s9
                  or           s10, s7, s6
                  mulw         a2, s8, s10
                  divuw        s11, t1, s8
                  xori         s10, a2, 373
                  addiw        t1, gp, -826
                  divw         ra, a5, a4
                  slliw        s2, s5, 12
                  addw         a7, s11, a1
                  sllw         t1, s9, zero
                  mulh         gp, s10, sp
                  auipc        t6, 881062
                  divuw        s7, t3, a5
                  sraiw        a4, s2, 18
                  srliw        s6, s4, 0
                  div          a0, s8, s9
                  rem          s8, s0, a5
                  mulhu        a3, s11, a7
                  sltu         s10, s5, a7
                  or           ra, s5, zero
                  div          sp, a0, s3
                  sub          ra, s11, t3
                  srl          s8, s11, s2
                  slti         a4, s7, 311
                  and          a2, a3, s8
                  sll          t6, a5, a3
                  rem          a7, a1, a5
                  mulh         s8, s10, a5
                  or           tp, a6, s11
                  sra          t0, s9, a3
                  slliw        s7, s1, 27
                  ori          a1, tp, -85
                  andi         a7, s0, -1259
                  srliw        a0, s3, 13
                  andi         ra, s11, 1398
                  add          t6, a5, t3
                  ori          s6, a5, 1753
                  mulw         s4, a5, t4
                  divw         s1, a7, t6
                  divuw        a2, a4, ra
                  sltu         a5, s6, s5
                  remuw        tp, t4, tp
                  slli         s4, a0, 51
                  slliw        sp, a3, 13
                  andi         a3, s1, 109
                  add          t1, t0, t3
                  sll          a1, s6, a7
                  sltu         s5, a6, a1
                  mulhu        t0, a1, a7
                  subw         a3, s2, t1
                  nop
                  sraw         tp, a5, s10
                  nop
                  addi         a4, t1, 311
                  remuw        t0, t3, t1
                  slliw        t0, a0, 20
                  addi         s0, a7, 310
                  slt          s4, a0, t3
                  lui          s5, 560977
                  lui          s8, 975280
                  div          a7, a6, s1
                  sraw         s11, s3, a7
                  or           t3, a7, a3
                  remw         a3, t3, s11
                  srai         a3, a0, 16
                  lui          s1, 277947
                  remuw        a5, s5, gp
                  slt          a5, s7, s0
                  sraiw        t2, s7, 6
                  srliw        s0, a4, 19
                  remw         gp, a2, zero
                  mulhu        a0, s3, t2
                  sll          t6, a7, zero
                  divw         a0, gp, a2
                  andi         s3, s11, -1710
                  slli         s1, a4, 2
                  sltu         t1, ra, s2
                  sltiu        t6, s1, 1408
                  srai         tp, t3, 7
                  divw         s7, t6, s11
                  sllw         a0, t2, t6
                  sra          s10, s3, a2
                  or           s11, t3, zero
                  mul          s0, s0, s11
                  sra          s11, a3, a6
                  mul          s6, s3, a0
                  lui          a2, 309029
                  xori         s5, s4, -1018
                  and          a0, s4, a4
                  sllw         t6, a5, s10
                  addi         s10, s10, 384
                  divu         t2, s0, t4
                  srliw        s7, a0, 8
                  sllw         tp, s10, t0
                  srl          a4, a4, t1
                  sub          s3, a6, t1
                  mulw         a3, s2, s3
                  sll          s3, a0, a2
                  div          s1, t3, t1
                  and          gp, s8, gp
                  or           gp, t0, zero
                  srliw        a3, s8, 30
                  or           zero, a7, a1
                  remu         s0, a7, a1
                  xor          zero, s8, a5
                  srlw         t6, s6, t4
                  slli         t6, s3, 56
                  rem          s3, a0, t6
                  addw         s5, a6, s2
                  remuw        a5, a4, s1
                  subw         a4, a1, s0
                  remuw        t6, s0, t6
                  divw         s5, a0, a1
                  addi         a2, t0, -1730
                  and          t1, t4, t3
                  nop
                  subw         s0, s4, s0
                  nop
                  remuw        s10, a4, ra
                  divu         a3, a3, s6
                  srliw        t6, gp, 19
                  slliw        ra, zero, 13
                  srli         s7, a4, 32
                  xor          sp, s3, s0
                  andi         a2, a0, -1842
                  and          t3, t3, a6
                  nop
                  sllw         s0, t3, s5
                  auipc        a5, 782818
                  divuw        a1, s11, a5
                  auipc        ra, 311152
                  sub          t0, s7, s7
                  mulhsu       s8, tp, s1
                  or           a0, t0, t4
                  srlw         a1, tp, ra
                  and          t3, a2, zero
                  srl          s11, s2, zero
                  mulh         a0, s9, s5
                  addiw        a7, t6, 1834
                  ori          s3, s7, -421
                  slt          a5, t1, a1
                  srlw         s10, a0, zero
                  sllw         t6, s1, t5
                  slt          s11, t1, sp
                  srai         a7, a7, 8
                  lui          a1, 397290
                  mulhsu       s1, t1, s1
                  sra          s5, t2, a1
                  sltu         gp, a0, t1
                  mulh         s3, t0, tp
                  mulw         s8, t1, s8
                  sra          t3, t5, s11
                  remw         s1, sp, a4
                  addw         s5, a1, a7
                  slti         a1, a6, -379
                  sll          gp, s11, s2
                  addw         s5, s10, a0
                  slliw        a2, t6, 9
                  addiw        t6, a6, -795
                  sltu         a0, t5, t0
                  div          a1, a4, s3
                  sraiw        s0, t5, 25
                  divuw        sp, s2, t0
                  mulhsu       s10, s0, s5
                  addi         t1, s11, -1464
                  and          s8, a5, s1
                  remw         tp, s5, s5
                  mulh         t3, t6, s3
                  remu         a5, a1, t5
                  andi         t1, sp, 467
                  sraw         s5, a0, s6
                  srli         sp, s3, 31
                  subw         t6, t6, t1
                  sra          a7, a2, s3
                  xor          a6, t6, s9
                  ori          tp, s1, 130
                  addi         s5, t5, 550
                  srli         t6, s11, 32
                  sllw         s1, a6, zero
                  srlw         t1, s3, t1
                  addi         sp, t3, -552
                  sraiw        a7, a5, 20
                  rem          s8, a0, s11
                  sub          a5, s0, s6
                  slti         zero, s1, -1684
                  addiw        s10, a2, -595
                  rem          tp, s8, a2
                  mul          a3, tp, ra
                  sub          s1, a7, s10
                  subw         s6, t1, s4
                  mul          a6, zero, gp
                  srai         t3, s1, 1
                  srli         s0, t5, 4
                  slliw        s6, s5, 18
                  addiw        a6, s6, 859
                  sltiu        s2, s7, 1893
                  rem          t3, a4, a6
                  addi         a7, s9, 768
                  xor          a6, t4, zero
                  addi         zero, s0, 1627
                  sll          a1, s11, t5
                  remuw        a2, a3, s7
                  srli         a4, a2, 22
                  xor          t6, s8, a7
                  mulhu        a2, s4, a1
                  xor          t6, a6, gp
                  sub          a4, t2, a0
                  sll          a7, t5, t1
                  ori          a2, s3, 1679
                  ori          t3, t3, -924
                  nop
                  srlw         tp, sp, tp
                  sltu         a4, gp, zero
                  divuw        t6, s10, t1
                  slt          t1, t4, a0
                  sra          sp, t3, t1
                  mulh         a3, sp, s6
                  nop
                  remuw        t1, t1, s7
                  sub          t0, s5, s7
                  mulh         t3, t6, s3
                  mulh         gp, s10, t1
                  slliw        s2, s11, 4
                  sub          zero, s9, sp
                  srlw         t2, s11, s11
                  sll          a2, s0, ra
                  addi         a4, ra, 474
                  mulhu        t0, s6, s8
                  slt          a7, s8, s3
                  divuw        s1, t5, s8
                  sub          s1, a4, a1
                  divw         a6, s0, s8
                  addi         a2, s10, -1946
                  slti         s0, a3, -1430
                  remu         tp, s3, t5
                  srl          tp, s3, s6
                  addiw        t0, s9, -740
                  andi         s3, s6, -1107
                  slti         t6, s5, -1978
                  srlw         a1, a1, t2
                  sraw         tp, s11, t0
                  srai         t6, s7, 18
                  or           t6, t2, a7
                  sub          t0, s8, s0
                  and          a7, s8, s11
                  sraw         t2, s4, gp
                  srai         t0, t0, 25
                  sraw         s11, a0, a2
                  addiw        a4, s6, -1820
                  xori         t3, a6, -837
                  sra          s5, s1, a7
                  addiw        zero, s6, -476
                  or           t2, s11, s0
                  xori         s7, gp, -154
                  slt          sp, s3, tp
                  add          s0, t1, a7
                  or           t6, a0, t3
                  addw         s7, a6, a7
                  and          s10, gp, t2
                  mulhsu       a1, zero, t2
                  sra          a0, a0, s7
                  subw         gp, a0, zero
                  remuw        s4, s9, s9
                  divu         s11, a6, t2
                  sll          a3, s4, a1
                  sra          ra, gp, s7
                  mulhu        s2, s7, a4
                  slli         s10, ra, 12
                  sraw         t1, t2, ra
                  nop
                  sltiu        t2, a0, 688
                  lui          a4, 320354
                  sltu         tp, a3, t0
                  addi         s6, t3, 1329
                  sra          sp, a1, t0
                  addw         s3, ra, sp
                  addw         s2, zero, tp
                  slti         t6, a6, 1162
                  sltu         a5, t2, tp
                  remuw        s6, gp, a3
                  sllw         s11, s3, t3
                  mulw         a1, ra, t1
                  ori          a7, t3, -749
                  divu         s7, sp, s7
                  or           s5, s7, ra
                  addi         a2, zero, 1769
                  sraw         s8, ra, t5
                  srli         gp, t0, 16
                  srlw         a7, gp, s9
                  srai         s2, t3, 39
                  mul          t0, t6, t6
                  sra          a0, a4, a2
                  add          t3, t2, a1
                  slli         s2, s2, 2
                  sll          t6, t6, sp
                  sllw         a1, a4, s1
                  srli         s5, t6, 2
                  mulw         sp, a5, s8
                  divu         a7, s5, a2
                  srli         a6, s8, 30
                  slliw        zero, s9, 27
                  xori         a5, ra, 845
                  lui          a7, 744818
                  addiw        t3, s1, 789
                  xori         s11, t3, 1158
                  nop
                  sraiw        s3, s3, 18
                  srliw        tp, gp, 22
                  slti         sp, s0, -892
                  slti         t3, s2, -33
                  addw         ra, sp, s8
                  nop
                  nop
                  sllw         t0, t5, t0
                  subw         a7, t3, s5
                  srliw        s8, s11, 15
                  ori          a5, s2, 37
                  rem          s5, a3, t4
                  xori         a2, sp, 405
                  slt          t1, t0, a1
                  sra          zero, a0, t6
                  srl          tp, s2, s4
                  rem          s10, zero, a2
                  mulhu        zero, t3, t2
                  divuw        s6, s10, s8
                  slliw        a7, s3, 7
                  addiw        a0, s8, 1351
                  sltiu        a7, s6, -13
                  and          s7, s3, a3
                  auipc        t6, 480017
                  divu         t1, s3, s8
                  slt          s7, s2, s2
                  remw         s4, zero, s1
                  srliw        s11, t3, 15
                  sra          t0, tp, gp
                  divw         s2, s3, a6
                  and          t6, a1, s9
                  sllw         zero, t2, t1
                  xori         a3, a2, -212
                  add          a1, t0, a3
                  divw         a5, sp, t6
                  slt          sp, gp, s11
                  sra          ra, s5, a6
                  mulh         a3, zero, s6
                  remuw        s10, a3, s10
                  divw         s4, sp, t6
                  slliw        sp, a2, 21
                  add          s6, s6, a1
                  sub          gp, s3, s5
                  xor          s7, s7, t1
                  divuw        a4, a7, a0
                  srlw         s0, a0, s7
                  subw         sp, s4, t2
                  slliw        ra, s8, 8
                  divu         a7, s3, sp
                  addi         s2, gp, -637
                  xori         t6, a3, 635
                  add          ra, s3, a5
                  divw         a0, s8, tp
                  srli         t0, a2, 58
                  add          sp, s10, t1
                  andi         t0, s1, 154
                  mulhsu       a2, s8, s7
                  xor          t3, a4, ra
                  auipc        s1, 610380
                  divuw        a6, a3, t3
                  slli         tp, t1, 23
                  divuw        s3, s6, a6
                  sll          s7, gp, t5
                  andi         s7, t3, -1498
                  sllw         t3, s9, s10
                  addw         s8, a6, zero
                  remuw        t1, s5, sp
                  sraiw        s3, s7, 30
                  xor          t3, s8, a7
                  or           a0, t4, s6
                  remu         a1, a6, t6
                  rem          gp, tp, s7
                  sllw         t2, t0, s10
                  slli         s5, t0, 15
                  nop
                  mulhu        s1, s8, s11
                  add          gp, s1, s9
                  div          a7, t4, zero
                  or           s4, t4, s0
                  divuw        s11, a1, ra
                  sllw         t2, a5, a2
                  lui          s10, 792366
                  auipc        a4, 970743
                  sllw         a1, a0, t6
                  remw         a3, s6, s11
                  ori          s11, s4, 962
                  sll          s5, a1, gp
                  mulhsu       a2, a7, s0
                  add          a7, a5, sp
                  srai         s6, s11, 18
                  xor          a3, s5, a2
                  srlw         s10, t0, s9
                  andi         sp, zero, 1148
                  sltiu        s1, s2, -1427
                  divu         a7, s6, s2
                  rem          t2, s9, t3
                  addi         s3, t1, 1403
                  remu         a6, zero, a0
                  xori         s3, s0, -1860
                  slliw        a5, a2, 26
                  mulhu        sp, s10, a3
                  andi         s5, t3, -1854
                  mul          t1, t1, t0
                  sub          t3, s8, a6
                  addi         a0, t6, 1425
                  mul          a7, a0, t5
                  srli         a7, s6, 0
                  addw         s11, a0, s7
                  addiw        a3, ra, 1592
                  slt          t6, s2, a0
                  addiw        a4, s3, -1667
                  sraiw        s8, a5, 22
                  srli         a3, t0, 11
                  subw         a0, zero, a3
                  sub          t6, tp, a4
                  subw         s1, t3, s8
                  mulw         s8, t2, s4
                  remuw        s2, s9, s9
                  addw         s0, s2, t1
                  sllw         zero, s4, a1
                  mul          s2, s5, s1
                  lui          s0, 148202
                  sraw         s5, tp, gp
                  and          a3, s2, t0
                  or           s10, a2, s8
                  sllw         t0, a6, t6
                  slli         zero, s1, 44
                  andi         a4, s2, 2041
                  remuw        zero, sp, s2
                  sltiu        a5, tp, -585
                  sllw         t1, t5, s3
                  xor          a6, a5, a6
                  mulhsu       tp, a0, gp
                  mulhsu       t3, ra, s8
                  divw         s11, ra, s7
                  slliw        t3, s2, 23
                  sltu         s11, a2, t4
                  srliw        zero, s6, 31
                  divw         t2, s5, a5
                  addiw        a0, t4, -1506
                  sltiu        t1, sp, -1389
                  sub          t6, s4, s0
                  slt          s8, a1, s1
                  remu         a3, s9, ra
                  srai         t0, t0, 12
                  sltiu        s3, t2, -397
                  srli         t2, t3, 60
                  mul          s11, s6, a2
                  slli         s11, t3, 18
                  srl          t6, s5, s9
                  sltiu        a0, ra, 891
                  remw         t3, s0, a2
                  slti         a2, tp, -693
                  mulhu        s8, t5, s0
                  subw         a4, a2, s4
                  mulh         tp, s2, t3
                  subw         s7, s4, t6
                  xori         s10, t5, 19
                  remuw        a4, a2, s1
                  lui          s5, 392048
                  mul          t2, a3, s5
                  remw         s5, zero, s3
                  sll          gp, t1, t0
                  remw         s6, a4, a5
                  slli         a4, zero, 12
                  sltu         s5, s5, a7
                  mulw         tp, s5, s7
                  mulw         s1, sp, s1
                  xori         gp, s6, -710
                  srl          a7, a5, a7
                  addw         s10, t5, t0
                  div          a3, gp, s2
                  remu         a3, gp, t4
                  sltu         t0, t0, tp
                  andi         ra, s8, -462
                  addiw        s1, a5, -80
                  sltu         s11, a6, t0
                  andi         zero, a6, 641
                  slti         s10, t3, 299
                  sll          s8, a3, t1
                  add          a1, s3, s5
                  divu         t6, s4, tp
                  add          s5, gp, s2
                  srliw        s7, a0, 15
                  srlw         a4, t0, t5
                  and          t3, zero, t5
                  xori         a6, s0, 1107
                  remuw        s8, s3, a4
                  mulhsu       a3, a6, gp
                  nop
                  sraw         t1, a2, s4
                  divuw        gp, s11, a7
                  sllw         tp, s5, s10
                  nop
                  sllw         gp, t3, sp
                  mulhsu       s10, t0, zero
                  auipc        a0, 408
                  remw         gp, s7, s9
                  remw         a5, s4, t3
                  srl          ra, s7, t3
                  sub          t3, zero, gp
                  add          a1, ra, s6
                  sraiw        a7, gp, 28
                  sra          s1, s6, t1
                  divu         a3, s6, a0
                  remw         s8, a4, s9
                  slt          gp, t0, a5
                  xori         s7, t5, 1893
                  srl          a6, t2, a4
                  sllw         ra, s7, ra
                  div          a3, s11, a2
                  slli         ra, zero, 19
                  sltiu        s7, s7, 367
                  div          a5, a6, tp
                  divu         zero, a4, ra
                  remw         gp, t3, a4
                  and          gp, s2, t0
                  sll          sp, a5, t6
                  srli         t0, a2, 19
                  add          sp, s1, ra
                  addi         a3, s7, 1280
                  mulh         a4, ra, a7
                  or           s11, s8, s5
                  sltiu        a7, t1, 91
                  mulhsu       a5, a6, ra
                  remu         zero, a1, t5
                  slliw        s0, sp, 22
                  mulh         s11, s2, ra
                  addi         sp, tp, -648
                  andi         s4, sp, -1516
                  sllw         a2, a3, sp
                  addw         a7, t5, a5
                  mulw         a5, sp, tp
                  mul          s10, s9, s1
                  srli         a7, a5, 24
                  mulh         sp, s8, s7
                  srl          t6, s6, a6
                  ori          t3, a5, -1306
                  rem          s0, t2, t0
                  srai         a6, s3, 10
                  lui          a6, 4986
                  addiw        ra, a5, 1732
                  sltu         a4, zero, s8
                  sltiu        s3, t0, 561
                  slt          a4, a7, s6
                  divuw        a6, t0, s8
                  srl          gp, a5, s8
                  xor          s5, s4, tp
                  div          a1, s10, ra
                  slti         sp, s6, 60
                  nop
                  slli         s11, a4, 6
                  sll          a3, zero, t6
                  xor          s11, s2, zero
                  sraiw        ra, t5, 27
                  lui          s0, 270916
                  sll          t6, s4, t4
                  mulh         t2, a6, s6
                  sllw         ra, zero, t1
                  auipc        t2, 350261
                  sltiu        t0, a3, 997
                  ori          s2, t3, 494
                  rem          a2, s0, ra
                  srlw         a7, zero, s5
                  add          s10, s6, sp
                  srli         s4, tp, 1
                  remu         a4, a5, sp
                  addi         t3, a7, 648
                  or           s8, s10, t5
                  auipc        s4, 700571
                  srlw         s8, t4, a5
                  sltu         t3, a0, s9
                  srai         ra, a0, 17
                  remuw        a2, a0, t4
                  sllw         a3, s9, sp
                  slt          tp, t2, s0
                  mulh         a0, s1, a3
                  rem          a7, gp, tp
                  divuw        tp, s8, t5
                  sltu         a2, tp, t4
                  xori         a0, t1, 892
                  divu         a5, zero, a7
                  sll          t2, a0, a6
                  sraw         a7, s4, s8
                  subw         t3, gp, t3
                  srli         tp, a6, 10
                  add          s10, s10, t6
                  sltiu        s5, a7, -923
                  divw         t6, t4, s9
                  srai         a0, s8, 9
                  nop
                  sra          ra, gp, a2
                  xor          s4, s10, t1
                  slli         t6, s0, 39
                  srli         s7, s1, 7
                  slli         s6, s4, 26
                  remuw        ra, s11, s9
                  srlw         s6, a4, s5
                  addi         a0, t2, -1859
                  div          s1, zero, a5
                  and          t2, s9, t2
                  divuw        a2, a5, s10
                  sra          s0, s10, t6
                  srlw         a1, a3, t6
                  divu         s7, a1, a0
                  add          s2, s10, t1
                  or           a0, s0, t0
                  remw         s5, s0, s11
                  sraw         s4, s6, t3
                  and          t0, t4, s6
                  addiw        s11, tp, 1928
                  sra          gp, a4, s7
                  rem          t6, s9, s8
                  nop
                  mul          s0, ra, s11
                  rem          a6, s9, t3
                  xori         s10, s6, -1877
                  slli         s3, t5, 29
                  slt          a3, tp, s0
                  mulh         s7, t5, s9
                  lui          a0, 576419
                  sllw         t2, a1, t0
                  mulhsu       a2, ra, a0
                  mul          s1, s0, zero
                  divuw        gp, tp, a5
                  and          s8, s9, a3
                  slti         a5, tp, -704
                  slliw        a2, s9, 1
                  addiw        t6, s4, 783
                  sub          s1, t6, s8
                  slli         a1, s5, 51
                  addiw        a4, s2, -19
                  mulhsu       s0, s10, a2
                  or           s3, gp, ra
                  andi         ra, a3, 567
                  divw         a5, s6, s4
                  mul          a4, t2, a3
                  divuw        a3, t6, ra
                  addi         a4, s9, -948
                  slli         s7, s9, 62
                  sllw         gp, ra, s5
                  nop
                  xor          a1, s2, s8
                  slti         a0, t4, 1414
                  addw         t6, a0, a0
                  sllw         a4, s9, ra
                  sll          a1, s2, s6
                  sraw         t0, sp, sp
                  sltiu        s1, t0, -1836
                  addi         s1, t6, -873
                  sra          a1, a5, s0
                  nop
                  andi         t2, s8, 945
                  remu         a7, a4, a5
                  slti         s2, t1, -1687
                  sra          t0, tp, ra
                  addw         a2, t5, t1
                  sltiu        s0, s7, -1891
                  div          a5, sp, a0
                  nop
                  remuw        t0, t6, a2
                  sra          s3, t0, t2
                  remw         gp, t5, s1
                  div          t2, t3, a4
                  add          a7, s10, s11
                  divu         a2, a4, a0
                  mulhsu       a2, a3, a5
                  srl          t1, s0, a7
                  sll          s10, ra, s1
                  nop
                  remuw        a2, a6, sp
                  nop
                  or           s1, zero, tp
                  xor          s8, s5, sp
                  remu         t6, a4, t2
                  remuw        gp, t4, s1
                  mul          s2, t0, s11
                  sll          s11, s0, a2
                  or           tp, a2, a3
                  addw         a7, s9, t6
                  sub          sp, s0, s11
                  srl          t2, t5, s11
                  mulhsu       s2, a7, a0
                  divuw        a3, a3, a6
                  remw         a5, t4, s11
                  rem          s1, a1, zero
                  sltu         a3, t2, s9
                  mulw         s4, s1, s10
                  mul          a0, s3, tp
                  addiw        a3, t6, 1571
                  srl          a7, s8, sp
                  srliw        sp, a7, 25
                  slt          s8, t5, tp
                  sub          gp, a4, s8
                  mulhu        s1, t2, s1
                  mul          a4, a0, s11
                  rem          tp, s9, s1
                  subw         t6, s3, a6
                  mulw         t2, a1, s9
                  andi         t6, s1, 1307
                  mul          s11, s9, s2
                  slliw        s3, a4, 28
                  xori         t0, s11, 138
                  divw         a5, s6, t2
                  addiw        gp, s8, 1251
                  srli         s7, t5, 58
                  mul          s3, t0, tp
                  mulhsu       a1, t2, t3
                  addw         a5, t0, s11
                  lui          s7, 61175
                  slti         s4, s3, 22
                  sraiw        s8, t4, 27
                  remu         s3, a1, t1
                  slti         a4, s9, 999
                  slli         t2, s11, 10
                  sraiw        t2, t0, 16
                  subw         gp, s5, s6
                  nop
                  mulw         a7, s6, s1
                  mulw         s10, t2, s11
                  or           s5, a7, t4
                  xori         s4, s4, 1653
                  slti         s8, s4, -1256
                  remu         gp, ra, a4
                  sltu         s11, s4, a2
                  mul          a1, a0, a4
                  slti         s1, t3, -551
                  slti         s5, a2, -471
                  remu         a4, t4, s0
                  sllw         a1, s0, s4
                  auipc        s0, 775073
                  slliw        s4, sp, 30
                  slli         a6, t4, 54
                  lui          t1, 5362
                  sllw         t1, s1, s10
                  sltiu        t0, s1, 1879
                  srl          s2, s10, a4
                  xor          s4, t4, s3
                  or           s3, s2, a4
                  slti         s3, tp, 1957
                  slt          t2, a6, t1
                  mulhsu       a3, s4, zero
                  divu         s10, s1, s7
                  xori         s0, t3, -297
                  mul          a0, s7, s9
                  slli         a7, t0, 63
                  add          ra, s2, s8
                  slliw        ra, a6, 15
                  addw         ra, s2, t1
                  srl          a5, s2, s3
                  div          a4, tp, s9
                  sub          t2, t1, zero
                  sll          a6, s4, t4
                  xori         a5, s0, 1892
                  srlw         s8, s11, a3
                  nop
                  add          a0, t6, s5
                  addw         a6, t1, s1
                  remuw        s0, tp, zero
                  add          a4, sp, t3
                  slliw        t6, a4, 21
                  srl          t1, s8, s11
                  sra          gp, s8, s2
                  remu         t0, a7, a2
                  srli         s2, a7, 13
                  slt          a5, s1, a4
                  lui          s5, 431304
                  srli         a7, a4, 2
                  sraiw        s6, a0, 24
                  sraiw        a3, zero, 15
                  mul          gp, t3, s4
                  mul          sp, a1, a0
                  mulhsu       a7, s6, s8
                  mulw         a5, t4, gp
                  sraw         s4, t5, a3
                  mulw         s0, a6, a7
                  sra          gp, a6, s2
                  srl          a4, a6, a6
                  div          s10, gp, s11
                  and          s6, a3, a0
                  andi         a2, s1, -1890
                  mulhu        s8, a0, s8
                  srl          s8, t2, a0
                  div          s6, a3, s0
                  slti         a1, s3, -1260
                  mul          s6, s3, a2
                  srlw         a5, a5, s6
                  srli         s6, sp, 26
                  addiw        t2, a6, 78
                  srliw        a6, a4, 16
                  addiw        sp, a7, -148
                  slli         s11, a1, 53
                  mulh         s2, t1, a4
                  srliw        a0, s8, 15
                  sll          a5, a0, s1
                  addw         s10, a6, a5
                  sllw         a3, zero, t5
                  srliw        gp, t6, 24
                  srli         a4, s10, 12
                  sltiu        t1, s8, -1773
                  sll          a6, s7, t0
                  srli         a7, s10, 40
                  divu         s11, t6, s0
                  slt          s3, s4, t4
                  addw         a7, a0, s4
                  or           s7, t5, t6
                  slti         a6, t1, 385
                  divw         a4, t0, s0
                  sraw         s8, s3, a4
                  mulhsu       a1, a2, s3
                  slli         a4, s4, 21
                  slti         t2, s4, 1439
                  andi         s8, a6, -1128
                  srliw        a0, s3, 7
                  rem          s5, t0, s8
                  srai         gp, a5, 62
                  sra          s8, s3, s5
                  mul          a3, s3, a6
                  srliw        s8, s10, 26
                  divw         s5, s4, a5
                  and          a4, zero, a6
                  or           ra, t6, t4
                  sra          t6, t0, zero
                  srl          t6, t1, a1
                  sltu         s8, a1, t2
                  addw         s3, zero, zero
                  addiw        s5, t6, -554
                  div          s11, t6, t4
                  sltu         s5, s9, s11
                  remw         s1, a4, s11
                  sraw         s7, sp, a2
                  sraiw        t0, s0, 27
                  mulw         t1, t5, s9
                  add          s7, s5, a1
                  remw         a1, s0, a6
                  lui          s4, 898090
                  nop
                  ori          a4, t0, 266
                  rem          a7, t2, a6
                  ori          s8, s9, 1498
                  addw         s5, s11, s2
                  sltiu        t3, a3, 539
                  or           s10, s0, s11
                  slti         s4, s10, -1883
                  sraiw        s5, s3, 11
                  remu         a7, s6, a7
                  subw         a3, a6, a3
                  mulhsu       a3, s4, a5
                  lui          s10, 311061
                  divu         a6, tp, t4
                  sraiw        s5, s5, 2
                  slt          s10, t4, t4
                  subw         t2, a6, s9
                  sraw         s10, tp, t6
                  add          tp, t2, a5
                  xori         s7, a5, -1928
                  mulw         tp, s5, a2
                  remw         s4, s5, s1
                  srli         a3, ra, 11
                  slti         a4, ra, -1789
                  auipc        a3, 579614
                  slli         tp, t0, 44
                  mulhsu       s6, a7, s5
                  addiw        s8, s0, -940
                  mulw         s7, gp, a1
                  sllw         s3, s10, s5
                  srlw         s1, s11, gp
                  addiw        t1, a6, 1242
                  srl          s3, s6, s8
                  sraw         gp, t4, tp
                  sub          s4, s0, s8
                  slt          s6, a5, a5
                  and          s8, s6, zero
                  and          s6, tp, zero
                  remu         t2, t4, s9
                  addiw        a4, s0, -574
                  sltiu        s5, a6, -1617
                  and          s3, tp, t5
                  add          s8, s2, s4
                  divuw        ra, a1, t1
                  xor          a4, t1, a7
                  divw         a4, gp, s0
                  div          t3, zero, a3
                  div          a7, t4, s6
                  add          s6, a0, sp
                  srli         t1, a1, 48
                  sltu         a3, s5, t4
                  srl          s5, s0, s0
                  rem          s6, a5, t1
                  add          s11, a3, s6
                  mulhu        t6, t1, tp
                  srl          sp, a7, zero
                  subw         t3, t6, a5
                  rem          s11, s0, s1
                  and          a7, s7, zero
                  xor          t2, gp, ra
                  divuw        a2, a2, s8
                  remuw        t1, a3, ra
                  remuw        t0, t2, s6
                  addi         s0, gp, -1739
                  remuw        tp, ra, s10
                  addi         zero, s0, 1281
                  slti         zero, a0, -1
                  and          s3, s5, zero
                  sub          s4, a5, a5
                  srlw         a3, s4, a0
                  sra          s11, a0, t6
                  add          s4, s2, zero
                  subw         a4, a2, zero
                  slliw        s8, s9, 29
                  addw         s8, s9, s8
                  slti         zero, t6, -610
                  sra          s8, s11, sp
                  divu         sp, s11, t2
                  lui          sp, 598988
                  add          s1, tp, s4
                  xori         ra, tp, -79
                  sllw         s5, s9, t0
                  sltiu        t1, t1, 1929
                  slli         t2, a7, 52
                  nop
                  addiw        ra, t5, 1653
                  sll          t1, s8, t5
                  mulhsu       s2, sp, gp
                  mulw         s4, t0, s9
                  mulh         gp, t6, a0
                  rem          a4, ra, s0
                  nop
                  lui          s3, 33888
                  slt          zero, s9, sp
                  mul          s3, s5, a4
                  xor          a4, a1, t1
                  srl          s6, s11, s0
                  mulh         a7, sp, t6
                  and          s11, s0, a6
                  srlw         s5, s2, s6
                  srliw        gp, a7, 31
                  mulhsu       sp, t2, s8
                  sltu         zero, a6, s3
                  srli         s8, s10, 37
                  and          s4, t3, a3
                  slliw        a7, t0, 11
                  slt          t6, a4, s2
                  sltu         s0, s0, t2
                  lui          s11, 424470
                  sraiw        a3, a4, 30
                  divuw        a1, gp, s6
                  addi         t2, a4, -697
                  sraw         s7, s9, sp
                  sra          s1, ra, t0
                  lui          a4, 1003064
                  mulh         s11, ra, t2
                  srl          a0, s1, sp
                  lui          s10, 16865
                  sraw         s6, s5, zero
                  div          t1, s6, t1
                  mulw         a6, a6, t0
                  divuw        a7, t0, t1
                  srliw        s0, sp, 3
                  div          a4, s2, t4
                  ori          t1, t0, 1079
                  sllw         s2, a7, a5
                  ori          a7, t4, 1605
                  divw         t1, a5, s8
                  addi         s11, a7, -1843
                  auipc        s10, 37798
                  lui          a1, 644534
                  remw         t6, s11, a6
                  remuw        s10, a0, a2
                  remu         s0, sp, a6
                  sll          s10, s4, s5
                  srl          s4, a5, t6
                  srlw         s5, s8, a7
                  mulhsu       sp, a3, s2
                  or           s8, t2, t6
                  slli         s10, a6, 55
                  add          t3, tp, ra
                  rem          s8, a6, t5
                  subw         a3, a6, a1
                  and          a7, t1, s0
                  sra          zero, s10, a1
                  nop
                  add          t3, t1, s11
                  sllw         s11, ra, sp
                  sltiu        a7, a5, -500
                  srai         t6, s11, 2
                  slt          s3, a0, s6
                  sltiu        s5, s5, -1735
                  srlw         s0, t1, s3
                  and          a2, sp, s7
                  slliw        t0, a5, 2
                  ori          s6, zero, -70
                  mulhsu       t3, sp, t2
                  remw         zero, zero, s10
                  srlw         t1, s7, gp
                  addw         gp, a1, t6
                  rem          s8, s1, s9
                  slti         s4, s6, 286
                  sraw         ra, a0, s10
                  remw         a6, ra, s8
                  divuw        s8, t5, s11
                  slliw        s2, s8, 26
                  andi         t2, a1, -664
                  srl          sp, t6, t2
                  srlw         a1, t2, s1
                  divu         s3, t2, s4
                  sll          t0, ra, s3
                  remu         a2, a0, a5
                  sraiw        s8, s9, 4
                  divuw        s10, a2, s9
                  remuw        t1, t6, zero
                  sraiw        a5, t0, 3
                  xor          t3, s8, s1
                  and          a3, a3, a4
                  addiw        a1, t5, -1937
                  srli         sp, tp, 29
                  divw         a5, t3, s11
                  divuw        s11, s8, t2
                  divw         t3, s8, t0
                  divuw        t0, s4, t0
                  mulhu        s11, s10, gp
                  subw         t0, t0, s0
                  addw         t2, s3, s8
                  add          s2, s6, a7
                  lui          t1, 800159
                  divw         tp, a6, s9
                  srai         s0, t1, 8
                  and          a2, s10, s8
                  slli         a4, s2, 18
                  remu         t3, ra, s11
                  lui          s10, 563985
                  addiw        a6, a2, -1952
                  slliw        t2, s1, 22
                  lui          s4, 54167
                  sraiw        s4, gp, 0
                  addw         tp, a2, a5
                  srli         a5, s10, 32
                  mulhu        t1, a3, t1
                  xor          s8, s2, a6
                  remw         s11, t4, t2
                  remu         a5, ra, s7
                  div          a6, s2, zero
                  remu         t2, t5, t4
                  srai         s7, a1, 1
                  slt          t6, a7, t6
                  or           t0, a7, s1
                  srliw        t6, s3, 19
                  mulw         t0, a7, s8
                  slliw        tp, s7, 5
                  sraiw        t6, s6, 0
                  sra          s10, s3, t5
                  remw         s10, gp, a5
                  srai         a2, s5, 56
                  remu         t0, a1, a0
                  ori          s10, tp, -539
                  remu         s7, s0, t5
                  srlw         a0, s1, tp
                  mul          a6, t2, t3
                  divw         s3, t2, zero
                  divu         a7, a3, a5
                  srai         a3, gp, 16
                  sltiu        a4, s9, 1836
                  srli         ra, a4, 30
                  srliw        s10, ra, 27
                  divw         t1, s7, ra
                  divw         s5, t4, t3
                  rem          ra, a5, s2
                  slti         s0, t4, 13
                  sraw         s1, t2, t2
                  nop
                  srlw         a6, t0, a0
                  addiw        s6, s2, 1388
                  srl          t2, zero, t3
                  lui          a0, 829157
                  mulhu        s1, zero, s4
                  sltiu        s10, a1, -208
                  srliw        s4, zero, 15
                  xori         a3, s11, 1384
                  subw         s11, s5, t4
                  div          s0, sp, sp
                  and          s4, a2, t4
                  add          s11, a2, s8
                  and          t3, t6, s11
                  srlw         ra, s6, tp
                  slliw        t6, s4, 30
                  mulhsu       t2, s6, zero
                  srli         a6, sp, 13
                  sub          s10, a2, sp
                  srai         s7, a1, 51
                  mul          t2, s3, s11
                  sraw         s0, s7, a6
                  remuw        s1, s5, t0
                  srliw        sp, t0, 27
                  xor          a3, a0, sp
                  sub          s8, t2, s3
                  add          s10, a5, gp
                  slti         s4, s2, 1951
                  sub          s7, a4, t6
                  xori         t3, t2, 1758
                  remw         s1, t0, a4
                  lui          t3, 211335
                  slt          t1, a4, tp
                  srli         a5, a1, 55
                  rem          a1, a7, a0
                  srlw         sp, ra, s4
                  sll          t3, gp, a0
                  div          t1, t2, ra
                  srai         s10, t3, 14
                  sraiw        a5, s3, 5
                  mulhsu       t0, t2, ra
                  subw         t1, s8, t1
                  srlw         s6, t3, s5
                  mulw         s1, s8, zero
                  sub          s8, a2, s0
                  xori         s5, s5, 1196
                  addiw        s2, s6, 285
                  remw         s7, s6, t4
                  sub          t0, t2, s9
                  andi         t2, ra, -1205
                  srli         zero, gp, 17
                  mul          ra, s8, t1
                  srli         t3, a0, 57
                  sraw         a2, a0, a6
                  slliw        t3, a2, 20
                  slti         a1, gp, -1823
                  divu         s4, a1, tp
                  mulhu        s3, t2, s11
                  mulhsu       a2, s10, a2
                  srliw        a3, zero, 0
                  auipc        tp, 633604
                  sraw         sp, s8, a6
                  srlw         s10, a5, a4
                  slli         s3, a6, 26
                  xor          tp, s8, s1
                  addiw        s11, ra, 513
                  mulh         s2, t1, s5
                  auipc        s5, 784190
                  sra          s2, t2, t4
                  remw         a6, s7, t4
                  srliw        s5, gp, 7
                  sltiu        t0, t3, 483
                  slli         a7, sp, 42
                  divuw        sp, s0, gp
                  sllw         s7, a3, a6
                  sub          t6, s10, a7
                  slli         a3, a6, 51
                  srliw        s5, sp, 2
                  remw         t1, t1, t6
                  srai         sp, t4, 63
                  slli         s10, sp, 50
                  auipc        t3, 109569
                  auipc        s5, 239364
                  andi         t2, s10, 190
                  xori         a6, t4, -1085
                  sltiu        t1, s6, 1824
                  auipc        a2, 269777
                  slli         a7, s7, 56
                  mulhsu       a7, s2, s7
                  remuw        s10, a1, t4
                  divuw        s2, s8, s3
                  slti         a7, a0, -1158
                  addiw        s0, t3, -1921
                  xor          s1, sp, a6
                  sltu         a6, a1, gp
                  sltiu        tp, a7, -1699
                  nop
                  divu         s5, s0, t4
                  sll          t3, t3, t4
                  mulhu        s10, sp, s2
                  divuw        t1, s2, sp
                  srli         t2, t2, 25
                  andi         s11, s6, -1406
                  mul          t3, s8, t1
                  xori         a3, a4, 72
                  sraiw        a6, s9, 9
                  andi         t0, s3, 486
                  remuw        a3, a1, t2
                  mulw         s4, a7, s3
                  and          ra, a3, s4
                  xor          a0, a3, t6
                  mul          s6, t6, a4
                  sltiu        ra, s5, -1216
                  auipc        s5, 53464
                  auipc        s7, 668071
                  divuw        s5, t4, s10
                  slliw        s6, sp, 10
                  remu         s0, t6, t5
                  srlw         s4, s11, t1
                  srlw         a4, a7, tp
                  mulhsu       a0, a6, t4
                  divuw        s7, s6, a1
                  slt          s0, a1, t0
                  sll          t0, a6, s7
                  mul          t6, t2, t3
                  or           a6, t5, s7
                  divu         s4, a0, a5
                  srlw         a5, s4, t4
                  subw         a2, t4, s11
                  mulhsu       ra, a7, s10
                  rem          a5, t1, gp
                  andi         t0, s1, 1525
                  slt          s10, a4, s3
                  mulw         zero, s3, t2
                  sraiw        s5, s3, 25
                  addiw        a0, s0, 1854
                  mulhu        s2, t2, gp
                  add          t2, t4, s3
                  add          a1, s5, t4
                  add          ra, sp, t5
                  slli         s5, s8, 23
                  lui          tp, 543817
                  slliw        s3, s9, 15
                  mulh         s3, zero, t4
                  mulhu        s5, sp, s1
                  mulh         a0, s0, t2
                  divw         s8, ra, a3
                  sll          a0, a0, t4
                  remuw        a0, a7, s10
                  mul          t6, tp, a5
                  addiw        s11, s10, 588
                  div          s10, sp, a2
                  mulw         a4, s10, ra
                  slliw        s8, s10, 21
                  mul          zero, t1, a1
                  or           s11, tp, a4
                  andi         a3, a4, 595
                  srliw        s8, s0, 7
                  remu         t6, s5, gp
                  remw         a0, gp, a4
                  slt          a7, gp, t4
                  sllw         a2, t6, t2
                  mul          s6, s0, s8
                  srlw         t3, a1, s1
                  sub          s1, ra, sp
                  nop
                  sra          a3, s10, t2
                  srli         a6, zero, 60
                  srl          a1, s9, s7
                  addi         a6, gp, -1421
                  sltiu        s4, s2, 1136
                  divu         a6, a2, t3
                  divw         s4, s1, a6
                  slliw        s11, a7, 18
                  divuw        ra, sp, s2
                  mulh         sp, tp, t5
                  subw         a2, a4, a1
                  srai         s6, t3, 4
                  srlw         s11, t4, s1
                  sllw         zero, t5, s10
                  srai         gp, a1, 8
                  addw         t3, s10, t3
                  srliw        a5, s1, 16
                  andi         s5, a1, 1231
                  sraw         s6, t6, t2
                  auipc        t3, 101758
                  slti         s3, s0, -1930
                  slti         a3, s1, -1151
                  or           s8, s6, s11
                  srli         t3, s3, 20
                  srai         a7, a1, 58
                  rem          a3, s9, s11
                  subw         t0, s8, s0
                  sraw         zero, t3, a0
                  mulw         t0, s10, s10
                  mulh         gp, s4, s2
                  auipc        t6, 930228
                  sub          t1, s1, s4
                  srl          gp, s0, a0
                  addiw        s11, s10, 1952
                  sltiu        a6, a1, 828
                  remu         s1, t6, s9
                  addw         t6, a3, a2
                  xori         a0, t5, -1814
                  mulh         s6, s7, tp
                  ori          a4, t0, 579
                  mulw         a2, tp, t2
                  auipc        s5, 120150
                  remw         s5, zero, s7
                  srliw        s11, t1, 21
                  rem          ra, t3, s5
                  slli         s10, gp, 57
                  or           s10, s6, a3
                  addw         s5, s0, a5
                  addiw        gp, s11, 877
                  addi         t2, t0, 1803
                  slliw        s6, s2, 15
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
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x3f
                  beqz x31, 1f
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
                  addi x30, x30, -4
                  sd  x29, (x30)
                  add x29, x30, zero
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
                  add x30, x29, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x31, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x31, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x31, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x31, x20, ecall_handler
                  li x20, 0x1
                  beq x31, x20, instr_fault_handler
                  li x20, 0x5
                  beq x31, x20, load_fault_handler
                  li x20, 0x7
                  beq x31, x20, store_fault_handler
                  li x20, 0xc
                  beq x31, x20, pt_fault_handler
                  li x20, 0xd
                  beq x31, x20, pt_fault_handler
                  li x20, 0xf
                  beq x31, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x31, _start
                  sd x0, 0(x31)
                  sd x1, 8(x31)
                  sd x2, 16(x31)
                  sd x3, 24(x31)
                  sd x4, 32(x31)
                  sd x5, 40(x31)
                  sd x6, 48(x31)
                  sd x7, 56(x31)
                  sd x8, 64(x31)
                  sd x9, 72(x31)
                  sd x10, 80(x31)
                  sd x11, 88(x31)
                  sd x12, 96(x31)
                  sd x13, 104(x31)
                  sd x14, 112(x31)
                  sd x15, 120(x31)
                  sd x16, 128(x31)
                  sd x17, 136(x31)
                  sd x18, 144(x31)
                  sd x19, 152(x31)
                  sd x20, 160(x31)
                  sd x21, 168(x31)
                  sd x22, 176(x31)
                  sd x23, 184(x31)
                  sd x24, 192(x31)
                  sd x25, 200(x31)
                  sd x26, 208(x31)
                  sd x27, 216(x31)
                  sd x28, 224(x31)
                  sd x29, 232(x31)
                  sd x30, 240(x31)
                  sd x31, 248(x31)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
                  mret

load_fault_handler:
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
                  mret

store_fault_handler:
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x29, x30, zero
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
                  add x30, x29, zero
                  ld  x29, (x30)
                  addi x30, x30, 4
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
