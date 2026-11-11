.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno edx, ecx
sbb dl, -71
movzx eax, al
xchg rdx, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sub ax, bx
cmp ecx, 53
sbb di, -105
cmovnle rdx, rax
xchg cx, si
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
sub bl, dl
inc al
mov dil, 25
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
adc rsi, 82
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
cmovs rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
cmovnb rax, rbx
not rsi
test dl, -125
btc rax, rsi
and sil, sil
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
mov sil, cl
bt eax, 103
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
sub bl, dl
or di, 29
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
xor rdx, 106
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
cmovnle rbx, rcx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
adc eax, -1127383570
cmp bl, al
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
cmp dl, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
