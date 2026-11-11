.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sbb dl, -62
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmp edx, -95
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
add al, -60 # instrumentation
cmovle rsi, rdx
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
adc dl, al
or al, -19
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
inc sil
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
cmp rbx, -66
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
movsx rsi, si
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
cmovb rdi, rsi
mov rdi, rdi
add rax, 114
add al, -82
neg cl
add bl, 126 # instrumentation
cmovb esi, ecx
or bl, 111
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
inc rax
xor dl, al
cmovbe dx, si
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
mov bl, al
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
adc ebx, -5
test cl, -31
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
sub rcx, 126
adc dil, -15
adc ax, 25365
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
