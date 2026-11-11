.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -6
sub sil, -18
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
sbb al, -107
test al, 59
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 52
xor edx, 47
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
or dil, bl
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
