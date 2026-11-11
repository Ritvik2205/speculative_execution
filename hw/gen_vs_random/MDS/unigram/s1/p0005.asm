.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle bx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
cmovno di, ax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test di, 16
test bl, -14
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and dl, 91 # instrumentation
cmovnle eax, eax
and cl, -103 # instrumentation
cmovbe cx, cx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
btc si, 99
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
btc dx, bx
or cl, -77
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
cmovs edx, eax
cmovnle si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
