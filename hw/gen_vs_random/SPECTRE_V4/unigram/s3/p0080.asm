.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
not ax
neg dil
dec esi
btr rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
add dl, -99 # instrumentation
not edx
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
cmovnbe rdi, rsi
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
cmovnb cx, cx
cmovnle eax, ecx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
btc esi, 66
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 60
adc ebx, 117
adc dil, 38
and ax, 35
sbb al, al
imul rsi
imul rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 50
or ax, -12775
cmovb rbx, rsi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rcx]
or si, 17
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or bl, 63
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 77
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
test dx, 8
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
