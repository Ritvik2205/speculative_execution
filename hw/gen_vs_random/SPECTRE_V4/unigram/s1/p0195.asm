.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dx, bx
cmovle rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rsi
xor rdi, -72
cmovnz dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
cmovnp esi, edi
add dl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
adc al, -59
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
sub cl, -51
sbb bl, sil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 50
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 69
adc sil, 111
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or bl, bl
imul ebx, edx, 30
adc rbx, 60
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
or cl, cl
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
btc rax, rsi
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
bts si, di
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
add edx, 89
xor di, ax
adc sil, -112
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
sub di, 9
or dl, al
or edx, -83
movsx edi, ax
cmp bl, al
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
test ebx, 74
cmovnb bx, dx
cmovnle cx, bx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
sub rax, -1680844889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
