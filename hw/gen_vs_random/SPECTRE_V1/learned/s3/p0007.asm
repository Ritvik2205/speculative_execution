.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60
sub esi, eax
lea rsi, qword ptr [rcx]
setnbe cl
cmovs cx, dx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
setnl sil
lea edx, qword ptr [rcx]
lea rsi, qword ptr [rbx]
cmp rdi, rsi
xor ax, 17976
mov sil, 56
mov cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
