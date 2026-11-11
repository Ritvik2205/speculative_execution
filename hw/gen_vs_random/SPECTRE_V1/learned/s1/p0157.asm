.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
cmp rcx, 80
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and cl, dil
sbb ebx, 36
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
