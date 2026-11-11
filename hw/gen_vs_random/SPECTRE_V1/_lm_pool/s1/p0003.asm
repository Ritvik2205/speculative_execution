.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
cmp al, dl
sbb bl, -41
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
setb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
