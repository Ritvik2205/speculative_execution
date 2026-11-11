.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
xor al, al
bt ebx, edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
xor ax, 24729
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 58
jmp .bb_0.1
.bb_0.1:
and cl, -26 # instrumentation
cmovnp rdi, rcx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovnl ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
test eax, 758789512
xor al, al
cmovs edx, eax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
test cl, 33
cmovb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
