.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 91 # instrumentation
adc bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
neg ecx
bt ecx, 247
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and cl, dl
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and bl, dl
cmovo eax, edi
not eax
test rdi, 1222000858
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
inc al
bswap rsi
imul esi, ecx
not eax
sub edx, ebx
cmp dl, dl
cmovp ecx, esi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
sbb sil, -11
and bl, al
xor al, 55
mov bl, dl
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
mov bl, dl
and ax, di
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
