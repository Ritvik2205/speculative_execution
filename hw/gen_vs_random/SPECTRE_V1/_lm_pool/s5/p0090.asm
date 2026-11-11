.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sub al, bl
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmp al, cl
and sil, -55
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sub dl, cl
inc al
cmp dil, -58
cmovle rax, rdx
lea ax, qword ptr [rdi + rsi + 78]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
