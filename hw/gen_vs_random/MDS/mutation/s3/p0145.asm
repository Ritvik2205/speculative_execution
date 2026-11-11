.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 30524
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and dl, 16 # instrumentation
cmovle ecx, ecx
or dl, bl
and bl, 45 # instrumentation
cmovnb dx, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
test rax, 1978892575
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
cmovz ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovl edi, edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
