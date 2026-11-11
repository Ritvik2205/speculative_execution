.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
mov cl, bl
add rax, -704585563
add dx, -90
mov bx, 58
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmp sil, 25
xor al, -19
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
js .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, al
mov bl, sil
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
