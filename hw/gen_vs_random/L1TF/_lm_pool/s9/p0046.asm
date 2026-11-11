.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
cmp rcx, 82
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 63
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and bl, bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
xor rsi, 2
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 12
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
