.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
imul rsi, rbx
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
lea edx, qword ptr [rdi + rdi + 52]
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
add bl, 37 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 53
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
imul bx, ax, 18
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
imul cx, ax, 9
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmovnp ebx, eax
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
