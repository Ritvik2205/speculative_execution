.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
add ax, di
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
mov cx, 31310
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
movsx si, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
btr bx, 193
sub al, -66
lea bx, qword ptr [rbx + rsi]
sub cl, dl
cmovle dx, dx
imul rbx
setp dl
cmp edx, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
