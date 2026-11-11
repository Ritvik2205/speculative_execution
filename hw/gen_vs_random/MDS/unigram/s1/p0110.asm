.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 12
test bl, cl
and bl, -5 # instrumentation
cmovnl di, ax
cmovz rdi, rdi
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
not rsi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 91
or bl, dil
btr eax, 51
xor cl, 83
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 16
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
xor rax, -1128378406
or dl, 85
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 84
btc rax, 59
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
