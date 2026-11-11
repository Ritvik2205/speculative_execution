.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, 21
mul al
lea ax, qword ptr [rdi]
sub dil, bl
cmovnle bx, cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc rax, rcx
sbb eax, 2098460225
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
xor eax, esi
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
add dil, dl
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
