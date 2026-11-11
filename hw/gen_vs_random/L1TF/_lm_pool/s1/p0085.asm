.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
xor dil, -42
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, -104
not dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
xor al, 89
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
or bl, al
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdi
cmovnbe ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
