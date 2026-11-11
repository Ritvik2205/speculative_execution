.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
sub dl, 41
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test bl, 12
cmp cl, 57
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
