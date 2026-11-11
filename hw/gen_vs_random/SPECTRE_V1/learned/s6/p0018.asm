.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
cmp al, dl
sbb al, -114
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 44
sbb edx, -8
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and bl, -43
or bl, cl
sbb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
