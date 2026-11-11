.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 1713273566
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt di, 157
adc eax, 34
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
