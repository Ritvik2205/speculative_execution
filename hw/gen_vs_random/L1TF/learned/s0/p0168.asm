.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp al, -119
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
lea ax, qword ptr [rdi]
and sil, sil
adc bl, -14
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
