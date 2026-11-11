.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 20
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sub al, -89
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
add dil, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add dil, dil
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
