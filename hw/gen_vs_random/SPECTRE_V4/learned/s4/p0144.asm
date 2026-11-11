.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xor dil, sil
xor ax, 45
adc al, dl
and cl, -118
or rbx, -108
cmp dil, bl
jmp .bb_0.1
.bb_0.1:
adc sil, 77
adc sil, 77
or al, cl
cmp sil, dil
test dil, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 51
test al, bl
or rax, -2144083737
xor dl, al
test rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
