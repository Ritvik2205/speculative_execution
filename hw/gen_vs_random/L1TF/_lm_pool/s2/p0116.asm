.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
add rdi, 13
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dl, cl
and rsi, 76
and al, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
xor rbx, 64
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
