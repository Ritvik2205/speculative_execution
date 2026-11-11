.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
or ecx, 66
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or rdi, -11
not al
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
test bx, 4954
bts rcx, rdx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
or al, al
or al, al
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
and cl, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
