.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
and sil, -55
setb bl
lea rax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
add sil, -68
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and bl, bl
js .bb_0.3
jmp .exit_0
.bb_0.3:
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
