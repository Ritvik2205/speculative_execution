.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
test al, 34
add rsi, -60
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 36
sub sil, -18
sbb al, dl
xor dl, bl
sub sil, -18
lea ax, qword ptr [rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, 848176907
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and ax, 32540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
