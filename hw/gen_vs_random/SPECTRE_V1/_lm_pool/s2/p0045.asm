.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
sbb sil, dl
adc dx, -112
cmp sil, al
cmp bl, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rbx]
movsx rax, cx
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
