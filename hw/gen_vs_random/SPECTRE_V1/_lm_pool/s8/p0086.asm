.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
lea edi, qword ptr [rbx]
test al, -99
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea di, qword ptr [rbx + rsi + 74]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and cl, 86
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
or rdx, 92
sub bx, 26
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
