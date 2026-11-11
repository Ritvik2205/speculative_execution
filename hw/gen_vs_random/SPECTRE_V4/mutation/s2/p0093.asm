.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rbx
sbb cl, bl
imul di, si
add dl, -26 # instrumentation
btr edx, 30
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovnb dx, dx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
btc rbx, rcx
add bl, -18 # instrumentation
mov rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor bl, dl
movzx eax, sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
btc rdi, 167
add dl, 56 # instrumentation
cmovle rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
sub dl, dl
sub ecx, esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
