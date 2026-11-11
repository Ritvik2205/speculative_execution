.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
bswap rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
cmp cl, bl
add cl, -37 # instrumentation
adc ebx, 44
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
bts esi, esi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
sbb ebx, 49
bt ecx, 60
adc sil, bl
xchg ebx, eax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 45
xor di, bx
sub al, al
cmovb si, si
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or sil, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
test dl, 19
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
adc sil, bl
sub dl, dl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
bt edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], di
or al, bl
imul ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
mov rbx, rax
btc dx, ax
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 54
xor al, dil
or sil, bl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 26
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
