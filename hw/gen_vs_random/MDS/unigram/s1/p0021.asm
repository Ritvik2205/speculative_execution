.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and dl, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
or bl, 127
test bl, dil
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
test dl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and esi, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
