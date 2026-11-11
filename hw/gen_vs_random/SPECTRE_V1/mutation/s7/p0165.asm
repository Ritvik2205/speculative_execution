.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add ax, di
mov cx, -13260
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle dx, dx
setp dl
movsx si, cl
imul rbx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
lea bx, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
sub al, 63
cmp edx, ecx
btr bx, 144
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
