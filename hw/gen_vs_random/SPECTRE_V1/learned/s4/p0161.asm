.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rcx
and al, bl
add ax, 6656
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and ebx, 100
and dil, -114
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
sub dl, 96
sbb cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
