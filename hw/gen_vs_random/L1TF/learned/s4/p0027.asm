.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 96
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setnb dil
jmp .bb_0.1
.bb_0.1:
setle bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
not al
jmp .bb_0.3
.bb_0.3:
add dil, 65 # instrumentation
cmovo rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
