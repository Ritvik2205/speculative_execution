.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, -34
add bx, -65
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
lea edx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], di
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
bt rax, 48
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
lea rsi, qword ptr [rax + rax]
and cl, -57
and esi, 77
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
dec rax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
