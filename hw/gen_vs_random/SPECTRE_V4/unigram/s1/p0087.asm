.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 62
add dil, 110 # instrumentation
movsx dx, dil
mov sil, sil
add eax, -1796699558
add al, al
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 29
imul edx, ecx, 76
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
cmovle si, bx
sbb dl, -99
test dl, dl
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
adc rsi, 86
sub sil, sil
sbb rdx, 5
add al, 122 # instrumentation
cmovns edx, eax
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
add cx, 47
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
test di, ax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 44
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
bts eax, 209
and sil, dl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dil, -10 # instrumentation
mov di, 58
add bx, 110
cmovnp ecx, eax
mul ax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and dl, 52
and cl, sil
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 94
cmovp ecx, eax
sbb bl, 57
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
