.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rax, 1250429750
xor bl, -27
xor cl, 55
or al, -61
or bl, -52
test cl, -18
or si, 94
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
btr bx, 188
or bl, 13
and dil, -62
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
