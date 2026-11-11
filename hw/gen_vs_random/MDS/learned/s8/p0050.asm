.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 75
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and dil, 125
and al, -103
and dil, -62
and dil, -39
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test al, -81
xor cl, al
test eax, 424329527
and dil, -39
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.1
.bb_0.1:
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
