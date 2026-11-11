.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
btc ebx, 149
and sil, sil
and edx, -44
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
bts rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor bl, -61
or cl, 39
or sil, -78
test dil, 46
test ax, 4430
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
