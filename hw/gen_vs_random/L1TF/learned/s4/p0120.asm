.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
add dl, dl
and cl, 84
test dl, -37
or ax, -10161
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
adc dl, -12
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
