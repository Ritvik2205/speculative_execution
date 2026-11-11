.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
dec dl
test dx, bx
adc esi, 32
test esi, -222751961
cmp dl, -82
cmp al, -53
test eax, 1340292467
cmp cl, sil
adc rsi, 82
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
cmp rdi, 28
test dil, 64
mov bl, dil
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
add bl, cl
cmovle rcx, rdx
mov cl, 1
cmp al, -1
and cl, dil
sub dl, -16
add bl, cl
and bl, sil
or dl, sil
adc cl, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
