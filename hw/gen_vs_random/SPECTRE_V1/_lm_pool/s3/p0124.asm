.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
test al, -99
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
lea cx, qword ptr [rdi]
cmp sil, al
sub sil, cl
sbb al, dil
jmp .bb_0.1
.bb_0.1:
cmp edi, 100
or bl, 71
sub cx, 78
lea si, qword ptr [rcx + rdi + 53]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
