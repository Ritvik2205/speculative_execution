.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and dl, -49
and dil, -22
xor al, sil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
