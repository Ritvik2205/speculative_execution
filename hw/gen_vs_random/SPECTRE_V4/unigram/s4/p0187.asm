.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dil, dil
test rax, -344032571
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
cmp al, 19
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
neg dl
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
add eax, -1796699558
and cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
dec rbx
and ebx, 59
or bx, ax
adc al, dl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 81
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 39
sub sil, -36
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
xor dx, bx
xor dl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, dx
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
xor bl, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
cmovnb rdx, rbx
test al, dl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovnp ebx, ebx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
imul bl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
adc cl, 5
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
cmp sil, 88
cmovnp si, si
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 12
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
cmp si, cx
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
