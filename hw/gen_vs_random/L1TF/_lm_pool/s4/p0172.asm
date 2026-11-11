.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
xor cx, 113
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
xor al, dil
and rdi, 99
sbb bl, cl
test sil, 29
cmovnp ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 56
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
