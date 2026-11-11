.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
sbb dil, -106
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and al, -54
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
