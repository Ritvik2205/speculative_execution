.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test cl, -24
and sil, 52
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
xchg rdx, rbx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
adc al, -82
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
