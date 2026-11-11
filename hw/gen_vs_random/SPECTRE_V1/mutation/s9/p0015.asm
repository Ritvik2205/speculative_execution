.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
add ax, di
mov cx, -13260
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
setp dl
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
movsx si, cl
imul rbx
cmovle dx, dx
lea bx, qword ptr [rbx + rsi]
btr bx, 144
cmp edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
