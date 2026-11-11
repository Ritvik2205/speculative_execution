.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
or dil, al
setno bl
sbb rdi, 7
bt di, 19
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add bl, 68
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
