.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rbx]
cmovp ebx, eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
or cl, cl
cmovns rcx, rsi
lea ax, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
adc al, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, 114
imul bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
add dl, 116 # instrumentation
cmovbe rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 58
and sil, cl
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
