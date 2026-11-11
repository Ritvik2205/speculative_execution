.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bl, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
cmovz cx, ax
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and dl, 17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
btr bx, si
and rdi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdi]
cmovns ax, cx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and dl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
or al, dl
and al, sil
or rax, -689609688
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
