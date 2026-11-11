.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 52
test al, 40
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
sbb al, dil
add cl, sil
test al, -75
adc bl, al
add al, -44
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
xor bl, dil
or eax, -126
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
