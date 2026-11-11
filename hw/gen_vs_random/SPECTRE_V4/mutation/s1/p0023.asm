.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovbe dx, si
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
adc ebx, 66
mov bl, al
adc dl, al
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
dec di
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
add rax, 1049076260
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
sbb dl, -106
or al, -88
movsx rsi, si
test cl, -52
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
add bl, 126 # instrumentation
cmovb esi, ecx
adc dil, 109
adc ax, 15251
sub rcx, -74
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add al, -44
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
cmp rbx, -91
add al, -60 # instrumentation
cmovle rsi, rdx
inc sil
cmovb rdi, rsi
mov sil, sil
inc rax
xor dl, al
or bl, -35
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
mov rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
neg cl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
