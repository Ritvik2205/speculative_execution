.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, di
add dl, al
mov cx, 31310
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
dec rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
btr bx, 144
sub al, -89
lea bx, qword ptr [rbx + rsi]
imul rbx
cmp edx, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
movsx si, cl
cmovle dx, dx
setp dl
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
