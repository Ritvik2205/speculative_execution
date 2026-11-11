.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
cmovnb bx, dx
jmp .bb_0.1
.bb_0.1:
test eax, -2032743474
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
