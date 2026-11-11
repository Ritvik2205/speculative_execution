.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 55
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 15
test ebx, -595096626
or dil, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor bx, 63
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
cmovnz ebx, eax
sub eax, 2030845821
or ax, bx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmp edi, -104
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add rbx, 94
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb sil, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 64
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 87
or esi, 6
xor edx, 32
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
adc bl, 89
btr ax, si
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovns bx, bx
add rbx, 53
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
add si, 4
adc sil, dil
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 90
or dil, bl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or rbx, rdi
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
add edi, 11
cmovns dx, si
btc cx, ax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
