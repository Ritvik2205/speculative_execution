.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
test dl, 24
bt esi, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
dec dl
or dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
sub rcx, 126
and dl, bl
sbb rsi, 117
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 2
sub rcx, -99
movzx rbx, dx
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
bts dx, 26
bt eax, 103
dec bl
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 5
or dil, bl
add cl, -62
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
mov dl, al
adc rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
sub esi, -69
cmovns rax, rbx
cmovnp eax, eax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 59
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
movzx rax, sil
mov bl, al
and dil, -23
cmp edi, ebx
sub sil, 71
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
cmovns di, ax
cmovnle di, cx
and bl, 76
movsx edx, dx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sbb eax, -141178938
xor al, 57
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
cmp si, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
