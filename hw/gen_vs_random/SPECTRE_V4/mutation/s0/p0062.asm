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
adc ax, 29444
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
bts rdi, 23
add bl, -49
cmovnbe eax, esi
cmp esi, 123
sbb al, -3
cmovns ax, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc edx, -86
sbb eax, 316213929
and bl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
sub rbx, rbx
adc ecx, 114
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
btc rcx, rdx
or ax, 48
dec edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
xor cl, 88
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
cmovnle rax, rbx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
