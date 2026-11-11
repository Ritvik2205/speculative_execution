.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
dec cl
btr rdx, rcx
and al, 75
cmovo bx, bx
xor rdi, -72
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
add esi, 59
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
cmovnp rdi, rax
adc bl, -20
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
sbb bl, -79
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 11
add al, sil
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 98
and ebx, ecx
cmovl ebx, eax
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
add cl, sil
or rbx, -108
add al, al
sbb dl, -71
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp dl, 83
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
xor rbx, -99
bt cx, 31
adc esi, 74
xor rsi, rax
dec al
cmovnle rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
add eax, 1936378991
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
imul rcx, rdx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
