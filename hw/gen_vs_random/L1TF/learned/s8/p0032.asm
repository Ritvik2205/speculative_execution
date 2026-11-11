.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
or sil, bl
sbb dl, cl
cmp rdx, 56
jmp .bb_0.2
.bb_0.2:
test dil, -126
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
add cl, bl
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
