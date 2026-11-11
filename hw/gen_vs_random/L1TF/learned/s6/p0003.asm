.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
lea di, qword ptr [rsi]
and dl, -86
cmp cl, -89
and al, -68
jmp .bb_0.1
.bb_0.1:
bt rax, 35
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test sil, 29
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
