.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 16
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
xor dx, 14
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
