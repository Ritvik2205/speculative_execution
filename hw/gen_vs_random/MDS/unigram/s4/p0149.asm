.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
or sil, -78
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
bt esi, eax
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
xor cx, -18
btc bx, si
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 31
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
test dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
