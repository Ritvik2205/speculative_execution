.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bts bx, cx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
btr eax, 51
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
btr rcx, 52
and cl, 118 # instrumentation
cmovp ecx, edi
btr esi, 5
and sil, al
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
or sil, sil
cmovbe si, cx
or bl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
cmovl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
