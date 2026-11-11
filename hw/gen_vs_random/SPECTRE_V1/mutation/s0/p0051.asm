.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, -13260
add dl, al
add ax, di
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
dec rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
setp dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
cmovle dx, dx
sub cl, dl
imul rbx
lea bx, qword ptr [rbx + rsi]
btr bx, 144
movsx si, cl
cmp edx, ecx
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
