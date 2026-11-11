.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
test dil, sil
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
xchg al, dil
inc ebx
lea edx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
