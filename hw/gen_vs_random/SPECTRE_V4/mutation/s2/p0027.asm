.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
dec di
cmp edx, 4
adc ax, -22258
or al, -83
cmovb rdi, rsi
adc dl, al
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
add bl, 126 # instrumentation
cmovb esi, ecx
mov bl, al
or bl, -86
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
movsx rsi, si
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
add rax, 1049076260
adc dil, -17
movsx cx, dil
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
mov sil, sil
cmp rbx, -91
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
add al, -55
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
mov rdi, rdi
inc rax
cmovbe dx, si
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
sbb dl, -62
xor dl, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
neg cl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
sub rcx, -74
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
add al, -60 # instrumentation
cmovle rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
adc ebx, 66
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
test cl, -31
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
