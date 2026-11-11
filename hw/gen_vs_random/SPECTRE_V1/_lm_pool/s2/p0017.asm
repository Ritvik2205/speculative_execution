.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add dl, sil
sub ax, 124
lea rbx, qword ptr [rdx + rcx + 6]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 15
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
