.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
sub cl, -21
lea dx, qword ptr [rax + rsi + 18]
and rdx, rcx
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
lea eax, qword ptr [rdx]
and si, 83
and rdi, rbx
xor rax, rsi
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 38
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
