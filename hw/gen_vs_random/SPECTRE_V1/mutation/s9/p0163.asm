.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, -13260
add ax, di
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add dl, al
dec rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
imul rbx
btr bx, 144
cmovle dx, dx
setp dl
cmp edx, ecx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
movsx si, cl
lea bx, qword ptr [rbx + rsi]
sub al, -66
sub cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
