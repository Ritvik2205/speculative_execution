.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xor ax, 13329
cmovnp edx, edx
adc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mov eax, -1056201206
adc ax, 15251
cmp dl, al
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, -26
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
or dl, al
add eax, -1628652110
cmp cx, ax
cmp al, 114
sub dil, -28
mov ecx, edx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
neg dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
