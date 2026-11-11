.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
lea cx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
add sil, dil
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -127
add eax, -55403434
test cl, -62
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
