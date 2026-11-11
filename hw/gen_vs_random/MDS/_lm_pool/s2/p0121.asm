.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and al, 75
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test al, cl
and cx, -2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and al, 35
xor di, -83
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or al, dil
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
