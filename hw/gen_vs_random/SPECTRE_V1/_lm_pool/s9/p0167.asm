.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
sbb sil, dil
xor rbx, 50
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
