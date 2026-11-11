.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
test al, cl
sub sil, -99
or dil, -113
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
test al, -104
jmp .bb_0.2
.bb_0.2:
setle al
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
