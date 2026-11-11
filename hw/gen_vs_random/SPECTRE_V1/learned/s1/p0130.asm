.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 56
jns .bb_0.1
jmp .exit_0
.bb_0.1:
not bx
neg bl
or dl, sil
adc dil, 57
test al, 84
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
