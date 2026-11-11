.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and dil, 98
xor cl, al
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
imul al
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
