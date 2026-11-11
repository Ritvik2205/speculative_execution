.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
sub al, dil
xor edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
