.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add dl, al
dec rax
add ax, di
mov cx, 31310
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -66
lea bx, qword ptr [rbx + rsi]
sub cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
cmovle dx, dx
btr bx, 193
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
imul rbx
movsx si, cl
setp dl
cmp edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
