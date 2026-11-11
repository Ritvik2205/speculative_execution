.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
cmovle cx, dx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 32
sbb al, 33
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
lea rax, qword ptr [rcx + rdx + 91]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
sub sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
