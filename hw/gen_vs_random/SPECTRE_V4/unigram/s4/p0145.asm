.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
cmovnl rsi, rdi
add ecx, 4
and rax, 58
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
movsx rax, sil
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
test si, dx
btr ax, dx
add edi, 11
movzx dx, al
add cl, 8 # instrumentation
adc bl, cl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
cmovnb eax, ecx
imul sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 24
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
sub dx, 80
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
sbb rdx, 57
cmovp di, ax
bt cx, 111
cmp bl, al
cmovle rdi, rax
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
adc sil, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
movzx dx, dl
add ax, -15653
xor ebx, edi
adc bl, 89
and bl, 26
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub al, 119
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 16
sbb bl, 57
cmovnb ecx, edx
movzx rdi, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
adc bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
