.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 52
add cl, sil
sub dil, 35
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
sub dl, al
add bl, dil
mov dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
adc al, dl
and cl, dil
and bl, cl
adc al, cl
test ebx, 21
adc bl, 79
sbb dl, dil
cmp dl, -82
mov al, 82
mov cl, -38
test edi, 2142010790
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or ax, 28571
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and dl, -104
mov bl, dil
sbb al, 54
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
