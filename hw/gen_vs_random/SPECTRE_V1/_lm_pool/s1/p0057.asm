.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 88
lea bx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
cmp al, bl
adc sil, -77
sbb dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
