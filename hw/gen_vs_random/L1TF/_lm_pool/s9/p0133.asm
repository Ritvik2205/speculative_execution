.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor al, 16
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and bl, 89
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
