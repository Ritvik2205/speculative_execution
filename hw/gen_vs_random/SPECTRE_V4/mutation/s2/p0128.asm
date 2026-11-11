.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
test cl, -10
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
movsx rsi, si
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
adc ax, 17267
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
add rax, -874478885
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
neg cl
mov bl, al
xor dl, al
movsx cx, dil
adc ebx, 51
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
mov rdi, rdi
cmp edx, 4
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
cmp rbx, -91
cmovbe dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
adc dil, -15
cmovb rdi, rsi
add al, -99
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
inc rax
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
sbb dl, 75
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
or bl, 61
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
dec di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or al, 27
inc sil
add bl, 126 # instrumentation
cmovb esi, ecx
adc dl, al
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add al, -60 # instrumentation
cmovle rsi, rdx
sub rcx, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
