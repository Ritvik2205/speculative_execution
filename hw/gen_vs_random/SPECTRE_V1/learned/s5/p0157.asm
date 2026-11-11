.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 41
add dil, -75
lea rdi, qword ptr [rcx + rdi]
or dl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
adc dl, -49
lea ebx, qword ptr [rax + rbx + 33]
cmp eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
