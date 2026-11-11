.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
add dil, -75
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and bx, -118
cmovnz rbx, rax
sbb bl, -41
sub rdx, 24
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
sub dl, -48
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
