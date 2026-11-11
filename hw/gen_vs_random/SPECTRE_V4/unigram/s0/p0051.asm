.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
cmovle esi, edx
bswap rsi
xor al, dil
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
bt cx, 111
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
sub rax, rdi
sbb dl, -99
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
bts esi, 241
sub ebx, eax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, esi
and al, dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
or eax, -1434249782
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], 95
and sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
xor dil, dil
mov di, 12
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
dec ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
add cl, 106 # instrumentation
cmovnp rbx, rsi
add rdx, rdi
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
add si, 4
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
cmovnl rdi, rdx
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
