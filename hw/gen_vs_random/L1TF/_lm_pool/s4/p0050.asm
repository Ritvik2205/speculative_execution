.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
sbb al, -23
sub bl, -96
xor al, 16
test al, -32
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
cmp sil, -11
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
