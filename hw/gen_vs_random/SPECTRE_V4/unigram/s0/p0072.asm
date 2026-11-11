.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -109 # instrumentation
sbb ebx, 94
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 91
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovnz esi, eax
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 49
cmovnbe ax, bx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmovp dx, ax
cmp sil, dil
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
sub ecx, 80
xor cl, -54
and rsi, 88
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 40
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and eax, -37
xor dl, 55
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovo rsi, rdi
cmovnbe edi, esi
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
add cl, -37 # instrumentation
adc edx, 85
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
movsx ebx, al
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and ebx, 42
cmovz ecx, edi
cmp di, 6
imul ecx, edx, 77
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 33
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sub edi, 35
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
