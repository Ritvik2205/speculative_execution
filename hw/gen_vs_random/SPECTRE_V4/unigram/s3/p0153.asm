.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, di
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub cl, dil
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 91
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmovs edx, edi
test dl, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 72
cmovp eax, esi
dec rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
cmp dl, 74
cmovle bx, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
add rdi, rbx
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
sbb dl, cl
sbb sil, 108
and rcx, -102
cmovnp edx, ecx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
add dil, -10 # instrumentation
cmovnbe edi, esi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
cmovnz ebx, ecx
sbb dx, 84
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rax]
add esi, ecx
add rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 34
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
movzx esi, sil
inc ax
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sbb ebx, 1
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
xor sil, 56
xchg rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
