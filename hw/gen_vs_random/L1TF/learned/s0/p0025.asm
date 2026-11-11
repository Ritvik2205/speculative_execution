.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
xchg edi, ecx
jmp .bb_0.1
.bb_0.1:
xor cl, 89
adc cx, 40
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rax + rbx + 33]
sbb al, cl
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
