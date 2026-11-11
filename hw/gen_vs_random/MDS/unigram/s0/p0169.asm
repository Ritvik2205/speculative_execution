.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
test di, 24
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and dl, dil
and bl, al
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
bts edx, ecx
test cl, 31
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 64
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and dl, -7
and cx, 39
or dl, 22
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
