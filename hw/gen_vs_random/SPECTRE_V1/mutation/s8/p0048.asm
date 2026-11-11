.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, di
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
mov cx, -13260
dec rax
add dl, al
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle dx, dx
cmp edx, ecx
sub cl, dl
btr bx, 144
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
movsx si, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
sub al, -89
imul rbx
lea bx, qword ptr [rbx + rsi]
setp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
