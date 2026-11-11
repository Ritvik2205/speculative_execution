.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
imul ax, si
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sbb edx, 63
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
movsx rax, bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
adc bx, -89
test dl, 19
xchg al, al
adc eax, -79
btc cx, si
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
adc cl, cl
movzx rbx, sil
sbb di, -76
or si, 10
cmovs rax, rbx
mov sil, 75
bswap ebx
cmovno edi, ecx
add sil, 110
test bl, sil
btc rax, 81
movsx ebx, dil
movsx edx, al
cmp cl, 16
sub dil, dil
and sil, dil
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
add sil, dil
cmovp ebx, eax
add cl, 56 # instrumentation
cmovle rbx, rcx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sub dl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
