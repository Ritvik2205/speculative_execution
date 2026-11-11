.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwd
and al, -68
sbb cl, -11
or bl, cl
mul rcx
lea ax, qword ptr [rsi]
lea rdx, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 80
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
add bl, 68
setz dil
cdq
xor ebx, -81
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
