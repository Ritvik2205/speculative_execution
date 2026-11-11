.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
add cl, -127
xor dl, 71
test bl, -8
jno .bb_0.1
jmp .exit_0
.bb_0.1:
inc ecx
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 54
lea si, qword ptr [rbx + rdi]
neg rdi
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
