.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
xor cl, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
bts eax, eax
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
bt di, 52
jmp .bb_0.1
.bb_0.1:
bts eax, 222
btc rdx, rdi
or cl, al
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
test dl, -85
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
bt rdx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
