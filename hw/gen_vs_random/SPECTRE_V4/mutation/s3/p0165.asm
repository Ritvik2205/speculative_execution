.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
adc ax, 17267
sbb dl, 53
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx rsi, si
or al, -50
inc sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
xor dl, al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmovb rdi, rsi
neg cl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
cmp rbx, -66
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
cmp edx, -95
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
adc ebx, 51
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
mov rdi, rdi
adc dil, 109
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
add bl, 126 # instrumentation
cmovb esi, ecx
movsx cx, dil
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
adc dl, al
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
add al, -60 # instrumentation
cmovle rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
test cl, -119
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
cmovbe dx, si
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
or bl, 61
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
add al, -44
mov sil, sil
sub rcx, -74
mov bl, al
dec di
inc rax
add rax, 1049076260
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
