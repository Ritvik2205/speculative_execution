.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 58
xor rax, 376589024
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdx
test dil, -116
and sil, dl
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 44
add dil, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, cl
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
