.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and bl, -30
or ax, -30990
adc sil, cl
and al, sil
sbb bl, 121
cmovz edi, ecx
adc edx, -125
sub cl, -94
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor dx, 7
cmp ax, -22704
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
or bl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and al, -1
sub dil, -28
btc rbx, rdi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
movsx cx, bl
cmp al, -122
adc sil, 88
cmp dil, cl
or al, -47
cmp cx, 0
or al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
