.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
cmovz si, si
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
btc rax, rdi
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and sil, al
xor dx, 77
and al, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
cmovnl edx, esi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 45
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
cmovb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
not rsi
and edi, 23
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
