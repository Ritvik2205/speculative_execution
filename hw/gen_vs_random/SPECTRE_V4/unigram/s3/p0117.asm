.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
or edi, -78
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
add rsi, rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovno ecx, esi
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
dec rcx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
sub sil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 58
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and ax, cx
cmovo dx, cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
cmp al, 114
test ecx, -1293796332
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
add cl, -62
btc cx, di
mul dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and bx, 15
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and cl, -101
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and edx, 57
add edx, esi
test dl, -102
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 28
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
cmovnp ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
