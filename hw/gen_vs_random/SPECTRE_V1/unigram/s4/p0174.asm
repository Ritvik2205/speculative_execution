.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 54
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 66
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 47
cmp ax, 23607
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 39
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
add cl, 97 # instrumentation
adc si, ax
test dx, 99
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
sub rsi, 121
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
