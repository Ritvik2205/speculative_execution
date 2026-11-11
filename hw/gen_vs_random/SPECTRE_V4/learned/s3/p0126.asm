.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdx]
cmp bx, 113
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
add dl, -8
cmp cl, -80
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rdx, 84
and bl, -30
add dl, al
sbb al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
