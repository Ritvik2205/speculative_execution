.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor ebx, eax
xor sil, -33
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
add al, -47
sbb ebx, 26
and sil, 11
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
jmp .bb_0.2
.bb_0.2:
or sil, cl
lea rbx, qword ptr [rcx + rsi + 28]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
