.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
xor dl, -59
and ax, 13090
or di, 94
xor cl, 83
and cl, -19
not bl
not sil
test al, 22
or sil, dil
xor bl, cl
or esi, -110
xor bl, cl
xor al, bl
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
