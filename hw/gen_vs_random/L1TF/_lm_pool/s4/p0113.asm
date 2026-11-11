.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rax, 1994547909
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
xor al, 45
test dil, -126
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and al, -68
test eax, 899472326
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
