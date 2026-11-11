.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
sub al, -3
bt eax, esi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 68
test cl, 1
cmp cl, -89
and dl, 10
lea dx, qword ptr [rbx + rdx + 88]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
add edi, 25
and sil, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
