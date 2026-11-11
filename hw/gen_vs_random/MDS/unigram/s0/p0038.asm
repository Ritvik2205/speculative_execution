.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
bt rcx, rcx
bts ax, bx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
and rax, rcx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
cmovnbe rsi, rdi
or cx, 49
not rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and di, 91
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rcx, -63
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
