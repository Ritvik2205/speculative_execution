.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
add dl, 43 # instrumentation
adc cl, cl
sbb eax, 858696050
not cl
inc esi
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
mov rbx, 52
cmp dil, dil
lea ebx, qword ptr [rsi]
lea rdi, qword ptr [rcx + rcx + 6]
adc bl, 31
lea ax, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
