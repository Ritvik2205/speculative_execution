.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, cl
cmp rbx, -91
sbb dil, 45
mov al, dil
or bl, al
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
movsx cx, al
dec bl
bts esi, 18
and dl, cl
and cl, al
xor al, dil
add al, -29
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
add sil, bl
xchg ebx, edi
xchg ebx, eax
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
test dl, 114
sub rax, 120
sub cl, -94
add dil, -84
and dil, 8
mov al, 119
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
sub dl, cl
or bl, bl
adc al, bl
or bl, -86
and al, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
