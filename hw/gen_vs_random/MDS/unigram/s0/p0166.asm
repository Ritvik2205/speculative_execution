.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
not dl
and dl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
test cx, si
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 50
xor al, dl
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
or bx, bx
test dl, -95
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
