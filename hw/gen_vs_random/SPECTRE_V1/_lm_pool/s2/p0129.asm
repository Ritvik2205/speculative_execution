.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
sbb al, -107
sub cl, dl
bt edi, ecx
lea si, qword ptr [rbx + rdx]
sbb sil, al
test dl, 113
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
