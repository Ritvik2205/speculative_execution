.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, di
mov cx, -13260
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add dl, al
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp edx, ecx
imul rbx
btr bx, 193
sub cl, dl
setp dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
lea bx, qword ptr [rbx + rsi]
movsx si, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
cmovle dx, dx
sub al, -66
jmp .bb_0.2
.bb_0.2:
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
