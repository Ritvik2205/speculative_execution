.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
cmp rdx, -49
or eax, -863161215
and cl, 126
test al, sil
adc al, -70
cmp dil, al
dec bl
or dl, al
and cl, al
sbb al, -14
adc cl, al
bt ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
