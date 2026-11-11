.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor al, -89
sbb sil, sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and dil, dl
test cl, -120
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
xor cl, al
add dl, bl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
