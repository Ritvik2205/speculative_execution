.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
sub dx, 34
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
imul edx
inc dl
setno cl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
sub bx, 61
sub rax, -2089384489
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
add al, 39 # instrumentation
cmovnb ax, dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
