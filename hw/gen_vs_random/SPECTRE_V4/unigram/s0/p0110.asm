.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
adc dx, 52
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 43
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 17
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
bt rdi, rdx
test bx, 24072
sbb rsi, 117
dec edx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 52
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add cl, 7 # instrumentation
adc bx, 70
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 39
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and al, dl
btc esi, edi
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
adc bl, sil
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
imul rcx, rdx, 82
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 96
and bl, dl
or bl, bl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
mov di, dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 34
or si, 85
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
test al, -85
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and ax, cx
or rcx, 67
cmovs ebx, ecx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
adc rax, rsi
add al, al
bts di, ax
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
sbb dl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
