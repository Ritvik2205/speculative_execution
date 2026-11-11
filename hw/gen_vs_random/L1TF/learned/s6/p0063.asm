.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
inc rbx
cmovno bx, di
sbb si, 9
or ax, 11821
lea rdx, qword ptr [rax + rdi + 76]
btr edx, ecx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor al, sil
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
