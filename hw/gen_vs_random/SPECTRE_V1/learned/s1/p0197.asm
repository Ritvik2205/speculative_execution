.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 17
xor al, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and ax, 21910
adc cl, -81
or sil, dl
lea bx, qword ptr [rdx]
add ebx, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
