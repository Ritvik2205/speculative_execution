.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 83
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sub sil, -18
sub dil, dil
and al, dil
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
add dl, 38 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
mul cx
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
