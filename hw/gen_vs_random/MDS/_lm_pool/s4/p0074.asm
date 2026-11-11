.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
or al, -22
test sil, -96
and al, -55
or al, -78
test cl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and bl, 68
bts ax, 22
test cl, dl
jmp .bb_0.2
.bb_0.2:
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
or si, 94
test edx, -1561252782
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
