.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add dil, bl
jmp .bb_0.1
.bb_0.1:
test rbx, rdx
add cl, dil
and dil, dil
and cl, cl
test sil, 29
xor rdi, -80
xchg sil, dil
xor dil, sil
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
