.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -93 # instrumentation
setnb al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt di, 157
adc eax, 56
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
imul al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
