.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
or rcx, 28
add bl, -12 # instrumentation
lea rbx, qword ptr [rax + rsi]
lea edx, qword ptr [rcx + rcx + 63]
cdq
lea rdi, qword ptr [rax]
lea rbx, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rsi]
cmovnb edx, ebx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
