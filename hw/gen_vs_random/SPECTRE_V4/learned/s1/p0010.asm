.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -44
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
test dil, 64
sub ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
test al, 18
sub al, dil
xor ax, 45
add bl, bl
xor dil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
