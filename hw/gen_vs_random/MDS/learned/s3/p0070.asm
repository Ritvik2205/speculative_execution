.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -23697
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor al, 8
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xor edi, 46
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
xor bl, dil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
and ax, -16061
and rdx, 17
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dil, sil
and rcx, 107
xor ax, -1005
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
