.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, dx, 98
and rcx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
add cl, 31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rax, rsi
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rbx, rcx
xchg sil, al
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
btr ebx, ebx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
sub dil, -11
xchg rdi, rcx
and bl, al
cmovno rdx, rsi
movsx rdi, bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 96
test dl, -125
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mul ecx
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
sub dil, bl
mov bl, dl
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 95
mov ecx, -405458789
sbb bl, sil
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
bts dx, cx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 81
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 53
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
bswap edi
adc rdx, -90
add rdi, 111
imul esi, ecx
cmovo ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
