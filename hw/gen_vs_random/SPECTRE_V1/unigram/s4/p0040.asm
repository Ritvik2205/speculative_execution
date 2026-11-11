.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
sub ebx, 82
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add eax, edx
sub rcx, 90
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 112 # instrumentation
setl bl
movzx dx, cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 29
add dl, 63 # instrumentation
cmovle bx, di
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovnz rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
