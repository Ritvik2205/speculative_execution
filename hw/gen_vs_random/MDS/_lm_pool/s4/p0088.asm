.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -113
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
btr ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor cl, -13
or cl, -36
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
xor al, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and ax, -4410
xor bl, -102
and cl, -6
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
