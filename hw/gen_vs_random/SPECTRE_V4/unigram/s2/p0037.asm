.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 197
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 50
cmovnb ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
imul edx
or rdx, rax
cmovb rsi, rsi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovnbe rax, rdx
mov dx, 22195
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
movsx si, cl
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
adc al, bl
movzx ecx, dl
not ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
sbb ebx, ebx
btc rax, rcx
mul ax
cmovnl edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
add cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and dil, sil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
adc al, 116
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 73
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 44
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 57
cmovb esi, edx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
cmovns eax, esi
inc sil
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
inc edi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
cmovo bx, dx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
movsx eax, dx
movzx rcx, di
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
