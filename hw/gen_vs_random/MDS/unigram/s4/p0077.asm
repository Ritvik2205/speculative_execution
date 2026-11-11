.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
bts rdx, 255
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 16
bt ebx, 107
cmovnp edi, esi
bts esi, ebx
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 18
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
btr bx, 89
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
cmovnz dx, si
or bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
cmovo bx, ax
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and al, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
