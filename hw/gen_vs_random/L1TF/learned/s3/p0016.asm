.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
xor al, al
or ax, -18131
adc al, -61
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
dec dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
or al, bl
xor cl, bl
xor eax, -885407671
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
