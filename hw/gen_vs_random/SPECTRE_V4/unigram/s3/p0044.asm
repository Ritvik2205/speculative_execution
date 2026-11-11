.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
bswap edx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
add al, -65 # instrumentation
adc sil, al
cmovno rcx, rbx
or rsi, rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 50
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add eax, ebx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
add al, 16 # instrumentation
cmovnz si, ax
add bl, -38
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
bts dx, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
cmp esi, 123
sub cl, sil
or sil, al
and edi, -102
imul bl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
movsx rdi, bl
sub rsi, -104
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
btr ax, 109
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and eax, 1913354318
or rbx, rax
cmovo ebx, ecx
bts ax, 155
xor si, -73
imul esi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
mul dil
movsx ecx, bl
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
sub rdx, 79
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
cmovo eax, esi
btc si, 64
test bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
