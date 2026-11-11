.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmovno rsi, rbx
xor sil, 64
xor cl, 89
sbb si, 48
cmovb ax, di
cmovbe ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
