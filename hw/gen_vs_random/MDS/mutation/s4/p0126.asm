.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and dl, 16 # instrumentation
cmovle ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, -2052112368
or dl, bl
or ax, -7150
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
cmovz ecx, edx
cmovno bx, bx
cmovl edi, edx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and bl, 45 # instrumentation
cmovnb dx, di
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
