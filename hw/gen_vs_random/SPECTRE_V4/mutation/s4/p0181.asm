.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add al, 118
cmovnle edi, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
add rdi, -94
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmp sil, 88
cmovnp si, di
test dl, bl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
sub cl, cl
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test rax, -331426050
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovb edi, edx
btc ebx, 94
sbb cl, bl
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
imul cl
add dl, -114 # instrumentation
cmovl cx, bx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
adc rax, 1542637830
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmp bl, 13
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
