.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rax, rbx
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
xor sil, -126
and bl, -6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 67
bts bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and sil, 6 # instrumentation
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
cmovnb bx, di
and cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and cx, -8
cmovnz eax, eax
and dl, -59 # instrumentation
cmovbe si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
