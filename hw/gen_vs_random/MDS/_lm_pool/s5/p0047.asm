.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
or cl, bl
test al, bl
bt cx, ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or rax, -689609688
test al, 127
or dil, 12
bts rsi, 221
or al, 30
xor bx, 54
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and si, -121
test ecx, -1843375753
sbb dil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
