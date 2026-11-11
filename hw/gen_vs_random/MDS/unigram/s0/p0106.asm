.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
cmovns rdx, rax
cmovns bx, si
xor al, 9
btr edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
cmovbe eax, esi
cmovnb ebx, ecx
or cl, cl
cmovl rsi, rcx
test dil, -51
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
xor al, sil
and dil, -103 # instrumentation
cmovns edi, edi
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
not sil
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
