.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
test al, al
xor di, 40
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
cmovz dx, bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and dl, 53 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and al, 42 # instrumentation
cmovz esi, edi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and edx, -44
and dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
