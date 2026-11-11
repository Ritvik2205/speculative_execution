.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
sub sil, -18
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdi + rax + 68]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
adc edx, 37
sbb al, dl
lea rax, qword ptr [rdx + rcx + 39]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
