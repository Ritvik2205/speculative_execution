.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, si
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 11
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or sil, -49
and rax, 452940266
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
bt rdi, rax
and cx, -2
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and cl, -71
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 73
bt edx, 18
btr edi, 221
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 50
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
