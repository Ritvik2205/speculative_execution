.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi + rdx + 58]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
xor al, cl
sub rax, 1806572419
sbb cl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and al, dil
and al, -68
jmp .bb_0.2
.bb_0.2:
cmp al, -119
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
