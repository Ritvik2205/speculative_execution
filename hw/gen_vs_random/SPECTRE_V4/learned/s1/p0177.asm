.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 0
xor cl, sil
sbb al, 31
add dil, cl
cmp bl, -79
sub dil, -40
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 73
and cl, dil
sub dl, sil
dec dil
add bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmp dil, bl
or eax, -646827727
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
sbb cl, -69
cmp ax, 28568
or dl, al
add dl, dil
or eax, 1001462340
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp al, -106
and sil, -84
jmp .bb_0.1
.bb_0.1:
or al, 27
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
adc al, -86
bts ecx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
