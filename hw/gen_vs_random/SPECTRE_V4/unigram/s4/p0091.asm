.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, 55
or al, al
adc dl, bl
add sil, -71 # instrumentation
adc sil, bl
add bl, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 42
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 89
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 34
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
cmovnz dx, cx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sub edx, ebx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 51
cmovnbe rbx, rdx
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
sbb ebx, 67
cmovle edx, ecx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and dx, 1
xor dl, 12
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
cmovnp dx, si
add di, -74
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovnbe si, bx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
test ecx, 29
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
sub dl, bl
add edx, 30
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 55
adc al, 36
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 54
imul eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
