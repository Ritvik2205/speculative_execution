.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
test dl, -36
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
xor cl, al
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
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
lock adc word ptr [r14 + rax], -89
cmovle dx, dx
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
