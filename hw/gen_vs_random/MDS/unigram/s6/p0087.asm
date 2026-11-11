.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz si, si
bt si, dx
test bl, al
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 22
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovno rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
not rdi
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and bl, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
btr dx, 47
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
btc edx, 7
cmovnz rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
