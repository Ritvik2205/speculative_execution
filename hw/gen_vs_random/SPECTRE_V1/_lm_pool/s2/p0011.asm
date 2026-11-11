.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
xor dl, 71
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
lea edi, qword ptr [rdx]
and dl, -92
sbb al, 66
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sbb sil, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
