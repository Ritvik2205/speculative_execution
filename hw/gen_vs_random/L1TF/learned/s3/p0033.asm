.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
adc dl, -12
and sil, 37
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
sbb al, -23
sbb al, 61
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
mov dl, dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
