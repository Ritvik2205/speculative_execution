.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor bl, cl
and ax, 31082
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
