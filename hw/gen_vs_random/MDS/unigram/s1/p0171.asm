.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -33 # instrumentation
cmovns rdx, rdx
cmovnb ax, di
cmovs edi, edi
and al, 33 # instrumentation
cmovnle esi, eax
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
cmovp ecx, esi
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 44
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
or cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 40
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
