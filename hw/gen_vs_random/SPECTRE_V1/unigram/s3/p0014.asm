.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
test bx, cx
cmp ax, bx
cmovz bx, bx
adc esi, ebx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, 21
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add sil, -68
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
adc ax, dx
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 73
add rdx, 95
adc dil, 24
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
