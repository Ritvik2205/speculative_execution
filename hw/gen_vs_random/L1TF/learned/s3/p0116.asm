.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
sbb dl, -26
and al, sil
lea rax, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
adc cl, -34
or bx, 90
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
add dil, cl
cmovnz edi, ecx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
