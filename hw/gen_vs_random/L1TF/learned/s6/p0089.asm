.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
cmp eax, 951020724
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, dl
sub rax, -15
add al, 74
and sil, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
or eax, 1495028166
jmp .bb_0.2
.bb_0.2:
sub sil, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
