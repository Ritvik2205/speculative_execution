.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 56
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
cmovo esi, edx
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
sbb dl, -99
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
test bl, 0
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
