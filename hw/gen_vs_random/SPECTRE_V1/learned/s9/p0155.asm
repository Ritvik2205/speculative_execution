.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
sbb edi, 98
mov al, sil
xor bl, al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
xchg al, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
