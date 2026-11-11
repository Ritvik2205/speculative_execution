.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
test eax, 1729060510
btr rdx, 23
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
bt rcx, rcx
cmovl edx, eax
test edi, -1252846009
cmovnl rax, rdx
cmovnz si, cx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
btc ecx, edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and sil, 68 # instrumentation
cmovns ax, si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
cmovp dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
cmovz rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
