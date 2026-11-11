.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, si
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
sbb ecx, esi
cmovbe esi, edx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rbx]
test cl, -33
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
cmp di, bx
cmp rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
or bx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
