.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 33
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rdx]
bt cx, cx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, 32 # instrumentation
sbb bl, sil
cmovnp ecx, ebx
xor si, 23
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
bt ecx, 198
mov rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
