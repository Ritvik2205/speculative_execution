.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
bt edx, edi
test dl, dil
or sil, -78
or al, sil
jmp .bb_0.1
.bb_0.1:
or al, dl
xor rbx, 89
test cl, dl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or al, -78
and al, -8
test ebx, -2015966884
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
