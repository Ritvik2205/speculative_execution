.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 23
xor dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and al, -114
bt si, ax
and dl, -73
xor al, 122
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and dx, 3
or sil, dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
test dl, -85
test eax, 158941032
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
