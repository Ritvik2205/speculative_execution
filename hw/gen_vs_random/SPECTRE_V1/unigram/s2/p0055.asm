.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 38
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
setno al
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
adc si, ax
or dl, al
movsx rcx, dil
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl esi, ecx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
xchg dx, ax
cmovp eax, edx
add di, 62
imul eax, esi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
