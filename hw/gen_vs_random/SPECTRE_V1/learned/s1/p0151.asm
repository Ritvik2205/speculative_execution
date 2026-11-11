.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
adc sil, dl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 117
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
cmovnz bx, ax
mov di, cx
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmovs di, si
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
