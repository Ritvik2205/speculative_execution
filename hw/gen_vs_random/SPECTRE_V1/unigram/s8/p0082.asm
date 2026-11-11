.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 12
add cl, -119 # instrumentation
adc dl, cl
lea rcx, qword ptr [rdx + rdi + 27]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
lea si, qword ptr [rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmovo di, dx
lea rdx, qword ptr [rdx]
test dl, -36
add rbx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
