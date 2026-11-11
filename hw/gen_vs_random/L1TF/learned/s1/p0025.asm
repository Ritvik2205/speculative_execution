.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -71 # instrumentation
adc ebx, ebx
xchg ecx, edi
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and al, -68
jmp .bb_0.4
.bb_0.4:
lea dx, qword ptr [rdi + rsi + 92]
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
