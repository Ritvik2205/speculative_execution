.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 28
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
seto bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and bl, bl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 20
adc al, dil
xchg rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
neg si
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
bt bx, 57
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
