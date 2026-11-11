.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rbx + rdx + 34714]
sbb dil, -106
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
test al, 48
sbb al, bl
add dl, al
cmp cl, al
adc al, bl
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
sbb ebx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
