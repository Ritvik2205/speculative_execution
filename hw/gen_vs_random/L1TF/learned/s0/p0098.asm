.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
cmp ax, -79
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
btc bx, 168
add cx, 59
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnle edx, ebx
bts rbx, 98
add dl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
xor eax, -117
sub dl, dil
sbb bl, -94
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 35
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov rsi, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
