.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sbb al, -114
lea ax, qword ptr [rcx + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc cx, -30
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
mov bl, dil
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
