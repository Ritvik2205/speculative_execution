.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, 1521417271
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, -22258
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, -813838876
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, -49
cmovnbe eax, esi
cmp esi, -84
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
sub esi, edi
sub rcx, -99
btc edi, ecx
cmovnb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or bl, cl
add cl, -9
add rdx, rsi
sbb cx, -114
add bl, bl
btr rdi, 61
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
