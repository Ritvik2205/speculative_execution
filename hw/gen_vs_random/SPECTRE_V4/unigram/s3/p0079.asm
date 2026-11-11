.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sub edx, 73
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 50
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
sub bx, 24
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub bl, 66
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
btc edi, 125
add dil, 105
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
adc edi, -83
and sil, sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and bx, dx
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
dec rsi
cmovz rcx, rdi
mov sil, cl
or edx, -83
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
add cl, al
mul dl
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 43
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
movsx di, bl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edi
or ecx, 17
adc ax, 15251
cmovp eax, ecx
mul dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
test dl, dl
mov dl, dil
btr dx, ax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
mul ax
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
