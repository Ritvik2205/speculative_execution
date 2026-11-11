.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 37
sub al, -66
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovs rsi, rsi
add al, 18
add sil, 2
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add dx, -90
imul al
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
