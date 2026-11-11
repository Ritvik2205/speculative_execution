.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bts bx, 79
and cl, -101
and dx, bx
cmovnp eax, esi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
xor dil, 52
cmovns rax, rdx
or rdi, rsi
and al, 73
jmp .bb_0.1
.bb_0.1:
and dl, -1 # instrumentation
cmovnb si, cx
or rcx, 53
cmovnz edx, ebx
xor dil, 26
not edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
