.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, dx
and sil, -84
or cl, 12
mov dil, bl
cmp al, 75
xor al, dil
test dl, -125
and eax, -1145483375
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
or ax, 57
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
adc dl, cl
and ax, -603
cmp al, cl
or bl, dl
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
test eax, 1600638830
mul dl
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
or al, al
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 18
or dl, 1 # instrumentation
neg ebx
or sil, sil
mov al, dl
xor rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
cmp dx, 58
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
xor rcx, -111
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 48
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
btc esi, eax
add al, -67 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 14
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
