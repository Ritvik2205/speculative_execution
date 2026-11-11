.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
adc dl, al
cmp rbx, -91
add al, -29
movsx cx, dil
adc ebx, 66
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
add bl, 126 # instrumentation
cmovb esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
add al, -60 # instrumentation
cmovle rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
dec di
or bl, -86
cmovb rdi, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
cmovbe dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, -1121139858
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
inc rax
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
sbb dl, 75
movsx rsi, si
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
adc dil, 124
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
mov rdi, rdi
inc sil
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
neg cl
mov bl, al
adc ax, 17267
mov sil, sil
xor dl, al
sub rcx, -74
or al, -47
test cl, -52
cmp edx, -95
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
