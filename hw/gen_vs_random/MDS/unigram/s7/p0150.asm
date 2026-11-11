.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, eax
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and bl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
and sil, bl
xor sil, 94
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and ebx, 33
cmovz ebx, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, rsi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
