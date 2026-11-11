.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, bl
test dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rax, -2058103810
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
btc si, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
test sil, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and di, 91
or ecx, edx
and cl, 78 # instrumentation
cmovs di, si
cmovz eax, edi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
cmovnz bx, dx
and al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
