.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 1524061352
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, di
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
cmovno esi, edx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
adc sil, 7
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 65
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 60
or dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
xchg esi, ecx
add di, -74
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
cmp bl, al
test rcx, -2118888343
movzx cx, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
sbb cl, al
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
cmovb rdx, rdi
mov rsi, 51
xor dil, bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 49
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
