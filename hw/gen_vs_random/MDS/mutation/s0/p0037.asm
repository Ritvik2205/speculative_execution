.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
btc rax, rsi
btr bx, bx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor dil, 124
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and al, 61 # instrumentation
cmovl di, ax
btc bx, cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
