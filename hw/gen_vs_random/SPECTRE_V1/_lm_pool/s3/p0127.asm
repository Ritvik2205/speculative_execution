.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
add rax, 6
sub dil, sil
test ax, 19339
test al, 84
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
lea cx, qword ptr [rdx + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
