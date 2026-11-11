.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or al, 30
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and esi, 53
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 55
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test ax, 30932
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and ecx, -104
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
