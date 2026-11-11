.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 88
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 8
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ebx, edi
add cl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
sub dil, 87
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 48
sbb esi, 94
bswap eax
sub sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
