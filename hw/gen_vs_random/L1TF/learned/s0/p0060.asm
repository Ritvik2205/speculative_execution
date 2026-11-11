.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 97
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor dil, -42
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
setp sil
jmp .bb_0.2
.bb_0.2:
and rdi, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
