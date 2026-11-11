.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 52
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
xor bl, -61
xor bl, -27
and al, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and cl, -6
and rax, -1931765367
xor dil, 8
jmp .bb_0.1
.bb_0.1:
or rbx, -72
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
test dil, -51
and al, -103
and bx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
