.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
adc dl, 41
test sil, 92
movzx rcx, bx
xor dil, bl
xor sil, 56
sub ebx, ecx
adc sil, 97
test rdx, 72
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
add dil, 56 # instrumentation
cmovle rdx, rdi
sub dil, -10
add cl, 15
cmovns bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
mul rbx
sbb di, -76
and bl, dil
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
test eax, esi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
movzx ebx, bl
imul ebx, eax, 43
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
neg bl
sbb bx, 93
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
imul cl
movzx esi, si
or ax, si
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
add cl, -117 # instrumentation
cmovs rdi, rcx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 6
cmovnz eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
add al, bl
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
cmovnp ebx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
