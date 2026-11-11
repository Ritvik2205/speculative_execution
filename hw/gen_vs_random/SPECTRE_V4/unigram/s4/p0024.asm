.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, 3
cmovnb edi, esi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
adc edx, 97
neg sil
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovnbe rdx, rdx
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 75
bts eax, eax
add al, -10 # instrumentation
cmovnbe eax, edi
bts dx, 59
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp al, al
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 3
or si, dx
imul rax, rdi, 70
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
add cl, -82 # instrumentation
sbb ax, bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rsi, 71
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
xor bx, dx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 39
add cl, 8
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 20
cmp dil, bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmovb ax, ax
inc eax
test cl, -89
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
