.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp eax, -127
lea ebx, qword ptr [rcx]
xor bl, cl
test dil, -126
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
dec eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub cl, -49
sub dl, -78
sub cl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
