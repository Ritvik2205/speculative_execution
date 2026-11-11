.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
imul bl
adc al, 43
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
add cl, 101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
add dl, -91 # instrumentation
cmovl rax, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
cmovbe eax, ebx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
sub dx, -12
movzx edx, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
add al, 27 # instrumentation
mov al, dl
add dl, -25 # instrumentation
cmovs rsi, rax
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
cmovnp cx, ax
add dil, al
test ax, 2960
dec al
bts rsi, 236
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
add al, -99
sbb bl, sil
xor bl, 126
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add rsi, 44
xor rcx, -111
btr dx, ax
xor dil, bl
btr rdx, 78
or dil, 5
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
sbb dl, -71
bt eax, 54
xchg edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 40
xor sil, dil
add al, 105 # instrumentation
cmovl edx, ecx
imul ax, dx, 35
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
