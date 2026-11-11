.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -30
not rdi
cmovz ecx, edi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 77
and dil, bl
add cl, dil
adc al, dl
cmp al, 109
adc dil, 38
test al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
