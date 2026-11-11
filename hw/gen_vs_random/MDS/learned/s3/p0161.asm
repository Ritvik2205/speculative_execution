.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or dl, 85
bt ecx, 11
xor sil, 94
or dl, -31
jmp .bb_0.1
.bb_0.1:
and bl, 68
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, sil
xor dil, 124
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
bt ax, si
or dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
