.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 29
add al, -46
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or esi, edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, 109
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
xor sil, dl
and cl, 23
lea dx, qword ptr [rdi + rcx]
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
