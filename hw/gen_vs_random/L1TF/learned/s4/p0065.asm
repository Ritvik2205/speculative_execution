.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
btc ax, bx
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
sbb cl, -11
xor rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
