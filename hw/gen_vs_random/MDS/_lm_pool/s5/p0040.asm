.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
xor cl, 55
or rax, 1020005579
and al, 49
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and dl, sil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
test esi, 1857129931
xor dl, cl
or al, -61
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and bx, 85
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
