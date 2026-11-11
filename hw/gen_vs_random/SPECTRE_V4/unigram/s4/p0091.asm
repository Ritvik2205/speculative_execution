.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
neg al
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
test al, 115
or eax, -646827727
test rdx, rbx
xor cl, 13
cmp bl, -79
movsx edx, al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
cmovnz edx, eax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
add al, cl
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
adc rdx, -90
movzx rdx, di
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
adc edi, -83
sbb dl, -62
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
cmovs eax, edx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
sub bx, 24
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
btr rdx, rbx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
neg rbx
btc rax, rbx
cmp dl, 83
cmovnbe ecx, eax
neg rsi
and di, -65
cmovnz rcx, rsi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and ecx, esi
imul eax, ecx, -17
add edi, 82
cmovnbe rdx, rbx
btc ecx, 201
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
