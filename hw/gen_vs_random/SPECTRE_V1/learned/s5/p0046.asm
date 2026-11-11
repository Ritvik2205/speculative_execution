.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
add bl, 70
xor ecx, 30
sbb al, -114
inc rsi
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dl, dl
and sil, sil
sbb bl, 79
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 57
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
lea si, qword ptr [rdi + rsi + 55]
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
