.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test cl, 73
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or ax, -4210
jmp .bb_0.1
.bb_0.1:
btc rdi, 221
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 7
or cl, al
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
test rcx, -613256812
bt dx, si
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
