.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
or dil, dil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test al, -7
not al
xor bx, 50
and rax, 79
and dl, -73
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
or cl, sil
and al, -8
and dl, bl
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
