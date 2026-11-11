.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rax, 1713273566
sbb dl, 127
add ax, cx
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
cmp bl, al
cbw
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
movsx rdx, bx
add cl, dl
add dl, 20 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 27
movzx eax, cx
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
