.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 39
bt ax, bx
dec rcx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
xor dil, 77
cmovnb ax, bx
sub rax, -132886581
sub bl, 68
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 25
test sil, 112
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
add al, 110
sbb dl, -23
adc rdx, 35
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
