.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
inc al
imul ecx, eax
mov dl, cl
lea ax, qword ptr [rax + rdx + 92]
bswap rdx
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
sbb bl, -88
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 92
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 68
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 97
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
