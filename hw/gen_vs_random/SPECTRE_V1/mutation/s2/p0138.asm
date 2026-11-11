.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
dec rax
mov cx, -13260
add ax, di
add dl, al
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
imul rbx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
setp dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
movsx si, cl
sub al, -1
btr bx, 193
cmp edx, ecx
cmovle dx, dx
lea bx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
