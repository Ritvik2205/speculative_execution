.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 90
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
bt ecx, 1
lea si, qword ptr [rcx]
or cl, dil
cmp dil, 56
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
imul al
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
lea si, qword ptr [rdi + rsi + 2]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 49
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
