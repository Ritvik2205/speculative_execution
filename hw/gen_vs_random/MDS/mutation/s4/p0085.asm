.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edi, edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
cmovz ecx, edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
or dl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and dl, 16 # instrumentation
cmovle ecx, ecx
or ax, -14271
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
test rax, 1978892575
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
cmovno bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and bl, 45 # instrumentation
cmovnb dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
