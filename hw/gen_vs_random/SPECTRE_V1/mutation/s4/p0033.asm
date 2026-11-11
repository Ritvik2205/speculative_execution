.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add ax, di
add dl, al
mov cx, 31310
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
movsx si, cl
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
setp dl
btr bx, 193
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
cmp edx, ecx
sub cl, dl
imul rbx
sub al, -89
lea bx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
