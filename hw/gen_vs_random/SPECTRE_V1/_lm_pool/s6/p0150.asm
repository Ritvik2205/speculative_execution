.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
add eax, -1174744897
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
sub sil, dl
lea ecx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
add al, 3
sbb dl, bl
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
