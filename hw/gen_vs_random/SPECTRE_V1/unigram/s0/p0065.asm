.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
lea rcx, qword ptr [rdi + rax + 65]
cwde
lea ebx, qword ptr [rdi + rdi + 19]
lea rbx, qword ptr [rax + rdi + 10]
setz dl
lea si, qword ptr [rax + rdx + 7]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
test dil, cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
lea edx, qword ptr [rdi + rdi + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
