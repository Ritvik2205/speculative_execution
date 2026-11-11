.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
lea si, qword ptr [rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 31
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 18
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, 11
lea ax, qword ptr [rbx]
sub al, dil
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
