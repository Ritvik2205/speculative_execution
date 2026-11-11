.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmovo rax, rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 61
cmovo ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
add dl, -99 # instrumentation
not edi
xor rsi, rdx
imul edi, eax, 34
and cl, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
cmovnb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
sbb ebx, 68
and al, -36
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
xchg dl, dl
add dl, dl
cmovb eax, esi
add ebx, ecx
test cl, -89
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
test eax, -544019457
bt esi, 227
cmovb ecx, edi
cmovb ecx, ebx
test bl, 0
cmovp ecx, eax
cmp sil, al
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
cmp cl, 73
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 29
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 64
cmovb ebx, ebx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 49
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
