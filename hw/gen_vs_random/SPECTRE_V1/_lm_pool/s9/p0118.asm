.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb eax, esi
test cl, -24
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub rcx, 13
add al, 10
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 83
lea eax, qword ptr [rsi]
sbb edi, 99
adc cl, bl
sub sil, -18
xchg cl, cl
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
