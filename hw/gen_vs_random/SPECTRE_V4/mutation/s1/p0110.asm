.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, esi
btc rbx, 52
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
movsx rsi, dil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
imul al
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
sub bl, cl
add al, -99
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmovs rcx, rax
dec cl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb cx, -114
test si, ax
cmp al, -53
test ax, -6584
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 2096656187
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor eax, 167244411
or ax, -29521
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 247
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
