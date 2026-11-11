.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
test dl, dil
or edi, 39
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
cmovnbe rdx, rdx
test cl, bl
sbb ax, -26881
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmp eax, -92285311
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 39
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 27
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ecx
xchg cx, si
cmovnle eax, ebx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
cmovb edx, eax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
xchg ecx, edx
neg ebx
imul rdi, rax, 61
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
or rbx, 27
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
bt edi, ebx
add dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rbx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov cl, cl
mov al, 34
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp rcx, 62
movzx bx, sil
cmovnbe si, dx
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
btc rbx, rdx
bt rbx, rdx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
and dl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
