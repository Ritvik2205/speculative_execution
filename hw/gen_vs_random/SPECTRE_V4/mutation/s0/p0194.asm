.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
movsx cx, dil
adc ax, 15251
inc sil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
sub rcx, -74
cmp rbx, -66
movsx rsi, si
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
add al, -32
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
xor dl, al
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
mov rdi, rdi
mov bl, al
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovb rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
add al, -60 # instrumentation
cmovle rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
adc dil, -48
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
or bl, 111
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
adc dl, al
or al, -19
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
cmp edx, 4
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
neg cl
sbb dl, -62
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
add bl, 126 # instrumentation
cmovb esi, ecx
test cl, -52
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
dec di
cmovbe dx, si
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
add rax, -874478885
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
inc rax
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
