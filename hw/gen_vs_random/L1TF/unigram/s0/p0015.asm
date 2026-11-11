.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edx
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
add bl, -9 # instrumentation
adc rdi, 67
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 14
sbb esi, ecx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 35
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
