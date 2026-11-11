.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 87
test edi, eax
lea rax, qword ptr [rsi]
or ecx, 64
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
sbb sil, -78
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
xor eax, esi
cmovno cx, ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
add dl, -77 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
