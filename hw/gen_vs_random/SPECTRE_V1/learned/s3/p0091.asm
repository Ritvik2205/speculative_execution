.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and al, bl
xor rsi, 88
and cl, 86
mov al, dl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
