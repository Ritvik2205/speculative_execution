.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 93
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
xor rsi, -117
or al, -75
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor rcx, -2
xor eax, -127
or al, 74
jmp .bb_0.1
.bb_0.1:
test dl, -119
xor cl, 24
test rcx, -613256812
xor bl, -61
and al, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
