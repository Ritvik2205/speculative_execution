.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
btr ecx, ecx
xor al, 34
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt si, dx
bt edx, ecx
xor dl, -59
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmovnbe rcx, rdx
cmovnz rax, rbx
btc ebx, ecx
or cl, al
or dil, -71
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
cmovnle dx, di
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
